tests
testMakeReslolvedResolvesEverything

	| behavior |

	behavior := self behaviorClass unnamed.
	behavior makeResolved.
	"TODO: FIX!"
"	self assert: behavior unresolvedProperties isEmpty."