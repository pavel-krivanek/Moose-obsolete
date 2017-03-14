*Moose-RoassalPaintings-Support
internalLayerInvocations

	^ self outgoingInvocationsGroup select: [:each | 
			each sender isInternalImplementation and: [ "internal sender"
				each candidates anySatisfy: [:cand|
					cand belongsTo == self and: [ "class candidate"
						each sender ~= cand and: [ "no recursive call"
							cand isInternalImplementation ]]]]] "internal candidate"
