naming conventions
soleClassNameFromFamixName: aFAMIX2Name
	"return the class (sole instance) of the FAMIX2 name"

	| FAMIX2Name isMetaclass |
	FAMIX2Name := self smalltalkClassNameFromFamixClassName: aFAMIX2Name.
	isMetaclass := '*' , self stMetaclassTag match: FAMIX2Name.
	^isMetaclass
		ifTrue:
			[(FAMIX2Name
				copyFrom: 1
				to: FAMIX2Name size - self metaclassTag size) asSymbol]
		ifFalse: [FAMIX2Name]