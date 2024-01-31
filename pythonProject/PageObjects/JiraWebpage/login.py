try:
    from robot.libraries.BuiltIn import BuiltIn
    from robot.libraries.BuiltIn import _Misc
    import robot.api.logger as logger
    from robot.api.deco import keyword
    from robot.api.parsing import VariableSection

    ROBOT = False
except Exception:
    ROBOT = False

# login
email = f"//div//*[@name='username']"
submit = f"//div//*[@id='login-submit']"
password = f"//div//*[@name='password']"

# Top navigation
navcluster = f"//button[@id='createGlobalItem']"

# form to create jira ticket
form = f"//section[@data-testid='minimizable-modal.ui.modal-container.modal']"

# select issue {issue}
issuetype = f"{form}//div[@id='issue-create.ui.modal.create-form.type-picker.issue-type-select']/div"


@keyword("Select issue type")
def my_issue(issue):
    while issue:
        issue2 = f"{issuetype}//div[contains(text(),'{issue}')]"
        return issue2


createticket = f"{form}//*[@data-testid='issue-create.common.ui.footer.create-button']"
summaryfield = f"{form}//input[@id='summary-field']"
description = f"{form}//*[@data-testid='click-wrapper']"

# Verify issue created
issuecreated_verification = f"//div[data-testid='jira-issue-create.modal.create-form.success-flag']"

ticket_created_validation = f"//*/div[16]/div/div/div/div"

ticket_created_validation_message = f"{ticket_created_validation}/div/div/div/div[1]/div/span[2]"

dismiss_ticket_message = f"{ticket_created_validation}//span[@aria-label='Dismiss']"
