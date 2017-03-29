require "spec_helper"
require 'pry'

describe Hand do
  let(:hand) {Hand.new(["10♦", "5♦"]) }
  let(:one_ace) {Hand.new(["A♦", "5♦"]) }
  let(:two_ace) {Hand.new(["A♦", "A♦", "5♦"]) }
  let(:three_ace) {Hand.new(["A♦", "A♦", "A♦", "5♦"]) }
  let(:four_ace) {Hand.new(["A♦", "A♦", "A♦", "A♦", "5♦"]) }
  # hand = Hand.new(["10♦", "5♦"])

  describe "two cards dealt per hand" do
    it "Checks that cards are defined" do

      expect(hand.cards.size).to eq(2)
    end

    describe "#calculate hand total" do
      it "Add the total from the cards in the hand" do
        # binding.pry
        expect(hand.calculate_hand_total).to eq(15)
      end
    end

    describe "calculating the hand total when there are aces in the hand" do
      it "calculates total when there is one ace" do
        # binding.pry
        expect(one_ace.calculate_hand_total).to eq(16)
      end

      it 'calculates total when there are two aces' do
        expect(two_ace.calculate_hand_total).to eq(17)
      end

      it 'calculates total when there are three aces' do
        expect(three_ace.calculate_hand_total).to eq(18)
      end

      it 'calculates total when there are four aces' do
        expect(four_ace.calculate_hand_total).to eq(19)
      end

    end


  end

end
