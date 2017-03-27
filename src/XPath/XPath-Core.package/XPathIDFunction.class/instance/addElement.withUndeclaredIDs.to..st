invoking
addElement: anElement withUndeclaredIDs: anIDSet to: aNodeSet
	"just look for an 'xml:id' attribute if there were no declarations"
	anIDSet
		remove:
			(anElement
				attributeAt: 'xml:id'
				ifAbsent: [^ self])
		ifAbsent: [^ self].
	aNodeSet addLast: anElement.