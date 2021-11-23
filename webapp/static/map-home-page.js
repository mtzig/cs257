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

// This is example data that gets used in the click-handler below. Also, the fillColor
// specifies the color those countries should be. There's also a default color specified
// in the Datamap initializer below.

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

  // let country_button = document.getElementById('country_button');
  // if (country_button) {
  //   country_button.onclick = toggleCountries;
  // }

  // let search = document.getElementById('search_button');
  // if(search) {
  //   search.onclick = searchType;
  // }

  // let clear_button = document.getElementById('clear_button');
  // if(clear_button){
  //   clear_button.onclick = clearData;
  // }
}

function initializeMap() {
  var map = new Datamap({ element: document.getElementById('map-container'),
    scope: 'world',
    projection: 'mercator',
    done: onMapDone, 
    data: countryData, // here's some data that will be used by the popup template
	//legend: True,
    fills: { //defaultFill: '#999999' 
		    HIGH: '#2c0845',
        MEDIUM: 'blue',
        LOW: '#123456',
        defaultFill: '#999999'
	
	},
    geographyConfig: {
      popupTemplate: hoverPopupTemplate, // call this to obtain the HTML for the hover popup
      borderColor: '#eeeeee', //country border color
      highlightFillColor: '#99dd99', // color when you hover on a state/country
      highlightBorderColor: '#000000', // border color when you hover on a state/country
    }
	
  });
	
	map.legend({
    legendTitle : "Number of Endangered Languages in Country",
    defaultFillName: "No data",
    labels: {
      LOW: "0-9",
      MEDIUM: "10-49",
      HIGH: "\u2265 50"
    }
  }

  );
  
	
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

// function toggleCountries() {
//     let country_button = document.getElementById('country_button');
//     if (country_button) {
//       if (country_button.value == "unloaded") {
//         loadCountries();
//         country_button.value = "loaded"
//       }
//       else {
//         let country_header = document.getElementById('country_header');
//         let country_list = document.getElementById('country_list');
//         country_header.innerHTML = '';
//         country_list.innerHTML = '';
//         country_button.value = "unloaded";
//       }
//     }
// }

// function clearData() {
//   let language_div = document.getElementById('language_info_div');
//   let country_header = document.getElementById('country_header');
//   let country_list = document.getElementById('country_list');
//   let country_language_header = document.getElementById('country_language_header');
//   let country_langauge_list = document.getElementById('country_language_list');
//   let country_button = document.getElementById('country_button');

//   language_div.innerHTML = '';
//   country_header.innerHTML = '';
//   country_list.innerHTML = '';
//   country_language_header.innerHTML = '';
//   country_langauge_list.innerHTML = '';
//   country_button.value = 'unloaded';
// }

// function loadCountries() {
//     let url = getAPIBaseURL() + '/countries/';

//     // Send the request to the API /countries/ endpoint
//     fetch(url, {method: 'get'})

//     // When the results come back, transform them from a JSON string into
//     // a Javascript object (in this case, a list of country dictionaries).
//     .then((response) => response.json())

//     // Once you have your list of country dictionaries, use it to build
//     // an HTML table displaying the country names.
//     .then(function(countries) {
//         // Add the <li> elements to the <ul> element
//         let listBody = '';
//         for (let k = 0; k < countries.length; k++) {
//             let country = countries[k];
//             listBody += '<li>' + country['country'] + '</li>\n';
//         }

//         let header = document.getElementById('country_header');
//         if (header) {
//           header.innerHTML = 'Countries';
//         }

//         let list = document.getElementById('country_list');
//         if (list) {
//             list.innerHTML = listBody;
//         }
//     })

//     // Log the error if anything went wrong during the fetch.
//     .catch(function(error) {
//         console.log(error);
//     });
// }

