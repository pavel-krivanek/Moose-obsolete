public
from: fromElement to: toElement
	"Takes instances of RTElement as arguments"
	^ self 
		on: (Association key: fromElement model value: toElement model)
		from: fromElement 
		to: toElement