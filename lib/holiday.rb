require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array

  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  #holiday_hash[:winter].each do |supply|

  
  holiday_hash[:winter][:christmas] << "#{supply}"
  holiday_hash[:winter][:new_years] << "#{supply}"

  holiday_hash[:winter][:christmas] << "#{supply}"
  holiday_hash[:winter][:new_years] << "#{supply}"
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
  holiday_hash[:spring][:memorial_day] << "#{supply}"
end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

    holiday_hash[season][holiday_name] = supply_array
  # remember to return the updated hash
    holiday_hash
end


def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  
  holiday_hash[:winter].values.flatten
end

# def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

def all_supplies_in_holidays(holiday_hash)
    holiday_hash.each do |key, value|
    seasons = Array.new
    seasons << "#{key.to_s.capitalize}:"
    value.keys.each do |holi|
      holidays = []
      holidays << "#{holi.to_s.capitalize.gsub('_',' ')}:"
      i = 0 
      while i < value[holi].length
        if i+1 < value[holi].length
          holidays << "#{value[holi][i]},"
        else
          holidays << "#{value[holi][i]}"
        end  
        i+=1
      end
        seasons << holidays
    end
    puts "#{seasons[0]}"
    x = 1
    while seasons[x] != nil
    puts "  #{seasons[x].join(" ")}"
    x+=1
    end
  end
end

  # holiday_hash.each do |key, value|
  #   key.to_s
  #   puts "#{key}:#{value}"
  # end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  
    array = []
    holiday_hash.each do |key, value|
      holiday_hash[key].each do |x, y|
        i = 0 
        while i < y.length 
          if y[i]==="BBQ"
            array << x
          end 
          i+=1 
        end
      end 
    end
    return array
end






