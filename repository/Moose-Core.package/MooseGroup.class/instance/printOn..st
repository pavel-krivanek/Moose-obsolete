printing
printOn: aStream 

	aStream 
		nextPutAll: self description; 
		space; 
		nextPut: $(; 
		print: self size; 
		space. 
	self isEmpty ifTrue: [aStream nextPutAll: 'entities']. 
	self size = 1 ifTrue: [aStream nextPutAll: self anyOne class name]. 
	self size > 1 ifTrue: [aStream nextPutAll: storage commonSuperclass name asEnglishPlural]. 
	aStream nextPut: $).
	
"	aStream nextPut: Character space.
	aStream nextPut: $(.
	self entities do: [:element | aStream print: element] separatedBy: [aStream space].
	aStream nextPut: $)
"	