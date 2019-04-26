addpath('C:\Users\shaya\Desktop\Signals');
Control = importdata('C:\Users\shaya\Desktop\Signals\Control.txt');
HighP = importdata('C:\Users\shaya\Desktop\Signals\HighP.txt');
SA = importdata('C:\Users\shaya\Desktop\Signals\SA.txt');
ST = importdata('C:\Users\shaya\Desktop\Signals\ST.txt');
figure(); imshow(uint8(Control));
figure(); imshow(uint8(HighP));
figure(); imshow(uint8(SA));
figure(); imshow(uint8(ST));