accessing
selectVersions
	
	lastSelectedVersion := '01/01/1001' asDateWithPattern: 'dd/mm/yyyy'.
	
	"sort the versions by date"
	versions := versions sorted: [ :a :b | (self filterDate: a) < (self filterDate: b) ].

	^ versions select: [ :each |
		
		| version shouldSelectCurrent |
		
		version := self filterDate: each.
		shouldSelectCurrent := self selectVersion: version.
		shouldSelectCurrent ifTrue: [ lastSelectedVersion := version ].
		shouldSelectCurrent ]