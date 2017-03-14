setting nesting behavior
stretchable
	"It makes a scaling/zooming effect.
	If you change backElement's extent, it changes proportionaly extent and position of nested elements. 
	So the overall image --- composition of backElement and elements --- does not change. 
	It only zoom in/out the overall image."
	self behavior: (RTStretchBehavior new)