*GT-Examples-UI
forNautilus: aBlock
	aBlock 
		value: #'Browse help-subject "' ,  self topic gtDisplayString , (self title ifNotNil: [ ' > ', self title ] ifNil: [ '' ]) , '"'
		value: [ 
			| browser |
			browser := (HelpBrowser openOn: self topic).
			self title ifNotNil: [ browser selectTopicSatisfying: [ :subhelp | subhelp title = self title ] ] ]