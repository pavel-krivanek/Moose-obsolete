*XML-Writer-Core
xmlWriterLocalNameAfterPrefix: aPrefix
	"optimized"
	| prefixSize |

	(prefixSize := aPrefix size) == 0
		ifTrue: [^ self]
		ifFalse: [^ self copyFrom: prefixSize + 2 to: self size]