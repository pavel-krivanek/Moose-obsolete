as yet unclassified
integralType
	^ (self tokenFor: 'byte')
		/ (self tokenFor: 'short')
		/ (self tokenFor: 'int')
		/ (self tokenFor: 'long')
		/ (self tokenFor: 'char')