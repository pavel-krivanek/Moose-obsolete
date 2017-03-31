initialize-release
initialize: aCollectionOfFM3Elements

	super initialize.
	meta := aCollectionOfFM3Elements .
	entityDependencies := Dictionary new.
	entitiesToBeExtracted := Set new.
	fm3Elements := OrderedCollection new.
	self defineEntityDependencies .