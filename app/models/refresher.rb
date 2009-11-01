class Refresher
  class << self
    def refresh_all
      refresh_groups
      refresh_gamers
      true
    end

    def refresh_groups
      refresh_games
      refresh_goals
      refresh_wins_and_losses
    end

    def refresh_gamers
      @games = Game.finished
      @gamers = Gamer.all(:include => :tipps)

      @gamers.each do |gamer|
        gamer.points = 0
        @games.each do |game|
          @tipps = game.tipps
          @tipps.each do |tipp|
            if gamer == tipp.gamer
              gamer.points += calculate_points(game.goals_team_one, game.goals_team_two,
                                               tipp.goals_one, tipp.goals_two)
            end
          end
        end
        gamer.save!
      end
    end

    # Calculate the points for this tipp
    def calculate_points(game_goals_one, game_goals_two, goals_one, goals_two)
      # Nichts richtig
      points = 0
      #Tendenz und Tore richtig
      return points += 5 if game_goals_one == goals_one && game_goals_two == goals_two
      # Tendenz und Torverhältnis richtig
      return points += 4 if ((game_goals_one > game_goals_two && goals_one > goals_two) ||
                             (game_goals_one < game_goals_two && goals_one < goals_two)) &&
                             (game_goals_one - game_goals_two == goals_one - goals_two)
      # Nur Tendenz richtig
      return points += 3 if ((game_goals_one > game_goals_two && goals_one > goals_two) ||
              (game_goals_one < game_goals_two && goals_one <= goals_two)
      )
      points
    end

    # Amount of games per team is updated based on finished games
    def refresh_games
      @games = Game.finished
      @teams = Team.all

      @teams.each do |team|
        team.games = @games.all(:conditions => ["team_one = ? or team_two = ?", team.id, team.id]).size
        team.save!
      end
    end

    # Total number of goals per team is updated based on finished games
    def refresh_goals
      @games = Game.finished
      @teams = Team.all

      @teams.each do |team|
        goals_won = 0
        goals_lost = 0

        @games.all(:conditions => ["team_one = ? or team_two = ?", team.id, team.id]).each do |game|
          goals_won += game.goals_team_one if game.team_one == team
          goals_lost += game.goals_team_two if game.team_one == team
          goals_won += game.goals_team_two if game.team_two == team
          goals_lost += game.goals_team_one if game.team_two == team
        end
        team.goals_won = goals_won
        team.goals_lost = goals_lost
        team.save!
      end
    end

    # Amount of games won per team is updated based on finished games
    def refresh_wins_and_losses
      @games = Game.finished
      @teams = Team.all


      @teams.each do |team|
        wins = 0
        losses = 0
        draws = 0
        @games.all(:conditions => ["team_one = ? or team_two = ?", team.id, team.id]).each do |game|
          #puts "++++ game.winner.country = #{game.winner.country} ; team.country = #{team.country}"
          wins += 1 if game.winner == team
          losses += 1 if game.loser == team
          draws += 1 if game.is_draw?
        end
        team.wins = wins
        team.losses = losses
        team.draw = draws
        refresh_points(team)
        team.save!
      end
    end

    def refresh_points(team)
      team.points = team.wins * 3
      team.points += team.draw
    end
  end
end