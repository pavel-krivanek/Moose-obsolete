examples
helpSubjectWithTitle
	<gtExample>
	<subjectHelp: 'GT Inspector' title: 'Roassal'>
	
	self assert: self gtExampleContext example subjects first class = GTExampleHelpSubject.
	self assert: self gtExampleContext example subjects first bookName = 'GT Inspector'.
	self assert: self gtExampleContext example subjects first title = 'Roassal'.
	self assert: self gtExampleContext example subjects first topic notNil.
	
	^ 0
	