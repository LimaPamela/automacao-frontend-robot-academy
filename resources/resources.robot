*** Settings ***

Library    RequestsLibrary
Library    BuiltIn
Library    FakerLibrary    locale=pt_BR
Library    Screenshot
Library    SeleniumLibrary
Library    String
Library    strings_utils.py

Resource   ../resources/auth.robot
Resource   ../resources/variables.robot
Resource   ../keywords/CT1_login_admin_academy.robot
Resource   ../keywords/CT2_login_email_invalido.robot
Resource   ../keywords/CT3_login_senha_invalido.robot
Resource   ../keywords/CT4_register_new_user.robot
Resource   ../keywords/CT5_register_new_user_empty.robot


