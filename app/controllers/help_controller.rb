class HelpController < UIViewController

  def viewDidLoad
    super

    self.title = "Help"
    self.view.backgroundColor = UIColor.whiteColor
    
    load_help_text

  end

  def load_help_text
    @label = UILabel.alloc.initWithFrame([[0,20],[self.view.frame.size.width,self.view.frame.size.height]])
    @label.numberOfLines = 20
    @label.text = "This application allows you to generate a password based on the XKCD comic 'Password Strength'.\n\nThe password generated consists of four words which make a memorable phrase. To make the password even more secure you can combine the words using a separator character (e.g. #,.,% etc.) instead of using a space.\n\nThe application does not use the network at all so can be run in Airplane mode if required. No data is sent to, or from, this application."
    self.view.addSubview @label
  end

end