sources
examplePopupDecorators

| b ds1 ds2 |
b := RTGrapher new.

ds1 := RTData new.
ds1 connectColor: Color blue.
ds1 points: (Array with: 0->0 with: 1->1 with: 2->3 with: 3->5 with: 4->7).
ds1 x: #key.
ds1 y: #value.

ds2 := RTData new.
ds2 connectColor: Color red.
ds2 points: (Array with: 0->0 with: 1->2 with: 2->4 with: 3->16 with: 4->32).
ds2 x: #key.
ds2 y: #value.

b add: ds1.
b add: ds2.

b addDecorator: (RTAverageDecorator new withLabel).

ds1 interaction noInteractions.
ds1 interaction popupDecorator: [ :model |
	RTAverageDecorator new
		lineColor: Color blue;
		withLabel: [ :num | 'average ', num asFloat asString ]
].

ds2 interaction noInteractions.
ds2 interaction popupDecorator: [ :model |
	RTAverageDecorator new
		lineColor: Color red;
		withLabel: [ :num | 'average ', num asFloat asString ];
		dataset: ds2
].

b build.
^ b view