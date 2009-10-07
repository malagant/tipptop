module TeamsHelper
  def team_helper(team)
     team.country.blank? ? "unbekannt" : team.country
  end

  def team_list
    @teams ||= Team.still_in
  end
end
