require 'open-uri'
require 'json'

puts "Destroying old movies"
Movie.destroy_all

url = "http://tmdb.lewagon.com/movie/top_rated"
list_movies = URI.open(url).read
movies = JSON.parse(list_movies)
movies = movies["results"]
# 10.times do |i|
  movies.each do |movie|
    Movie.create(
      title: movie['original_title'],
      overview: movie['overview'],
      poster_url: movie['poster_path'],
      rating: movie['vote_average'].to_i
    )
end
