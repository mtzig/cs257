/*
 * language.js
 * Thomas Zeng and Cole Weinstein, 8 November 2021
 */

window.onload = initialize;

function initialize() {
    let country_button = document.getElementById('country_button');
    if (country_button) {
        country_button.onclick = loadCountries;
    }

    let search = document.getElementById('search_button');
    if(search) {
      search.onclick = searchType;
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
}

function loadLanguageInfo() {
    let language_search = document.getElementById('search_box')
    let language_name = language_search.value; 
    let url = getAPIBaseURL() + '/language/' + language_name;

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(languages) {
        let listBody = '';
        //let header = '';
        for (let k = 0; k < languages.length; k++) {
            let language = languages[k];
            listBody += '<li>English Name: ' + language['en_name'] + '</li>\n'
                      + '<li>Spanish Name: ' + language['es_name'] + '</li>\n'
                      + '<li>French Name: ' + language['fr_name'] + '</li>\n'
                      + '<li>Name in the Language: ' + language['native_name'] + '</li>\n'
                      + '<li>Number of Speakers: ' + language['speakers'] + '</li>\n'
                      + '<li>Level of Endangerment: ' + language['vulnerability'] + '</li>\n'
                      + '<li>Country: ' + language['country'] + '</li>\n'
                      + '<li>Latitude: ' + language['lat'] + '</li>\n'
                      + '<li>Longitude: ' + language['long'] + '</li>\n'
        }

        let header = document.getElementById('language_info_header');
        if (header) {
          header.innerHTML = languages[0]['en_name'];
        }

        // Put the table body we just built inside the table that's already on the page.
        let languageList = document.getElementById('language_info_list');
        if (languageList) {
            languageList.innerHTML = listBody;
        }
    })

    .catch(function(error) {
        console.log(error);
    });
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
        else if (string_type_result == 1) {
          loadLanguageInfo();
        }
        else {
          alert('Error: Search input is not a language or country name.');
        }
    })

    .catch(function(error) {
        console.log(error);
    });
}