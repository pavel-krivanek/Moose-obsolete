generated
scanForTokenX3
	self recordMatch: #(7 90).
	self step.
	(currentCharacter == $!
		or: [ (currentCharacter between: $% and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ (currentCharacter between: $< and: $>)
										or:
											[ '^|~' includes: currentCharacter ] ] ] ] ])
		ifTrue: [ [ self recordMatch: #(90).
			self step.
			currentCharacter == $!
				or: [ (currentCharacter between: $% and: $&)
						or: [ (currentCharacter between: $* and: $+)
								or: [ (currentCharacter between: $- and: $/)
										or: [ (currentCharacter between: $< and: $>)
												or:
													[ '^|~' includes: currentCharacter ] ] ] ] ] ] whileTrue ].
	^ self reportLastMatch