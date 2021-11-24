AUTHORS: Thomas Zeng, Cole Weinstein


DATA: Statistics about Endangered Languages, e.g. geographic data, num speakers, endangered level

FEATURES CURRENTLY WORKING:
- Can search for information about specific language
- Can search for endangered languages of specific country
- interactive map that displays a list of a few endangered languages for each country
  - hovering over a country displays a popup with the country's name, number of endangered languages, and up to 5 of its endangered languages, arbirtrarily selected
  - clicking on a country leads to a page with a list of every endangered language in the country 
- basic navigation structure of website
  - navbar featuring home button and about page is present on each page
  - search bar present on each page; allows for user to search for a country or language by name
  - country_template page has links to language_templates for each of its endangered languages
  - language_template page has links to country_templates for each country the endangered language is found in
    - 'Countries' field displays a list of all the countries the language is found in (fixed bug with a new listing of each language feature for each country the language was found in)


FEATURES NOT YET WORKING:
- dots on map representing a specific language and its location
- color code for each country on map based on number of endangered languages in that country
- robustness of search feature
  - searching for countries currently has to be exactly like how they looked in original database, e.g. 'Iran (Islamic Republic of)'
  - languages with multiple names, like Boro, print duplicates of each language feature
    - add'l, no distinction of country for languages; ie. Boro (ES) is from '' and Karaboro is from 'Ethiopia, Togo', but the page for Boro lists 'Countries:  , Ethiopia, Togo' twice. These languages and the countries they are from should be distinguished
- better and more consistant css/colors
- better format of how list of languages are displayed for a country
