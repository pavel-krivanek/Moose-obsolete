accessing
errorView
	| v |
	v := RTView new.
	v add: (RTLabel elementOn: 'Error exporting this view').
	^ v