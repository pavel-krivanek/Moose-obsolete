accessing
associationAtName: aQualifiedOrLocalName ifAbsent: aBlock
	^ self
		associationAt: aQualifiedOrLocalName
		ifAbsent: [
			aQualifiedOrLocalName xmlPrefixBeforeLocalName isEmpty
				ifTrue: [
					self keysDo: [:each |
						(each isXMLQualifiedOrLocalName: aQualifiedOrLocalName)
							ifTrue: [^ self associationAt: each]]].
			aBlock value]