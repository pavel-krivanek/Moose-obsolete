moosequery-queries-outgoing
queryAllOutgoingAssociations

	^ self createOutgoingQueryResultWith: (self queryStaticOutgoingAssociations
			union: self queryAllOutgoingInvocations) 