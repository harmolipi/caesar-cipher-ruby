# frozen_string_literal: true

require_relative 'caesar_cipher'

def main
  puts "Enter the string you'd like to encrypt: "
  encrypt_string = gets.chomp

  puts "Now enter the value you'd like to shift it by: "
  shift = gets.chomp.to_i

  shifted_string = caesar_cipher(encrypt_string, shift)

  puts "The original string was \"#{encrypt_string}\", and the new string is \"#{shifted_string}\"."
end

main
