instance creation
openOn: groupAndProperties heightToSelect: heightSelector widthToSelect: widthSelector colorToSelect: colorSelector
	| browser window |
	browser := self new browser.
	window := browser openOn: groupAndProperties.
	(browser pane port: #heightToSelect) value: heightSelector.
	(browser pane port: #widthToSelect) value: widthSelector.
	(browser pane port: #colorToSelect) value: colorSelector.
	^ window