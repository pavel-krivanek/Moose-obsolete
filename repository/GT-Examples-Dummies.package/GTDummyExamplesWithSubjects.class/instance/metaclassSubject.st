examples
metaclassSubject
	<gtExample>
	<subjectClass: 'GTExample class'>

	self assert: self gtExampleContext example subjects first class = GTExampleClassSubject.
	self assert: self gtExampleContext example subjects first theClassName = 'GTExample class'.
	self assert: self gtExampleContext example subjects first theClass = GTExample class.
	self assert: self gtExampleContext example subjects first exists.
	
	^ 0