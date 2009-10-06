module TeamsHelper
  def team_helper(team)
     team.country.blank? ? "unbekannt" : team.country
  end
end
