sending-receiving
accept: thePacket 
	"accept the packet and see if I am the originator. If this is the case, take the packet out because the  
	addressee is unknown. Print this on the Transcript" 
	 
	thePacket originator = self 
		ifTrue: 
			[Transcript 
				show: 'The receiver of following packet does not exist:'; 
				cr; 
				show: thePacket printString; 
				cr] 
		ifFalse: [self send: thePacket]