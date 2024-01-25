This project was created to test some of the functionalities of the website Flip.ro

To run this application, it is preferable to use the IDE Pycharm, and you need to have python 3.12 installed.

To verify that you have Python installed and that you have the right version, you need to run to Terminal command:
python --version . If the result doesn't show a version number, you need to download and install Python from here
https://www.python.org/downloads/ 

After you select the folder in your computer and you cloned the project, you need to run to next command in Terminal,
so that the required libraries (behave, selenium, webdriver-manager and behave-html-formatter):

```commandline
pip install -r .\requirements.txt
```
To run the tests and receive a report, you need to use the next command in the Terminal:
```commandline
behave -f behave_html_formatter:HTMLFormatter -o behave-report.html
```
Doing this, will create a HTML file in the project's main directory, which can be opened with any browser.


If you want to run only some tests, you can use the filters that are found in the files of the features directory,
written above every scenario or scenario outline.
To do so, you need to run the next command in the Terminal, putting after the "--tags="  the tag that you want to test:
```commandline
behave -f behave_html_formatter:HTMLFormatter -o behave-report.html --tags=login
```
This will also generate a HTML file, where only the selected tests will appear, the others being marked as skipped.