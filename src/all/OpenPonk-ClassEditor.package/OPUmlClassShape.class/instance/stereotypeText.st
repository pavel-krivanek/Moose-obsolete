accessing
stereotypeText
	^ stereotypeBlock value
		ifEmpty: [ '' ]
		ifNotEmpty: [ :vals | '«' , (vals joinUsing: ', ') , '»' ]