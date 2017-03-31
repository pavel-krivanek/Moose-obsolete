examples 3
g: anObject
	<gtExample>
	<label: 'Dummy #g'>
	<description: 'Dummy #g, depends: #e, should raise a dependency error since the only dependency is raising an exception'>
	<dependsOn: #e>
	<noTest>
	
	^ anObject