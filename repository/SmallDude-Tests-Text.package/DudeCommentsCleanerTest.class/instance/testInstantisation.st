testing
testInstantisation 
	 
	| aCommentsCleaner | 
	aCommentsCleaner := DudeCommentsCleaner new. 
	self assert: (aCommentsCleaner = nil) not