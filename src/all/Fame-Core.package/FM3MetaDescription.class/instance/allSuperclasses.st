accessing
allSuperclasses

	| mmclass superclasses |
	
	superclasses := OrderedCollection new.
	mmclass := self.
	
	[mmclass hasSuperclass]
		whileTrue: [
			mmclass := mmclass superclass.
			superclasses add: mmclass].
	^ superclasses