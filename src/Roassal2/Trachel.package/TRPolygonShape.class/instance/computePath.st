private
computePath
	canvas ifNil: [ ^ self ].
	self numberOfVertices = 0 ifTrue: [ 
		path := self athensCanvas
		createPath: [ :builder | ].
		^ self ].
	path := self athensCanvas
		createPath: [ :builder | 
			builder
				absolute;
				moveTo: vertices last.
			vertices do: [ :v |
				builder lineTo: v ].
			builder closePath ]