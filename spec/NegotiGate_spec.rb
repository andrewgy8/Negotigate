require 'spec_helper'

describe NegotiGate::Negotiation do
  include NegotiGate

  describe ".both_prices_equal?" do
   
    context "given the sellers price is the same as the buyers highest buying price" do

      let(:negotiation) { described_class.new(10, 10) }


      it 'returns true' do
        expect(negotiation.both_prices_equal?).to be true
      end

    end

    context "given the sellers lowest price and the buyers highest price are different" do
      let(:negotiation) { described_class.new(10, 5) }

      it 'returns false' do
        expect(negotiation.both_prices_equal?).to be false
      end
    end  
  end

 

end
