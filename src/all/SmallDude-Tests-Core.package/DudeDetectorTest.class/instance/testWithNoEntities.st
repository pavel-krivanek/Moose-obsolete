testing
testWithNoEntities 
	 
	| det | 
	det := DudeDetector 
		new: DudeCStyleFiles 
		from: OrderedCollection new 
		inModel: MooseModel new. 
	self assert: det ~= nil