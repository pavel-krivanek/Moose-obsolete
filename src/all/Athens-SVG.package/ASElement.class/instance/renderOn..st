rendering
renderOn: aCanvas
	"render on Athens canvas"

	self transform
		ifNotNil: [ :tr | 
			aCanvas pathTransform
				restoreAfter: [ 
					aCanvas pathTransform multiplyBy: tr.
					self renderShapeOn: aCanvas ] ]
		ifNil: [ self renderShapeOn: aCanvas ]