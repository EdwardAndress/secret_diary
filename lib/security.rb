class Security

  def initialize
    @locked = false
    @secret_word = nil
  end

  def lock!
    @locked = true if authenticated?
  end

  def unlock!
    @locked = false if authenticated?
  end

  def locked?
    @locked
  end

  def secure!
    puts 'Please set your secret word'
    @secret_word = gets.chomp
    @locked = true
    puts 'Your diary is now secret'
  end

  def authenticated?
    puts "What's the secret word?"
    input = gets.chomp
    input == @secret_word
  end
end
