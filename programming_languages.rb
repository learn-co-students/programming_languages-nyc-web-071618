require "pry"

def reformat_languages(languages)
  new_hash={}
  languages.each do |styles, langs|
    langs.each do |lang, values|
      new_hash[lang]=values
        new_hash[lang][:style]=[]
      end
    end

  new_hash.each do |language, info_hash|
    languages.each do | styles, value|
      if value.has_key?(language)
        new_hash[language][:style]<<styles
      end
    end
  end

    new_hash
end
