accessing-derived
ancestoryChain
	"Including self"

	self isRoot ifTrue: [ ^ Array with: self ].
	^ (Array with: self) , self ancestor ancestoryChain