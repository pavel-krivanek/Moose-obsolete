private
textHeight
	"without any transformation"
	^ cachedHeight ifNil: [ cachedHeight := font height ]