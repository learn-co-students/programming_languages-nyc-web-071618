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

def reformat_languages(languages)
  names = []
  types = []
  styles = []
  formatted_object = {}

  languages.each do |style,language_info|
    language_info.each do |name,type_info|
      names << name
      styles << style
      type_info.each do |key,type|
        types << type
      end
    end
  end

  names.each_with_index do |name,index|
    if formatted_object[name] == nil
      formatted_object[name] = {:type=>types[index],:style=>[styles[index]]}
    else
      formatted_object[name][:style] << styles[index]
    end
  end
  return formatted_object
end











#
