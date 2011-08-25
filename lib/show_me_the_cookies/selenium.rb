class ShowMeTheCookies::Selenium
  def initialize(driver)
    @browser = driver.browser
    self
  end

  def show_me_the_cookie(cookie_name)
    raise 'not implemented for Selenium driver yet'
  end

  def show_me_the_cookies
    @browser.manage.all_cookies.map(&:inspect).join("\n")
  end

  def delete_cookie(cookie_name)
    @browser.manage.delete_cookie(cookie_name)
  end
end