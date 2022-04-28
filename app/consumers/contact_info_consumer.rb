require 'redis'

class ContactInfoConsumer < Racecar::Consumer
  subscribes_to "logs"

  redis = Redis.new(host: "localhost")

  def process(message)
    puts "Received message: #{message.value}"
  end
end
