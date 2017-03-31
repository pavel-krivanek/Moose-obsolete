testing-utilities
testMatchesInOverlapping
	"Matches that overlap should be properly reported."

	| parser result |
	parser := #digit asParser , #digit asParser.
	result := parser matchesIn: 'a123b'.
	self assert: result size equals: 2.
	self assert: result first equals: #($1 $2).
	self assert: result last equals: #($2 $3)