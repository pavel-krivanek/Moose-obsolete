accessing
model: aModel withRichClass: aClass
	<gtExample>
	<dependsOn: #emptyModel>
	<dependsOn: #richClass>
	aModel name: 'Rich Class Model'.
	aModel packagedElements add: aClass.
	^ aModel