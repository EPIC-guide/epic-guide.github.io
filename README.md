# EPIC Guide
Guidebook for IC PhD life at EPFL. Visit the guide [here](https://epic-guide.github.io)!

This guide is put together by EDIC PhD students of all years and from different labs, to help you navigate through your research career at EPFL. The current maintainer is @shardulc.

We try to keep the guide up to date, but if you notice any inconsistencies please tell us at [epic@groupes.epfl.ch](mailto:epic@groupes.epfl.ch), or make a pull request to this repository. For the guide to grow and stay current over time, we need **you** to contribute!

## How to contribute via pull requests

### Where to write

This site is built with Jekyll and GitHub Pages.
The main contents are located in one of the `_CATEGORY` directories, where `CATEGORY` is one of the following:
- `first` (Getting started)
- `middle` (Resources and responsibilities)
- `last` (Graduating)
- `life` (Life in Lausanne)

If you want to modify some contents of an existing article, locate its corresponding Markdown file by observing its permalink:
the article with permalink `https://epic-guide.github.io/CATEGORY/NAME` is located at `_CATEGORY/NAME.md`.

If you want to write a new article, add a new file in the corresponding directory.

**Note:** Please avoid changing the names of existing articles as this will change its permalink.

### Article header (YML front matter)
In the first few lines of each article, please remember to include/update the following fields:
- `layout: post` (Just keep it like this)
- `title: "Candidacy exam"` (The full title of the article)
- `category: first` (Category as described in the previous section)
- `order: 1` (Order of the article in the category. Articles are sorted in ascending order on the guide index page.)

### How to write markdown
The content of the articles can be written in Markdown and/or HTML.

If you are not familiar with Markdown syntax, take a look at [this guide](https://www.markdownguide.org/basic-syntax/).

**Note:** As the `h1` heading is reserved for the article title, please use `h2` (two hashtags in markdown `##`) or smaller headings within the article.

### How to make a pull request
To make a pull request, first fork this repository, make changes and commit to your fork, and come back here and click on "compare & pull request".

### Remember to add yourself in the contributor list
Edit [`index.md`](https://github.com/EPIC-guide/epic-guide.github.io/blob/main/index.md) to include your name!

### Testing locally
If you would like to build the webpage locally to preview the changes:

1. Check (and install if not fulfilled) the [prerequisites](https://jekyllrb.com/docs/installation/#requirements): Ruby >= 2.5.0 with Dev headers, RubyGems, GCC and Make.
2. [Install Jeykll](https://jekyllrb.com/docs/installation/) following the steps according to your operating system.
3. Navigate to the root directory of this repo.
4. Run `bundle install` if this is the first time you are running these steps.
   - To install gems under your home directory, without the need for elevated privileges, first configure Bundler's path for this repository, e.g. via `bundle config set --local path ~/.local/share/gem`.
4. Run `bundle exec jekyll serve` to start the server. It will automatically regenerate webpages when you change the Markdown sources.
4. Open a browser and go to [http://localhost:4000](http://localhost:4000).
