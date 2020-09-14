class BankAccount

  attr_accessor :balance, :status, :name
  attr_reader 

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end




end
