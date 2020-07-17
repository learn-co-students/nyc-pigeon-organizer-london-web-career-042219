def nyc_pigeon_organizer(data)

  new_hash = {}

  data.each do | high_key, high_data |
    # attribute title, dataset
    high_data.each do | low_key, low_data |
      # attribute value, array of names
      low_data.each do | name |
        # enter name if not already present
        new_hash[name] = {} if new_hash[name] == nil
        # create data array
        new_hash[name][high_key] = [] if new_hash[name][high_key] == nil
        # add data
        new_hash[name][high_key] << low_key.to_s
      end
    end
  end

  new_hash
end
