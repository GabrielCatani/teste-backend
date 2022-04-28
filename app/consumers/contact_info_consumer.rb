class ContactInfoConsumer < Racecar::Consumer
  subscribes_to "logs"

  def process(message)
    puts "Received message: #{message.value}"
  end
end