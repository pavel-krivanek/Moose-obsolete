cleaning
unifyMetaclass: aProposedName

	"set all metaclasses of metaclasses to the same object (Metaclass) "

	| aMetaclass |

	aMetaclass := self ensureMetaclass: aProposedName.
	 
	self ask behaviorsDo: [ :each | 
		(each isMetaclass)
			ifTrue: [ each metaclass: aMetaclass] ].
