querying
subclassesOf: aBehavior
	^ aBehavior subclasses asSortedCollection: [ :a :b | a name < b name ]