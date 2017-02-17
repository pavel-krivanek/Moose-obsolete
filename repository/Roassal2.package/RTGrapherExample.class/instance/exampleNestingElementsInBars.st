sources
exampleNestingElementsInBars

| b ds back barElements someElements |
b := RTGrapher new.

ds := RTData new.
ds barShape.
barElements := ds points: #(1 2 3).
b add: ds.

b axisX noTick.
b build.


#(1 2 3) do: [ :value |
	back := b view elementFromModel: value.
	someElements := (RTBox new color: Color red) elementsOn: (1 to: back model * 20).
	b view addAll: someElements.

	RTFlowLayout new maxWidth: back trachelShape width; on: someElements.
	someElements translateTo: back position.
	(RTConstraint  on: someElements background: back)
		top ; center ; inner; padding: 5; move.
].

^ b view