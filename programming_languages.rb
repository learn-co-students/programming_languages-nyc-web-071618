def reformat_languages(languages)
  # your code here
  # iterate through languages once, get oo and functional

  languages = {
    :oo => {
      :ruby => {
        :type => "interpreted"
      },
      :javascript => {
        :type => "interpreted"
      },
      :python => {
        :type => "interpreted"
      },
      :java => {
        :type => "compiled"
      }
    },
    :functional => {
      :clojure => {
        :type => "compiled"
      },
      :erlang => {
        :type => "compiled"
      },
      :scala => {
        :type => "compiled"
      },
      :javascript => {
        :type => "interpreted"
      }
   
    }
  }

  new_hash = {}
  languages.collect do |type_language, info|
  # iterate through each type, get languages
  array = []
  array << type_language
    info.collect do |key, value|
  # get the language
    new_hash[key] = value
    new_hash[key][:style] = array
    end
  end
  new_hash[:javascript][:style] = [:oo, :functional]
  new_hash
end
