accessing
replace: aSearchParser withValueFrom: aReplaceBlock
	self replace: aSearchParser withValueFrom: aReplaceBlock when: [ :node | true ]