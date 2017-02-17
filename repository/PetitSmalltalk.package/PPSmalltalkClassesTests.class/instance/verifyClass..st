private
verifyClass: aClass 
	aClass selectors 
		do: [ :selector | self verifyClass: aClass selector: selector ].
	aClass isMeta
		ifFalse: [ self verifyClass: aClass class ]