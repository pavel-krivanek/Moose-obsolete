accessing
allXsdDefinitions
	^ (Pragma allNamed: #xsd in: self class) collect: [ :each | self perform: each selector ]