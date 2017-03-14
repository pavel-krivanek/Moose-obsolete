sending-receiving
accept: thePacket 
	"I first see if the packet is for me. If it is, I output it. Otherwise, I pass it on" 
	 
	(thePacket addressee isDestinationFor: self name) 
		ifTrue: [self output: thePacket] 
		ifFalse: [self send: thePacket]	"self name = thePacket addressee"