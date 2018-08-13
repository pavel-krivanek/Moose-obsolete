cleaning
unifyClassTrait

	"set all metaclasses of classTraits to the same object (ClassTrait) "

	| aTrait |

	aTrait := self ensureClassTrait.
	 
	self ask behaviorsDo: [ :each | 
		(each isMetaclassTrait)
			ifTrue: [ each metaclass: aTrait]].
