class Ability
 
  include CanCan::Ability
 
  def initialize(user)
    user ||= User.new # guest user
    if user.role? :admin
      can :manage, :all
      #can :update, User do |user2|
      #  user2.try(:id) == user.id
      #end    
    end
  end
end

