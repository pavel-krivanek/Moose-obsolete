parsing
parseUserInfo
	| userInfo oldPosition |

	oldPosition := self position.
	userInfo := self nextDelimitedBy: UserInfoDelimiters.
	(self peekFor: $@)
		ifTrue: [^ userInfo]
		ifFalse: [
			self position: oldPosition.
			^ ''].