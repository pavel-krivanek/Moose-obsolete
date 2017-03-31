copying
postCopy
	super postCopy.

	nodes
		ifNotNil: [| copiedNodes |
			copiedNodes := nodes copyEmpty observer: self.
			nodes do: [:each |
				"copySharingConfiguration is used so the config is only ever copied
				once when an element or doc is sent #copy and is done after all of the
				descendants have been copied"
				copiedNodes addLast: each copySharingConfiguration].
			nodes := copiedNodes].