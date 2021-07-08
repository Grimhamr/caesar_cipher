#Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

 # > caesar_cipher("What a string!", 5)
  #=> "Bmfy f xywnsl!"



   shifted_string = "unchanged"
  #.ord returns ordinal of char
  #.chr returns chr of ordinal

  def caesar_cipher(string, positions)
            chars_array = string.chars
            #puts "array is #{chars_array}"
                        #check for spaces
                    while chars_array.index(" ").nil? == false
                        chars_array[chars_array.index(" ")]= (" ".ord-positions.to_i).chr
                    end
           
                        p chars_array
                        chars_array.each  {|char| 
                                if char.ord+positions.to_i>122 
                                #p "over 122. changing #{chars_array[chars_array.index(char)]} to #{(((char.ord)-122)+97).chr}"
                                chars_array[chars_array.index(char)] = (((char.ord)-122)+96).chr 
                                else# p "#{char} ord of #{char.ord} not over 122"
                                end
                                }

                                
                        
                       # puts "checked for over 122. array is #{chars_array}"
                                        
                                


                        shifted_string = chars_array.map!{|char|(((char.ord)+positions.to_i).chr)}


                        shifted_string= shifted_string.join
                                
                        puts "The encrypted phrase is #{shifted_string}"

end

  

  puts "What phrase would you like to turn into a Caesar cipher?"
  string= gets.chomp
  puts "How many positions would you like to shift the letters?"
  positions = gets.chomp

  caesar_cipher(string, positions)
