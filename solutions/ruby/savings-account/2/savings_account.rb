module SavingsAccount
  def self.interest_rate(balance)
    case balance
    when ...0
      3.213
    when 0...1000
      0.5
    when 1000...5000
      1.621
    else
      2.475
    end
  end

  def self.annual_balance_update(balance)
    interest = self.interest_rate(balance) / 100 * balance
    interest + balance
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    count = 0

    while current_balance <= desired_balance
      current_balance = self.annual_balance_update(current_balance)
      count += 1
    end

    count
  end
end
