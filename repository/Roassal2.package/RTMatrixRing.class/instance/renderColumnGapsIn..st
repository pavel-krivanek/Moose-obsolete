hooks
renderColumnGapsIn: aView
	| partitions v1 v2 ang boxShape |
	self columnGap isZero ifTrue: [ ^ self ].
	self matrix ifNil: [ ^self ].
	boxShape := RTBox new size: 0.
	partitions := (columnBlock rtValue: (rowBlock rtValue: self matrix) first) size.
	self lineShape color: aView canvas color.
	1 to: partitions do: [ :i |
		ang := (360 * i / partitions) degreesToRadians.
		v1 := boxShape element.
		v2 := boxShape element.
		v1 translateTo: (self innerRadius - 4 * ang cos)@(self innerRadius - 4 * ang sin).
		v2 translateTo: (self externalRadius * ang cos)@(self externalRadius * ang sin).
		aView 
			add: v1;
			add: v2;
			add: (self lineShape edgeFrom: v1 to: v2).
		self elements add: v1; add: v2.
	]