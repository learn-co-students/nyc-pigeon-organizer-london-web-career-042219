def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |colors_gener_lives, inner_value|
    inner_value.each do |key, array|
      array.each do |e|
        if new_hash[e] == nil
          new_hash[e] = {}
        end
        new_hash[e][colors_gener_lives] = []
      end
    end
  end
  data.each do |colors_gener_lives, inner_value|
    inner_value.each do |key, array|
      array.each do |e|
        if array.include?(e)
          new_hash[e][colors_gener_lives] << key.to_s
        end
      end
    end
  end
  new_hash
end
