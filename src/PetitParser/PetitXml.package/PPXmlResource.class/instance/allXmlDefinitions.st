accessing
allXmlDefinitions
	^ (Pragma allNamed: #xml: in: self class)
		collect: [ :each | self perform: each methodSelector ]