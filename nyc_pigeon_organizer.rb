def nyc_pigeon_organizer(data)
  # write your code here!
  
  new_data={}
  
  data.each do |pigeon_key, key_values|
  
    key_values.each do | attr_key, attr_value |
      
      attr_value.each do | name |
        if !new_data[name]
         new_data[name]={}
        end
        
        if !new_data[name][pigeon_key]
          new_data[name][pigeon_key]=[]
        end 
        new_data[name][pigeon_key]<<attr_key.to_s
      end

    end
    
  end
  new_data
end