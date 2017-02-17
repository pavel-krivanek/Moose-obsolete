hooks
execute
	(Smalltalk globals includesKey: #GTEventCollector) ifFalse: [ 
		UIManager default abort: 'Plugin cannot be loaded. GTEventCollector not found'.
		^ self ].
	Gofer new 
		smalltalkhubUser: 'ObjectProfile' project: 'Roassal2';
		package: 'Roassal2EventCollector'; load.