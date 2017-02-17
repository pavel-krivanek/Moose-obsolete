*GT-Examples-UI
gtInspectorActions
	^ super gtInspectorActions 
		addAll: self gtInspectorCustomActions;
		yourself