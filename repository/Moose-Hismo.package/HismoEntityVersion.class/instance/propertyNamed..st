public interface
propertyNamed: aPropertyName
	
	| versionEntityProperty |
	versionEntityProperty := self versionEntity propertyNamed: aPropertyName.
	^versionEntityProperty isNil
		ifFalse: [versionEntityProperty]
		ifTrue: [super propertyNamed: aPropertyName]