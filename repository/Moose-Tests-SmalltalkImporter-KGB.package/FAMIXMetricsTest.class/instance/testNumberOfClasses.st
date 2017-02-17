tests
testNumberOfClasses
	"self debug: #testNumberOfClasses"
 
	self assert: 2
			 equals: self packageP6InteractedReferee numberOfClasses .
			
	self assert: 4
			 equals: self packageP3InteractedReferencer numberOfClasses.
			
	self assert: 0
			 equals: self packagePExtensions numberOfClasses  