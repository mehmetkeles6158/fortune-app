class MyExamplesController < ApplicationController
  def random_fortune

    #feature_1

    num = Random.new
    #num.rand(3)

    random_fortune = num.rand(3)

    if random_fortune == 1
      fortune_teller = " you are lucky!"
    elsif random_fortune == 2
      fortune_teller = "you have unfortune!"
    elsif random_fortune == 3
      fortune_teller = "You will be rich!"
    end

    render json: {your_fortune: fortune_teller} 

  end



  #Feature 2
  #The page should return 6 randomly generated numbers between 1 and 60 so as to predict the upcoming lotto numbers.

  def random_number

    num = Random.new
    list_nums = []

    i = 0
    while i < 6

      rand_nums = num.rand(60)
      list_nums << rand_nums
      i += 1
    end
    render json: {random_numbers: list_nums}
    
  end

  # Feature 3: Every time a user visits/refreshes the page, the page should tell the user the number of visits made to that page so far. NOTE: This is impossible, but you should try your hand at this for a few minutes to discover why it's impossible.

  def num_visits
    
  end

  def song_lyrics
    
    i = 99
    the_song = ""
    while i > 0
      the_song << "#{i} bottles of beer on the wall, #{i} bottles of beer.
      Take one down and pass it around, #{i-1} bottles of beer on the wall."
      p the_song
      i -= 1
    end

    p "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall."

    render json: {song_lyrics: the_song}

  end

end
