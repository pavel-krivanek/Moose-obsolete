moosequery-queries-incoming
querySureIncomingInvocations

	^ self createIncomingQueryResultWith: (self methods flatCollect: [ :m | m querySureIncomingInvocations ])