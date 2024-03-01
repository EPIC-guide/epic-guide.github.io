---
layout: guide
title: Search
collection: search
---

<!-- Html Elements for Search -->
<div id="search-container">
<input type="text" id="search-input" placeholder="Search the EPIC Guide...">
<ul id="results-container"></ul>
</div>

<!-- Script pointing to search-script.js -->
<script src="search-script.js" type="text/javascript"></script>

<!-- Configuration -->
<script>
SimpleJekyllSearch({
  searchInput: document.getElementById('search-input'),
  resultsContainer: document.getElementById('results-container'),
  json: '/search.json'
})
</script>

