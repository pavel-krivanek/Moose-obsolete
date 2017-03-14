tests
testBasicWithTimer
	| t timer |
	t := TRVIAnimatedValue new.
	t evaluator: [ :time1 | 0 interpolateTo: 100 at: time1 ].
	timer := TRVITimer new cycleLength: 2.
	t timer: timer.
	self assert: t value equals: 0