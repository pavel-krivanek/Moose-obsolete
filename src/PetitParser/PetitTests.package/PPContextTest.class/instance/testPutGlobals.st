tests
testPutGlobals
	self assert: (context hasGlobal: #foo) not.
	self assert: (context hasGlobal: #bar) not.	
	
	self should: [ context globalAt: #foo ] raise: Error.
	self assert: (context globalAt: #foo ifAbsent: [ #bar ]) = #bar.
	
	self assert: (context globalAt: #foo ifAbsentPut: [ #bar ]) = #bar.	
	self assert: (context hasGlobal: #foo).
	self assert: (context hasGlobal: #bar) not.	
	self assert: (context globalAt: #foo) = #bar.
	
	self assert: (context globalAt: #foo ifAbsentPut: [ #zorg ]) = #bar.	
	self assert: (context hasGlobal: #foo).
	self assert: (context hasGlobal: #bar) not.	
	self assert: (context globalAt: #foo) = #bar.
	
	self assert: (context globalAt: #foo put: #zorg) = #zorg.	
	self assert: (context hasGlobal: #foo).
	self assert: (context hasGlobal: #bar) not.	
	self assert: (context globalAt: #foo) = #zorg.
	
	self should: [ context globalAt: #bar ] raise: Error.
	self assert: (context globalAt: #bar put: #foo) = #foo.
	self assert: (context globalAt: #foo) = #zorg.
	self assert: (context globalAt: #bar) = #foo.

