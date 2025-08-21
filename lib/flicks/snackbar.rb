module Snackbar
	Snack = Data.define(:name, :price)

	SNACKS = [
		Snack.new("popcorn", 3),
		Snack.new("candy", 1),
		Snack.new("nachos", 4),
		Snack.new("pretzels", 2),
	]

    def self.random_snack
        SNACKS.sample
    end

end