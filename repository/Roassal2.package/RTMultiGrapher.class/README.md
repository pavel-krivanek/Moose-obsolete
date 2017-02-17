RTMultiGrapher allows for supporting several graphs in the same physical location.

Here is an example:
-=-=-=
|g g1 g2 ds1 ds2|
g := RTMultiGrapher new.

g1 := RTGrapher new.
ds1 := RTData new.
ds1 label: 'Red'.
ds1 dotShape color: Color red.
ds1 connectColor: Color red.
ds1 points: ((1 to: 10) collect: [ :each | 20 atRandom ]).
ds1 interaction highlightDataset: Color black.
g1 add: ds1.

g2 := RTGrapher new.
ds2 := RTData new.
ds2 label: 'Blue'.
ds2 dotShape color: Color blue.
ds2 connectColor: Color blue.
ds2 points: ((1 to: 10) collect: [ :each | 1000 atRandom ]).
ds2 interaction highlightDataset: Color purple.
g2 add: ds2.

g1 axisY
	title: 'y 1';
	color: Color red.
	
g2 axisY
	title: 'y 2';
	color: Color blue.

g add: g1.
g add: g2.
g legend.

^ g
-=-=-=