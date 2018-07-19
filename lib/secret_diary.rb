require 'date'
require_relative './security'

class SecretDiary
  attr_reader :security

# by default, Security is passed to #initialize, but we can pass anything we like when we actually
# come to create a new instance of SecretDiary.  If we pass nothing, Security will be used.
  def initialize(security_class = Security)
    @locked = false
    @secret_word = nil
    @entries = []
    # a new instance of the security_class is created and assigned to an instance var
    @security = security_class.new
  end

  def secure!
    # we use the instance of security_class here
    @security.secure!
  end

  def locked?
    # we use the instance of security_class here
    @security.locked?
  end

  def unlocked?
    # we use the instance of security_class here
    !@security.locked?
  end

  def unlock!
    # we DO NOT use the instance of security_class here (but we should!)
    @security.unlock!
  end

  def lock!
    # we DO NOT use the instance of security_class here (but we should!)
    @security.lock!
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
end
