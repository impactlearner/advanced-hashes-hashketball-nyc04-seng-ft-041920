require 'pry'
# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here

def all_players
  #for the entire hash, create a collection of all players on both teams
   game_hash[:home][:players].merge(game_hash[:away][:players])
   players = game_hash.keys.map do |team|
     game_hash[team][:players]
 end
# binding.pry
 players.flatten
end


def num_points_scored(target_player)
  #access players from both home and away
  game_hash.each do |team, team_info|
    team_info[:players].each do |player|
      if player[:player_name] == target_player
        return player[:points]
      end
    end
  end
end


def shoe_size(target_player)
  #get shoe size for all players
  game_hash.each do |team, team_info|
    team_info[:players].each do |player|
      if player[:player_name] == target_player
        return player[:shoe]
      end
    end
  end
end

def team_colors(location)
  #shows correct team colors for both home and away locations
  if location == "Brooklyn Nets"
    return game_hash[:home][:colors]
  else return game_hash[:away][:colors]
  end
end

def team_names
  #returns each team name
  game_hash.map do |team, team_info|
    team_info[:team_name]
  end
end

def player_numbers(input)
  #returns the player jersey numbers
  output = []
  game_hash.each do |team, team_info|
    if team_info[:team_name] == input
      team_info.each do |key, value|
        if key == :players
          value.each do |player|
            output.push(player[:number])
          end
        end
      end
    end
  end
  return output
end

def player_stats(input)
  #returns all stats for target player
  game_hash.each do |team, team_info|
    team_info.each do |key, value|
        if key == :players
          value.each do |player|
              if input == player[:player_name]
                  return player
              end
            end
          end
        end
      end
    end

def big_shoe_rebounds
  #returns number of rebounds for player with biggest shoe
  biggest_shoe = 0
  rebounds = 0
  game_hash.each do |team, team_info|
    team_info[:players].each do |player|
      if player[:shoe] > biggest_shoe
        biggest_shoe = player[:shoe]
        rebounds = player[:rebounds]
      end
    end
  end
  return rebounds
end
# def num_points_scored(player_name)
#   game_hash[:home][:players][:player_name]
  
  #binding.pry
  #iterate through game_hash to find player name
    #break down this process
  #return the points associated with player name
    #break down this process
# game_hash.values.map do |team_data|
#     team_data[:players]
#   end.flatten
# end
#game_hash.each do |location, team_data|
  #get the players
  #player = team_data[:players].select do |player|
#num_points_scored("Jeff Adrien")

