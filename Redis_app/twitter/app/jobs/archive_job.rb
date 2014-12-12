class ArchiveJob

  @queue = :archives

  def self.perform
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "8VlC6lgwJVzq0e9CPltijv8aU"
      config.consumer_secret     = "UAnhVA1RCr0xXr5T3SARcCGW097ZR3vPRKWhD9BTqgcqxJg9XB"

    end
    tweets = client.user_timeline("bookis")
    File.open("log/tweets-#{Time.now.to_s}.log", "w") do |file|
      file.puts Time.now.to_s
      tweets.each do |tweet|
        file.puts tweet.text

      end
      sleep 30
    end

  end

end
