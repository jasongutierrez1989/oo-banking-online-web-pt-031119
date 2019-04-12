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

    if @sender.valid? == false
      @status = 'rejected'
      return "Transaction rejected. Please check your account balance."
    else      
      @receiver.deposit(@amount)
      @sender.deposit(@amount * -1)
      @status = 'complete'
    end
  end

  def reverse_transfer

  end
end
