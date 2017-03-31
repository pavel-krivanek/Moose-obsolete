rendering
addTicksFrom: toPosition to: fromPosition
	"Add ticks on the lines. Return the list of ticks"

	| tickShape ticks tickLength angle ticksShift |
	tickLength := 5.
	angle := (toPosition - fromPosition) angle.
	tickShape := RTBox new
		color: config color;
		height: tickLength;
		width: config lineThickness.
	ticks := tickShape elementsOn: (0 to: self numberOfTicks).
	self addAllToView: ticks.
	ticks pushBack.
	ticksShift := self areTicksCentered
		ifTrue: [ 1 ]
		ifFalse: [ tickLength ].
	RTMetricNormalizer new
		elements: ticks;
		normalizePosition: [ :v | v @ v ]
			min: fromPosition + (angle sin @ angle cos * ticksShift / 2)
			max: toPosition + (angle sin @ angle cos * ticksShift / 2)
			using: [ :aPoint | (config scaleTransformation rtValue: aPoint x) @ (config scaleTransformation rtValue: aPoint y) ].
	ticks rotateByDegrees: angle radiansToDegrees.

	"Ticks should not have any model"
	ticks do: [ :el | el model: nil ].
	^ ticks