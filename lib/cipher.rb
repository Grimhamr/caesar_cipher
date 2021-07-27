   shifted_string = "unchanged"


  def caesar_cipher(string, positions)
            chars_array = string.chars

                    while chars_array.index(" ").nil? == false
                        chars_array[chars_array.index(" ")]= (" ".ord-positions.to_i).chr
                    end
           
                        chars_array.each  {|char| 
                                if char.ord+positions.to_i>122 
 
                                    chars_array[chars_array.index(char)] = (((char.ord)-122)+96).chr 

                                end
                                }


                        shifted_string = chars_array.map!{|char|(((char.ord)+positions.to_i).chr)}


                        shifted_string= shifted_string.join
                                
                        puts "The encrypted phrase is #{shifted_string}"
                        return shifted_string

end

  

  puts "What phrase would you like to turn into a Caesar cipher?"
  string= gets.chomp.downcase
  puts "How many positions would you like to shift the letters?"
  positions = gets.chomp

  caesar_cipher(string, positions)
