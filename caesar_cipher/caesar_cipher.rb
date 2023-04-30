def caesar_cipher(string, shift_factor)
  split_array = string.split("")
  ord_val_array = split_array.map { |s| s.ord }
  shifted_array =
    ord_val_array.map do |num|
      if num.between?(65, 90)
        num_1 = (((num % 65) + (shift_factor % 26)) % 26) + 65
      elsif num.between?(97, 122)
        num_1 = (((num % 97) + (shift_factor % 26)) % 26) + 97
      else
        num
      end
    end
  encrypted_string = shifted_array.map { |el| el.chr }.join
  puts encrypted_string
end

caesar_cipher("Aniket Unnikrishnan Kaimal", 1_000_000)
caesar_cipher("Obwysh Ibbwyfwgvbob Yowaoz", -1_000_000)
