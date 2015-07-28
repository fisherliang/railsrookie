movies = {
    Up: 5,
    Minions: 4,
    The_end_of_world: 5
    }
    
puts "What do you want to do\n"
puts "(1)add \n(2)update \n(3)display \n(4)delete \n"

choice = gets.chomp.downcase
case choice
when 'add'
    puts "Type a movie name."
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "What is the rating of #{title}."
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "Already add #{title}, and its rating is #{rating}."
    else
        puts "The movie is already exists."
    end
    
when 'update'
    puts "Type a movie name."
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "There is no this movie."
    else
        puts "What is the rating of #{title}."
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "The rating is updated."
    end
when 'display'
    movies.each do |movie, rating|
        puts "#{movie}: #{rating}"
    end
when 'delete'
    puts "Type a movie name you want delete."
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "Movie not found!"
    else
       movies.delete(title.to_sym)
       puts "#{title} is delete."
    end
else
    puts "Sorry, I do understand you."
end