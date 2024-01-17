from selenium.webdriver.common.by import By

from pages.base_page import BasePage


class LoginPage(BasePage):
    EMAIL_FIELD = (By.ID, 'login-email')
    PASSWORD_FIELD = (By.ID, 'login-password')
    LOGIN_BUTTON = (By.XPATH, '//button[@type="submit"]/span[contains(text(), "Acceseaza cont")]')
    ERROR_MESSAGE = (By.CSS_SELECTOR, 'div[class ="toasted bubble error"]')
    SUCCESS_MESSAGE = (By.CSS_SELECTOR, 'div[class ="toasted bubble success"]')
    LOGOUT_BUTTON = (By.XPATH, '//div//ul//li[@class = "menu-item"]/a[@class= "logout menu-item-link"]')

    def set_email_object(self, email):
        self.driver.find_element(*self.EMAIL_FIELD).send_keys(email)

    def set_password_object(self, password):
        self.driver.find_element(*self.PASSWORD_FIELD).send_keys(password)

    def click_login_button(self):
        self.driver.find_element(*self.LOGIN_BUTTON).click()

    def click_logout_button(self):
        self.driver.find_element(*self.LOGOUT_BUTTON).click()

    def get_error_message(self):
        return self.driver.find_element(*self.ERROR_MESSAGE).text

    def get_success_message(self):
        return self.driver.find_element(*self.SUCCESS_MESSAGE).text
