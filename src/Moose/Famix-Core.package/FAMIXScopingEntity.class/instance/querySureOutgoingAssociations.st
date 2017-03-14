moosechef-queries-outgoing
querySureOutgoingAssociations

	^ self createCompositeQueryResultWith: self queryStaticOutgoingAssociations
			withInvocations: self querySureOutgoingInvocations
