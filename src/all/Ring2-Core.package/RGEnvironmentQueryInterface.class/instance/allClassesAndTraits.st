as yet unclassified
allClassesAndTraits

	^ self behaviors select: [ :each | each isClass or: [ each isTrait and: [ each isMetaclassTrait not ] ] ]