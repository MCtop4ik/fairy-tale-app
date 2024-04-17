class AuthService

  def is_authenticated(bearer)
    bearer.slice! "Bearer "
    if AuthorizedUsers.exists?(:access_token => bearer)
      if AuthorizedUsers.find_by(:access_token => bearer).expired_in > Time.now.to_i * 100000
        return true
      else
        return false
      end
    end
    false
  end

  def get_user_id_by_token(bearer)
    bearer.slice! "Bearer "
    if AuthorizedUsers.exists?(:access_token => bearer)
      AuthorizedUsers.find_by(:access_token => bearer).user_id
    else
      "Not exists"
    end
  end
end
