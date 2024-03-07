var loadedMiniSearch;

async function loadMiniSearch() {
  if (loadedMiniSearch === undefined) {
    const response = await fetch('/search-index.json');
    const docs = await response.json();
    loadedMiniSearch = new MiniSearch({
      // 'id' is implicitly added to fields and storeFields
      fields: ['title', 'text'],
      storeFields: ['title'],
      searchOptions: { 'prefix': true }
    });
    loadedMiniSearch.addAll(docs);
  }
  return loadedMiniSearch;
}

async function search(text) {
  if (text.length <= 2) {
    // otherwise we would return basically every doc
    return [];
  }
  const miniSearch = await loadMiniSearch();
  return miniSearch.search(text);
}

async function displayResults(container, results) {
  container.replaceChildren(...results.map(result => {
    var link = document.createElement('a');
    link.textContent = result.title;
    link.href = result.id;
    link.classList.add('search-result');
    return link;
  }));
}

const searchContainer = document.getElementById('search-container');
const searchBar = document.getElementById('search-bar');
searchBar.addEventListener('input', async e => {
  const results = await search(e.target.value);
  await displayResults(searchContainer, results);
});
