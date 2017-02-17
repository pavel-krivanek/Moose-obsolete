tests
testEveryNDays

	| date1 date2 selectedVersions |
	
	"N = 20"
	hismoImporter everyNDays: 20.
	selectedVersions := hismoImporter selectedVersions.
	
	self assert: selectedVersions size = 200.
	
	"compare the date of the two first selections"
	date1 := self colllectDateInString: selectedVersions first.
	date2 := self colllectDateInString: selectedVersions second.
	
	self assert: (date2 - date1) days >= 20.
	
	"compare the date of the two last selections"
	date1 := self colllectDateInString: (selectedVersions at: selectedVersions size - 1).
	date2 := self colllectDateInString: selectedVersions last.

	self assert: (date2 - date1) days >= 20.