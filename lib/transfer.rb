class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = 'pending'
    @amount = amount
  end

  def valid?
    if @sender.valid? and @receiver.valid?
      return true
    else
      return false
    end
  end

  def execute_transaction
    @receiver.deposit(@amount)
  end

  def reverse_transfer

  end
end
