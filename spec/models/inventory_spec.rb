require 'rails_helper'

describe Inventory, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :description }
  end

  describe 'relationships' do
    it { should belong_to :user }
    it { should have_many :inventory_food }
  end
end
