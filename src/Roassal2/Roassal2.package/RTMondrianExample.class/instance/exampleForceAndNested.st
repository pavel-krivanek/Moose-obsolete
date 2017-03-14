sources
exampleForceAndNested
	<gtExample> 
	<noTest>
	| b |
	(TRPlatform current dialogConfirm: 'This example takes a long time to load, execute?')
	ifFalse: [ ^ self ].
	b := RTMondrian new.
	b nodes: RTShape withAllSubclasses forEach: [ :cls |
		b shape rectangle color: Color blue.
		b nodes: cls rtmethods.
		b shape line color: Color black.
		b edges connectToAll: #dependentMethods.
		b layout force.
	].
	b edges connectFrom: #superclass.
	b layout tree.
	b build.
	
	^ b view