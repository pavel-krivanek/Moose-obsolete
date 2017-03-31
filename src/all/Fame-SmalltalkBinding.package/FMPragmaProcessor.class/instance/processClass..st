private
processClass: aClass
	^ self
		processClass: aClass
		ifPragmaAbsent: [ self error: 'Fame Undeclared class ' , aClass name ]