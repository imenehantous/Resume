*** Settings ***
Documentation    CV Imene Hantous
Library           SeleniumLibrary 


*** Variables ***

${URL}=    https://imenehantous.github.io/resume/#
${browser}=    firefox

*** Test Cases ***
Ouverture du navigateur
    Open Browser    ${URL}    ${browser}   
    Maximize Browser Window
    Sleep    4
  
Test de la strucrures de la page
    Click Link    xpath://a[normalize-space()='Compétences']
    Sleep    3
    Execute Javascript    window.scrollTo(0,1000)
    Sleep    3
    Execute Javascript    window.scrollTo(0,-5000)
    Sleep    3
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)
    Sleep    3
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)
    Sleep    3
capture de l'ecran
    capture de l'ecran
verfier adresse url de la page
    verfier adresse url de la page
verfier le reste des elements de la page
    verfier le reste des elements de la page
verfier le lien vers le pdf
    verfier le lien vers le pdf
Verification des elements internes
    verifier la page du cv
Fermer le navigateur
    Close Browser

*** Keywords ***
verifier la page du cv

    Page Should Contain    COMPÉTENCES
    Sleep    2
    Page Should Contain    Éducation
    Sleep    2
    Page Should Contain    Profil
    Sleep    2
    
verfier adresse url de la page
    Location Should Be  https://imenehantous.github.io/resume/#
verfier le reste des elements de la page
    Page Should Contain Element  xpath=//div[normalize-space()='COMPÉTENCES']
    Page Should Contain Element  xpath=//div[normalize-space()='Éducation']
verfier le lien vers le pdf
    Page Should Contain Element  xpath=//a[normalize-space()='Download CV']
capture de l'ecran
    Capture Page Screenshot  cv.png 