# RLE-Compression
RLE Compression and Decompression

# Build

- Download the folder and compile the file **RLE.pde**.
- Compile with [Processing](https://processing.org).

# How to use

- If you want to load an image of your own to compress it change the line below in the **RLE.pde** file
```processing
image = loadImage("img1.bmp");
```
- To change the name of the file that you want to save the compression code in change the line below with the name you want in the **RLE.pde** file, **this same file is the one that the decompression uses so you can change it to get another image and you also need to comment the compression part (starts at the //Compression and ends at //Decompression)**.
```processing
saveStrings("image.txt",compres);
```
**NOTE:** The compression is saved in a txt file for educational purposes and clarity but realistically you want to save it in a binary file instead to see the results of the compression.

# Screenshots

- The image
<img src = "Screenshots\Screenshot_1.png" title = image >

- The compression
<img src = "Screenshots\Screenshot_2.png" title = compression >
