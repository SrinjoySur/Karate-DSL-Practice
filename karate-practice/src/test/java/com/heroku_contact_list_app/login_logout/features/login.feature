Feature: Test Script For UI Login Feature of Contact List Website
  Background:
    * configure driver = { type: 'chrome', showDriverLog: true }
    Given driver 'https://thinking-tester-contact-list.herokuapp.com/'
  Scenario: Valid Login
    When input('#email','user.user0@example.com')
    And input('#password','User@123')
    And submit().click('#submit')
    Then waitForUrl('https://thinking-tester-contact-list.herokuapp.com/contactList')
    And match driver.url == 'https://thinking-tester-contact-list.herokuapp.com/contactList'