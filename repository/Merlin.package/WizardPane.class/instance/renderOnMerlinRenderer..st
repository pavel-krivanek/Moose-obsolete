*merlin-rendering
renderOnMerlinRenderer: aMerlinRenderer

	self renderer: self merlinSpecificRenderer.
	^ self renderer wizardRenderer: aMerlinRenderer; render: self.

	