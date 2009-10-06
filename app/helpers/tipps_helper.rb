module TippsHelper
  # Shows a link for a new tipp or a link to the given tipp
  def tipp_helper(game)
    tipp = Tipp.find_by_game_id_and_gamer_id(game.id, current_user.gamer.id)
    if logged_in? && current_user.gamer && !tipp
      content = link_to "Tippen", new_game_tipp_url(game)
    elsif logged_in? && current_user.gamer && tipp
      content = link_to "Tipp &auml;ndern", game_tipp_url(game, tipp)
      content += " " + link_to("l&ouml;schen", game_tipp_url(game, tipp), :method => :delete)
    end
    content
  end
end
