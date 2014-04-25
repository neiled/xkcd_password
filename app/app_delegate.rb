class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible
    
    @window.rootViewController = PasswordController.alloc.initWithNibName(nil, bundle: nil)
  end
end
