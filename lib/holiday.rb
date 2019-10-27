def second_supply_for_fourth_of_july(holiday_hash)
  return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas].push(supply)
  holiday_hash[:winter][:new_years].push(supply)
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[:"#{season}"][:"#{holiday_name}"] = supply_array
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  supplies = []
  holiday_hash[:winter].keys.each do |holiday|
    supplies += holiday_hash[:winter][holiday]
  end
  return supplies
end


def holidays_with_bbqs(holiday_hash)
holiday_hash.map do |season, holidays|
  holidays.map do |holiday, supplies|
   return holiday if supplies.include ("BBQ")
  end
end.flatten.compact
end




def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season}"
    holiday.each do |day, supplies|
      puts "#{day}"
      supplies.each do |item|
        puts "#{item}"
      end
    end
  end
end
