private
textWidth
	"without any transformation"
	"font widthOfString: is a really expensive operation, so we cache it"
	^ cachedWidth ifNil: [ cachedWidth := font widthOfString: text ]