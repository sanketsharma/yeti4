#! /usr/bin/bash


soi1=0
soi2=25440
soi3=84916
soi4=131340

dd if=transmission.jpg bs=1 skip=$soi1 count=$(($soi2-$soi1)) of=transmission1.bin

dd if=transmission.jpg bs=1 skip=$soi2 count=$(($soi3-$soi2)) of=transmission2.bin

dd if=transmission.jpg bs=1 skip=$soi3 count=$(($soi4-$soi3)) of=transmission3.bin

dd if=transmission.jpg bs=1 skip=$soi4 of=transmission4.bin
