require 'spec_helper'

describe "Money valuation check" do	

	it "Check for 100 paisa convertion to rupee" do
		money = Money.new(0, 100)
		expect(money.aggregator(nil)).to eq({rupee: 1, paisa: 0})
	end

	it "Check for 1 rupee 150 paisa conversion to rupee and paisa" do
		money = Money.new(1, 150)
		expect(money.aggregator(nil)).to eq({rupee: 2, paisa: 50})
	end

	it "Add 1 rupee 50 paisa and 2 rupee and see result" do
		money_1 = Money.new(1, 50)
		money_2 = Money.new(2, 0)
		expect(money_1.aggregator(money_2)).to eq({rupee: 3, paisa: 50})
	end
end