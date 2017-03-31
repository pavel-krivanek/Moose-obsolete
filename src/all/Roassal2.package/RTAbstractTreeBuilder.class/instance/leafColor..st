color
leafColor: aBlockOrColor
	self shape 
		ifElement: [ :e | 
			(e attributes includesKey: self childrenKey) and: 
			[ (e attributes at: self childrenKey) isEmpty ]  ]
		fillColor: [:e | aBlockOrColor rtValue: e model ] .