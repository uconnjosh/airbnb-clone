require 'spec_helper'

describe User do

  it { should have_many :properties}

  it { should validate_presence_of :email}
  it { should validate_presence_of :bio}
  it { should validate_presence_of :name}
  it { should validate_uniqueness_of :email}

end
