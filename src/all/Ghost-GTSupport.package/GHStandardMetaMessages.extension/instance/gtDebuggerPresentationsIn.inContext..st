*Ghost-GTSupport
gtDebuggerPresentationsIn: composite inContext: aGTInspector
	| pragmas |
	pragmas := (Pragma 
				allNamed: #gtDebuggerPresentationOrder: 
				from: self metaMessagesClass 
				to: ProtoObject) asOrderedCollection.
	pragmas addAll:((Pragma 
				allNamed: #gtInspectorPresentationOrder: 
				from: self metaMessagesClass 
				to: ProtoObject)
					reject: [:pragma| pragma methodSelector = #gtInspectorRawIn: ]).
	pragmas := pragmas sorted: [: x :y | (x argumentAt: 1) < (y argumentAt: 1)].
	self gtInspectorPresentationsFromPragmas: pragmas In: composite inContext: aGTInspector
