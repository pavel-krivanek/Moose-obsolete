accessing
parentBehaviouralEntity: aBehaviouralEntity
	parentBehaviouralEntity := FMMultivalueLink on: self
					update: #implicitVariables
					from: self parentBehaviouralEntity
					to: aBehaviouralEntity.
	self resetMooseName