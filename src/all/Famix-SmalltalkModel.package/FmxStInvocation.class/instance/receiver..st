accessing
receiver: aNamedEntity
	receiver := FMMultivalueLink on: self
					update: #receivingInvocations
					from: self receiver
					to: aNamedEntity