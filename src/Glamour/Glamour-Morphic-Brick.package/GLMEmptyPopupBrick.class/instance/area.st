brick-geometry
area
	| firstBounds secondBounds |

	firstBounds := self subbricks first outerBounds.
	secondBounds := self subbricks second outerBounds.

	^ GLMArea
		origin: self brickBounds origin
		vectors: { 
			GLMVector east: firstBounds width.
			GLMVector south: firstBounds height.
			GLMVector horizontal: secondBounds width - firstBounds width.
			GLMVector south: secondBounds height.
			GLMVector west: secondBounds width.
			GLMVector north: secondBounds height + firstBounds height.
		}