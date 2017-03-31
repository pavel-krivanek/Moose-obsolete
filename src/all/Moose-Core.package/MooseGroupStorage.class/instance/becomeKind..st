private
becomeKind: elementStorageClass 
	
	self class = elementStorageClass ifTrue: [ ^ self ].
	[elementStorageClass includesBehavior: MooseGroupStorage] assert.
	self do: [ :each | 
		each hasUniqueMooseNameInModel ifTrue: [ each privateClearMooseName ] ].
	self become: (elementStorageClass withAll: self)