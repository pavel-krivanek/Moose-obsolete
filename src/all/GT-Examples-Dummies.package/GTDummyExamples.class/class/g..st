examples
g: aBoolean
	<gtExample>
	<label: 'Dummy #g, depends: #c'>
	<description: 'should raise a ZeroDivide'>
	<dependsOn: #c:>
	<raises: #ZeroDivide>
	
	self assert: aBoolean.
	^ 1/0