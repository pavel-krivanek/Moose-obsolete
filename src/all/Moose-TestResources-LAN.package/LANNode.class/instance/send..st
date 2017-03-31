sending-receiving
send: thePacket 
	"Display debug information in the Transcript, then send the packet to the node which whom I  
	communicate" 
	 
	Transcript 
		show: 
				self name printString , ' sending the packet to ' 
						, self nextNode name printString; 
		cr. 
	self nextNode accept: thePacket