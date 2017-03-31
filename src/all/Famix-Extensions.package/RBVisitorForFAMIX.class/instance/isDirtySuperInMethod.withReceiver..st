private
isDirtySuperInMethod: sel withReceiver: rcvr
	
	^(sel == self methodEntity name) not and: [rcvr isSuper]