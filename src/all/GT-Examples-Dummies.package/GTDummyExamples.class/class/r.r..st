examples
r: aBoolean1 r: aBoolean2
	<gtExample>
	<label: 'Dummy #r:, depends #q: and p:p:p:'>
	<dependsOn: #p:p:p:>
	<dependsOn: #q:>
	
	self assert: aBoolean1 & aBoolean2.
	^ aBoolean1 & aBoolean2