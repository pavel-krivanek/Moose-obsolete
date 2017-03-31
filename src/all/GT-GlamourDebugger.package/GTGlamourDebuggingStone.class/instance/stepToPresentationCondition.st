actions
stepToPresentationCondition
	| ctxt |

	ctxt := self session context.
	self session 
		stepUntil: ((self session createPredicateForBlock: [ ctxt isDead ]) or:  self glamourValueDeliveryPredicate)
		from: self session context.
		
	ctxt isDead not ifTrue: [ 
		self session stepInto ].
	
	^ ctxt isDead not