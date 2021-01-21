void Decompression_Image()
{
    image=createImage(w,h,RGB);
    image.loadPixels();
    int x=0,y=0;
    color c=0;
    String[] data = loadStrings("image.txt");
    // println(data.length);
    
     
    while( x<data.length-1)
    {

     int val = unhex(data[x]);
     if( val-(int)pow(2,15) > 0 )
     {
       
       int taille1 = val - (int)pow(2,15) ;
       if(data[x+1].equals("00")) c= color(0,0,0);
       if(data[x+1].equals("FF")) c= color(255, 255, 255);
       
       for(int i = 1; i<= taille1; i++)
       {
          
          image.pixels[y] = c;
          y++;
       }
       x= x+2;
     }
     
     else
     {
       
       int taille2 = Integer.parseInt(data[x],16);
       for(int j = 1; j<= taille2; j++)
       { 
          x++;
          if(data[x].equals("00")) c= color(0,0,0);
          if(data[x].equals("FF")) c= color(255, 255, 255);
          image.pixels[y] = c;
          y++;
       }
       x++;
     }
  }
    
  
    
    updatePixels();
    
     
   image(image,0,0);
  image.save("image.bmp");
  
}
