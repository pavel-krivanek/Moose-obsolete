drawing
drawOn: athensCanvas
	"The shape is first moved by offset, which will always center it on camera, then it is moved by moduled offset, so it will alway move only by at most the modulo"
 
	| s |
	athensCanvas pathTransform
		restoreAfter:
			[ athensCanvas pathTransform translateBy: offset.
			athensCanvas pathTransform
				translateBy: ((offset x % spacing) @ (offset y % spacing)) negated.
			athensCanvas setShape: self path.
			s := athensCanvas setStrokePaint: self color.
			s width: 1.
			dashes ifNotNil: [ 
				 s dashes: dashes offset: spacing ].
			athensCanvas draw ]