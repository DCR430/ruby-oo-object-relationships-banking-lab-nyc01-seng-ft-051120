require 'bank_account.rb'
class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status, :amount
  def initialize(sender, receiver, amount, status="pending")
    @transfer=self
    @sender=sender
    @receiver=receiver
    @amount=amount
    @status=status
  end
  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if @status=="pending"
    if self.valid? && @sender.balance >= amount
    @receiver.deposit(@amount)
    @sender.balance = @sender.balance-amount
    @status="complete"
    
    else @status="rejected"
      "Transaction rejected. Please check your account balance."
    end

  end

  end
  def reverse_transfer
    if @status=="complete"
      @sender.deposit(amount)
      @receiver.balance=@receiver.balance-amount
      @status="reversed"
    end
  end

end
#att_bill=Transfer.new(attt, me, 200)
#att_bill=Transfer.new(attt, me, 200)
#elec_bill=Transfer.new(c,me, 100)
