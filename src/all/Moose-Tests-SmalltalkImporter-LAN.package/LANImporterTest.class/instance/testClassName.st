tests
testClassName 
	 "self debug: #testClassName"
	
	self model allClasses 
		do: [:each | self assert: (each name includes: Character space) not].