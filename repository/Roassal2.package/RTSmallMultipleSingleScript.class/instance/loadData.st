util
loadData

	| dc tab |
	dc := Dictionary new.
	tab := RTTabTable openTSVfile.
	tab ifNil: [ ^ self ].
	
	tab values do: [ :line|
		| a |
		a := line third -> line second.
		dc at: a ifAbsentPut: [ 0 ].
		dc at: a put: (dc at: a) + 1 ].
	
	^ dc