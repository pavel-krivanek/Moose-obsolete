visiting
visitFM3PackageDescription: aFM3PackageDescription

	(self newMetaRepository includes: aFM3PackageDescription) ifTrue: [^ self ].

	newMetaRepository add: aFM3PackageDescription 