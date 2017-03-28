require 'pry'
class Hand
  attr_accessor :cards, :status
  def initialize(cards)
  @cards=cards
  # @status='playable'
  end

  def calculate_hand_total
    sum = 0
    @cards.each do |card|
      card_class = Card.new(card)
      sum += card_class.get_card_value
    end
    return sum
  end

  # def bust
  #   @status='busted'
  # end

  def show_hand
    @cards
  end
end


#  on hit
#  @cards << newcard
