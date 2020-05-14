class BankAccount

    attr_accessor :balance, :status
    attr_reader :name
    
    def initialize (name ,balance = 1000, status = "open")
        @bank_account = self
        @name = name
        @balance = balance
        @status = status

    end
     
    def deposit (money)
        @balance += money

    end

    def display_balance
        @balance 
        p "Your balance is $#{@balance}."
    end

    def valid?
         @status == "open" && @balance > 0
           
    end

    def close_account
        @status = "closed"
    
    end







end
