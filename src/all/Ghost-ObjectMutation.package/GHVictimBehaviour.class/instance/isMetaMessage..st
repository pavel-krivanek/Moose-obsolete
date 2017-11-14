meta level
isMetaMessage: aMessage
	
	(GHTNotNilGhost includesSelector: aMessage selector) ifTrue: [ ^true ].
	aMessage selector == #withArgs:executeMethod: ifTrue: [ ^true ].
	
	^mutationBehaviour isMetaMessage: aMessage