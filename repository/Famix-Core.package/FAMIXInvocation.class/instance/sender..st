accessing
sender: aBehaviouralEntity
	sender := FMMultivalueLink on: self
					update: #outgoingInvocations
					from: self sender
					to: aBehaviouralEntity