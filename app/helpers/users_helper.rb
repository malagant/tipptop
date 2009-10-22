module UsersHelper
  def is_admin?
    logged_in? && current_user.role_name == "admin"
  end
end
