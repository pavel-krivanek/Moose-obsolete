parsing
fromString: aString

	(self isHex: aString) ifTrue: [
		^ self fromHex: aString ].
	
	(self isNone: aString) ifTrue: [
		^ self noFill ].
	
	(self isUrl: aString) ifTrue: [
		^ self fromUrl: aString ].
	
	(self isRgb: aString) ifTrue: [
		^ self fromRgb: aString ].
	
	(self isName: aString) ifTrue: [
		^ self fromName: aString ].
	
	Error signal: ('Unknown fill property: ', aString asString)