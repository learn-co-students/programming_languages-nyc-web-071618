def reformat_languages(languages)
  new_hash = {}

  languages.each do |style_choice, language_hash|
    language_hash.each do |language, trait|
      new_hash[language] = trait
      new_hash[language][:style] = []
    end
  end

  new_hash.each do |language, trait|
    languages.each do |style_choice, language_hash|
      if language_hash.has_key?(language)
        new_hash[language][:style] << style_choice
      end
    end
  end
  new_hash
end
