class Security

  def initialize
    @locked = false
    @secret_word = nil
  end

  def locked?
    @locked
  end

  def secure!
    puts 'Please set your secret word'
    @secret_word = gets.chomp
    @locked = true
  end
end
