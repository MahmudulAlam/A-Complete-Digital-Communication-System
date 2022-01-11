<table>
<thead>
  <tr>
    <td>
      <div>
        <h2 align="center"><a href="https://drive.google.com/file/d/1DXh3Bbg7VcpkuEDUYJxg1ooOJvkIway9/view">A Complete Digital Communication System</a></h2>
        <p align="justify">This project is the simulation of a complete digital communication system. A digital communication system consists of multiple blocks and each block is implemented here as a MATLAB function and the 'main_code.m' file combines them all to build the complete system. The system reads text file 'source_data.txt' from the Data folder and process the text data accordingly and writes the received text into another text file named 'received.txt' again in the Data folder. The block diagram below shows all the blocks of the system in a sequential manner.</p>
      </div>
    </td>
    <td><img src="https://user-images.githubusercontent.com/37298971/52766913-fbb67100-3052-11e9-98c2-24351f6f6eb2.jpg" width="3000"></td>
  </tr>
</thead>
</table>


<!-- <p align="center">
  <img src="https://user-images.githubusercontent.com/37298971/52766913-fbb67100-3052-11e9-98c2-24351f6f6eb2.jpg" width="380">
</p>
<h2 align="center">A Complete Digital Communication System</h2> -->


[![GitHub stars](https://img.shields.io/github/stars/MahmudulAlam/A-Complete-Digital-Communication-System)](https://github.com/MahmudulAlam/A-Complete-Digital-Communication-System/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/MahmudulAlam/A-Complete-Digital-Communication-System)](https://github.com/MahmudulAlam/A-Complete-Digital-Communication-System/network)
[![GitHub issues](https://img.shields.io/github/issues/MahmudulAlam/A-Complete-Digital-Communication-System)](https://github.com/MahmudulAlam/A-Complete-Digital-Communication-System/issues)
[![Version](https://img.shields.io/badge/version-v1.0-orange.svg?longCache=true&style=flat)](https://github.com/MahmudulAlam/A-Complete-Digital-Communication-System)
[![GitHub license](https://img.shields.io/github/license/MahmudulAlam/A-Complete-Digital-Communication-System)](https://github.com/MahmudulAlam/A-Complete-Digital-Communication-System/blob/master/LICENSE)
[![Report](https://img.shields.io/badge/report-pdf-9803fc.svg?longCache=true&style=flat)](https://drive.google.com/file/d/1DXh3Bbg7VcpkuEDUYJxg1ooOJvkIway9/view) 🔗

<!-- <p align="justify">
        This project is the simulation of a complete digital communication system. A digital communication system consists of multiple blocks and each block is implemented here as a MATLAB function and the 'main_code.m' file combines them all to build the complete system. The system reads text file 'source_data.txt' from the Data folder and process the text data accordingly and writes the received text into another text file named 'received.txt' again in the Data folder. The block diagram below shows all the blocks of the system in a sequential manner. </p> -->

## Block Diagram 
<p align="center">
  <img src="https://user-images.githubusercontent.com/37298971/52767116-acbd0b80-3053-11e9-9998-4dd80c8a2825.png" width="550"
</p>

```Each block is built using the following techniques.```
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
  <img src="https://user-images.githubusercontent.com/37298971/52767863-eabb2f00-3055-11e9-93eb-ac5ba3d782a8.png" width="700"
</p>


## Performance 
<p align="center">
  <img src="https://user-images.githubusercontent.com/37298971/52768106-aed49980-3056-11e9-9e31-5dbf125b494e.png" width="600"
</p>


## Summary 
From reading the 'source_data.txt' file (```42,364``` words / ```247,405``` characters) to write the received data to a 'received_data.txt' file requires only ```31.90s``` (7755 characters per second).
