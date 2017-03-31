examples
b: aBoolean1 b: aBoolean2
	<gtExample>
	<label: 'Dummy #b:b:'>
	<description: 'Dummy #b:b:, depends: GTDummyExamples>>#a and GTDummyExamples>>#b:'>
	<dependsOnClass: 'GTDummyExamples class' selector: #a> 
	<dependsOnClass: 'GTDummyExamples class' selector: #b:> 
	
	^ aBoolean1 & aBoolean2