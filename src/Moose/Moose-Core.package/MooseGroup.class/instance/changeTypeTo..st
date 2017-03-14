private
changeTypeTo: aSmalltalkClass
	| group | 
	self class == aSmalltalkClass ifTrue: [^ self].

	group := aSmalltalkClass withDescription: self description. 
	group addAll: self entities. 
	self become: group