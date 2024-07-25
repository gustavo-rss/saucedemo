# Saucedemo Test Automation Project

**Requirements:**
- Python and Pip installed  https://www.python.org/downloads/
- Chromedriver installed in your PATH (same version of your chrome browser)   https://developer.chrome.com/docs/chromedriver/downloads
- Clone the project
- Execute the following command to install the project dependencies: 
`pip install -r requirements.txt`

**Running the tests:**
- Execute the following command to run all of the tests: `robot tests`
- Execute the following command to run all of the tests with parallel lib: `pabot tests`
- You can also run the tests by suite type tag like so:
`robot  -i smoke tests`
`robot  -i regression tests`

- You can also run the tests by feature tag like so:
`robot  -i cart tests`
`robot  -i checkout tests`
`robot  -i footer tests`
`robot  -i login tests`
`robot  -i product_list tests`
`robot  -i product_page tests`
`robot  -i side_menu tests`
- Console log of test results will be displayed and a html log file will also be generated
