examples
classSideC: a classSideC: b
	<gtExample>
	<dependsOn: #classSideA>
	<dependsOnClass: #'GTDummyExamplesOnBothSides class' selector: #classSideB:>
	self assert: a = 2.
	self assert: b = 4.
	^ a + b - 3