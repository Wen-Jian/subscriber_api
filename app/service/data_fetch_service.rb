require 'selenium-webdriver'
module DataFetchService
    class DataFetchService
        attr_accessor :url
        def initialize(url)
            @url = url
        end
        def fetch
            options = Selenium::WebDriver::Chrome::Options.new
            # driver = Selenium::WebDriver.for :chrome, :args => ["--user-agent=USER_AGENT = 'Mozilla/5.0(iPad; U; CPU iPhone OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B314 Safari/531.21.10;'", "headless"]
            driver = Selenium::WebDriver.for :chrome, :args => ["--user-agent=USER_AGENT = 'Mozilla/5.0(iPad; U; CPU iPhone OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B314 Safari/531.21.10;'"]
            driver.execute_script('return navigator.userAgent')
            driver.execute_script('return navigator.webdriver')
            driver.execute_script('return navigator.plugin')
            driver.execute_script('return navigator.languages')
            # driver.navigate.to "https://www.google.com.tw/search?q=skyscanner&oq=skyscanner&aqs=chrome..69i57j69i60l3j0l2.2094j1j9&sourceid=chrome&ie=UTF-8"
            driver.navigate.to "https://www.google.com.tw/search?q=test&oq=test&aqs=chrome..69i57j69i60l3j35i39j0.1719j1j7&sourceid=chrome&ie=UTF-8"
            puts driver.title
            # driver.find_element(xpath: "//*[@id="rso"]/div[1]/div/div/div/div/h3/a")
            element = driver.find_element(xpath: "//*[@id='ires']/ol/div[1]/h3/a")
            driver.save_screenshot('screenshot.png')
            driver.action.move_to(element)
            element.click
            # driver.execute_script("return Object.defineProperty(navigator, 'plugins', {
            #     get: function() {
            #       return [1, 2, 3, 4, 5];
            #     },
            #   });")
            
            # driver.navigate.to @url
        end
    end
end