moosequery - TOODependencyQueries
querySureOutgoingAssociations

	^ self createCompositeQueryResultWith: self queryStaticOutgoingAssociations
			withInvocations: self querySureOutgoingInvocations
