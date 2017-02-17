accessing
attributeValue
	^ super attributeValue
	
	==> [ :tokens | 
		    (tokens size > 1 or: [ tokens isEmpty ]) 	
				ifTrue: [ tokens ] 
				ifFalse: [ tokens first ]]