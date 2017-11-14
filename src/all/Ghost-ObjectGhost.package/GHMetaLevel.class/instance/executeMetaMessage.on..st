operations
executeMetaMessage: aMessage on: aGhost
	
	| metaMessageImplementor |
	metaMessageImplementor := metaMessages for: aGhost.
	
	^metaMessageImplementor executeMetaMessage: aMessage