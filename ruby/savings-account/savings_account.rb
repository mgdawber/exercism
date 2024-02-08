module SavingsAccount
  def self.interest_rate(balance)
    return 3.213 if balance.negative?
    return 0.5 if balance < 1000
    return 1.621 if balance < 5000

    2.475
  end

  def self.annual_balance_update(balance)
    balance + (balance * interest_rate(balance) / 100)
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    return Float::Infinity if current_balance < 0
    return 0 if current_balance >= desired_balance

    years_before_desired_balance(annual_balance_update(current_balance), desired_balance) + 1
  end
end
