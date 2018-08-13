tests
testUnresolveName

	"The name of any Ring object should be unresolveable"

	| def result | 
	
	"try to unresolve already unresolved"
	def := RGComment unresolved.
	self deny: (def hasResolvedName).
	def unresolveName.
	self deny: (def hasResolvedName).

	"unresolve existing name"
	def name: #SomeName.
	self assert: (def hasResolvedName).
	result := def unresolveName.
	self deny: (def hasResolvedName).
	self assert: result isRGUnresolvedValue.