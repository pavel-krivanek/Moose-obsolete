testing-mapping
testPermutation
	| parser |
	parser := #any asParser , #any asParser , #any asParser.

	self assert: (parser permutation: #()) parse: '123' to: #().
	self assert: (parser permutation: #(1)) parse: '123' to: #($1).
	self assert: (parser permutation: #(1 3)) parse: '123' to: #($1 $3).
	self assert: (parser permutation: #(3 1)) parse: '123' to: #($3 $1).
	self assert: (parser permutation: #(2 2)) parse: '123' to: #($2 $2).
	self assert: (parser permutation: #(3 2 1)) parse: '123' to: #($3 $2 $1).
	
	self should: [ parser permutation: #(0) ] raise: Error.
	self should: [ parser permutation: #(4) ] raise: Error.
	self should: [ parser permutation: #($2) ] raise: Error