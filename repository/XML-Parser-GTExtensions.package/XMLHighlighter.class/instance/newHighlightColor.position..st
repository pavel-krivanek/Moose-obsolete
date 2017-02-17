private
newHighlightColor: aTextColor position: aPosition
	^ aTextColor
		ifNotNil: [
			highlights addLast:
				(XMLHighlight new
					color: aTextColor;
					start: aPosition)]