public
on: els attachFrom: anAttachPoint
	^ self on: els thenDo: [ :ins | ins attachFrom: anAttachPoint ].
	