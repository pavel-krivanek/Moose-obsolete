tests
testEvery2Years
	
	| date1 date2 selectedVersions |
	
	hismoImporter everyNYears: 2.
	selectedVersions := hismoImporter selectedVersions.
	
	self assert: selectedVersions size = 6.
	
	"compare the date of the two first selections"
	date1 := self colllectDateInString: selectedVersions first.
	date2 := self colllectDateInString: selectedVersions second.
	
	self assert: (date2 year - date1 year) >= 2.
	
	"compare the date of the two last selections"
	date1 := self colllectDateInString: (selectedVersions at: selectedVersions size - 1).
	date2 := self colllectDateInString: selectedVersions last.

	self assert: (date2 year - date1 year) >= 2.