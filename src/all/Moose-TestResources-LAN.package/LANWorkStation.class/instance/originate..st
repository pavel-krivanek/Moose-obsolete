sending-receiving
originate: thePacket 
	"This is how packets get inserted into the network. This is a likely method to be rwritten to permit  
	packets to be entered in various ways. Currently, I assume that someone alse creates the packet,  
	and passes it to me as an argument." 
	 
	thePacket originator: self. 
	self send: thePacket