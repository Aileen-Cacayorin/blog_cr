require 'rails_helper'

describe Tag do
  it { should have_and_belong_to_many :posts}

  it { should validate_presence_of :name }
  it { should validate_length_of :name}
end
