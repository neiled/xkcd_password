class PasswordController < UIViewController

  def viewDidLoad
    super

    self.view.backgroundColor = UIColor.whiteColor

    @label = UILabel.alloc.initWithFrame(CGRectZero)
    @label.text = "Password goes here..."
    @label.sizeToFit
    @label.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2)
    self.view.addSubview @label

    @button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @button.setTitle("Generate", forState: UIControlStateNormal)
    @button.sizeToFit
    @button.frame = CGRect.new([125,500], @button.frame.size)
    self.view.addSubview @button
    
    @button.addTarget(self, action: 'generate_password', forControlEvents: UIControlEventTouchUpInside)
  end

  def generate_password
    @label.text = "A password!"
  end

end