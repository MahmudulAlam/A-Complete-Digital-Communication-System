<p align="center">
  <img src="https://user-images.githubusercontent.com/37298971/52766913-fbb67100-3052-11e9-98c2-24351f6f6eb2.jpg" width="350">
</p>

# A-Complete-Digital-Communication-System

This project is the simulation of a complete digital communication system. A digital communication system consists of multiple blocks and each block is implemented here as a MATLAB function and 'main_code.m' file combines them all to build the complete system. The system reads text file 'source_data.txt' from the Data folder and process the text data accordingly and writes the received text into another text file named 'received.txt' again in the Data folder.  
The block diagram below shows all the block of the system in a sequential manner. 

## Block-Diagram 
<p align="center">
  <img src="https://user-images.githubusercontent.com/37298971/52767116-acbd0b80-3053-11e9-9998-4dd80c8a2825.png" width="650"
</p>
  
Each block is built using the following techniques. 
-	Source Coding: Huffman encoding 
-	Channel Coding: Convolutional encoding 
-	Modulation: Amplitude Shift Keying (ASK), and Phase Shift Keying (PSK) modulation 
-	Channel: Additive White Gaussian Noise Channel 
-	Demodulation: ASK and PSK demodulation 
-	Channel Decoding: Viterbi decoding 
-	Source Decoding: Huffman decoding 

## Simulation
The simulation is performed using the following properties. 
<p align="center">
  <img src="https://user-images.githubusercontent.com/37298971/52767863-eabb2f00-3055-11e9-93eb-ac5ba3d782a8.png" width="800"
</p>

### Performance 

<p align="center">
  <img src="https://user-images.githubusercontent.com/37298971/52768106-aed49980-3056-11e9-9e31-5dbf125b494e.png" width="620"
</p>
  
From reading the ‘source_data.txt’ file to write the received data to a ‘received_data.txt’ file requires only 31.90s. 
