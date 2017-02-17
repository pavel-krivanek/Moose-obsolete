parsing
parseHost
	| host |

	self peek == $[
		ifTrue: [
			host := (self nextDelimitedBy: ']') copyWith: $].
			self peekFor: $]]
		ifFalse: [host := self nextDelimitedBy: HostDelimiters].
	^ host.