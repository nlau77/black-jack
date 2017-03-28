class Card
  # attr_accessor :get_card_value
  attr_reader :card
  def initialize(card)
    @card = card
  end

  def get_card_value
    # find the value of the cards if its a J,Q,K or A
    if @card.include?('A')
      return 11
    elsif @card.include?('10') || @card.include?('J') || @card.include?('Q') || @card.include?('K')
      return 10
    else
      return @card[0].to_i
    end
  end

end
