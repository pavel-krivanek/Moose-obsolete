failures
noteFailure: aPPFailure
	"record the furthest failure encountered while parsing the input stream "

	( furthestFailure isNil or: [ aPPFailure position > furthestFailure position ]) 
		ifTrue: [ furthestFailure := aPPFailure ].