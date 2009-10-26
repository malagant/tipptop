class GameObserver < ActiveRecord::Observer
  observe :game

  def after_update(game)
    if game.finished?
      team_one = game.team_one
      team_two = game.team_two
      team_one.increase_games_by 1
      team_two.increase_games_by 1
      if game.is_draw?
        team_one.increase_draws_by 1
        team_two.increase_draws_by 1
      else
        if game.winner == team_one
          team_one.increase_wins_by 1
          team_two.increase_losses_by 1
        elsif game.winner == team_two
          team_two.increase_wins_by 1
          team_one.increase_losses_by 1
        end
      end
    end
  end
end
