def reformat_languages(languages)

  new_hash = {}
# new hash that we will be filling

  languages.each do |oo_fun, lang_name|
    # this will take each element in hash languages and we will be
    # indentifing the hash data with oo_fun becuase those are the two possibilities
    # and hash since there is another hash nested in there.




    lang_name.each do |type, int_com|

    # we are now in the second hash aka the inner most hash
# the second hash is where the progm languages are named and they have


      if new_hash[type] == nil

      # if the new hash key type is empty we will run the following below
      # it will be empty each language has only one type except one hence the else


        new_hash[type] = int_com

        # the type in the new hash will equal


        new_hash[type][:style] = [oo_fun]
        # we are creating a new key called style that will be an array equal to whatever
        # the element oo_fun is


      else
        new_hash[type][:style] << oo_fun
      end
    end
  end
  new_hash
end


# what is being returned is

# whatver language
