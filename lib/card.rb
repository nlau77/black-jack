require 'pry'
class Card
  # attr_accessor :get_card_value
  attr_reader :card
  def initialize(card)
    @card = card
  end


  def ace?
    @card.include?('A')

  end

  def face?
    ['J', 'Q', 'K'].include?(card[0])
  end

  def num_card?
    !ace? && !face?
  end

  def get_card_value

    if ace?
      return 11
    elsif @card.include?('10') || face?
      return 10
    else
      return @card[0].to_i
    end
  end

end
