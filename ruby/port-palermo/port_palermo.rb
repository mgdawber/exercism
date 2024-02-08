# frozen_string_literal: true

module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city[0..3].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    if %w[OIL GAS].include?(ship_identifier[0..2])
      :A
    else
      :B
    end
  end
end
