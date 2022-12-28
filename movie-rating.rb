movies = {
  Harry_Potter: 5,
  John_Wick: 5,
  Captain_America: 5,
  Avengers_Endgame: 5
}

puts "Co si přejete udělat?"
puts "-- Napište 'add' pro přidání filmu a jeho hodnocení."
puts "-- Napište 'update' pro aktualizaci hodnocení filmu."
puts "-- Napište 'display' pro zobrazení všech filmů."
puts "-- Napište 'delete' pro smazání filmu."
choice = gets.chomp
case choice
  when "add"
    puts "Zadejte název filmu:"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "Zadejte hodnocení filmu 1-5:"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
    else
      puts "Tento film už je zapsaný. Jeho hodnocení je #{movies[title.to_sym]}"
    end
  when "update"
    puts "Zadejte název filmu:"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "Film nenalezen"
    else
      puts "Jaké je hodnocení filmu? 1-5:"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "#{title} byl aktualizován s hodnocením #{rating}"
    end
  when "display"
    movies.each {|movies,rating| puts "#{movies}: #{rating}"}
  when "delete"
    puts "Zadejte název filmu:"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "Film nenalezen"
    else
      movies.delete(title.to_sym)
    end
  else
    puts "Error!"
end
