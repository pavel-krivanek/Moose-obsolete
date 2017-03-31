source
recursiveEntitiesNamed: aName depth: aLimit isParameter: aBoolean
	| xml |

	xml := String new writeStream.
	1 to: aLimit do: [:i |
		xml
			cr;
			nextPutAll: '<!ENTITY '.
		aBoolean
			ifTrue: [xml nextPutAll: '% '].
		xml
			nextPutAll: aName, i printString;
			nextPutAll: ' "'.
			(i = aLimit)
				ifTrue: [xml nextPutAll: '<!--last-->']
				ifFalse: [
					aBoolean
						ifTrue: [xml nextPutAll: '&#37;']
						ifFalse: [xml nextPut: $&].
					xml
						nextPutAll: aName, (i + 1) printString;
						nextPut: $;].
		xml nextPutAll: '">'].
	^ xml contents.