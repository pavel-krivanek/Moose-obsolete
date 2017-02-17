public - sticking
stick: aShape onTheTopCenterOf: anotherShape

"
v := RTView new.

lbl := RTLabel elementOn: 'Hello world'.
box := (RTBox new width: 50; height: 80) element.

v add: box.
v add: lbl.
box translateTo: 50 @ 50.
box @ RTDraggable.
TRConstraint stick: lbl onTheTopCenterOf: box.
v
"
	| b |
	self move: aShape onTheTopCenterOf: anotherShape.

	b := [ :shape :step | self move: aShape onTheTopCenterOf: anotherShape ].
	anotherShape addCallback: (TRTranslationCallback block: b).
	anotherShape addCallback: (TRExtentCallback block: b)