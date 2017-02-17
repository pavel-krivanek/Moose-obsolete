examples
packageSubject
	<gtExample>
	<subjectPackage: 'GT-Examples'>

	self assert: self gtExampleContext example subjects first class = GTExamplePackageSubject.
	self assert: self gtExampleContext example subjects first thePackageName = 'GT-Examples'.
	self assert: self gtExampleContext example subjects first thePackage notNil.
	self assert: self gtExampleContext example subjects first exists.
	
	^ 0