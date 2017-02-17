sources
exampleAdjustedAxes
| c b1 ds1 b2 ds2 b3 ds3 |
c := RTComposer new.
c gap: 35.

"-------"
b1 := RTGrapher new.
b1 view: c view.
ds1 := RTData new.
ds1 dotShape color: Color red.
ds1 points: #(3 -3).
ds1 connectColor: Color red.
b1 add: ds1.
b1 build.
c group: #regular.
"-------"
b2 := RTGrapher new.
b2 view: c view.
b2 minX: 1.
b2 maxX: 3.
b2 withoutOrigin.
ds2 := RTData new.
ds2 dotShape color: Color red.
ds2 points: #(3 -3).
ds2 connectColor: Color red.
b2 add: ds2.
b2 build.
c group: #withoutOrigin.
"-------"
b3 := RTGrapher new.
b3 view: c view.
b3 yOffset: 30.
ds3 := RTData new.
ds3 dotShape color: Color red.
ds3 points: #(3 -3).
ds3 connectColor: Color red.
b3 add: ds3.
b3 build.
c group: #offset.
"-------"

c move: #withoutOrigin below: #regular.
c move: #offset below: #withoutOrigin.
c nameGroup: #regular as: 'Regular'.
c nameGroup: #withoutOrigin as: '#Without origin (0@0)'.
c nameGroup: #offset as: 'Y axis offset'.
^ c view