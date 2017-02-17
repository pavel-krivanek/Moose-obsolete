sources
exampleSquaredCurve

| data b ds |
data := (0 to: 40000 by: 1000) 
collect: [:n | n @ (Random new next * 3) floor].
b := RTGrapher new.
b extent: 1000@ 200. 
ds := RTData new.
ds dotShape rectangle height: 1; width: 25; color: Color blue.
ds connectUsing: (RTLine new 
	color: (Color blue); 
	width: 1; 
	withHorizontalAttachPoint; yourself).
ds 
	points: data;
	x: #x;
	y: #y.

b add: ds.
b axisX. 
b axisY title: 'alles Count'.
^ b