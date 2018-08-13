accessing - definition
sharedPoolsString
	"Answer a string of my class variable names separated by spaces."

	"TODO: check validity"
	^String streamContents: [ :stream | 
		self sharedPools 
			do: [ :each | stream nextPutAll: each name]
			separatedBy: [ stream space ] ]