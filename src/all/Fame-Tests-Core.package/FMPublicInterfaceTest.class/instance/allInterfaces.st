private
allInterfaces

	^self allClasses collect: [ :class |
		Array 
			with: class name 
			with: class class selectors asArray sort 
			with: class selectors asArray sort ]