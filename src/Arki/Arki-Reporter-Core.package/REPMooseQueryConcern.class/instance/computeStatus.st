accessing
computeStatus
	self result.
	^ status isNil
		ifFalse: [ status ]
		ifTrue: [ 
			self result isNil 
				ifTrue: [REPConcernNeutralStatus new concern: self]
				ifFalse: [ 
					self result isEmpty 
						ifTrue: [REPConcernSuccessStatus new concern: self ]
						ifFalse: [REPConcernFailureStatus new concern: self ] ] ]