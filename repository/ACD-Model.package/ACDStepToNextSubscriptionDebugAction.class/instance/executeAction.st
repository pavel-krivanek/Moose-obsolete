actions
executeAction 
	"Step over the delivery of the current announcement."
	| receiverSender |
	receiverSender := self session receiverContext sender.
	
	self session stepOver: receiverSender.
	(self interruptedContext == receiverSender) 
		ifFalse: [ self session contextChanged. ^ self ].
	
	self session stepOver: (self session stackFilterFor: receiverSender) locateAnnouncementDelivery.
	self session stepUntil: self nextDeliveryStart.
			
	(self nextDeliveryStart matches: self interruptedContext) ifTrue: [ 
		self session stepUntil: (self session subscriptionDelivery).
		self session updateReceiver ]
	
	
	
	