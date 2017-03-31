examples
multipleSubjects2
	<gtExample>
	<subject: 'GTExample'> " overlap "
	<subjectClass: 'Object'> " overlap "
	<subjectClass: #Array> " overlap "
	<subjectClass: 'GTExample' selector: #methodClass>
	<subjectClass: #GTExample selector: #selector>
	
	self assert: self gtExampleContext example subjects size = 5.
	self assert: (self gtExampleContext example subjects select: [ :each | each exists ]) size = 5.
	
	^ 0