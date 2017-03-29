require "spec_helper"
require 'pry'

RSpec.describe Card do
  let(:card1) {Card.new("10♦")}
  let(:ace) {Card.new("A♦")}
  let(:queen) {Card.new("Q♦")}
  let(:card3) {Card.new("3♦")}

  describe "check if card is an ace" do
    it 'returns true for an ace' do
      expect(ace.ace?).to eq(true)
    end

    it 'returns false for a non ace card' do
      expect(queen.ace?).to eq(false)
    end
  end

  describe "check for face card" do
    it 'returns true for a JQK card' do
      expect(queen.face?).to eq(true)
    end
    it 'returns false for a non JQK card' do
      expect(card1.face?).to eq(false)
    end
  end

  describe "check for a number card" do
    it 'returns true for 3' do
      expect(card3.num_card?).to eq(true)
    end

    it 'returns false for a ace' do
      expect(ace.num_card?).to eq(false)
    end

    it 'returns true for 10' do
      expect(card1.num_card?).to eq(true)
    end
  end


  describe "get card value" do

    it 'returns value 10 for 10' do
      expect(card1.get_card_value).to eq(10)
    end

    it 'returns value 11 for A' do
      expect(ace.get_card_value).to eq(11)
    end

    it 'returns value 10 for Q' do
      expect(queen.get_card_value).to eq(10)
    end

    it 'returns value 3 for 3' do
      expect(card3.get_card_value).to eq(3)
    end
  end

end
