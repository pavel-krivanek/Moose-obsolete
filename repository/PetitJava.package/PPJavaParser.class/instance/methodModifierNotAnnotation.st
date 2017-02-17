accessing
methodModifierNotAnnotation 

	^super methodModifierNotAnnotation ==> [:tokenKeyword | PJModifierNode keyword: tokenKeyword inputValue]