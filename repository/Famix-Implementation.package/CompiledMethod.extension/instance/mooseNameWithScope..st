*famix-implementation
mooseNameWithScope: aboolean

	| string |
	string := String streamContents: [:str | 
		str nextPutAll: self methodClass mooseName.
		str nextPut: $..
		str nextPutAll: self selector. 
		self signatureFromSmalltalkSelectorOn: str].
	^ string asSymbol