accessing
deferrableTriggers: aTrigger
	"A list of Triggers that are candidates to be retained by the StateMachine if they trigger no Transitions out of the State (not consumed). A deferred Trigger is retained until the StateMachine reaches a State configuration where it is no longer deferred."
	deferrableTriggers := aTrigger