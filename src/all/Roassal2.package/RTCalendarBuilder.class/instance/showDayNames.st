public
showDayNames
	self dayLabelShape label text: [ :index | 
		| name i |
		i := Week dayNames indexOf: Week startDay.
		i := i+index - 1.
		i > 7 ifTrue: [ i := i -7 ].
		name := Week nameOfDay: i.
		name first asString, name second asString ].