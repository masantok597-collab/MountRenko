// Shared/GUI.mqh
// Centralized chart object helpers: Label, drawBox, DeleteByPrefix
#property strict

void GUI_LabelCreate(string name, int corner, int x, int y, string text, int size, color col, string font = "Arial")
  {
   if(ObjectFind(0,name) < 0)
     {
      ObjectCreate(0,name,OBJ_LABEL,0,0,0);
      ObjectSetInteger(0,name,OBJPROP_CORNER,corner);
      ObjectSetInteger(0,name,OBJPROP_XDISTANCE,x);
      ObjectSetInteger(0,name,OBJPROP_YDISTANCE,y);
     }
   ObjectSetText(name,text,size,font,col);
  }

void GUI_DeleteByPrefix(string prefix)
  {
   for(int i=ObjectsTotal()-1;i>=0;i--)
     {
      string n = ObjectName(i);
      if(StringFind(n,prefix,0) == 0) ObjectDelete(n);
     }
  }

void GUI_DrawBox(string objname, datetime tStart, double vStart, datetime tEnd, double vEnd, color c, int width, int style, bool bg)
  {
   if(ObjectFind(objname) == -1) {
     ObjectCreate(objname, OBJ_RECTANGLE, 0, tStart,vStart,tEnd,vEnd);
   } else {
     ObjectSet(objname, OBJPROP_TIME1, tStart);
     ObjectSet(objname, OBJPROP_TIME2, tEnd);
     ObjectSet(objname, OBJPROP_PRICE1, vStart);
     ObjectSet(objname, OBJPROP_PRICE2, vEnd);
   }

   ObjectSet(objname,OBJPROP_COLOR, c);
   ObjectSet(objname, OBJPROP_BACK, bg);
   ObjectSet(objname, OBJPROP_WIDTH, width);
   ObjectSet(objname, OBJPROP_STYLE, style);
  }
