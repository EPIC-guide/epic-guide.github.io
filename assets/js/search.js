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

// based on https://www.joshwcomeau.com/snippets/javascript/debounce/
function debounce(callback, msDelay) {
  let timeoutId = null;
  return (...args) => {
    window.clearTimeout(timeoutId);
    timeoutId = window.setTimeout(() => {
      callback.apply(null, args);
    }, msDelay);
  };
}

const searchContainer = document.getElementById('search-container');
const searchBar = document.getElementById('search-bar');
async function updateSearch() {
  const results = await search(searchBar.value);
  await displayResults(searchContainer, results);
}

searchBar.addEventListener('input', debounce(updateSearch, 250));
// if the user navigated with back/forward, the search bar may have text already
// but this must be done in the pageshow handler otherwise the browser won't have restored the text yet
window.addEventListener('pageshow', updateSearch);
