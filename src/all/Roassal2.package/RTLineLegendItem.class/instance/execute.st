hooks
execute
	"Associate a color with a text"
	| g |
	g := RTGroup new.
	g add: (RTBox new height: textSize * 0.3; width: textSize; color: color) element.
	g add: ((self newLabelShape: text) elementOn: text).
	RTHorizontalLineLayout new alignCenter; on: g.
	^ g