*petitxpath-extensions
contentText 
	^ self firstChild 
		ifNotNil: [ :child | child data ]