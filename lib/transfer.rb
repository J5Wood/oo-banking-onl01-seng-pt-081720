class Transfer

  attr_accessor :sender, :receiver, :status, :amount
  attr_reader

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if self.valid?
      @sender.withdraw(@amount)
      @receiver.deposit(@amount)
      @status = "complete"
    else
      "Transaction rejected. Please check your account balance."
      @status = "rejected"
    end
  end

end
