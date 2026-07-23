// Shared/Trade.mqh
// Trade helpers scaffold. Contains isTemporaryError and placeholders for reliable wrappers.
#property strict

bool Trade_isTemporaryError(int Err)
  {
   return   Err == ERR_NO_ERROR             ||
            Err == ERR_COMMON_ERROR         ||
            Err == ERR_SERVER_BUSY          ||
            Err == ERR_NO_CONNECTION        ||
            Err == ERR_PRICE_CHANGED        ||
            Err == ERR_INVALID_PRICE        ||
            Err == ERR_OFF_QUOTES           ||
            Err == ERR_BROKER_BUSY          ||
            Err == ERR_REQUOTE              ||
            Err == ERR_TRADE_TIMEOUT        ||
            Err == ERR_TRADE_CONTEXT_BUSY;
  }

// TODO: Add OrderSendReliable/OrderModifyReliable/OrderCloseReliable wrappers here
