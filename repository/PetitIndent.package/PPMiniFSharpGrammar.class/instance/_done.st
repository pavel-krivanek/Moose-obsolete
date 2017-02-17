for
_done
	"PPFailingParser message: 'todo: _done'"
	^ aligned / eof ==> [ :e | #'_done' ]
"
	^ spaces, kwDone not, (nil asParser alignedTo: seqBlockOffsideLine) not"