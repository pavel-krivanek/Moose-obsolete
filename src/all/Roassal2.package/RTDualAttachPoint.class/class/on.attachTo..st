public
on: els attachTo: anAttachPoint
	^ self on: els thenDo: [ :ins | ins attachTo: anAttachPoint ].
	