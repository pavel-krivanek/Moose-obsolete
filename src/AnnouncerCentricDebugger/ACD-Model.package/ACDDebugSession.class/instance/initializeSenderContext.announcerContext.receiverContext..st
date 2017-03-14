initialization
initializeSenderContext: aSenderContext announcerContext: anAnnouncerContext receiverContext: aReceiverContext

	senderContext := aSenderContext.
	announcerModel := ACDAnnouncerModel forAnnouncerContext: anAnnouncerContext receiverContext: aReceiverContext.
	receiverContext := aReceiverContext 