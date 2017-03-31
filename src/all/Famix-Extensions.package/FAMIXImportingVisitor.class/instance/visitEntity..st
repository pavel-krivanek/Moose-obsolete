visiting
visitEntity: anEntity

	anEntity sourceAnchor accept: self.
	anEntity comments do: [:com | com accept: self ].