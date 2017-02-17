[ [ [ 
	| v timer t e |
	v := RTView new.

	timer := VIManualTimer new.

	t := VIAnimatedValue new.
	t evaluator: [ :time | 0 interpolateTo: 100 at: time ].
	t timer: timer.
	
	e := (RTEllipse new size: 30) element.

	v add: e.
	e translateTo: t @ t.

	v addMenu: 'refresh' callback: [ timer incrementBy: 0.1. v signalUpdate ].
	v
 ] ] ]