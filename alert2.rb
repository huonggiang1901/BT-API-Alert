require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.get 'https://www.seleniumeasy.com/test/javascript-alert-box-demo.html?fbclid=IwAR3sgW6BZnDFsMzpeXHL7lEq8U-CTQXORN3hWGR0VqXLDzhm8Mk9AyJHK28'
driver.manage.window.maximize
button = driver.find_element(xpath: '//body/div[@id="easycont"]/div[1]/div[2]/div[2]/div[2]/button[1]')
button.click
sleep 2
alert = driver.switch_to.alert
alert.accept
sleep 2
button = driver.find_element(xpath: '//body/div[@id="easycont"]/div[1]/div[2]/div[2]/div[2]/button[1]')
button.click
sleep 2
alert = driver.switch_to.alert
alert.dismiss
sleep 2
driver.quit