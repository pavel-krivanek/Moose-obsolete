*PetitYAML
YAMLN: whatever
	| compare |
	compare := PPCompareParser 
					on: [ :ctx | ctx column = whatever  ] 
					message: 'expected level: ', whatever asString
					column: whatever.

	self indentStack push: compare.