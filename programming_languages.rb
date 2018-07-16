def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, language_a|
    language_a.each do |language, trait|
      new_hash[language] = trait
      new_hash[language][:style] = []
    end
  end
  new_hash.each do |language, trait|
    languages.each do |style, language_a|
      if language_a.key?(language)
        new_hash[language][:style] << style
      end
    end
  end
  new_hash
end
