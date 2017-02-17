examples
example02

	| v timer t e slider |
	v := RTView new.

	timer := TRVIManualTimer new.

	t := TRVIAnimatedValue new.
	t evaluator: [ :time | 0 interpolateTo: 100 at: time ].
	t timer: timer.
	
	e := (RTEllipse new size: 30) element.

	v add: e.
	e translateTo: t @ t.
	
	slider := RTSlider new.
	slider view: v.
	slider labeled.
	slider callback: [ :aValue | timer value: aValue  ].
	slider build.
	slider move: #above.
	^ v