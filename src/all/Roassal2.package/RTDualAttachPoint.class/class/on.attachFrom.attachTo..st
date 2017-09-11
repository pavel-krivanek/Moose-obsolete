public
on: els attachFrom: anAttachPoint1 attachTo: anAttachPoint2
	^ self on: els thenDo: [ :ins | 
		ins
			attachFrom: anAttachPoint1;
			attachTo: anAttachPoint2
		 ].
	