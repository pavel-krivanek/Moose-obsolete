private
messageTextAppend: anObject
	| oldMessageText |

	"older Pharo versions of #messageText can return nil, so ifNil: is used"
	oldMessageText := self messageText ifNil: [''].
	self messageText:
		('{1} ({2})' format:
			(Array
				with: oldMessageText
				with: anObject))