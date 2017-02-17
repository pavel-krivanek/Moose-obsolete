private
messageTextAppend: anObject withDescription: aDescription
	| oldMessageText |

	"older Pharo versions of #messageText can return nil, so ifNil: is used"
	oldMessageText := self messageText ifNil: [''].
	self messageText:
		('{1} ({2} {3})' format:
			(Array
				with: oldMessageText
				with: aDescription
				with: anObject))