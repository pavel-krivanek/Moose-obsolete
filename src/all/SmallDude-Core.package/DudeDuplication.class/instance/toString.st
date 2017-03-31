printing
toString 
	 
	| sb | 
	sb := '['. 
	sb := sb , referenceCode entityName , ',' 
		, referenceCode beginLine printString , ',' 
		, referenceCode endLine printString. 
	sb := sb , '] - ['. 
	sb := sb , duplicateCode entityName , ',' 
		, duplicateCode beginLine printString , ',' 
		, duplicateCode endLine printString. 
	sb := sb , ']'. 
	sb := sb , ' - copiedLength = ' , self copiedLength printString , 
			' (realLength = ' , self realLength printString , ') - signature = ' , 
			signature. 
	^sb