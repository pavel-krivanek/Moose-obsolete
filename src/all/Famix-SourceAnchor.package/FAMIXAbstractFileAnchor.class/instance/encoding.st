accessing
encoding
	<MSEProperty: #encoding type: #String>
	<MSEComment: 'A string representing the encoding of a file'>
	^ encoding ifNil: [ encoding := self detectEncoding ]