Feature: Test Script For UI Login Feature of Contact List Website
  Background:
    * configure driver = { type: 'chrome', showDriverLog: true }
    Given driver 'com.herokuapp.thinking-tester-contact-list'
  Scenario: Valid Login
    Given input('#email','user.user0@example.com')
    And input('#password','User@123')
    And click('#submit')