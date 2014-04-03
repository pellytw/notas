class Ability
 
  include CanCan::Ability
 
  def initialize(user)
    user ||= User.new # guest user
    if user.role? :admin
      can :manage, :all
      #can :update, User do |user2|
      #  user2.try(:id) == user.id
      #end    
    elsif user.role? :subsecretaria
      can :manage, [Documento]
      can :manage, [TipoDocumento]
      can :manage, [Localidad]
    end
  end
end

