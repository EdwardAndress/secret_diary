# Test the secret diary class
# Write a test for each method in the class
require_relative '../lib/secret_diary.rb'

# class FakeSecurityClass
#   def secure!
#   end
# end

RSpec.describe SecretDiary do

  # we need two doubles
  # one for Security (the class)
  # one for an instance of the Security class

  # this is a double of the Security class.  It responds to '.new' and returns another double.
  let(:security_class) { double :security_class, new: security }
  # this is a double of an instance of the Security class.
  let(:security)       { double :security_instance             }
  let(:subject)        { described_class.new(security_class)   }

  # pro (entirely aesthetic) tip: get those curly braces all lined up! ;)

  describe '#secure!' do
    it 'delegates to the securiy object' do
      # this method of testing requires that we declare the assertion first
      # e.g. expect(edward_thomas).to receive(:pen)
      expect(security).to receive(:secure!)
      # then carry out the action
      # e.g. eddie_andress.throw_pen!
      subject.secure!
    end
  end

  describe '#locked?' do
    it 'delegates to the security object' do
      expect(security).to receive(:locked?)
      subject.locked?
    end
  end
end
