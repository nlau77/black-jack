require 'pry'
class Hand
  attr_accessor :cards

  def initialize(cards)
    @cards=cards
  end

  def calculate_hand_total
    if aces_in_hand?
      calculate_total_with_aces
    else
      calculate_hand
    end
  end

  def aces_in_hand?
    cards.any? { |card| card.include?('A') }
  end

  def calculate_hand
    sum = 0
    @cards.each do |card|
      card_class = Card.new(card)
      sum += card_class.get_card_value
    end
    sum
  end

  def calculate_total_with_aces
    # count how many aces we have
    number_of_aces = 0
    @cards.each do |card|
      if card.include?('A')
        number_of_aces += 1
      end
    end

    sum = calculate_hand #method defined earlier
    # for each ace, have the possibility of subtracting 10 from the total
    number_of_aces.times do
      if sum > 21
       sum -= 10
      end
    end
    sum


  end



  # def count_aces
  # end
  #
  # def starting_hand
  # end

end
