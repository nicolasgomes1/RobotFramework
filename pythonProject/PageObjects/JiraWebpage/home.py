try:
    from robot.libraries.BuiltIn import BuiltIn
    from robot.libraries.BuiltIn import _Misc
    import robot.api.logger as logger
    from robot.api.deco import keyword
    from robot.api.parsing import VariableSection
    import re

    ROBOT = False
except Exception:
    ROBOT = False


@keyword("Select tab to select")
def my_home_tab(tab):
    b = f"//div[@role='tablist']/div[contains(text(),'{tab}')]"
    return b


tests11 = f"//*[@id='your-work-page-tabs-0-tab']"


def my_home_tab(tab, data_testid):
    b = f"//div[@role='tablist']/div[contains(text(),'{tab}')]"
    number = data_testid.split("-")[-1]
    tests1 = f"//*[@id='your-work-page-tabs-{number}-tab']"
    return b, tests1


#################################################################################
@keyword("select tab")
def select_tab(tab):
    b = f"//div[@role='tablist']/div[contains(text(),'{tab}')]"
    return b


@keyword("find tab xpath")
def find_tab_xpath(tab, id):
    number = id.split("-")[-1]
    xpath = f"//*[@id='your-work-page-tabs-{number}-tab']"
    return xpath


@keyword("verify ticket in home page")
def find_my_ticket_summary(ticket_title):
    validate_title = f"//*[contains(text(),'{ticket_title}')]"
    return validate_title


@keyword("verify ticket project")
def find_my_ticket_number(ticket_number1):
    validate_ticket1 = f"//*[contains(text(),\'{ticket_number1}\')]"
    return validate_ticket1


@keyword("verify project name")
def find_my_ticket_project(project_name):
    validate_project = f"//*[contains(text(),\'{project_name}\')]"
    return validate_project


########################################
######################################## tickets
ticket_panel = f"//div[@id='ak-main-content']"

ticket_detail = f"{ticket_panel}//div[@data-testid='issue.views.issue-details.issue-layout.container-left']/div"

ticket_title_header = f"{ticket_detail}/*[@id='jira-issue-header']"

ticket_title_header1 = f"{ticket_detail}//div[@data-testid='issue-field-summary.ui.issue-field-summary-inline-edit--container']"
