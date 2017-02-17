public - moving
move: aShape onTheBottomCenterOf: anotherShape
	"
	Move aShape at the bottom of botom center of anotherShape
	
v := RTView new.

lbl := RTLabel elementOn: 'Hello world'.
box := (RTBox new width: 50; height: 80) element.

v add: box.
v add: lbl.
box translateTo: 50 @ 50.
TRConstraint move: lbl onTheBottomCenterOf: box.
v
	"

	self
		move: aShape
		onTheBottomCenterOf: anotherShape
		withWidthPadding: 5
		withHeightPadding: 5