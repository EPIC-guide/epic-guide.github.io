# EPIC Guide
Guidebook for IC PhD life at EPFL. Visit the guide [here](https://epic-guide.github.io)!

This guide is put together by EDIC PhD students of all years and from different labs, to help you navigate through your research career at EPFL. 

We try to keep the guide up to date, but if you notice any inconsistencies please tell us at [epic@groupes.epfl.ch](mailto:epic@groupes.epfl.ch), or make a pull request to this repository. For the guide to grow and stay current over time, we need **you** to contribute!

## How to contribute via pull requests

### Where to write
This site is built with Jekyll and GitHub Pages. The main contents are located in the `_posts` directory, written in markdown.

### Naming convention
Please name the files in the `_posts` directory as `YYYY-MM-DD-CATEGORY-NAME.md`, where `YYYY-MM-DD` is the last updating date of the article, `NAME` is a brief title of the article, and `CATEGORY` is one of the followings:
- `first` (First Year)
- `middle` (Middle Years)
- `last` (Last Year)
- `life` (Life in Lausanne)
- `home` (Others)

### Article header (YML front matter)
In addition, in the first few lines of each article, please remember to include/update the following fields:
- `layout: post` (Just keep it like this)
- `title: "Candidacy exam"` (The title of the article)
- `date: 2021-08-09` (Last updated date, in YYYY-MM-DD format)
- `category: first` (Category as described in the previous section)
- `order: 1` (Order of the article in the category)

### How to write markdown
[Here](https://www.markdownguide.org/basic-syntax/) are some basic markdown syntax if you are not familiar with it. 

[Here](https://epic-guide.github.io/markdown_demo) is a page demonstrating many formatting possibilities you can do with markdown; it's source code is [here](https://github.com/EPIC-guide/epic-guide.github.io/blob/main/markdown_demo.md).

**Note:** As the `h1` heading is reserved for the article title, please use `h2` (two hashtags in markdown `##`) or smaller headings within the article.

### How to make a pull request
To make a pull request, first fork this repository, make changes and commit to your fork, and come back here and click on "compare & pull request".

### Remember to add yourself in the contributor list
Edit [`index.md`](https://github.com/EPIC-guide/epic-guide.github.io/blob/main/index.md) to include your name!
