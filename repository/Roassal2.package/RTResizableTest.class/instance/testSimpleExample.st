tests
testSimpleExample

	| v s e |
	v := RTView new.
	s := RTBox new color: Color blue; size: 20.
	e := s element.
	e @ RTResizable.
	v add: e.
	e announce: TRMouseClick new.
	e announce: (TRMouseDragging new step: 5 @ 5).
	e translateBy: 5 @ 5.
	
	"A bit strange this 'top'"
	RTResizable new lazyInitializeElement: e; basicCallbackFor: RTElement new corner: #top