accessing
redefinedPorts
	"A Port may be redefined when its containing EncapsulatedClassifier is specialized. The redefining Port may have additional Interfaces to those that are associated with the redefined Port or it may replace an Interface by one of its subtypes."
	^ redefinedPorts ifNil: [ redefinedPorts := OrderedCollection new ]