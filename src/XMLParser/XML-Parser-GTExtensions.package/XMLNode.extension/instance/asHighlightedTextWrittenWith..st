*XML-Parser-GTExtensions
asHighlightedTextWrittenWith: aBlock
	| writer |

	writer := XMLHighlightingWriter new.
	self escapesContentEntitiesWhenWriting
		ifFalse: [writer escapesContentEntityReferences: false].
	aBlock value: writer.
	^ writer asHighlightedText.