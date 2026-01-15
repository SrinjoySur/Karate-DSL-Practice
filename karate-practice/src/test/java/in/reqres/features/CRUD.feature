Feature: Test Script for CRUD operation Testing of reqres.in
  Background:
    * url 'https://reqres.in'
    Scenario: create record in collection order1
      * def record =
      """
      {
        "data": {
        "title": "Crew List100",
        "completed": "false"
        }
      }
      """
      Given path 'app/collections/order1/records'
      And header Authorization = 'Bearer ' + 'c080c712d498eb91856a070ddc9421f3107b6635b20e8859899f87d12ec57a3f'
      And request record
      When method post
      Then status 201
      And print response
    Scenario: list all records
      * def records =
    """
      {
        "data": {
        "title": "Crew List",
        "completed": "false"
        }
      }
      """
      Given path 'app/collections/order1/records'
      And header Authorization = 'Bearer ' + 'c080c712d498eb91856a070ddc9421f3107b6635b20e8859899f87d12ec57a3f'
      When method get
      Then status 200
      And match response.data[*].data contains records.data