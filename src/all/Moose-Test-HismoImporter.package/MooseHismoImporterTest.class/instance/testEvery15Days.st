tests
testEvery15Days

	| date1 date2 selectedVersions |
	
	hismoImporter everyNDays: 15.
	selectedVersions := hismoImporter selectedVersions.
	
	self assert: selectedVersions size = 267.
	
	"compare the date of the two first selections"
	date1 := self colllectDateInString: selectedVersions first.
	date2 := self colllectDateInString: selectedVersions second.
	
	self assert: (date2 - date1) days >= 15.
	
	"compare the date of the two last selections"
	date1 := self colllectDateInString: (selectedVersions at: selectedVersions size - 1).
	date2 := self colllectDateInString: selectedVersions last.

	self assert: (date2 - date1) days >= 15.