building presentations
receiverIn: composite

	(self codePresentationIn: composite forContext: self session context)
		initialize: [ :code | code selectionInterval: (self session selectedCodeRangeForContext: self currentContext) ];
		with: [ :code | self installReceiverActionsFor: code ].
		
	"composite custom:
			((GTInspector new first 
				fixedSizePanes: 1;
				showFirst: [ :a | a custom: (GTDebuggerVariablesBrowser new noActions; noTitle) ];
				yourself)
					title: 'State')"