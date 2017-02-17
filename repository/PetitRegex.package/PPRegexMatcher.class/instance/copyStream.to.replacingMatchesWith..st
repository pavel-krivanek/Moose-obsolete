copying
copyStream: aStream to: writeStream replacingMatchesWith: aString
	self copyStream: aStream to: writeStream translatingMatchesUsing: [ :each | aString ]