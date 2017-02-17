testing-utilities
testMatchesInEmpty
	"Empty matches should properly advance and match at each position and at the end."

	| parser result |
	parser := [ :stream | stream position ] asParser.
	result := parser matchesIn: '123'.
	self assert: result asArray equals: #(0 1 2 3)