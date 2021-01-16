import java.util.*;
PImage image;
int h,w;
int i=0,a,count1,b,count2;
String temp1="",temp2="";
String res,hexaValue;
String compres[];

void setup()
{
    size(128,128);
    image = loadImage("img1.bmp");
    h = image.height;
    w = image.width;
    // COMPRESSION
    res = Compression_Image(image);
    println(res);
    
    compres= split(res,' ');
    saveStrings("image.txt",compres);
    
    //DECOMPRESSION
    Decompression_Image();
    

}


void draw()
{

 
 
}
