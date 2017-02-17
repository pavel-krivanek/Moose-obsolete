*GT-Examples-UI
gtInspectorCustomExtensionsFor: composite
	<gtInspectorPresentationOrder: 99>
	self hasExtensions ifFalse: [ ^ self ].
	
	extensions do: [ :extension |
		extension gtInspectorFor: composite example: self ]