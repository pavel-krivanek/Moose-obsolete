resolving
resolveOn: anArray
	self index <= anArray size
		ifFalse: [ ^ nil ].
	^anArray at: self index 
	  