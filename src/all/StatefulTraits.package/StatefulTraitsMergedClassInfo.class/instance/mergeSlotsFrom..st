merging
mergeSlotsFrom: aTrait

	aTrait slots do: [ :each | self mergeSlot: each ].
	