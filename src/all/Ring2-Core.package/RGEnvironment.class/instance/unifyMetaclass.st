cleaning
unifyMetaclass

	"set all metaclasses of metaclasses to the same object (Metaclass) "

	| aMetaclass |

	aMetaclass := self ensureMetaclass.
	 
	self ask behaviorsDo: [ :each | 
		(each isMetaclass)
			ifTrue: [ each metaclass: aMetaclass] ].
