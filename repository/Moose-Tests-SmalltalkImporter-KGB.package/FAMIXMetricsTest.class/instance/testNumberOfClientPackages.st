tests
testNumberOfClientPackages
	"self debug: #testNumberOfClientPackages"

	self assert: 3
			 equals: self packageP6InteractedReferee numberOfClientPackages.
	
	self assert: 4
			 equals: self packageP11FullReferee numberOfClientPackages.
			
	self assert: 0
				equals: self packageP1FullReferencer numberOfClientPackages