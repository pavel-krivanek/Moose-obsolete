tests
testNoArray
	| t |
	t := Roassal2VW new.
	t packages do: [ :pkg | 
		pkg asRPackage methods do: [ :met |
			(t blacklist includes: met) ifFalse: [ 
				self deny: (self hasArraySelector: met) 
				description: 'Remove brackets {} from: ',met methodClass name,'>>#', met selector.
				]. ] ].