require 'rails_helper'

describe InventoryFood, type: :model do
  describe 'validations' do
    it { should validate_presence_of :quantity }
    it { should validate_presence_of :name }
  end

  describe 'relationships' do
    it { should belong_to :inventory }
    it { should belong_to :food }
  end
end
