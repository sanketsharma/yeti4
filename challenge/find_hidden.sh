#! /usr/bin/bash

xxd -c1 -p transmission4.jpg | awk 'BEGIN{seq1="ff d8 ff e0"; seq2="d8 ff e0 ff"} {a[NR]=$1} NR>=4{if((a[NR-3]=="ff" && a[NR-2]=="d8" && a[NR-1]=="ff" && a[NR]=="e0") || (a[NR-3]=="d8" && a[NR-2]=="ff" && a[NR-1]=="e0" && a[NR]=="ff")) print NR-4":"a[NR-3] " " a[NR-2] " " a[NR-1] " " a[NR]}' # printing NR -4 because addresses start from 0
