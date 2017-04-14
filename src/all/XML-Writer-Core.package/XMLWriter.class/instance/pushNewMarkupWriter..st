private
pushNewMarkupWriter: aMarkupWriterClass
	| newMarkupWriter |

	self activeMarkupWriterWhileChangingDo: [:each |
		each newMarkupWriterBeingPushed].
	newMarkupWriter :=
		self markupWriterStack addLast:
			(aMarkupWriterClass writer: self).
	hadActiveTagWriter
		ifFalse: [hadActiveTagWriter := newMarkupWriter isTagWriter].
	^ newMarkupWriter.