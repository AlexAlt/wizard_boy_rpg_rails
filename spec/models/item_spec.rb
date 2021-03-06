require 'rails_helper'

RSpec.describe Item, type: :model do
  it { should validate_presence_of :name}
  it { should validate_presence_of :description}
  it { should have_and_belong_to_many :users }
end
