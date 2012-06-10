
module ::ToCamelCase

  ###################
  #  to_camel_case  #
  ###################
  
  def to_camel_case

    camel_case_string = ''

    upcase_next_char = true
    
    chars.each do |this_char|
      
      if this_char == '_'

        upcase_next_char = true

      else

        if upcase_next_char
          # we use upcase! to avoid creating a duplicate string from this_char
          this_char.upcase!
          camel_case_string << this_char
          upcase_next_char = false
        else
          camel_case_string << this_char
        end

      end

    end
    
    return camel_case_string
    
  end
  
  ####################
  #  to_camel_case!  #
  ####################
  
  def to_camel_case!
    
    upcase_next_char = true
    
    delete_indexes = [ ]
    
    chars.each_with_index do |this_char, index|
      
      if this_char == '_'

        upcase_next_char = true
        delete_indexes.push( index )
        
      else

        if upcase_next_char
          # we use upcase! to avoid creating a duplicate string from this_char
          this_char.upcase!
          self[ index ] = this_char
          upcase_next_char = false
        end

      end
            
    end
    
    until delete_indexes.empty?
      this_delete_index = delete_indexes.pop
      slice!( this_delete_index )
    end
    
    return self
    
  end

end
