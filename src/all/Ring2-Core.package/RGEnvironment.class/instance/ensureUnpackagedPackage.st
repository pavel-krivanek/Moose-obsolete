unpackaged 
ensureUnpackagedPackage

	^ self unpackagedPackageOrNil
		ifNotNil: [ :found | found ]
		ifNil: [ | newPackage |
			newPackage := RGPackageDefinition unresolvedWithParent: self.
			newPackage pvtName: self unpackagedPackageName.
			self pvtAddPackage: newPackage.
			^ newPackage ]