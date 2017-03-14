examples
multipleSubjects3
	<gtExample>
	
	self assert: self gtExampleContext example subjects size = 4.
	self assert: (self gtExampleContext example subjects allSatisfy: [ :each | each exists ]).
	self gtExamplesSubjects do: [ :each |
		self assert: (self gtExampleContext example hasSubject: each asGTExampleSubject) ].
	
	^ 0