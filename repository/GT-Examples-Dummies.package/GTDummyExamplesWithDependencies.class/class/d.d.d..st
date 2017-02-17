examples
d: aBoolean1 d: aBoolean2 d: aBoolean3
	<gtExample>
	<label: 'Dummy #d:d:d:'>
	<description: 'Dummy #d:d:d:, depends: #a and #b: and #c:c:'>
	<dependsOn: #a> " aBoolean1 "
	<dependsOn: #b:> " aBoolean2 "
	<dependsOn: #c:c:> " aBoolean3 "
	
	^ aBoolean1 & aBoolean2 & aBoolean3