accessing
outgoingMSEProperties
	^ outgoingMSEProperties ifNil: [ outgoingMSEProperties := self privateOutgoingMSEProperties ]