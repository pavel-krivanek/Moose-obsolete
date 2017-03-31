statements-elements
floatingPointLiteral 
	^super floatingPointLiteral ==> [ :token | (token first , token second asString , token third) value asNumber. ].
