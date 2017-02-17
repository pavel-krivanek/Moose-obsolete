accessing vectorwise
columns
	items ifEmpty: [ ^ #() ].
	^ (items collect: #column) removeDuplicates asArray