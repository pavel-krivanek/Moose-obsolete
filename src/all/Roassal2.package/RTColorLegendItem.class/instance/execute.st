hooks
execute
	"Associate a color with a text"
	| g |
	g := RTGroup new.
	g add: (RTBox new size: textSize; color: color) element.
	g add: ((RTLabel text: text) height: textSize; elementOn: model).
	RTHorizontalLineLayout new alignCenter; on: g.
	^ g