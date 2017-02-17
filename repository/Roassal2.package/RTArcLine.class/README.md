I am a circle arc-like line, good for visualizing two lines going in opposite directions.

[[[
|v els e1 e2 arcShape|

v := RTView new.

els := RTEllipse new color: Color gray; borderColor: Color black; size: 20; elementsOn: #(A B).
els @ RTDraggable.

v addAll: els.

els second translateBy: 100 @ 0.

e1 := RTArcLine new distance: 10; withContinuousCircleAttachPoint; filledNarrowArrowHead; color: Color black; edgeFrom: els first to: els last.

e2 := RTArcLine new distance: 10; withContinuousCircleAttachPoint; filledNarrowArrowHead; color: Color black; edgeFrom: els second to: els first.

v add: e1; add: e2.

v
]]]