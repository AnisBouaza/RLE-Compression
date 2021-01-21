 String Compression_Image(PImage image)
{
  String code="";
  
  image.loadPixels();
  //println(image.pixels.length);
  while (i+2 <= w*h-1)
  {
     
     //traitement série dif
     if( ((int)brightness(image.pixels[i]) != (int)brightness(image.pixels[i+1])) || ((int)brightness(image.pixels[i]) != (int)brightness(image.pixels[i+2]))) //ça rentre pas wtf
     {
       temp1="";
       a = i; 
       count1 = 0;
       while( (a < w*h-1) && ((int)brightness(image.pixels[a]) != (int)brightness(image.pixels[a+1]) || (int)brightness(image.pixels[a]) != (int)brightness(image.pixels[a+2])))
       {
         count1 ++;
         if( (int)brightness(image.pixels[a])  == 0 ) temp1 = temp1 + "00 "; 
         else temp1 = temp1 + "FF ";
         a++;
         /*println(a+"\n");*/     }
       i = a;
       
      
       if(a>=w*h-1){
       
          if( (int)brightness(image.pixels[a])  == 0 ) temp1 = temp1 + "00 "; 
         else temp1 = temp1 + "FF ";
         code = code + Integer.toHexString(count1+1) +" "+temp1;
         
       }else{ code = code + Integer.toHexString(count1) +" "+temp1;}
     }
     
     // traitement série similaire
     else
     {
       b = i;
       count2 = 0;
       
       while( (b < w*h-1) && ((int)brightness(image.pixels[b]) == (int)brightness(image.pixels[b+1])))
       {
         count2 ++;
         b++;
               
       }
       
       count2 ++;
       i = b+1;
       
       if( (int)brightness(image.pixels[b])  == 0 ) code = code + Integer.toHexString(count2+(int) pow(2, 15))+" "+"00 ";
       else code = code + Integer.toHexString(count2+(int) pow(2, 15)) +" " + "FF " ;
       
       
     }
     
  }

  
  return code;
 }
