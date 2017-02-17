as yet unclassified
defaultScrollBar
	"all default values of scroll bar"
	self movable: #isMovable.
	self barShape: #anEllipse.
	self fixedPosition:  [ :v | (v view canvas extent x /2)@(v view canvas extent y  * 3 / 4)].
	self size: 200.
	self width: 10.
	self orientation: #horizontal.
	self fillColor: (Color lightGray alpha: 0).