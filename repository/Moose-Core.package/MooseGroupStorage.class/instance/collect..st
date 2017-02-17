enumerating
collect: aBlock 
	 
	| newCollection | 
	newCollection := OrderedCollection new: self size. 
	self do: [:each | newCollection add: (aBlock value: each)]. 
	^newCollection