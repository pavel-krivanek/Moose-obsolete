grammar
document
	^ super document ==> [ :nodes | PPXmlDocument children: (nodes reject: [ :each | each isNil ]) ]