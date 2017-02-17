*GT-Examples-UI
gtSpotterCustomExtensionsFor: aStep
	<spotterOrder: 99>
	self hasExtensions ifFalse: [ ^ self ].
	
	extensions do: [ :extension |
		extension gtSpotterFor: aStep example: self ]