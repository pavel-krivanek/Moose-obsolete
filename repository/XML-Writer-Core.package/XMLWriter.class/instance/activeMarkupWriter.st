accessing
activeMarkupWriter
	| markupWriterStackSize |

	"optimized to avoid at:ifAbsent:/ifNotEmpty: closure"
	^ (markupWriterStackSize := markupWriterStack size) > 0
		ifTrue: [markupWriterStack at: markupWriterStackSize]
		ifFalse: [nil]