tests
testNoArray
	| t |
	t := Roassal2VW new.
	t packages do: [ :pkg | 
		(pkg classes flatCollect: #methods),
		(pkg classes flatCollect: [:cls | cls class methods]),
		(pkg package extensionsForTag: pkg) do: [ :met |
			(t blacklist includes: met) ifFalse: [ 
				self deny: (self hasArraySelector: met) 
				description: 'Remove brackets {} from: ',met methodClass name,'>>#', met selector.
				]. ] ].