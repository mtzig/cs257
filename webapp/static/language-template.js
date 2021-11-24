/*
 * language-template.js
 * Thomas Zeng and Cole Weinstein
 * 15 November 2021
 *
 * Simple js to fill the language_template.html page upon loading.
 */


window.addEventListener('load', initializeLanguageTemplate);

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
 * Creates the html code to display information about the language
 */
function loadLanguageInfo() {
  let params = (new URL(document.location)).searchParams;
  let languageEnglishName = params.get('language');
  let url = getAPIBaseURL() + '/language/' + languageEnglishName;

  fetch(url, {method: 'get'})

  .then((response) => response.json())

  .then(function(languages) {
    let namesListBody = '';
    let endangermentListBody = '';
    let locationListBody = '';

    // set value to 'n/a' if it is null for better readability
    languages = JSON.parse(JSON.stringify(languages),(key, value) =>
    value == null
    ? value = 'n/a'
    : value);

    // 'languages' should be a list of one language, since no two languages have the same English name
    for (let k = 0; k < languages.length; k++) {
      let language = languages[k];
      namesListBody += '<li>Spanish Name: ' + language['es_name'] + '</li>\n'
                     + '<li>French Name: ' + language['fr_name'] + '</li>\n'
                     + '<li>Name in the Language: ' + language['native_name'] + '</li>\n';

      endangermentListBody += '<li>Number of Speakers: ' + language['speakers'] + '</li>\n'
                            + '<li>Level of Endangerment: ' + language['vulnerability'] + '</li>\n';
      
      let countriesList = language['countries'];
      let countriesHTML = '';
      
      for(let c = 0; c < countriesList.length; c++) {
        countryURL = getBaseURL() + '/country_info/?country=' + countriesList[c]['country_code'];
        countriesHTML += '<a href=\"' + countryURL + '\">' + countriesList[c]['country'] + '</a>, ';
      }
      countriesHTML = countriesHTML.substring(0, countriesHTML.length-2);
      locationListBody += '<li>Countries: ' + countriesHTML + '</li>\n'
                        + '<li>Latitude: ' + language['lat'] + '</li>\n'
                        + '<li>Longitude: ' + language['long'] + '</li>\n'
    }

    let title = document.getElementById('title');
    if (title) {
      title.innerHTML = languageEnglishName;
    }
    
    let header = document.getElementById('language_header');
    if (header) {
      header.innerHTML = languageEnglishName;
    }

    let namesList = document.getElementById('language_names');
    if (namesList) {
      namesList.innerHTML = namesListBody;
    }

    let endangermentList = document.getElementById('endangerment');
    if (endangermentList) {
      endangermentList.innerHTML = endangermentListBody;
    }

    let locationList = document.getElementById('location');
    if (locationList) {
      locationList.innerHTML = locationListBody;
    }
  })

  .catch(function(error) {
    console.log(error);
  });
}

function initializeLanguageTemplate() {
  loadLanguageInfo();
}
