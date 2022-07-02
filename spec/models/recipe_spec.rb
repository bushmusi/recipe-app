require 'rails_helper'

describe Recipe, type: :model do
  describe 'validations' do
    it { should validate_presence_of :preparation_time }
    it { should validate_presence_of :name }
    it { should validate_presence_of :cooking_time }
    it { should validate_presence_of :description }
    it { should validate_presence_of :public }
  end

  describe 'relationships' do
    it { should belong_to :user }
    it { should have_many :recipe_food }
  end
end
