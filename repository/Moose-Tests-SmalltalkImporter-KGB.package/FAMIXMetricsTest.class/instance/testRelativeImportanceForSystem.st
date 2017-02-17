tests
testRelativeImportanceForSystem
	"self debug: #testRelativeImportanceForSystem"

	self assert: 3 / 14
			 equals: self packageP6InteractedReferee relativeImportanceForSystem.
	
	self assert: 4 / 14
			 equals: self packageP11FullReferee relativeImportanceForSystem.
			
	self assert: 0
				equals: self packageP1FullReferencer relativeImportanceForSystem.