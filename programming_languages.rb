require 'pry'

def reformat_languages(languages)
  language_attributes = {}

  languages.each do |oo_func, language|
    language.each do |language, details|
      details.each do |attrib, string|
        if language_attributes[language].nil?
          language_attributes[language] = {}
        end
        language_attributes[language][:style] ||= []
        language_attributes[language][:style] << oo_func
        if language_attributes[language][attrib].nil?
          language_attributes[language][attrib] = string
        end
      end
    end
  end
  language_attributes
end
