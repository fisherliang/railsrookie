puts "Type something"
text = gets.chomp

words = text.split(" ")
frequencies = Hash.new(0)
words.each { |word| frequencies[word] += 1}
frequencies = frequencies.sort_by do |text, count|
    count
end

frequencies.reverse!
frequencies.each do |word, count|
    puts "#{word} #{count}"
end