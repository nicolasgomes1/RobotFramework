try:
    from robot.libraries.BuiltIn import BuiltIn
    import robot.api.logger as logger
    from robot.api.deco import keyword
    from robot.api.parsing import VariableSection

    ROBOT = False
except Exception:
    ROBOT = False

# cookies
cookiesatlassian = f"//button[@id='onetrust-accept-btn-handler']"

# Footer
footerpath = f"//*[@id='footer']/*/*/*/*/*/*/*/*/*"


@keyword("Select Atlassian Link")
def my_word1(applink):
    selection = f"{footerpath}[contains(text(),'{applink}')]"
    return selection


main_section = f"//div[@class='column nav-comp-column']//*"


# select header link
@keyword("Select Header menu")
def my_word(applink1):
    selection = f"{main_section}[contains(text(),\'{applink1}\')]"
    return selection


# Verify Title
# titlepage= f"//main/div[3]//*"


titlepage = f"//main/div//*"


@keyword("Verify Correct Title page")
def my_title(title, space=None):
    a = f"{titlepage}[contains(text(),\'{space}{title}{space}\')]"
    return a
