testing
includesPoint: point
  ^ (TRPlatform current polygonTesterClass new polygon: vertices ) includesPoint: point.