# Введите слово или фразу для шифрования:
# Каким способом зашифровать:
# 1. MD5
# 2. SHA1
require 'digest'

print "Enter a word or phrase: "
user_input = STDIN.gets.chomp
puts "Choose a hash algorithm (1 or 2):"
puts "1. MD5"
puts "2. SHA1"

user_choice = STDIN.gets.chomp

crypto_word = Digest::MD5.hexdigest(user_input) if user_choice == "1"
crypto_word = Digest::SHA1.hexdigest(user_input) if user_choice == "2"

puts
puts crypto_word
