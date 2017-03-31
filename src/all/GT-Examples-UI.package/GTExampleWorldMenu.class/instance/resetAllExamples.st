private
resetAllExamples
	GTExampleOrganizer reset.
	GTExampleOrganizer restart.
	Smalltalk garbageCollect; garbageCollectMost.