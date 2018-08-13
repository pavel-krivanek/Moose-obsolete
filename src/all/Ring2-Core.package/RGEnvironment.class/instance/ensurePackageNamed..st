as yet unclassified
ensurePackageNamed: aSymbol

	^ self ask packages 
		detect: [:each | each name = aSymbol] 
		ifNone: [ | newPackage |
				newPackage := RGPackageDefinition named: aSymbol parent: self.
				self addPackage: newPackage.
				newPackage ].
			
