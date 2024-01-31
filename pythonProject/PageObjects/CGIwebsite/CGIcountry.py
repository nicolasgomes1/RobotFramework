try:
    from robot.libraries.BuiltIn import BuiltIn
    from robot.libraries.BuiltIn import _Misc
    import robot.api.logger as logger
    from robot.api.deco import keyword
    from robot.api.parsing import VariableSection

    ROBOT = False
except Exception:
    ROBOT = False

country_select = f"//div[@id='block-countrywidgetcgicountries']"


@keyword("SELECT COUNTRY")
def my_function(country1):
    Country = f"//*[contains(text(),'{country1}')]"
    return Country


@keyword("Select Country Language")
def my_lang(country, language, dash, countryshortcut):
    while country or language or dash or countryshortcut:
        Country2 = f"//a[@href='https://www.cgi.com/{country}/{language}{dash}{countryshortcut}']"
        return Country2


@keyword("Verify Country Presence")
def my_verify(country3):
    """
    Arg:
    country3 (str): Verification that we are in the correct country
    """
    pass
    while country3:
        Country3 = f"{country_select}/a[contains(text(),'{country3}')]"
        return Country3
