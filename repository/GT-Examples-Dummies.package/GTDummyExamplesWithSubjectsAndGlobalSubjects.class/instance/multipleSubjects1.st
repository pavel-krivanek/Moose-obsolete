examples
multipleSubjects1
	<gtExample>
	<subjectClass: 'GTExample' selector: #methodClass>
	<subjectClass: #GTExample selector: #selector>
	
	self assert: self gtExampleContext example subjects size = 5.
	self assert: (self gtExampleContext example subjects select: [ :each | each exists ]) size = 5.
	
	^ 0