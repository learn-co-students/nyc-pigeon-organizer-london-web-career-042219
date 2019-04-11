pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}



def pidgeon_organiser(data)
  final_hash = {}

  #this part creates a key with all the names inside the original hash with the value which is a hash with the :colour, :gender and :lives symbols, they each have empty arrays.
  data.each do |key, value|
    value.each do |attribute, array|
      array.each do |names|
        final_hash[names] = {:colour => [], :gender => [], :lives => []}
      end 
    end 
  end 

  final_key = final_hash.keys

  #this part converts the colours (which are symbols) inside the original hash to strings and pushes them into the empty :colour array in the final_hash
  data[:color].each do |bird_colour, array|
    array.each do |name|
      final_key.each do |items|
        if items == name 
          final_hash[items][:colour] << bird_colour.to_s
        end 
      end 
    end
  end

#this part converts the genders (which are symbols) inside the original hash to strings and pushes them into the empty :gender array in the final_hash

  data[:gender].each do |pidgeon_gender, array|
    array.each do |name|
      final_key.each do |items|
        if items == name 
          final_hash[items][:gender] << pidgeon_gender.to_s
        end 
      end 
    end 
  end

#this part converts the lives inside the original hash and pushes them into the empty :lives array in the final_hash

  data[:lives].each do |location, array|
    array.each do |name|
      final_key.each do |items|
        if items == name 
          final_hash[items][:lives] << location
        end 
      end 
    end 
  end

  puts final_hash
  return final_hash
end 