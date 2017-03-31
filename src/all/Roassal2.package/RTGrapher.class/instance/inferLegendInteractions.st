hooks
inferLegendInteractions
	datasets
		select:
			[ :each | each interaction hasInteractionOfType: RTDataHighlightInteraction ]
		thenDo: [ :each | 
			(self legend legendElement attributeAt: #nestedElements)
				select: [ :grp | grp size > 1 and: [ grp second model = each ] ]
				thenDo: [ :grp | 
					| int |
					int := each interaction
						interactionOfType: RTDataHighlightInteraction.
					int legendElements: grp.
					grp @ int ] ].
	datasets
		select:
			[ :each | each interaction hasInteractionOfType: RTDataToggleInteraction ]
		thenDo: [ :each | 
			(self legend legendElement attributeAt: #nestedElements)
				select: [ :grp | grp size > 1 and: [ grp second model = each ] ]
				thenDo: [ :grp | 
					| int |
					int := each interaction
						interactionOfType: RTDataToggleInteraction.
					int legendElements: grp.
					grp @ int ] ]