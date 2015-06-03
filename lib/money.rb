class Money
	#Job: Express the money in Indian currency with its operations
	attr_accessor :rupee, :paisa
	def initialize(rupee, paisa)
		@rupee = rupee
		@paisa = paisa
	end

	def aggregator(money)
		unless money.nil?
		{
		rupee:  (@rupee * 100 + @paisa) / 100,
		paisa: @paisa % 100
		} 
	end
end