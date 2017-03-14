tests
testClassNameDoesNotIncludeSpace
	 "self debug: #testClassNameDoesNotIncludeSpace"
	
	self deny: self model allClasses isEmpty.
	self model allClasses 
		do: [:each | self assert: (each name includes: Character space) not]