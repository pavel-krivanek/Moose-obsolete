examples
p: aBoolean1 p: aBoolean2 p: aBoolean3
	<gtExample>
	<label: 'Dummy #p:p:p:, depends #a, #b:, #c:'>
	<description: 'with description only'>
	<dependsOn: #a>
	<dependsOn: #b:>
	<dependsOn: #c:>
	
	self assert: (aBoolean1 | aBoolean2 | aBoolean3).
	^ aBoolean1 | aBoolean2 | aBoolean3