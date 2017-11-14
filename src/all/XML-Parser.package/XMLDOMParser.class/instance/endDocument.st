handling - content
endDocument
	"nodeStack is not popped here for efficiency because #document keeps
	a reference to the root too, and there may not be a root to pop
	anyway if it's an inner XML parser"