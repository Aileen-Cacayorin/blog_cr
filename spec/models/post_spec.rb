require 'rails_helper'

describe Post do
  it { should belong_to :user }
  it { should have_and_belong_to_many :tags }

  it { should validate_presence_of :author }
  it { should validate_presence_of :title }
  it { should validate_presence_of :body }
  it { should validate_length_of :author}
  it { should validate_length_of :title}
end
