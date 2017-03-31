examples
g: aBoolean1 g: aBoolean2 g: aBoolean3
	<gtExample>
	<label: 'Dummy #g:g:g:'>
	<description: 'Dummy #g:g:g:, depends: #a and #e:e:e:e: and #d:d:d:'>
	<dependsOn: #a> " aBoolean1 "
	<dependsOn: #e:e:e:e:> " aBoolean2 "
	<dependsOn: #d:d:d:> " aBoolean3 "
	
	^ aBoolean1 & aBoolean2 & aBoolean3