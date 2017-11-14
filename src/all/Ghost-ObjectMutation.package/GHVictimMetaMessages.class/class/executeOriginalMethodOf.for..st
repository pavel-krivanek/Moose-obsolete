helpers
executeOriginalMethodOf: infectedObject for: aMessage

	| infectedClass |
	infectedClass := self originalClassOf: infectedObject.
		
	^GHMetaMessages withReceiver: infectedObject perform: aMessage selector withArguments: aMessage arguments inClass: infectedClass