predicates
streamToDifferentPositionThan: anInteger

	^ self session createPredicateForBlock: [
		self session stream position ~= anInteger ]