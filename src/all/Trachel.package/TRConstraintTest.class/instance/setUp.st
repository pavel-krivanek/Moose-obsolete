running
setUp
	super setUp.
	canvas := TRCanvas new.
	shape1 := TRBoxShape new size: 50.
	shape2 := TRBoxShape new size: 10.
	canvas addShape: shape1.
	canvas addShape: shape2.
	
	(originShape := TRBoxShape new) extent: 10 @ 10.
	(conformingShape := TRBoxShape new) extent: 20 @ 20