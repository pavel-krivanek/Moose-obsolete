accessing
fullName
	"Keeps a unique description for the receiver. As annotation to avoid converting each time is invoked"
	
	^ (self parent name, '>>#', self selector) asSymbol