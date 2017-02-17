debugging actions
stepUntil: aPredicate

	^ self stepUntil: aPredicate from: self interruptedContext.