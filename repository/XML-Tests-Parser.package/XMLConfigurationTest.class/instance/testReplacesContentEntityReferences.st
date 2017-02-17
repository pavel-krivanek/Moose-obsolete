tests
testReplacesContentEntityReferences
	| configuration |
	
	configuration := self newConfiguration.
	self assert: configuration replacesContentEntityReferences.
	self assert:
		(configuration replacesContentEntityReferences: false) ==
			configuration.
	self deny: configuration replacesContentEntityReferences.
	self assert:
		(configuration replacesContentEntityReferences: true) ==
			configuration.
	self assert: configuration replacesContentEntityReferences.