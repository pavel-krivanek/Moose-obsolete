private
isSuperInMethod: sel withReceiver: rcvr
	
	^sel == self methodEntity name and: [rcvr isSuper]