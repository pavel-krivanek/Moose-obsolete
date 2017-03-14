*Moose-RoassalPaintings-Support
internalInvocations

	^ self outgoingInvocationsGroup select: [:each | 
				each candidates anySatisfy: [:c|
					c belongsTo == self ]].
