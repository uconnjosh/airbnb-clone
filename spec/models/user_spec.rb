require 'spec_helper'

describe User do

  it { should have_many :properties}

  it { should validate_presence_of :email}
  it { should validate_presence_of :bio}
  it { should validate_presence_of :name}

  it "should check for dublicates of submitted email addresses" do
    FactoryGirl.create(:user)
    should validate_uniqueness_of :email
  end

  # it 'sends a welcome email' do
  #   user = User.new(:name => "Bailey", :bio => "great gal", :owner => true, :email => 'mac@chs.com', :password => 'password', :password_confirmation => 'password')
  #   expect(UserMailer).to receive(:send_confirmation).with(user)
  #   user.save
  # end

end
