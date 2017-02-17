building presentations
codePresentationIn: aComposite forContext: aContext

	^ (self methodCodeWidgetIn: aComposite forContext: aContext)
		title: [ GTInspector new printObjectAsAnItem: aContext receiver ];
		act: [:each |  each entity receiver explore] on: $e entitled: 'Explore'