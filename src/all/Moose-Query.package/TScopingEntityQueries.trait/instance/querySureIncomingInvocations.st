moosequery-TScopingEntityQueries
querySureIncomingInvocations

	^ self createIncomingQueryResultWith: (self methods flatCollect: [ :m | m querySureIncomingInvocations ])