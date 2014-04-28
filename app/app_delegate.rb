class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible
    
    controller = PasswordController.alloc.initWithNibName(nil, bundle: nil)
    nav_controller = UINavigationController.alloc.initWithRootViewController(controller)
    @window.rootViewController = nav_controller

  end
end
