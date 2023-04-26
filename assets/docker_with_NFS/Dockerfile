################################################################################
# Choose a docker template
################################################################################
# This will set what OS, CUDA, and perhaps even packages / python versions 
# you can preemptly have. You can find more templates in 
# ex: FROM python
FROM --platform=linux/amd64 nvidia/cuda:11.0.3-devel-ubuntu18.04

################################################################################
# Set default shell to /bin/bash
################################################################################
SHELL ["/bin/bash", "-cu"]

################################################################################
# NOTE: IF YOU ARE NOT USING THE NFS IGNORE THIS, FEEL FREE TO REMOVE THE FOLLOWING 2 INSTRUCTIONS
################################################################################
# Setup your user profile with the right group permission to access NFS folder
# For the RUN command below that sets up the ids and names you would need fill out the .env file
#
# If your lab has an LDAP tequila HaaS authentication system, then most likely
# your NFS user and group id will be the one stated at yout page in https://people.epfl.ch/?lang=en 
# Click on "Administrative Data" to find UID and GID.
#
# 2 things needed for NFS access
# (1) make sure the group id is correct
#   - your NFS group id shows up when you do `groups`
#   - or your username shows up when you do `getent group <nfs-group-id>`
# (2) make sure your user ID matches the NFS folder owner's, ideally you
################################################################################
WORKDIR /
# Username on people.epfl.ch or find by running `id -un` on HaaS
ENV USER_NAME="<your-NFS-username" 
RUN --mount=type=secret,id=my_env source /run/secrets/my_env && \
    groupadd -g ${GROUP_ID} ${GROUP_NAME} && \
    useradd -rm -d /home/${USER_NAME} -s /bin/bash -g ${GROUP_ID} -u ${USER_ID} ${USER_NAME} && \
    chown ${USER_ID} -R /home/${USER_NAME} && \
    # Change the password
    echo -e "${USER_NAME}\n${USER_NAME}" | passwd ${USER_NAME} && \
    usermod -a -G ${GROUP_NAME} ${USER_NAME}

################################################################################
# Set some basic ENV vars for readability
# NOTE: IF YOU ARE NOT USING THE NFS FEEL FREE TO MAKE THE FOLLOWING HOME VAR JUST ROOT
################################################################################
ENV HOME=/home/${USER_NAME}
ENV CONDA_PREFIX=${HOME}/.conda
ENV CONDA=${CONDA_PREFIX}/condabin/conda
ENV REPO_DIR=${HOME}/<repo-name>


################################################################################
# Install dependencies
################################################################################
RUN apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/3bf863cc.pub
RUN apt-get update && apt-get install -y --allow-downgrades --allow-change-held-packages --no-install-recommends \
        build-essential \
        cmake \
        g++-4.8 \
        git \
        curl \
        vim \
        unzip \
        wget \
        tmux \
        screen \
        ca-certificates \
        apt-utils \
        libjpeg-dev \
        libpng-dev

################################################################################
# WORKDIR instruction sets the directory the following instructions should be run from
################################################################################
WORKDIR ${HOME}

################################################################################
# Install conda (optional) you can also directly pip install
################################################################################
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
RUN bash miniconda.sh -b -p ${CONDA_PREFIX}
RUN ${CONDA} config --set auto_activate_base false
RUN ${CONDA} init bash
RUN ${CONDA} create --name myenv python=3.8

################################################################################
# Git configuration (optional, you can also use a repo saved in the NFS)
################################################################################
RUN --mount=type=secret,id=my_env source /run/secrets/my_env && \
    git config --global user.name ${GITHUB_NAME}
RUN --mount=type=secret,id=my_env source /run/secrets/my_env && \
    git config --global user.email ${GITHUB_EMAIL}
# RUN git config --global pull.rebase false

################################################################################
# Clone your github repo (optional)
################################################################################
RUN --mount=type=secret,id=my_env source /run/secrets/my_env && \
    git clone https://${GITHUB_PERSONAL_TOKEN}@github.com/${GITHUB_USERNAME}/<repo-name>.git
# Make this repo your WORKDIR
WORKDIR ${REPO_DIR}

################################################################################
# Setup github repo dependencies
# Note that, you cannot activate an environment with the RUN command, as each RUN command is like a new session.
# Thus we instead call conda at the beginning of the pip or python command the way shown here:
################################################################################
RUN ${CONDA} run -n myenv pip install -r <repo-name>/requirements.txt
RUN ${CONDA} run -n myenv pip install -e .
RUN ${CONDA} run -n myenv python -c "import nltk;nltk.download('punkt');nltk.download('wordnet');nltk.download('omw-1.4')"

################################################################################
# Login to wandb (optional) or anything that should be kept as a secret in the env file
################################################################################
RUN --mount=type=secret,id=my_env source /run/secrets/my_env && \
    ${CONDA} run -n myenv wandb login ${WANDB_API_KEY}

################################################################################
# Install relevant data if not on NFS
################################################################################
WORKDIR ${REPO_DIR}
RUN rm -rf data
RUN wget --no-check-certificate 'somedrivelink' -O data.zip
RUN unzip data.zip

################################################################################
# Install OpenSSH for MPI to communicate between containers 
# (unclear whether this works with EPFL RunAI at the moment...)
################################################################################
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client openssh-server && \
    mkdir -p /var/run/sshd
# RUN echo 'root:root' | chpasswd
RUN sed -i 's/#*PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
# SSH login fix. Otherwise user is kicked off after login
RUN sed -i 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' /etc/pam.d/sshd
ENV NOTVISIBLE="in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile
EXPOSE 22

################################################################################
# Install the Run:AI Python library and its dependencies
################################################################################
RUN ${CONDA} run -n myenv pip install runai prometheus_client==0.7.1

################################################################################
# Prepare the NFS mount folder
################################################################################
RUN mkdir /mnt/<your-lab-nfs-name>
RUN mkdir /mnt/scratch

################################################################################
# To rebuild from this point on (e.g. checking out a branch, pulling ...) and 
# not have to rerun heavy system installation change a dummy arg as shown in build.sh
# Although keep in mind, sometimes docker caching breaks things so you simply 
# have to force rebuild from scratch
################################################################################
ARG DUMMY=unknown
RUN DUMMY=${DUMMY}
RUN git pull
RUN git checkout <repo-branch-name>
RUN git pull

################################################################################
# The ENTRYPOINT describes which file to run once the node is setup.
# This can be your experiment script. Here we copy from the local a file 
# (doesn't have to be called entrypoint.sh)
################################################################################
COPY ./entrypoint.sh .

################################################################################
# NOTE: IF YOU ARE NOT USING THE NFS YOU CAN REMOVE THE FOLLOWING 2 INSTRUCTIONS
# Changing the ownership of the /home/USER folder, so that the files created 
# by root can be accesible (e.g. git cloned repo)
# Otherwise by default, they are owned by root
################################################################################
RUN --mount=type=secret,id=my_env source /run/secrets/my_env && \
    chown ${USER_ID} -R /home/${USER_NAME} 

################################################################################
# Switch to user instead of root for NFS + home directory access
################################################################################
USER ${USER_NAME}

################################################################################
# Final specification of entrypoint - it's better if it's in the end because 
# you don't want to rebuild all the way from the beginning, 
# you want to re-use as many cached instructions as possible.
# And this will be the Dockerfile line you change the most. 
# (doesn't have to be called entrypoint.sh)
################################################################################
RUN chmod +x ./entrypoint.sh
# ENTRYPOINT ["/usr/sbin/sshd", "-D"] # useful if you are **not** using the USER command and using the image just as root
ENTRYPOINT ["./entrypoint.sh"]
