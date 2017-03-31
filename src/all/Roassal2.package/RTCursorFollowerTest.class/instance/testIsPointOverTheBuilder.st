tests
testIsPointOverTheBuilder
	| follower |
	follower := RTCursorFollower new.
	b addDecorator: follower.
	b build.
	
	self assert: (follower convertPointForGraph: 5 @ 4) equals: (5 @ -4).
	self assert: (follower convertPointForGraph: 5 @ -4) equals: (5 @ 4).
	
	self assert: (follower isPointOverTheBuilder: 0 @ 0)