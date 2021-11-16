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

  function initialize() {
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
        fills: { defaultFill: '#999999' },
        geographyConfig: {
            popupTemplate: hoverPopupTemplate, // call this to obtain the HTML for the hover popup
            borderColor: '#eeeeee', // state/country border color
            highlightFillColor: '#99dd99', // color when you hover on a state/country
            highlightBorderColor: '#000000', // border color when you hover on a state/country
        }
      });

      /*var bombs = [{
          name: 'Joe 4',
          radius: 1,
          yield: 400,
          country: 'USSR',
          fillKey: 'RUS',
          significance: 'First fusion weapon test by the USSR (not "staged")',
          date: '1953-08-12',
          latitude: 50.07,
          longitude: 78.43
        },{
          name: 'RDS-37',
          radius: 1,
          yield: 1600,
          country: 'USSR',
          fillKey: 'RUS',
          significance: 'First "staged" thermonuclear weapon test by the USSR (deployable)',
          date: '1955-11-22',
          latitude: 50.07,
          longitude: 78.43

        },{
          name: 'Tsar Bomba',
          radius: 1,
          yield: 50000,
          country: 'USSR',
          fillKey: 'RUS',
          significance: 'Largest thermonuclear weapon ever tested—scaled down from its initial 100 Mt design by 50%',
          date: '1961-10-31',
          latitude: 73.482,
          longitude: 54.5854
        }
      ];
      //draw bubbles for bombs
      map.bubbles(bombs, {
          popupTemplate: function (geo, data) {
                  return ['<div class="hoverinfo">' +  data.name,
                  '<br/>Payload: ' +  data.yield + ' kilotons',
                  '<br/>Country: ' +  data.country + '',
                  '<br/>Date: ' +  data.date + '',
                  '</div>'].join('');
          }
      });*/

  }


  function onMapDone(dataMap) {
      dataMap.svg.selectAll('.datamaps-subunit').on('click', onCountryClick);
  }

  function hoverPopupTemplate(geography, data) {
      let numLanguages = 0;
      if (data && 'numLanguages' in data) {
          numLanguages = data.numLanguages;
      }

      let languageArray = [];
      if (data && 'languages' in data) {
        languageArray = data.languages;
      }

      let hoverPopUpDisplay = '<div class="hoverpopup"><strong>' + geography.properties.name + '</strong><br>\n'
                            + '<p>' + numLanguages + ' Endangered Languages</p><br>\n<ul>\n';
      for(language in languageArray){
        hoverPopUpDisplay += '<li>' + languageArray[language] + '</li>\n'
      }        
      hoverPopUpDisplay += '</ul>\n</div>';

      return hoverPopUpDisplay;
  }

  function onCountryClick(geography) {
      country_code = geography.id;
      window.location.href = window.location + '/country_info?country=' + country_code;
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

