instance creation
new

	| collectionOfFM3Eelements |
	collectionOfFM3Eelements := FAMIXSourcedEntity allSubclasses collect: [:each | each asMooseDescription ].
	^ super fromMeta: collectionOfFM3Eelements .