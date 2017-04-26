sources
exampleChangingCargeInForceLayout

| v es setSizeAndColor s layout |
v := RTView new.
v @ RTDraggableView.
es := RTEllipse elementsOn: (1 to: 30).
es @ RTDraggable.
v addAll: es.
RTEdgeBuilder new
	view: v;
	moveBehind;
	connectFrom: [ :vv | vv // 2 ].
	
setSizeAndColor value.

s := RTForceLayoutStepping new view: v.
layout := RTForceBasedLayout new.
s layout: layout.
v addAnimation: s.

setSizeAndColor := [ 
		RTMetricNormalizer new
			elements: es;
			normalizeSize: #yourself;
			normalizeColor: #yourself;
			alphaColor: 0.5.
		es do: [ :e | layout set: e charge: e model negated * 5 ].
	 ].

v addMenu: 'Change Weight' callback: [ 
	es do: [ :e | e model: 30 atRandom ]. 
	setSizeAndColor value.
	v signalUpdate.
	].

^ v