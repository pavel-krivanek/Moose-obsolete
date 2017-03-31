as yet unclassified
testAnnouncer
	| concern |
	concern := REPConcern new .
	self assert: concern announcer == concern announcer