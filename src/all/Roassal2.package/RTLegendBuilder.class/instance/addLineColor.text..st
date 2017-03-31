public - convenient
addLineColor: aColor text: aText
	"Associate a color with a text"
	items add: (RTLineLegendItem new color: aColor; text: aText; textSize: self textSize)