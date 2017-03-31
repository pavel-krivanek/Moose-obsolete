accessing
activeMarkupWriterParent
	| markupWriterStackSize |

	(markupWriterStackSize := self markupWriterStack size) >= 2
		ifTrue: [^ self markupWriterStack at: markupWriterStackSize - 1]
		ifFalse: [^ nil]