sources
exampleLabelsInBar

| b ds barElements someElements |
b := RTGrapher new.

ds := RTData new.
ds barShape.
barElements := ds points: #(1 2 3 2 1).
b add: ds.

b axisX noTick.
b build.


ds barShape createdElements do: [ :back |
	someElements := (RTLabel new color: Color red) elementsOn: (1 to: back model * 3).
	b view addAll: someElements.

	RTFlowLayout new maxWidth: back trachelShape width; on: someElements.
	someElements translateTo: back position.
	(RTConstraint  on: someElements background: back)
		top ; center ; inner; padding: 5; move.
].

^ b 