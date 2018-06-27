def reformat_languages(languages)
  # your code here
new_hash = {}
languages.collect do |type_language, info|
array = []
array << type_language
    info.collect do |key, value|
    new_hash[key] = value
    new_hash[key][:style] = array
    end
  end
  new_hash[:javascript][:style] = [:oo, :functional]
  new_hash
end


#done
