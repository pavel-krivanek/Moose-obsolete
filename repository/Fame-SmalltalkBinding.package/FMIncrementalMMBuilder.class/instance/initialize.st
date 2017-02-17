initialization
initialize

	super initialize.
	packageDict := SmallDictionary new.
	superclassDict := Dictionary new.
	envStack := Stack new.
	
	"Format for packageDict: a dictionary of dictionary of collections
		{'package1' -> {
			#ClassX -> {
				{prop1. type1. opposite. multi. derived}
				{prop2. type2. nil. true. false} }
			#ClassY -> { {prop3. ....}}
		 }"