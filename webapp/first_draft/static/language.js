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
      search.onclick = loadLanguages;
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
    let country_search = document.getElementById('country_search')
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

        // Put the table body we just built inside the table that's already on the page.
        let languageList = document.getElementById('country_languages');
        if (languageList) {
            languageList.innerHTML = listBody;
        }
    })

    .catch(function(error) {
        console.log(error);
    });
}