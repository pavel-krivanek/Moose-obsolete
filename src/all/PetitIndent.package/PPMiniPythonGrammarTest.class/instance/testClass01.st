test-grammar
testClass01

self parse: 
'class Foo():
	message = array(
		foo
		bar
		baz)
	print b
' rule: #classDef.

	self assert: result size = 4.
	self assert: result first = 'class:'.
	self assert: result second = 'Foo'.
	self assert: result third size = 2.
	