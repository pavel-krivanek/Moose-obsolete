examples
classSubject
	<gtExample>
	<subjectClass: 'GTExample'>
	
	self assert: self gtExampleContext example subjects first class = GTExampleClassSubject.
	self assert: self gtExampleContext example subjects first theClassName = 'GTExample'.
	self assert: self gtExampleContext example subjects first theClass = GTExample.
	self assert: self gtExampleContext example subjects first exists.
	
	^ 0