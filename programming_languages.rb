def reformat_languages(languages)
new_hash = {}
languages.collect do |language_style, language_name_hash|
#in the languages hash we assign 2 varibles type_language & info
array = []
#empty array to store values
array << language_style
#push the languages hash key.. #{language_style} into our array
#language_style is only two values [oo & functional]
language_name_hash.collect do |languages_type_key, info|
#collect of the elements in language_name_hash **hashes have key, value pairs**
    new_hash[languages_type_key] = info
#in our {new_hash} add item {languages_type_key} key & its value pair =item {info}
#using bracket method [] we can add item to Hash
new_hash[languages_type_key][:style] = array
#in {new_hash} add item {languages_type_key} key & its value pair = our {array}
    end
  end
#we are now out of the do.. end loop!! No more items left
  new_hash[:javascript][:style] = [:oo, :functional]
#inside {new_hash}[:javascript][:style] value = [:oo, :functional]
  new_hash
  #return our varible {new_hash}
end


#done


#done
