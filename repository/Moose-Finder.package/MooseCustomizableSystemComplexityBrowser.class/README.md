| browser |
browser := self new browser.
browser openOn: ( 
	MooseModel root allModels last allModelClasses ->
	(FAMIXClass new mooseDescriptionsOfNumberProperties collect: #implementingSelector )).
(browser pane port: #heightToSelect) value: #numberOfMethods.
(browser pane port: #widthToSelect) value: #numberOfAttributes.
(browser pane port: #colorToSelect) value: #numberOfLinesOfCode.