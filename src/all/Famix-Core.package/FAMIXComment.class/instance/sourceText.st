accessing
sourceText
	^ self content ifNil: [ self sourceAnchor ifNil: [ '' ] ifNotNil: [ :sa | sa sourceText ] ]