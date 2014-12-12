class Ability
  include CanCan::Ability


  def initialize(user)
    user ||= User.new
    
    if user.clinician?
      can [:index, :show, :new, :create], Product
    elsif user.manager?
     can [:index, :show], Product
    else 
     can  [:index], Product
   end
  end
end
