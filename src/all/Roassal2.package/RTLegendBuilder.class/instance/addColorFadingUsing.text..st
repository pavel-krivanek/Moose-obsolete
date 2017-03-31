public - convenient
addColorFadingUsing: colors text: textualDescription
	"Specify a description of a fading using a provided set of colors"
	items
		add:
			(RTColorFadingLegendItem new
				colors: colors;
				description: textualDescription)