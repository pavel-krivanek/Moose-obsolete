tests
testBasic

	| l |
	l := RTForceLayoutStepping new.
	self deny: l hasCompleted.
	