# RLE-Compression
RLE Compression and Decompression

# Build

- Download the folder and compile the file **RLE.pde**.
- Compile with [Processing](https://processing.org).

# How to use

- If you want to load an image of your own to compress it change the line below
```processing
image = loadImage("img1.bmp");
```
- To change the name of the file that you want to save the compression code in change the line below with the name you want
```processing
saveStrings("image.txt",compres);
```
**NOTE:** The compression is saved in a txt file for educational purposes and clarity but realistically you want to save it in a binary file instead to see the results of the compression.
