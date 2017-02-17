hooks
render	
	| from to lineIdentifiers offset |
	lineIdentifiers := builder lineIdentifiers.
	identifiers do: [ :id |
		values add: (lineIdentifiers indexOf: id)
	].

	values do: [ :aValue |
		from := builder getPixelPositionOf: builder minX @ aValue.
		to := builder getPixelPositionOf: builder maxX @ aValue.
		offset := 0 @ (self gapBetweenTimeLines / 2).
		self lineFrom: from - offset to: to - offset ]
		
	