tests
testParent

	"test link to parent object"

	| def1 def2 | 
	
	def1 := RGObject new.
	def2 := RGObject new.
	def2 pvtParent: def1.
	self assert: (def2 parent == def1).
	
