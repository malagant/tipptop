module UsersHelper
  def is_admin?
    logged_in? && current_user.role_name == "admin"
  end

  def role_helper(user)
    if user && user.role_name == "admin"
      "Administrator"
    elsif user && user.gamer
      "Spieler"
    else
      "Gast"
    end
  end
end
