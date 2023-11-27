# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    return unless user.present?

    can :manage, Purchase, author_id: user.id
    can :manage, Group, user_id: user.id
    can :manage, User, id: user.id
  end
end
