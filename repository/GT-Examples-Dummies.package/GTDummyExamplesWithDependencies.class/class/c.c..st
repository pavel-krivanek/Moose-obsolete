examples
c: aBoolean1 c: aBoolean2
	<gtExample>
	<label: 'Dummy #c:c:'>
	<description: 'Dummy #c:c:, depends: #a and #b:'>
	<dependsOn: #a> " aBoolean1 "
	<dependsOn: #b:> " aBoolean2 "
	
	^ aBoolean1 & aBoolean2