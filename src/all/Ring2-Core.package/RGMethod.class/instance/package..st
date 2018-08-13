accessing - backend
package: anRGPackageDefinition

	self backend forMethod setMethodPackageFor: self to: anRGPackageDefinition.
	self environment addPackage: anRGPackageDefinition.
	(self parent package = anRGPackageDefinition)
		ifFalse: [ self package addExtensionMethod: self ].
