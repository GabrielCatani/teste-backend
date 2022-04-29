class ContactInfoConsumer < Racecar::Consumer
  subscribes_to "logs"

  newLog = ContactLogs.new

  def process(message)
    data = JSON.parse(message.value)

    newLog.id      = data['id']
    newLog.nome    = data['nome']
    newLog.email   = data['email']
    newLog.sysdate = data['sysdate']

    begin
      newLog.save!
      raise 'Saving ContactLog failed.'
    rescue
      puts 'ContactLog saved.'
    retry
    end

  end
end
