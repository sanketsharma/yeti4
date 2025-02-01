#! /usr/bin/bash

soi5=60929

dd if=transmission4.jpg bs=1 count=$soi5 of=transmission4_new.jpg
dd if=transmission4.jpg bs=1 skip=$soi5 of=transmission5.jpg
