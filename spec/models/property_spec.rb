require 'spec_helper'

describe Property do
  it { should belong_to :user}

  it { should validate_presence_of :name}
  it { should validate_presence_of :description}
  it { should validate_presence_of :location}
  it { should validate_presence_of :user_id}

end

