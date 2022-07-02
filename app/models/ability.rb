class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Recipe, public: true

    can :destroy, Recipe do |item|
      item.user_id = user.id
    end

    can :destroy, Food do |item|
      item.user_id = user.id
    end

    can :destroy
  end
end
