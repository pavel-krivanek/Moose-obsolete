hooks
updateFor: element trachelShape: trachelShape

	| vs p path x y stepHorizontal stepVertical w h min max ny vsnil |
	vs := self valuesFor: element.
	vsnil := false.
	vs isNil ifTrue: [ 
		vs := #(0 1 2).
		vsnil := true ].
	w := self widthFor: element.
	h := self heightFor: element.
	stepHorizontal := w / vs size.
	min := self minValueFor: element.
	max := self maxValueFor: element.
	min ifNil: [ min := vs min].
	max ifNil: [ max := vs max].
	
	stepVertical := max = min 
		ifTrue: [ h ]
		ifFalse: [ h / (max - min) ].
	p := (element position - ((w / 2) @ (h negated / 2))).
	x := p x.
	y := p y.
	ny := vs first - min * stepVertical.
	path := 'M', x asFloat asString, ',', (y - ny) asFloat asString.
	
	vs size = 1
		ifTrue: [ 
			x := x + stepHorizontal.
			path := path, 'L', x asFloat asString, ',', (y - ny) asFloat asString ]
	
		ifFalse: [
			vs allButFirstDo: [ :v |
				x := x + stepHorizontal.
				ny := (v - min * stepVertical).
				path := path, 'L', x asFloat asString, ',', (y - ny) asFloat asString.
			] ].
	trachelShape resetPath.
	trachelShape path: path.
	
	"We manually specify the extent of the shape. If we do not do it, then the path will be used to determine the encompassing rectangle"
	max = min ifTrue: [ h := 1 ].
	trachelShape setExtent: w @ h.
	vsnil ifTrue: [ 
		trachelShape fillColor: Color transparent; strokePaint: Color transparent ]
	
	
	