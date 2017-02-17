*petitparser-core-converting
asPetitStream
	"Some of my subclasses do not use the instance-variables collection, position and readLimit but instead have a completely different internal representation. In these cases just use the super implementation that is inefficient but should work in all cases."

"
	Disabled until we agree on some way how to optimize this

	^ (collection isNil or: [ position isNil or: [ readLimit isNil ] ])
		ifFalse: [ PPStream on: collection from: ( position + 1 ) to: readLimit ]
      ifTrue: [ super asPetitStream ]
"
	^ super asPetitStream