queries - methods
localMethods

	| methods |
	
	methods := IdentitySet new.
	self localMethodsDo: [ :each | methods add: each ].
	^ methods asArray