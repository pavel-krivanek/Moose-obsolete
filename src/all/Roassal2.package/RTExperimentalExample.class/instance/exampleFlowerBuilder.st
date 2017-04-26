sources
exampleFlowerBuilder
 
| v angles angle b color size block bcolor arcs update |
angle := 360 / 12.
angles := 0 to: 360 by: angle.
v := RTView new.
v canvas color: Color black.
bcolor := Color random.
arcs := (RTArc new
	color: [ bcolor ];
	innerRadius: 0;
	externalRadius: 250;
	alphaAngle: [:m | m];
	betaAngle: [ :m | m + 1 ]) elementsOn: angles.
v addAll: arcs.
update := [ arcs do: #update. v signalUpdate ].
b := RTMenuBuilder new view: v.
color := Color green.
size := 10.
b menu: 'Color' submenu: 'Red' callback: [ color := Color red ].
b menu: 'Color' submenu: 'Green' callback: [ color := Color green ].
b menu: 'Color' submenu: 'Blue' callback: [ color := Color blue ].
b menu: 'Color' submenu: 'Black' callback: [ color := Color black ].
block := [ :i |
	 b menu: 'Size' submenu: i asString callback: [ size := i ] ].
1 to: 10 do: [ :i | block value: i ].
b menu: 'Base' submenu: 'Show' callback: [ 
	bcolor := Color random.
	update value. ].
b menu: 'Base' submenu: 'Hide' callback: [ 
	bcolor := Color black.
	update value. ].
b menu: 'Clear' callback: [ 
	(v elements select: [ :e | e shape class = RTEllipse ]) do: #remove.
	v signalUpdate. ].

v when: TRMouseDragging do: [ :evt | | els p dist degrees |
	els := (RTEllipse new 
		color: color;
		size: size) elementsOn: angles.
	p := evt positionFromCamera.
	dist := (p squaredDistanceTo: 0@0) sqrt.
	degrees := p degrees.   
	els doWithIndex: [ :e :i | | ang |
		ang := i odd
			ifTrue: [ e model + degrees ]
			ifFalse: [ e model + angle - degrees ].
		ang := ang degreesToRadians.
		e translateTo: (dist * ang  cos)@(dist * ang sin) ].
	
	v addAll: els.
	evt signalUpdate. ].
^ v

	