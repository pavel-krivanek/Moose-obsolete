source
xmlWithRecursiveEntitiesNamed: aName depth: aLimit isParameter: aBoolean
	| xml |

	(xml := String new writeStream)
		nextPutAll: '<!DOCTYPE test ['.
	xml nextPutAll:
		(self
			recursiveEntitiesNamed: aName
			depth: aLimit
			isParameter: aBoolean).
	aBoolean
		ifTrue: [xml nextPutAll: '%', aName, '1;]><test/>']
		ifFalse: [xml nextPutAll: ']><test>&', aName, '1;</test>'].

	^ xml contents.