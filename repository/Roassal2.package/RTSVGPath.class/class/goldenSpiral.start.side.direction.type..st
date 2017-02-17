others
goldenSpiral: level start: p side: side direction: dir type: isNarrow

	"level: the number or golden rectangles
	p: the start point
	side: the size of the bigger rectangle
	dir: the direction for rectangle in quadrants 1@1 = first quadrant etc
	isNarrow: the arc direction"
	| s point p1 p2 p3 goldenRatio si dirs d n ar |
	ar := isNarrow 
		ifTrue: [  #(1 1 1 -1 1 -1 -1 -1 -1 -1 -1 1 -1 1 1 1) ]
		ifFalse: [ #(1 1 -1 1 -1 1 -1 -1 -1 -1 1 -1 1 -1 1 1) ].
	dirs := Dictionary new.
	(1 to: 16 by: 4) do: [ :i|
		dirs at: (ar at: i)@(ar at: i+1) put: (ar at: i+2)@(ar at: i+3) ].
	goldenRatio := (1 + 5 sqrt)/2. 
	s := WriteStream on: (String new: 100).
	point := [ :z| z x asFloat asString, ',', z y asFloat asString,' ' ].
	s nextPutAll: 'M', (point value: p).
	si := side.
	d := dir.
	n := isNarrow.
	((dir = (-1 @ 1)) or: [ dir= (1@ -1) ]) ifTrue: [ n := n not. ].
	1 to: level do: [ :i|
		p3 := p+(d * si).
		n ifTrue: [ 
			p1 :=p x @((0.55*(p3 y - p y))+ p y) .
			p2 := ((0.45*(p3 x - p x))+p x ) @ p3 y.
		] ifFalse: [ 
			p1 := ((0.55*(p3 x - p x))+p x ) @ p y.
			p2 := p3 x @((0.45*(p3 y - p y))+ p y). ].
		si := (si * goldenRatio)-si.
		d := dirs at: d.
		n := n not.
		s
			nextPutAll: 'c';
			nextPutAll: (point value: p1);
			nextPutAll: (point value: p2);
			nextPutAll: (point value: p3).
		 ].
	s nextPutAll: 'z'.
	s close.
	^ s contents.
