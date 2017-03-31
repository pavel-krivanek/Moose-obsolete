tests
testEveryMonth

	| date1 date2 selectedVersions |
	
	hismoImporter everyMonth.
	selectedVersions := hismoImporter selectedVersions.
	
	self assert: selectedVersions size = 132.
	
	"compare the date of the two first selections"
	date1 := self colllectDateInString: selectedVersions first.
	date2 := self colllectDateInString: selectedVersions second.
	
	self assert: date2 month >=  (date1 month next: 1).
	
	"compare the date of the two last selections"
	date1 := self colllectDateInString: (selectedVersions at: selectedVersions size - 1).
	date2 := self colllectDateInString: selectedVersions last.

	self assert: date2 month >=  (date1 month next: 1).