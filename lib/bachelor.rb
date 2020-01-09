def get_first_name_of_season_winner(data, season)
  winner = {}
  #get contestants of the season
  contestants = data[season]
  #find the winner of the season
  winner = contestants.find {|contestant| contestant["status"] == "Winner"}
  #return the winner's first name
  winner_name = winner["name"].split(' ')
  winner_name[0]
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant|
        if contestant["occupation"] == occupation
            return contestant["name"]
        end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        count += 1
      end
    end
  end

  count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  sum = 0
  contestants = data[season]
  contestants.each do |contestant|
    sum += contestant["age"].to_i
  end

  average = sum / contestants.length.to_f
  average.round
end

