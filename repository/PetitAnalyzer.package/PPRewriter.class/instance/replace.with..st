accessing
replace: aSearchParser with: aReplaceParser
	self replace: aSearchParser with: aReplaceParser when: [ :node | true ]