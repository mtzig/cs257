/*
 * map-sample-world.js
 * Jeff Ondich
 * 11 November 2020
 *
 * Simple sample using the Datamaps library to show how to incorporate
 * a US map in your project.
 *
 * Datamaps is Copyright (c) 2012 Mark DiMarco
 * https://github.com/markmarkoh/datamaps
 */


window.addEventListener('load', initialize);

// This is example data that gets used in the click-handler below. Also, the fillColor
// specifies the color those countries should be. There's also a default color specified
// in the Datamap initializer below.

function getBaseURL() {
    let baseURL = window.location.protocol
                    + '//' + window.location.hostname
                    + ':' + window.location.port;
    return baseURL;
}

function getAPIBaseURL() {
    let baseURL = window.location.protocol
                    + '//' + window.location.hostname
                    + ':' + window.location.port
                    + '/api';
    return baseURL;
}

function loadLanguagesFromCountry() {
  let params = (new URL(document.location)).searchParams;
  let country_code = params.get('country');
  let url = getAPIBaseURL() + '/country/language/' + country_code;
  
  // Send the request to the API /countries/ endpoint
  fetch(url, {method: 'get'})

  // When the results come back, transform them from a JSON string into
  // a Javascript object (in this case, a list of country dictionaries).
  .then((response) => response.json())

  .then(function(languages) {
        let listBody = '';
        for (let k = 0; k < languages.length; k++) {
            let language = languages[k];
            url = getBaseURL() + '/language_info/?language=' + language['language_name'] + '&country=' + country_code;
            listBody += '<li><a href="' + url + '">' + language['language_name'] + '</a></li>\n';
        }

        let title = document.getElementById('title');
        if (title) {
            title.innerHTML = 'Endangered Languages of ' + country_code;
        }

        let header = document.getElementById('country_language_header');
        if (header) {
          header.innerHTML = 'Endangered languages of ' + country_code;
        }

        // Put the table body we just built inside the table that's already on the page.
        let languageList = document.getElementById('language_list');
        if (languageList) {
            languageList.innerHTML = listBody;
        }
    })

  // Log the error if anything went wrong during the fetch.
  .catch(function(error) {
      console.log(error);
  });
}

function initialize() {
    loadLanguagesFromCountry();
}

