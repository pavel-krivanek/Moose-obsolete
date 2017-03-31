examples
c: aBoolean c: anotherBoolean
	<gtExample>
	<dependsOn: #a>
	<dependsOn: #b>
	self assert: aBoolean = anotherBoolean.
	^ aBoolean & anotherBoolean