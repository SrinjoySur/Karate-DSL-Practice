Feature: Test Script For UI Logout Feature of Contact List Website
  Background:
    * configure driver = { type: 'chrome', showDriverLog: true }
    Given driver 'https://thinking-tester-contact-list.herokuapp.com/'
    Scenario: Valid Logout
      When input('#email','user.user0@example.com')
      And input('#password','User@123')
      And submit().click('#submit')
      And waitForUrl('https://thinking-tester-contact-list.herokuapp.com/contactList')
      And submit().click('#logout')
      And waitForUrl('https://thinking-tester-contact-list.herokuapp.com')
      And match driver.url == 'https://thinking-tester-contact-list.herokuapp.com/logout'
