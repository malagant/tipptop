module TippsHelper
  # Shows a link for a new tipp or a link to the given tipp
  def tipp_helper(game)
    gamer = current_user.gamer if logged_in?
    tipp = Tipp.find_by_game_id_and_gamer_id(game, gamer) if logged_in? && gamer
    if !logged_in?
      content = link_to image_tag("/images/login.jpg", :size => "20x20", :title => "Anmelden"), login_url
    elsif is_admin?
      content = link_to image_tag("/images/edit.jpg", :size => "20x20", :title => "Bearbeiten"), edit_game_url(game)
    elsif !gamer
      content = link_to image_tag("/images/signup.jpg", :size => "20x20", :title => "Spielerdetails anlegen, um tippen zu können"), new_user_gamer_url(current_user)
    elsif gamer && !tipp
      content = link_to image_tag("/images/tipp.jpg", :size => "20x20", :title => "Tipp abgeben"), new_game_tipp_url(game)
    elsif gamer && tipp
      content = ""
      content += " (#{tipp.goals_one} : #{tipp.goals_two})   "
      content += link_to image_tag("/images/edit.jpg", :size => "20x20", :title => "Tipp &auml;ndern"), edit_game_tipp_url(game, tipp)
      content += " " + link_to(image_tag("/images/delete.jpg", :size => "20x20", :title => "l&ouml;schen"), game_tipp_url(game, tipp), :method => :delete)
    end
    if !is_admin?
      if game.started? or game.finished? or TippsHelper.tipp_stop?(game) and not tipp
        content = image_tag("/images/stop.jpg", :size => "20x20", :title => "Kein Tippen mehr möglich.")
      elsif game.finished?
        content = ""
        content += " (#{tipp.goals_one} : #{tipp.goals_two})   " if tipp
      elsif game.started? or game.finished? or TippsHelper.tipp_stop?(game) and tipp
        content = link_to image_tag("/images/stop.jpg", :size => "20x20", :title => "Keine Änderung des Tipps mehr möglich"), gamer_tipp_url(gamer, tipp)
      end
    end
    content
  end

  # Keine Tipps mehr möglich, wenn es eine halbe Stunde vor Spielbeginn ist.
  def self.tipp_stop?(game)
    game.finished? or game.started? or Time.now.utc > tipp_stop_value.minutes.until(game.gametime.utc)
  end

  def self.tipp_stop_value
    @@tipp_stop ||= Setting.find_by_name("TIPP_STOP").value.to_i
  end

end
