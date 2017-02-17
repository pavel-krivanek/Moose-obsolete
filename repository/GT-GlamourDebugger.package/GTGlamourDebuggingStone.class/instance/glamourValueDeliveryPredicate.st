private
glamourValueDeliveryPredicate
	^ self session
		createPredicateForBlock: [ :aContext | 
			aContext selector = #glamourValueWithArgs:
				and: [ 
					aContext peekInstruction arguments notEmpty
						and: [ #(#value #valueWithArguments:) includes: aContext peekInstruction argument ] ] ]