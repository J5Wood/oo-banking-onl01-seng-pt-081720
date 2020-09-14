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
      @receiver.deposit(@amount)
    end
  end
  
end
