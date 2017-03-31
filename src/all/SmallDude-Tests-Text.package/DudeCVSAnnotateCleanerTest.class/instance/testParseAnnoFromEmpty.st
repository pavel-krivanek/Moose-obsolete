testing
testParseAnnoFromEmpty
	| cleaner code |
	code := OrderedCollection new.
	code add: ''.
	cleaner := DudeCVSAnnotateCleaner new.
	code := (cleaner clean: code) collect: [ :aLine | DudeSourceCodeLine newText: aLine inEntity: nil ].
	cleaner storeCVSInfoTo: code fromModel: DudeDummyModel new.
	self assert: (code at: 1) modifyingAuthor equals: ''.
	self assert: (code at: 1) modifyedVersion equals: '0.0'.
	self assert: (code at: 1) modificationDate equals: Date today