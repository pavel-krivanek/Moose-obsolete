private
basicEncompassingRectangle
	| wh |
	wh := self extentOf: text asString.
	^ wh / -2 extent: wh