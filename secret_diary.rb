require 'date'
require_relative './security'

class SecretDiary
  attr_reader :security

  def initialize(security_class = Security)
    @locked = false
    @secret_word = nil
    @entries = []
    @security = security_class.new
  end

  def secure!
    @security.secure!
  end

  def locked?
    @security.locked?
  end

  def unlocked?
    !@security.locked?
  end

  def unlock!
    @locked = false if authenticated?
  end

  def lock!
    @locked = true if authenticated?
  end

  def new_entry(text)
    if unlocked?
      @entries << {date: Date.today, text: text}
    else
      puts 'This secret diary is locked!'
    end
  end

  def entries
    if unlocked?
      @entries
    else
      puts 'This secret diary is locked!'
    end
  end

  def authenticated?
    puts "What's the secret word?"
    input = gets.chomp
    input == @secret_word
  end
end
