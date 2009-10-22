module TeamsHelper
  def team_helper(team)
     (team && team.country) ? team.country : "unbekannt"
  end

  def team_list
    @teams ||= Team.still_in
  end
end
