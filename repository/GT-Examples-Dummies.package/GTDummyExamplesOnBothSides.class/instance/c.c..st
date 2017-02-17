examples
c: a c: b
	<gtExample>
	<dependsOn: #a>
	<dependsOnClass: #GTDummyExamplesOnBothSides selector: #b:>
	self assert: a = 1.
	self assert: b = 2.
	^ a + b + 6