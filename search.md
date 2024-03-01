---
layout: guide
title: Search
collection: search
---

<!-- Html Elements for Search -->
<div id="search-container">
    <input type="search" name="search" id="search-input" placeholder="search...">
    <ul id="results-container"></ul>
</div>
    
<!-- Script pointing to search-script.js -->
<script src="search-script.js" type="text/javascript"></script>

<!-- Configuration -->
<script>
SimpleJekyllSearch({
    searchInput: document.getElementById('search-input'),
    resultsContainer: document.getElementById('results-container'),
    searchResultTemplate: '<a href="{url}" tabindex="1"><p>{title}</p></a>',
    noResultsText: '<p>No results found!</p>',
    json: '/search.json'
})
</script>