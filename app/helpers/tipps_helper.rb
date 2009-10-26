module TippsHelper
  # Shows a link for a new tipp or a link to the given tipp
  def tipp_helper(game)
    gamer = current_user.gamer if logged_in?
    tipp = Tipp.find_by_game_id_and_gamer_id(game, gamer) if logged_in? && gamer
    if !logged_in?
      content = link_to image_tag("/images/login.jpg", :title => "Anmelden"), login_url
    elsif is_admin?
      content = link_to image_tag("/images/edit.jpg", :title => "Bearbeiten"), edit_game_url(game)
    elsif !gamer
      content = link_to image_tag("/images/signup.jpg", :title => "Spielerdetails anlegen, um tippen zu können"), new_user_gamer_url(current_user)
    elsif gamer && !tipp
      content = link_to image_tag("/images/tipp.jpg", :title => "Tipp abgeben"), new_game_tipp_url(game)
    elsif gamer && tipp
      content = link_to image_tag("/images/edit.jpg", :title => "Tipp &auml;ndern"), edit_game_tipp_url(game, tipp)
      content += " " + link_to(image_tag("/images/delete.jpg", :title => "l&ouml;schen"), game_tipp_url(game, tipp), :method => :delete)
    elsif game.started? or game.finished? or tipp_stop?(game) and not tipp
      content = image_tag("/images/stop.jpg", :title => "Kein Tippen mehr möglich.")
    elsif game.started? or game.finished? or tipp_stop?(game) and tipp
      content = link_to image_tag("/images/stop.jpg", :title => "Keine Änderung des Tipps mehr möglich"), gamer_tipp_url(gamer, tipp)
    end
    content
  end
  
  # Keine Tipps mehr möglich, wenn es eine halbe Stunde vor Spielbeginn ist.
  def tipp_stop?(game)
   Time.now.utc < $TIPP_STOP.minutes.until(game.gametime.utc)
  end
end
