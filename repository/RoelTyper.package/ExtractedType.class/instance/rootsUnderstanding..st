private
rootsUnderstanding: selectors
	"When the set of selectors is not empty, answer a set of the highest possible classes in the system that implement all the selectors.
	  When the set of selectors is empty, return the empty set."

	| initialClasses nextClasses traverseStack next |
	selectors isEmpty ifTrue: [^OrderedCollection new].
	nextClasses := OrderedCollection with: Object.
	traverseStack := OrderedCollection new: 10000.
		
	selectors
		do:
			[:selector | 
			initialClasses := nextClasses.
			nextClasses := OrderedCollection new.
			initialClasses
				do:
					[:initialClass | 
					"inline canUnderstand: for performance"
					|cl|
					cl := initialClass.
					[(cl == nil) or: [(cl methodDict pointsTo: selector)]] whileFalse: [cl := cl superclass].
					(cl == nil)
						ifFalse: [nextClasses addLast: initialClass]
						ifTrue:
							[|size|
							traverseStack reset.
							traverseStack addLast: initialClass.
							size := 1.
							"(traverseStack isEmpty) removed for performance"
							[size = 0]
								whileFalse:
									[
									"(traverseStack removeFirst) removed for performance"
									next := traverseStack unsafeRemoveFirst.
									size := size -1.
									next
										subclassesDo:
											[:subcl |
											"(subcl includesSelector: selector) removed for performance"
											(subcl methodDict pointsTo: selector)
												ifTrue: [nextClasses addLast: subcl]
												ifFalse: [traverseStack addLast: subcl. size := size + 1]]]]]].
	^nextClasses