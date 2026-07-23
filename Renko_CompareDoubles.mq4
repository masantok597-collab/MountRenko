// Simple helper to compare prices with tolerance (normalizes to current digits)
bool CompareDoubles(double a, double b)
  {
   // Normalize both values to the chart Digits and compare
   return(NormalizeDouble(a,Digits) == NormalizeDouble(b,Digits));
  }
