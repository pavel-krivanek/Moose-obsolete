*famix-implementation
signature

	| ws |
	ws := WriteStream on: (String new: 150).
	ws nextPutAll: self selector.
	self signatureFromSmalltalkSelectorOn: ws.
	^ws contents asSymbol