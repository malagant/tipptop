class Permissions < Aegis::Permissions
  role :guest
  role :gamer
  role :admin, :default_permission => :allow

  permission :edit_game do |user, game|
    deny :everyone
    allow :admin
  end
end