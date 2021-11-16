window.addEventListener('load', initialize);

function initialize() {
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

function loadLanguages(country_code) {
  window.location.href = getBaseURL() + '/country_info?country=' + country_code;
}

function loadLanguageInfo() {
  let language_search = document.getElementById('search_box')
  let language_name = language_search.value; 
    
  window.location.href = getBaseURL() + '/language_info?language=' + language_name;
  return false;
}

/*
  * Figures what kind of search the user is searching, whether
  * country or language and then dispatches to the correct page
  */
function searchType() {
  let search_box = document.getElementById('search_box');
  let search_string = search_box.value;
  let url = getAPIBaseURL() + '/search_type/' + search_string;

  fetch(url, {method: 'get'})

  .then((response) => response.json())

  .then(function(string_types) {
    let string_type_result;
    for (let k = 0; k < string_types.length; k++) {
        string_type_result = string_types[k]['search_type'];
    }

    //api returns string of country code if it is a country
    if (typeof string_type_result === 'string') {
      loadLanguages(string_type_result);
    }
    //api returns number of languages found if it is a language
    else if (string_type_result >= 1) {
      loadLanguageInfo();
    }
    else {
      alert('Error: Search input is not an endangered language or country name.');
    }
  })

  .catch(function(error) {
      console.log(error);
  });
}