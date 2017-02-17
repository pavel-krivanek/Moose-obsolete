examples
e: aBoolean1 e: aBoolean2 e: aBoolean3 e: aBoolean4
	<gtExample>
	<label: 'Dummy #e:e:e:e:'>
	<description: 'Dummy #e:e:e:e:, depends: #a and #b: and #c:c: and #d:d:d:'>
	<dependsOn: #a> " aBoolean1 "
	<dependsOn: #b:> " aBoolean2 "
	<dependsOn: #c:c:> " aBoolean3 "
	<dependsOn: #d:d:d:> " aBoolean4 "
	
	^ aBoolean1 & aBoolean2 & aBoolean3 & aBoolean4