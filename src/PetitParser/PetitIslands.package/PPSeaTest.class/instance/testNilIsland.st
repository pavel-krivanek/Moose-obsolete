testing
testNilIsland
	
	| nilIsland  p |

	nilIsland := self nilIsland.
	

	p := ${ asParser, nilIsland, $} asParser.

	self assert: p parse: '{}'.
	
	self assert: result isCollection.
	self assert: result size = 3.
	self assert: result first = ${.
	self assert: result third = $}.	
	

	self assert: p parse: '{ }'.
	self assert: result isCollection.
	self assert: result size = 3.
	self assert: result first = ${.
	self assert: result third = $}.
	

	self assert: p parse: '{ ... }'.
	self assert: result isCollection.
	self assert: result size = 3.
	self assert: result first = ${.
	self assert: result third = $}.