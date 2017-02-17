public interface
with: p1 boundaryContains: aPoint
^ ( self boundaryContains: aPoint ) or:[self point: p1 isTooCloseTo: aPoint]
