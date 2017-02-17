private
path
	session == TRPlatform current session
		ifFalse: [ path := nil ].
	path ifNil: [ 
		self computePath.
		session := TRPlatform current session ].
	^ path