Feature: Test Script For UI Registration Feature of Contact List Website
  Background:
    * configure driver = { type: 'chrome', showDriverLog: true }

  Scenario: register a single user
    Given driver 'com.herokuapp.thinking-tester-contact-list'
    When click('#signup')
    When waitForUrl('https://thinking-tester-contact-list.herokuapp.com/addUser')
    When input('#firstName','User')
    When input('#lastName','User1')
    When input('#email','user.user1@example.com')
    When input('#password','User@123')
    When click('#submit')
    Then match driver.url == 'https://thinking-tester-contact-list.herokuapp.com/contactList'