examples
d: anInteger
	<gtExample>
	<label: 'Dummy #d:, depends #c:'>
	<description: 'should raise an exception as the argument is not anInteger'>
	<dependsOn: #c:>
	<raises: #MessageNotUnderstood>
	
	^ 1 + anInteger