tests
testResolvedNameOrNil

	"should return nil for unresolved names"

	| def | 
	
	def := RGClass unresolved.
	self assert: def resolvedNameOrNil equals: nil.
	
	def := RGClass named: #SomeName.
	self assert: def resolvedNameOrNil equals: #SomeName.
		