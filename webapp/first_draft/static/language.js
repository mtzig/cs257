/*
 * language.js
 * Thomas Zeng and Cole Weinstein, 8 November 2021
 */

window.onload = initialize;

function initialize() {
    let country_button = document.getElementById('country_button');
    if (country_button) {
      country_button.onclick = toggleCountries;
    }

    let search = document.getElementById('search_button');
    if(search) {
      search.onclick = searchType;
    }

    let clear_button = document.getElementById('clear_button');
    if(clear_button){
      clear_button.onclick = clearData;
    }
}

// Returns the base URL of the API, onto which endpoint
// components can be appended.
function getAPIBaseURL() {
    let baseURL = window.location.protocol
                    + '//' + window.location.hostname
                    + ':' + window.location.port
                    + '/api';
    return baseURL;
}

function toggleCountries() {
    let country_button = document.getElementById('country_button');
    if (country_button) {
      if (country_button.value == "unloaded") {
        loadCountries();
        country_button.value = "loaded"
      }
      else {
        let country_header = document.getElementById('country_header');
        let country_list = document.getElementById('country_list');
        country_header.innerHTML = '';
        country_list.innerHTML = '';
        country_button.value = "unloaded";
      }
    }
}

function clearData() {
  let language_div = document.getElementById('language_info_div');
  let country_header = document.getElementById('country_header');
  let country_list = document.getElementById('country_list');
  let country_language_header = document.getElementById('country_language_header');
  let country_langauge_list = document.getElementById('country_language_list');
  let country_button = document.getElementById('country_button');

  language_div.innerHTML = '';
  country_header.innerHTML = '';
  country_list.innerHTML = '';
  country_language_header.innerHTML = '';
  country_langauge_list.innerHTML = '';
  country_button.value = 'unloaded';
}

function loadCountries() {
    let url = getAPIBaseURL() + '/countries/';

    // Send the request to the API /countries/ endpoint
    fetch(url, {method: 'get'})

    // When the results come back, transform them from a JSON string into
    // a Javascript object (in this case, a list of country dictionaries).
    .then((response) => response.json())

    // Once you have your list of country dictionaries, use it to build
    // an HTML table displaying the country names.
    .then(function(countries) {
        // Add the <li> elements to the <ul> element
        let listBody = '';
        for (let k = 0; k < countries.length; k++) {
            let country = countries[k];
            listBody += '<li>' + country['country'] + '</li>\n';
        }

        let header = document.getElementById('country_header');
        if (header) {
          header.innerHTML = 'Countries';
        }

        let list = document.getElementById('country_list');
        if (list) {
            list.innerHTML = listBody;
        }
    })

    // Log the error if anything went wrong during the fetch.
    .catch(function(error) {
        console.log(error);
    });
}

function loadLanguages() {
    let country_search = document.getElementById('search_box')
    let country_name = country_search.value; 
    let url = getAPIBaseURL() + '/country/language/' + country_name;

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(languages) {
        let listBody = '';
        for (let k = 0; k < languages.length; k++) {
            let language = languages[k];
            listBody += '<li>' + language['language_name'] + '</li>\n';
        }

        let header = document.getElementById('country_language_header');
        if (header) {
          header.innerHTML = 'Endangered languages of ' + country_name;
        }

        // Put the table body we just built inside the table that's already on the page.
        let languageList = document.getElementById('country_language_list');
        if (languageList) {
            languageList.innerHTML = listBody;
        }
    })

    .catch(function(error) {
        console.log(error);
    });

    country_search.value = '';
}

function loadLanguageInfo() {
    let language_search = document.getElementById('search_box')
    let language_name = language_search.value; 
    let url = getAPIBaseURL() + '/language/' + language_name;

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(languages) {
        let divBody = '';
        
        for (let k = 0; k < languages.length; k++) {
            let language = languages[k];
            let listBody = '';
            listBody += '<li>Spanish Name: ' + language['es_name'] + '</li>\n'
                      + '<li>French Name: ' + language['fr_name'] + '</li>\n'
                      + '<li>Name in the Language: ' + language['native_name'] + '</li>\n'
                      + '<li>Number of Speakers: ' + language['speakers'] + '</li>\n'
                      + '<li>Level of Endangerment: ' + language['vulnerability'] + '</li>\n'
                      + '<li>Country: ' + language['country'] + '</li>\n'
                      + '<li>Latitude: ' + language['lat'] + '</li>\n'
                      + '<li>Longitude: ' + language['long'] + '</li>\n'

            divBody += '<h2 id=\"language_' + k + '_header\">' + language['en_name'] + '</h2>\n'
                     + '<ul id=\"language_' + k + '_list\">\n' 
                        + listBody
                     + ' </ul>\n';
        }

        // Put the contents of the divBody we built into the div element on the page.
        let div = document.getElementById('language_info_div');
        if (div) {
          div.innerHTML = divBody;
        }
    })

    .catch(function(error) {
        console.log(error);
    });

    language_search.value = '';
}

function searchType() {
    let search_box = document.getElementById('search_box');
    let search_string = search_box.value;
    let url = getAPIBaseURL() + '/search_type/' + search_string;

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(string_types) {
        let string_type_result = 0;
        //let header = '';
        for (let k = 0; k < string_types.length; k++) {
            string_type_result += string_types[k]['search_type'];
        }

        // Call the appropriate method based on whether search_string is a country or a language.
        if (string_type_result == 0) {
          loadLanguages();
        }
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