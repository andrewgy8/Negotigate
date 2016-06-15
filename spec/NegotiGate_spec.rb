require 'spec_helper'

describe NegotiGate do
  =begin
  def setup
    @selling_price = 30
    @buyers_highest_price = 20
    @sellers_lowest_price = 25
  end=end


  describe Negotiation do

    =begin
    it 'has a version number' do
      expect(NegotiGate::VERSION).not_to be nil
    end
    =end
    
    describe ".both_prices_equal?" do
      context "given the sellers price is the same as the buyers highest buying price" do
        it 'it returns true' do
          expect(Negotiation.both_prices_equal?).to eql(true)
        end
      end
    end
  end
end
