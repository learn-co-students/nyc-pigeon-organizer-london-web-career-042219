
def nyc_pigeon_organizer(data)

pigeon_list = {}
 data.each {|category,hash|
   hash.each {|att,names|
     names.select {|person|
       pigeon_list[person] = {}
     }
   }
 }
 # collect the categories in an array(colour, gender, lives)
  cats = []
  data.each {|category,hash|
    cats << category
  }
 #adds above categories to each pigeon's hash as keys
  pigeon_list.each {|name,hash|
    cats.each {|symbol|
      hash[symbol] = []
    }
  }
  #iterate through data: if value array contains name
  #add attribute to approppriate category
  pigeon_list.each {|person,hash|
    data.each {|category,hash|
      hash.each {|att,names|
        if names.include?(person)
          pigeon_list[person][category] << att.to_s
        end
      }
    }
  }
pigeon_list
end
