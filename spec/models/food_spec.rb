require 'rails_helper'

describe Food, type: :model do
  describe 'Check relation of food models' do
    it { should belong_to :user }
    it { should have_many :recipe_foods }
    it { should have_many :inventory_foods }
  end

  describe 'field validation' do
    it { should validate_presence_of :name }
  end
end
