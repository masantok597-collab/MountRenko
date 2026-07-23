// Shared/Utils.mqh
// Utilities: pips/digits helpers, compare helper, Divide, minimal error helpers.

#property strict

// Returns true if a and b are equal within price digits
bool Utils_ComparePrice(double a, double b)
  {
   return(NormalizeDouble(a,Digits) == NormalizeDouble(b,Digits));
  }

// Return pip multiplier for symbol (1 or 10)
double Utils_GetPipsPoint()
  {
   return((_Digits==5 || _Digits==3) ? _Point*10.0 : _Point);
  }

// Safe divide
double Utils_Divide(double n, double d)
  {
   if(d == 0.0) return 0.0;
   return n / d;
  }

// Placeholder for future error mapping
string Utils_ErrorString(int err)
  {
   // minimal mapping; expand as needed
   switch(err)
     {
      case 0: return "OK";
      default: return "Unknown error";
     }
  }
