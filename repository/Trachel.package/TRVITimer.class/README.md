I am using system time to implement a timer.

[ [ [ 		 
	| v timer t e |
	v := RTView new.

	timer := VITimer new cycleLength: 2.
	t := VIAnimatedValue new.
	t evaluator: [ :time | 0 interpolateTo: 100 at: time ].
	t timer: timer.
	timer start.
	timer repeat.

	e := (RTEllipse new size: 30) element.

	v add: e.
	e translateTo: t @ t.

	v addMenu: 'refresh' callback: [ v signalUpdate ].
	v
] ] ]