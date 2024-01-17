import time

from behave import *


@when('I enter an "{email}" address')
def step_impl(context, email):
    context.login_page.set_email_object(email)


@when('I enter a "{password}"')
def step_impl(context, password):
    context.login_page.set_password_object(password)


@when('I click Acceseaza cont button')
def step_impl(context):
    context.login_page.click_login_button()


@when('I click on Logout button')
def step_impl(context):
    context.login_page.click_logout_button()


@then('I should see an "{error}" message')
def step_impl(context, error):
    error_message_returned = context.login_page.get_error_message()
    assert error == error_message_returned, f'Expected error {error}, Actual error {error_message_returned}'


@then('I should receive a "{success}" message')
def step_impl(context, success):
    time.sleep(1)
    success_message_returned = context.login_page.get_success_message()
    assert success == success_message_returned
