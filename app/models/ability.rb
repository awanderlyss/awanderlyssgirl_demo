class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
       user ||= User.new # guest user (not logged in)
       if user.admin?
         can :manage, :all
       else
         can :update, Comment do |comment|
           comment.user_id === user
         end
         can :destroy, Comment do |comment|
           comment.user_id === user
         end
         can :create, Comment
         can :read, :all
       end
  end
end
