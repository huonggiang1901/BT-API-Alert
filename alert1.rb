require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.get 'https://www.seleniumeasy.com/test/javascript-alert-box-demo.html?fbclid=IwAR0WmJlnHBV06_93Not4mQghy4YExqb2Q6yJBlr6YblnBF2fV9IZiTiXL2g'
button = driver.find_element(xpath: '//body/div[@id="easycont"]/div[1]/div[2]/div[1]/div[2]/button[1]')
button.click
sleep 2
alert = driver.switch_to.alert
alert.accept
sleep 2
driver.quit