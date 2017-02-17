accessing
parentBehaviouralEntity: aBehaviouralEntity
	parentBehaviouralEntity := FMMultivalueLink on: self
					update: #localVariables
					from: self parentBehaviouralEntity
					to: aBehaviouralEntity.
	self resetMooseName