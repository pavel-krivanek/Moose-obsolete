ACDAnnouncerModel models an executing announcer and its subscriptions.

Instance Variables:
	context	<BlockClosure | CascadeNode | ContextPart | DebugContext | Debugger | DynamixActivation | Exception | FAMIXInvocation | MessageNode | MessageSend | MooseQueryResult | RBCascadeNode | RBMessageNode | WeakMessageSend>
	announcement	<ProtoObject>
	currentSubscription	<OrderedCollection>
	pendingSubscriptions	<OrderedCollection>
	deliveredSubscriptions	<OrderedCollection>
	idleSubscriptions	<OrderedCollection>