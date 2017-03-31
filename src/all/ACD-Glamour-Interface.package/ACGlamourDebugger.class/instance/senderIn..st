building presentations
senderIn: composite

	(self codePresentationIn: composite forContext: self session senderContext)
		initialize: [ :code | code selectionInterval: (self session selectedCodeRangeForContext: self session senderContext) ];
		with: [ :code | self installSenderActionsFor: code ]