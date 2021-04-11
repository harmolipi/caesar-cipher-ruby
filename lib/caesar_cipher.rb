# frozen_string_literal: true

def character_shift(character, baseline, shift)
  ((character - baseline + shift) % 26) + baseline # operate on a 1-26 range regardless of case and %26 to account for 26+ shifts
end

def caesar_cipher(encrypt_string = 'hello there', shift = 0)
  shifted_string = ''

  codepoints_array = encrypt_string.codepoints

  shifted_array = codepoints_array.map do |character|
    if character.between?(65, 90) # uppercase letter
      character_shift(character, 65, shift)
    elsif character.between?(97, 122) # lowercase letter
      character_shift(character, 97, shift)
    else # not a letter
      character
    end
  end
  shifted_array.each { |letter| shifted_string.concat(letter) }
  shifted_string
end
