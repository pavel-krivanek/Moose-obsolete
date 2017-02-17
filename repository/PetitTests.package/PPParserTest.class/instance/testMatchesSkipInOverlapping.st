testing-utilities
testMatchesSkipInOverlapping
	"Matches that overlap should be properly reported."

	| parser result |
	parser := #digit asParser , #digit asParser.
	result := parser matchesSkipIn: 'a123b'.
	self assert: result size equals: 1.
	self assert: result first equals: #($1 $2)