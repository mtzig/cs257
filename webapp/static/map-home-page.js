/*
 * map-home-page.js
 * Thomas Zeng and Cole Weinstein
 * Adapted from Jeff Ondich's map-sample-world.js
 * 15 November 2021
 *
 * Datamaps is Copyright (c) 2012 Mark DiMarco
 * https://github.com/markmarkoh/datamaps
 */


window.addEventListener('load', initializeMapHomePage);



function getAPIBaseURL() {
  let baseURL = window.location.protocol
              + '//' + window.location.hostname
              + ':' + window.location.port
              + '/api';
  return baseURL;
}

var countryData = loadCountryInfo();
var loadCountryInfoHasRun = false;

function loadCountryInfo() {
  let url = getAPIBaseURL() + '/country_data/';
  
  // Send the request to the API /countries/ endpoint
  fetch(url, {method: 'get'})

  // When the results come back, transform them from a JSON string into
  // a Javascript object (in this case, a list of country dictionaries).
  .then((response) => response.json())

  .then(function(countryInfo) {
    if (loadCountryInfoHasRun) {
        return;
      }
    loadCountryInfoHasRun = true;
    countryData = countryInfo;
    initializeMap();
  })

  // Log the error if anything went wrong during the fetch.
  .catch(function(error) {
      console.log(error);
  });
}

function initializeMapHomePage() {
  loadCountryInfo();
}

function initializeMap() {
  var map = new Datamap({ element: document.getElementById('map-container'),
    scope: 'world',
    projection: 'mercator',
    done: onMapDone, 
    data: countryData,
    fills: {
		    HIGH: '#2c0845',
        MEDIUM: '#9833dd',
        LOW: '#d4a5f5',
        defaultFill: '#999999'
	
	},
    geographyConfig: {
      popupTemplate: hoverPopupTemplate,
      borderColor: '#eeeeee',
      highlightFillColor: '#99dd99',
      highlightBorderColor: '#000000',
    }
	
  });
	
	map.legend({
    legendTitle : "Number of Endangered Languages in Country",
    defaultFillName: "No data",
    labels: {
      LOW: "0-20",
      MEDIUM: "21-80",
      HIGH: "\u226581"
    }
  });
}


function onMapDone(dataMap) {
  dataMap.svg.selectAll('.datamaps-subunit').on('click', onCountryClick);
}

function hoverPopupTemplate(geography, data) {
  let hoverPopUpDisplay;
  let numLanguages;
  
  if (data) {
    if (data && 'numLanguages' in data) {
      numLanguages = data.numLanguages;
    }

    let languageArray = [];
    if (data && 'languages' in data) {
      languageArray = data.languages;
    }

    hoverPopUpDisplay = '<div class="hoverpopup"><strong>' + geography.properties.name + '</strong><br>\n'
                          + '<p>' + numLanguages + ' Endangered Languages</p><br>\n<p>Most Endangered Languages of This Country</p<ul>\n';

    for(language in languageArray){
      hoverPopUpDisplay += '<li>' + languageArray[language] + '</li>\n'
    }

    hoverPopUpDisplay += '</ul>\n</div>';
  } else {
	  hoverPopUpDisplay = '<div class="hoverpopup"><strong>' + geography.properties.name + '</strong><br><p>No Data</p><br>\n</div>'
  }

  return hoverPopUpDisplay;
}

function onCountryClick(geography) {
  countryCode = geography.id;
  window.location.href = window.location + '/country_info?country=' + countryCode;
}

