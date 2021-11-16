/*
 * language-template.js
 * Jeff Ondich
 * 11 November 2020
 *
 * Simple js to fill the language_template.html page upon loading.
 */


window.addEventListener('load', initialize);

function getAPIBaseURL() {
    let baseURL = window.location.protocol
                    + '//' + window.location.hostname
                    + ':' + window.location.port
                    + '/api';
    return baseURL;
}

function loadLanguageInfo() {
  let params = (new URL(document.location)).searchParams;
  let language_en_name = params.get('language');
  let url = getAPIBaseURL() + '/language/' + language_en_name;
  
  // Send the request to the API /countries/ endpoint
  fetch(url, {method: 'get'})

  .then((response) => response.json())

  .then(function(languages) {
      let namesListBody = '';
      let endangermentListBody = '';
      let locationListBody = '';

      // Resolve: if k>1, info for every language becomes incoherently merged.
      for (let k = 0; k < languages.length; k++) {
          let language = languages[k];
          namesListBody += '<li>Spanish Name: ' + language['es_name'] + '</li>\n'
                         + '<li>French Name: ' + language['fr_name'] + '</li>\n'
                         + '<li>Name in the Language: ' + language['native_name'] + '</li>\n';
          endangermentListBody += '<li>Number of Speakers: ' + language['speakers'] + '</li>\n'
                              + '<li>Level of Endangerment: ' + language['vulnerability'] + '</li>\n';
          locationListBody += '<li>Country: ' + language['country'] + '</li>\n'
                            + '<li>Latitude: ' + language['lat'] + '</li>\n'
                            + '<li>Longitude: ' + language['long'] + '</li>\n'
      }
      // Put the contents of the divBody we built into the div element on the page.
      let title = document.getElementById('title');
      if (title) {
        title.innerHTML = language_en_name;
      }
      
      let header = document.getElementById('language_header');
      if (header) {
        header.innerHTML = language_en_name;
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

function initialize() {
    loadLanguageInfo();
}
