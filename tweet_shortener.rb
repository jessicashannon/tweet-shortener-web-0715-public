# Write your code here.

def dictionary
{'hello' => 'hi', 'to' => '2',
  'two' => '2', 'too' => '2',
    "for" => '4', 'four' => '4', 
    'be' => 'b', 'you' => 'u', 
    'at' => '@', 'and' => "&"}
end

def word_substituter(tweet)
  new_tweet = String.new
 tweet.split.each do |word| 
    if dictionary.has_key?(word.downcase)
      word = dictionary[word.downcase]
    end
    new_tweet << "#{word} "
  end
  new_tweet.chop
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
      tweet = word_substituter(tweet)
    else
      tweet
    end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet = "#{tweet[0...136]} ..."
  else
    tweet
  end
end