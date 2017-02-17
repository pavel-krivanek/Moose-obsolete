attach point
attachPoint: anAttachPoint
	self allShapes do: [ :s | 
		((s isKindOf: RTAbstractLine) or: [ s isKindOf: RTLineDecoration ]) 
			ifTrue: [ s attachPoint: anAttachPoint ] ]