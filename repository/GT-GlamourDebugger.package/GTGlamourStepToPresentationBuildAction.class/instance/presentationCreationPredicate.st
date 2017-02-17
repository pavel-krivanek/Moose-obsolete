predicates
presentationCreationPredicate

	^ self session createPredicateForBlock: [ :aContext |
			aContext methodClass = GLMPresentStrategy and: [ 
				aContext selector = #presentations and: [ 
					aContext isInitialnstruction ] ] ]

