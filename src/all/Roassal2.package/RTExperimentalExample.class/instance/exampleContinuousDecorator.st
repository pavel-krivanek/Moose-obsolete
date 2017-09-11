sources
exampleContinuousDecorator
| g d1 d2 deco |
g := RTGrapher new.
g extent.
d1 := RTData new.
d1 noDot .
d1 connectColor: Color blue.
d1 points: (Array with: -5@2 with: -3@4 with: 0@1 with: 5@7).
d1 y: #y.
d1 x: #x.
g add: d1.

d2 := RTData new.
d2 noDot .
d2 connectColor: Color red.
d2 points: #(1 -3 3 5 9 10).
d2 y: #yourself.
g add: d2.
deco := RTContinuousDecorator new.
deco title: 'My Data'.
deco legendLabel text: [ :as | | pos |
	pos := deco calculatePointFor: as.
	(as key == d1 ifTrue: ['Blue'] ifFalse: ['Red'] ),
	' line ',
	 pos y asString ].

g addDecorator: deco .

^ g

