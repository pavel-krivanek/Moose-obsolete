private building
sampleIn: composite
	(composite text)
		title: 'Sample';
		display: [:parser :sample | sample ifNil: [''] ];
		allowNil;
		populate: #selection
			icon: GLMUIThemeExtraIcons glamorousPlay
			on: $s
			entitled: 'Parse (s)'
			with: [ :presentation :parser | 
				| stream output |
				stream := PPBrowserStream on: presentation text asString.
				output := parser parse: stream.
				output isPetitFailure
					ifTrue: [ presentation selectionInterval: (output position + 1 to: output position) ].
				(presentation pane port: #stream) value: stream.
				output ]