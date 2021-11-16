/*
 * navbar.js
 * Thomas Zeng and Cole Weinstein
 * 15 November 2021
 */

window.addEventListener('load', initializeNavbar);

function initializeNavbar() {
  fillNavbar();

  let search = document.getElementById('search_button');
  if(search) {
    search.onclick = searchType;
  }
}

function fillNavbar() {
  let homeURL = getBaseURL() + '/';
  let aboutPageURL = getBaseURL() + '/about/';

  let navbar = document.getElementsByClassName('navbar');
  if(navbar) {
    navbar[0].innerHTML = '<li><a href=\"' + homeURL + '\">Language Map</a></li>\n' 
                        + '<li><a href=\"' + aboutPageURL + '\">About</a></li>\n';
  }
}

function getBaseURL() {
  baseURL = window.location.protocol
          + '//' + window.location.hostname
          + ':' + window.location.port;
  return baseURL;
}

function getAPIBaseURL() {
  baseURL = window.location.protocol
          + '//' + window.location.hostname
          + ':' + window.location.port
          + '/api/';
  return baseURL;
}

function loadCountryTemplate(countryCode) {
  window.location.href = getBaseURL() + '/country_info?country=' + countryCode;
}

function loadLanguageTemplate() {
  let languageSearch = document.getElementById('search_box')
  let languageName = languageSearch.value; 
    
  window.location.href = getBaseURL() + '/language_info?language=' + languageName;
  return false;
}

/*
  * Figures what kind of search the user is searching, whether
  * country or language and then dispatches to the correct page
  */
function searchType() {
  let searchBox = document.getElementById('search_box');
  let searchString = searchBox.value;
  let url = getAPIBaseURL() + '/search_type/' + searchString;

  fetch(url, {method: 'get'})

  .then((response) => response.json())

  .then(function(stringTypes) {
    let stringTypeResult;
    for (let k = 0; k < stringTypes.length; k++) {
      stringTypeResult = stringTypes[k]['search_type'];
    }

    //api returns string of country code if it is a country
    if (typeof stringTypeResult === 'string') {
      loadCountryTemplate(stringTypeResult);
    }
    //api returns number of languages found if it is a language
    else if (stringTypeResult >= 1) {
      loadLanguageTemplate();
    }
    else {
      alert('Error: Search input is not an endangered language or country name.');
    }
  })

  .catch(function(error) {
    console.log(error);
  });
}