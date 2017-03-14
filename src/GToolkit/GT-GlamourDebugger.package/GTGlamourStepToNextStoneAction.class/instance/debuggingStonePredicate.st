predicates
debuggingStonePredicate

	^ self session createPredicateForBlock: [ :aContext |
			aContext isInitialnstruction and: [ | pragma |
				pragma := aContext method pragmaAt: self class debuggingStonePragma.
				pragma notNil and: [ 
					self debugStoneType isNil or: [ (pragma argumentAt: 1) = self debugStoneType ] ] ] ]