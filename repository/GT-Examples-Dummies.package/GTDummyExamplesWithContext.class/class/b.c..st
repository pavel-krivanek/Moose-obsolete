as yet unclassified
b: a c: c
	<gtExample>
	<dependsOn: #a>
	<dependsOn: #c>
	self assert: self gtExampleContext notNil.
	self assert: a == self gtExampleContext.
	self assert: c == self gtExampleContext.
	self assert: (self gtExampleContext at: #a) = #a.
	self assert: (self gtExampleContext at: #c) = #c.