module UsersHelper
  def user_helper_method(argument)
    if @user
      "条件が true の場合の処理"
      @user.name
    end
  end

  def user_profile_method(argument)
    if @user
      "条件が true の場合の処理"
      @user.profile
    end
  end

  def user_occupation_method(argument)
    if @user
      "条件が true の場合の処理"
      @user.occupation
    end
  end

  def user_position_method(argument)
    if @user
      "条件が true の場合の処理"
      @user.position
    end
  end
end