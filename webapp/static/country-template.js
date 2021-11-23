/*
 * country-template.js
 * Thomas Zeng and Cole Weinstein
 * 15 November 2021
 *
 * Simple js to fill the country_template.html page upon loading. 
 */


window.addEventListener('load', initializeCountryTemplate);

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
  let countryCode = params.get('country');
  let languagesUrl = getAPIBaseURL() + 'country/language/' + countryCode;
  let countryNameUrl = getAPIBaseURL() + 'country/name/' + countryCode;
  
  // Send the request to the API /countries/ endpoint
  fetch(countryNameUrl, {method: 'get'})

  // When the results come back, transform them from a JSON string into
  // a Javascript object (in this case, a list of country dictionaries).
  .then((response) => response.json())

  .then(function(countryNameList) {
    let countryNameBody = '';
    for (let k = 0; k < countryNameList.length; k++) {
      countryNameBody += countryNameList[k]['country'];
    }

    let title = document.getElementById('title');
    if (title) {
      title.innerHTML = 'Endangered Languages of ' + countryNameBody;
    }

    let header = document.getElementById('country_language_header');
    if (header) {
      header.innerHTML = 'Endangered languages of ' + countryNameBody;
    }
  })

  // Log the error if anything went wrong during the fetch.
  .catch(function(error) {
    console.log(error);
  });
  
  // Send the request to the API /countries/ endpoint
  fetch(languagesUrl, {method: 'get'})

  // When the results come back, transform them from a JSON string into
  // a Javascript object (in this case, a list of country dictionaries).
  .then((response) => response.json())

  .then(function(languages) {
    let listBody = '';
    for (let k = 0; k < languages.length; k++) {
      let language = languages[k];
      url = getBaseURL() + '/language_info/?language=' + language['language_name'] + '&country=' + countryCode;
      listBody += '<li><a href="' + url + '">' + language['language_name'] + '</a></li>\n';
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

function initializeCountryTemplate() {
  loadLanguagesFromCountry();
}

