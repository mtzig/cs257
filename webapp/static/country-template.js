/*
 * country-template.js
 * Thomas Zeng and Cole Weinstein
 * 15 November 2021
 *
 * Simple js to fill the country_template.html page upon loading. 
 */


window.addEventListener('load', initializeCountryTemplate);

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

/*
 * Creates the html code to display the languages of a country
 */
function loadLanguagesFromCountry() {
  
  let params = (new URL(document.location)).searchParams;
  let countryCode = params.get('country');
  let languageURL = getAPIBaseURL() + '/country/language/' + countryCode;
  let countryNameURL = getAPIBaseURL() + '/country/name/' + countryCode;
  
  fetch(countryNameURL, {method: 'get'})

  .then((response) => response.json())

  .then(function(countryNameList) {
    let countryNameBody = '';
    // countryNameList should have one element, the English name of the one country with the specified ISO3 code. So, countryNameBody should just be the first (and only) element of countryNameList (ie. the name of the country).
    for (let k = 0; k < countryNameList.length; k++) {
      countryNameBody += countryNameList[k]['country'];
    }

    let title = document.getElementById('title');
    let header = document.getElementById('country_language_header');

    if (title) {
      title.innerHTML = 'Endangered Languages of ' + countryNameBody;
    }
    
    if (header) {
      header.innerHTML = 'Endangered languages of ' + countryNameBody;
    }

  })

  .catch(function(error) {
    console.log(error);
  });
  
  fetch(languageURL, {method: 'get'})

  .then((response) => response.json())

  .then(function(languages) {
    let languageListBody = '';
    // 'languages' is the list of every endangered language in the country.
    for (let k = 0; k < languages.length; k++) {
      
      let language = languages[k];
      
      url = getBaseURL() + '/language_info/?language=' + language['language_name'] + '&country=' + countryCode;
      languageListBody += '<li><a href="' + url + '">' + language['language_name'] + '</a></li>\n';

    }

    let languageList = document.getElementById('language_list');
    
    if (languageListBody == ''){
      languageListBody = 'No data found.';
    }
    
    if (languageList) {
      languageList.innerHTML = languageListBody;
    }
  })

  .catch(function(error) {
    console.log(error);
  });
}

function initializeCountryTemplate() {
  loadLanguagesFromCountry();
}

