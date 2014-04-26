describe "Application 'xkcd_password'" do
  before do
    @app = UIApplication.sharedApplication
  end

  it "has one window" do
    @app.windows.size.should == 1
  end
end

describe "password controller" do
  tests PasswordController

  it 'changes the password when generate is pressed' do
    tap 'Generate'
    views(UILabel).first.text.should.not.equal "Password goes here..."
  end
end
