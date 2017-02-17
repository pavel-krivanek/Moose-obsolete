sources
exampleSidesAndRadius

"Thanks to Peter Uhnak for the script"
|sidesCount radius points b els edges|
sidesCount := 70.
radius := 2000.

points := (1 to: sidesCount) collect: [ :i |
	i -> (
	(radius * ((Float twoPi * i) / sidesCount) cos)
	@
	(radius * ((Float twoPi * i) / sidesCount) sin)
	)
].

b := RTMondrian new.
(b shape ellipse)
	color: Color transparent;
	size: 0.
els := (b nodes: points).
(b edges shape line)
	color: Color black.
edges := b edges connectToAll: [ :src | points copyUpTo: src ].

b build.
els do: [ :el |
	el translateTo: el model value.
].

b view @ RTZoomableView @ RTDraggableView.

^ b view
