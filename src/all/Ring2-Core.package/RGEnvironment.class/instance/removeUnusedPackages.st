unpackaged 
removeUnusedPackages

	"remove all packages that are not used in the system. It cannot be done automatically
	for every change in the package structure because then it would be impossible to 
	create e.g. an environment with one empty package"
	
	| usedPackages | 
	
	usedPackages := IdentitySet new.
	self behaviorsDo: [ :behavior |
		behavior isMeta 
			ifFalse: [ usedPackages add: behavior package]. 
		behavior localMethodsDo: [ :method |
			  usedPackages add: method package]].
		
	self ask packages copy do: [ :each |
		(usedPackages includes: each) 
			ifFalse: [ self removePackage: each ] ].