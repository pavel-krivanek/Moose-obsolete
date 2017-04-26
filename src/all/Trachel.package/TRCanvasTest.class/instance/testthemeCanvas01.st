theme
testthemeCanvas01
	| c s |
	c := TRCanvas new.
	c theme: TRWhiteTheme new.
	
	s := TRBoxShape new.
	c addShape: s.
	
	self assert: s theme equals: c theme