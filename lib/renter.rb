class Renter
  attr_reader :name,
              :card_number

  def initialize(name, card_number)
    @name = name
    @card_number = card_number
  end
end
