tests
testEveryNMonths

	| date1 date2 selectedVersions |
	
	"N = 18"
	hismoImporter everyNMonths: 18.
	selectedVersions := hismoImporter selectedVersions.

	self assert: selectedVersions size = 8.
	
	"compare the date of the two first selections"
	date1 := self colllectDateInString: selectedVersions first.
	date2 := self colllectDateInString: selectedVersions second.
	
	self assert: date2 month >=  (date1 month next: 18).
	
	"compare the date of the two last selections"
	date1 := self colllectDateInString: (selectedVersions at: selectedVersions size - 1).
	date2 := self colllectDateInString: selectedVersions last.

	self assert: date2 month >=  (date1 month next: 18).