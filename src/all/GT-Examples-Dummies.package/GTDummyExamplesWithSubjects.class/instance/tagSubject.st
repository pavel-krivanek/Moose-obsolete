examples
tagSubject
	<gtExample>
	<subjectTag: 'GT-Examples-Dummies-Data'>
	
	self assert: self gtExampleContext example subjects first class = GTExampleTagSubject.
	self assert: self gtExampleContext example subjects first theTagName = 'GT-Examples-Dummies-Data'.
	self assert: self gtExampleContext example subjects first theTag notNil.
	self assert: self gtExampleContext example subjects first thePackage notNil.
	self assert: self gtExampleContext example subjects first exists.
	
	^ 0