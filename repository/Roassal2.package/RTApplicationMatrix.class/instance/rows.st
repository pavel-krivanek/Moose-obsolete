accessing vectorwise
rows
	items ifEmpty: [ ^ #() ].
	^ (items collect: #row) removeDuplicates asArray