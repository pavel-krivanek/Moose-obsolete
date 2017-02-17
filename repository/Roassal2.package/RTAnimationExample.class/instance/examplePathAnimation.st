sources
examplePathAnimation

| v els eb effect t example |
v := RTView new.
"v canvas color: Color black."
v add: (RTBitmap new form: RTIcon robowo) element.
els := RTBox elementsOn: (1 to: 4).
v addAll: els.

eb := RTEdgeBuilder new.
eb view: v.
eb objects: (1 to: 4).
eb useAssociations: (Array with: 1->2 with: 3->4).	

t := 10.
example := RTAnimationExample new.
effect := [ :e| example dustEffect: e and: v ].
v addAnimation: ((RTPathAnimation on: els first path:
 ('L0,100L-110,110', (RTSVGPath 
		goldenSpiral: 10 
		start: 0@0
		side: 200
		direction: 1@ 1
		type: true)) seconds: t) repeat; duringDo: effect).

v addAnimation: ((RTPathAnimation on: els third path:
 ('L0,100L110,110', (RTSVGPath 
		goldenSpiral: 10 
		start: 0@0
		side: 200
		direction: 1@ -1
		type: true)) seconds: t) repeat; duringDo: effect).

v addAnimation: ((RTPathAnimation on: els second path:
 ('L0,-100L-110,-110', (RTSVGPath 
		goldenSpiral: 10 
		start: 0@0
		side: 200
		direction: -1@ -1
		type: true)) seconds: t) repeat; duringDo: effect) .

v addAnimation: ((RTPathAnimation on: els fourth  path:
 ('L0,-100L110,-110', (RTSVGPath 
		goldenSpiral: 10 
		start: 0@0
		side: 200
		direction: -1@ 1
		type: true)) seconds: t) repeat; duringDo: effect).
v canvas camera scale: 0.4.
^ v


