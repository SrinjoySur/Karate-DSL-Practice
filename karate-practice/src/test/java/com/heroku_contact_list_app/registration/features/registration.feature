Feature: Test Script For UI Registration Feature of Contact List Website
  Background:
    * configure driver = { type: 'chrome', showDriverLog: true }
    Given driver 'https://thinking-tester-contact-list.herokuapp.com/'
  Scenario: register a single user
    When waitForEnabled('#signup').click()
    And waitForUrl('https://thinking-tester-contact-list.herokuapp.com/addUser')
    And  waitUntil("document.readyState == 'complete'")
    And input('#firstName','User')
    And input('#lastName','User2')
    And input('#email','user.user2@example.com')
    And input('#password','User@123')
    And waitForEnabled('#submit').click()
    Then waitForUrl('https://thinking-tester-contact-list.herokuapp.com/contactList')
    And match driver.url == 'https://thinking-tester-contact-list.herokuapp.com/contactList'