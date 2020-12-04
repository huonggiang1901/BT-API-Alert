require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.get 'https://www.seleniumeasy.com/test/javascript-alert-box-demo.html?fbclid=IwAR3sgW6BZnDFsMzpeXHL7lEq8U-CTQXORN3hWGR0VqXLDzhm8Mk9AyJHK28'
button = driver.find_element(xpath: '//button[contains(text(),"Click for Prompt Box")]')
button.click
sleep 2
alert = driver.switch_to.alert
alert.send_keys ("giang")
sleep 2
alert.accept
sleep 2
driver.quit