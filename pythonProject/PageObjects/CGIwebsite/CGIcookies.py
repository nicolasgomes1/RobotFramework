try:
    from robot.libraries.BuiltIn import BuiltIn
    from robot.libraries.BuiltIn import _Misc
    import robot.api.logger as logger
    from robot.api.deco import keyword
    from robot.api.parsing import VariableSection

    ROBOT = False
except Exception:
    ROBOT = False

# accept cookies#
accept_cookies = f"//div[@id='popup-buttons']/button[contains(text(),'Accept all cookies')]"
