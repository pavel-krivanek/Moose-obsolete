examples
d: classSideC
	<gtExample>
	<dependsOnClass: #'GTDummyExamplesOnBothSides class' selector: #classSideC:classSideC:>
	self assert: classSideC = 3.
	^ classSideC