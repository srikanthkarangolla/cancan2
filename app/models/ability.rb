class Ability
  include CanCan::Ability


  def initialize(user)
    user ||= User.new
    
    if user.clinician?
      can :manage, :all
    elsif user.manager?
     can :read, :all
    else 
     can  [:index], Product
   end
  end
end
