tests
testInheritedSignatures
	"Note: non-ST features like private methods and multiple inheritance issues for C++ (and Java
	 interfaces) are not (yet) tested"

	| inheritedSignatures class className |
	className := LANPrintServer mooseName.
	class := self model entityNamed: className.
	inheritedSignatures := class inheritedSignatures.
	#(#output: #accept: #canOutput #name #name: #nextNode #nextNode: #initialize #printOn: #send: #canOriginate #methodWithEmptyBody)
		do: [ :each | self assert: (inheritedSignatures contains: [ :sign | '*' , each , '*' match: sign ]) ].
	self assert: inheritedSignatures size equals: (LANOutputServer selectors , LANNode selectors) asSet size