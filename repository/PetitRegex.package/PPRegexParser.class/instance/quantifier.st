grammar-operators
quantifier
	^ ($+ asParser ==> [ :node | PPPossessiveRepeatingParser new ])
	/ ($? asParser ==> [ :node | PPLazyRepeatingParser new setLimit: nil asParser end ])
	/ (nil asParser ==> [ :node | PPGreedyRepeatingParser new setLimit: nil asParser end ])