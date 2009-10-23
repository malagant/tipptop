module TeamsHelper
  def team_helper(team)
     (team && team.country && !team.country.blank?) ? team.country : "Unbekannt"
  end

  def team_list
    @teams ||= Team.still_in
  end
end
