tests
testEveryNYears
	
	| date1 date2 selectedVersions |
	
	"N = 3"
	hismoImporter everyNYears: 3.
	selectedVersions := hismoImporter selectedVersions.
	
	self assert: selectedVersions size = 4.
	
	"compare the date of the two first selections"
	date1 := self colllectDateInString: selectedVersions first.
	date2 := self colllectDateInString: selectedVersions second.
	
	self assert: (date2 year - date1 year) >= 3.
	
	"compare the date of the two last selections"
	date1 := self colllectDateInString: (selectedVersions at: selectedVersions size - 1).
	date2 := self colllectDateInString: selectedVersions last.

	self assert: (date2 year - date1 year) >= 3.