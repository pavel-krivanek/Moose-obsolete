accessing - backend
package: anRGPackageDefinition

	| oldPackage |
	oldPackage := self package.

	self owner announceDefinitionChangeDuring: [ 
		self owner backend forBehavior setPackageFor: self owner to: anRGPackageDefinition.
		self owner environment addPackage: anRGPackageDefinition.
		(oldPackage hasResolved: #definedBehaviors)
			ifTrue: [ oldPackage removeDefinedBehavior: self owner ].
		anRGPackageDefinition addDefinedBehavior: self owner. ].
	
	self owner announce: (ClassRepackaged 
		classRepackaged: self owner
		oldPackage: oldPackage
		newPackage: anRGPackageDefinition)