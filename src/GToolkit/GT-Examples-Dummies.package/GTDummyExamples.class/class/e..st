examples
e: aString
	<gtExample>
	<label: 'Dummy #e:, depends #c:'>
	<description: 'should raise an exception as the argument is not aString'>
	<dependsOn: #c:>
	<raises: #Error>
	
	^ 'Hellow World', aString