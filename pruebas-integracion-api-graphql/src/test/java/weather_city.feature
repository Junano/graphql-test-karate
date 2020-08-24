Feature: Get everything retrieved by querying the weather API

  Background:
    * url 'https://graphql-weather-api.herokuapp.com/'

  Scenario: validate simple graphql request
    #It is validated by creating the structure by javascript of the request to be made
    Given text query =
    """
    {
      getCityByName(name: "Gothenburg") {
        id
        name
        country
        weather {
          summary {
            title
          }
        }
      }
    }
    """
    And request { query: '#(query)' }
    When method POST
    Then status 200
    #validates that in the response the climate is equal to Clouds
    And match $.data.getCityByName.weather.summary.title == 'Clouds'

  Scenario: validate from a file data for request
    #Use defined file for body request
    Given def query = read('by-city.graphql')
    And print 'query:', query
    #Use defined value to name for file request
    And def variables = {id: '2988507'}
    And print 'variables:', variables
    #The values obtained for the request are added
    And request { query: '#(query)', variables: '#(variables)' }
    And print 'request:', request
    When method POST
    Then status 200
    And match $.data.getCityById[0].name == 'Paris'

