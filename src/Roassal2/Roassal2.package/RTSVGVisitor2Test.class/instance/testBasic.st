tests
testBasic
	| size |
	self assert: visitor view isNil.
	self assert: visitor stream contents isEmpty.
	self assert: visitor validInteractions isNotEmpty.
	visitor view: RTView new.
	self deny: visitor view isNil.
	visitor visitView: visitor view.
	size := visitor stream contents size.
	self assert: visitor stream contents isNotEmpty.
	visitor visitNoShape: nil.
	self assert: size equals: visitor stream contents size.
	