accessing
parentBehaviouralEntity: aBehaviouralEntity
	parentBehaviouralEntity := FMMultivalueLink on: self
					update: #parameters
					from: self parentBehaviouralEntity
					to: aBehaviouralEntity.
	self resetMooseName