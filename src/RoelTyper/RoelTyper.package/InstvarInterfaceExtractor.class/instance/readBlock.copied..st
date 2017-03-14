private
readBlock: block copied: count
	| newCopied |
	newCopied := stack removeLast: count.
	stack add: #block.
	^(self class new)
		copied: newCopied;
		extractInterfacesFrom: block
			addTo: collector