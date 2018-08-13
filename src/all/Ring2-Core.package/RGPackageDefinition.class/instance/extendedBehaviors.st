accessing
extendedBehaviors
	
	^ ((self extensionMethods collect: #parent) collect: [:behavior |
		behavior isClass 
			ifTrue: [behavior ]
			ifFalse: [ behavior baseClass]] as: IdentitySet) asArray