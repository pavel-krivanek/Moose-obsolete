*GT-InspectorExtensions-CoreRoassal
= aMetacelloVersion
	"needed because the super implementation only checks the version number,
	and we also need to ensure that we have the same configuration class"	
	^ (super = aMetacelloVersion) and: [ 
		self spec project configuration class = aMetacelloVersion spec project configuration class ]