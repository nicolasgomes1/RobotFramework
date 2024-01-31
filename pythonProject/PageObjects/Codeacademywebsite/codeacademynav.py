try:
    from robot.libraries.BuiltIn import BuiltIn
    from robot.libraries.BuiltIn import _Misc
    import robot.api.logger as logger
    from robot.api.deco import keyword
    from robot.api.parsing import VariableSection
    ROBOT = False
except Exception:
    ROBOT = False

accept = f"//*[@id='onetrust-button-group']/button[@id='onetrust-accept-btn-handler']"

desktop_menu = f"//div[@data-testid='desktop-menu']"
catalog_select = f"//button[@data-testid='header-catalog']"
resources_select = f"//button[@data-testid='header-resources']"

resource_dropdown = f"//div[@data-testid='resources-menu-dropdown']"

verify_page = f"//*[@id='docs-page-title']"

reacts = f"//div[@data-testid='desktop-menu']"


@keyword("Select wording")
def my_word(resource):
    selection = f"//a[@href='/resources/docs/{resource}']".lower()
    return selection


@keyword("Change programming")
def my_word1(resource1):
    selection1 = f"{reacts}//a[@href='/resources/docs/{resource1}']".lower()
    return selection1