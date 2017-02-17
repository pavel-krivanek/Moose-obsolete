private
newStringMarkup
	self activeMarkupWriterWhileChangingDo: [:each |
		each newStringMarkupBeingWritten]