require_relative './environment'
require 'pry'
#
#
# def add(x, y)
#  x + y
# end

puts "Welcome to the Youtube Searcher"
puts "Enter a keyword to search for videos:"
# def keyword

input = gets.chomp
youtube_videos = get_videos_from_youtube(input)

n = 1

youtube_videos.each do |video|
  puts "#{n}. #{video.title}"
  n += 1
end

puts "Enter the number of the video you want to play"
video_number = gets.chomp
# video_number is a string "2"
# convert that to a number
# access the youtube_videos array at that index (num - 1)
num = video_number.to_i
selected_video = youtube_videos[num - 1]
selected_video.open_in_browser

# binding.pry
# "bye"
