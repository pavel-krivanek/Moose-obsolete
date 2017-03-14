navigation
collaboratingClassesAndMethods
	"this returns the set of methods belonging to these classes that call at least
	one other method from at least one other class from the group"
	| selectedMethods invokingMethods invokedMethods methods |
	selectedMethods := IdentityDictionary new.
	self do: [ :eachClass | 
		invokingMethods := eachClass methods select: [ :eachMethod | 
			eachMethod invokedClasses anySatisfy: [ :each | each ~~ eachClass and: [ self includes: each ] ] ].
		invokedMethods := eachClass methods select: [ :eachMethod | 
			eachMethod invokingClasses anySatisfy: [ :each | each ~~ eachClass and: [ self includes: each ] ] ].
		methods := Set new.
		methods addAll: invokingMethods.
		methods addAll: invokedMethods.
		selectedMethods at: eachClass put: methods ].
	^ selectedMethods