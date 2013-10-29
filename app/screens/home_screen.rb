class HomeScreen < PM::WebScreen

  title "Quick Webscreen Reference"

  def will_present
    $junk = self
  end

  def content
    # You can return:
    #  1. A reference to a file placed in your resources directory
    #  2. An instance of NSURL
    self.set_credentials("admin","testtest")
    p "Creds set"
    NSURL.URLWithString("http://a1dp.com/auth/index.html")
  end

  def load_started
    # Optional
    # Called when the request starts to load
  end

  def load_finished
    # Optional
    # Called when the request is finished
  end

  def load_failed(error)
    # Optional
    # "error" is an instance of NSError
  end

end