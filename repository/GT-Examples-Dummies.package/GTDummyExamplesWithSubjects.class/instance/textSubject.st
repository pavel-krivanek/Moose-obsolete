examples
textSubject
	<gtExample>
	<subjectText: 'Justo Malesuada Bibendum Adipiscing Elit'>
	
	self assert: self gtExampleContext example subjects first class = GTExampleTextSubject.
	self assert: self gtExampleContext example subjects first text = 'Justo Malesuada Bibendum Adipiscing Elit'.
	self assert: self gtExampleContext example subjects first exists.
	
	^ 0