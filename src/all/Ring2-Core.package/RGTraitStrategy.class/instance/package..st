accessing
package: anRGPackageDefinition

	self announceDefinitionChangeDuring: [ 
		self backend forBehavior setTraitPackageFor: self to: anRGPackageDefinition.
		self environment addPackage: anRGPackageDefinition.
		anRGPackageDefinition addDefinedBehavior: self owner. ].