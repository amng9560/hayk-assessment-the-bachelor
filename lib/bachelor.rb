require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |key_number, value|
      if season == key_number
        value.each do |info, entry|
          return (info["name"].split)[0] if info["status"] == "Winner"
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |key_number, value|
    value.each do |info, entry|
      return info["name"] if info["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |key_number, value|
    value.each do |info, entry|
      counter += 1 if info["hometown"] == hometown
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |key_number, value|
    value.each do |info, entry|
      return info["occupation"]if hometown == info["hometown"]
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ages = []
  data.each do |key_number, value|
    if season == key_number
    value.each do |info, entry|
        ages << info["age"].to_i
      end
    end
  end
  (ages.sum.to_f / ages.size).round
end
