# Lab of 7th Semester BCT

    This contains the all the projects of 7th semester.

# Table of Contents

    - Distributed System
    - Digital Signal Processing and Analysis
    - Computer Network

# Distributed System

## Lab 1:- RPC

## Lab 2:- Lamport's Logical Clock

## Lab 3:- RMI

## Lab 4:- Bully Algorithm

## Lab 5:- Mutual Exclusion

# Digital Signal Processing and Analysis

## [Lab-1](./DSAP/Lab1)

Write a MATLAB program to generate the following elementary signals:
i) Unit Step Sequence
ii) Unit Step Signal
iii) Unit Ramp Signal
iv) Sine Signal
v) Cosine Signal
vi) Exponential Signal

## [Lab-2](./DSAP/Lab2)

Program to obtain linear convolution and circular convolution of two finite length sequence

1. x[n] = {1,0,-1,1,2,1}, h[n]={1,1,1,1,1}
2. x[n] = e^(-an) u[n], h[n] = u[n] h=ones(1,10)
3. x[n] = u[n], h[n] = 2^n h=power(2,n)
4. x[n] = {1,3,2,1,1}, h[n]={1,2,-1,1}

linear convolution => y=conv(x,h)
circular convolution => y=cconv(x,h,N)

N=max(l1,l2); Circular Convolution
N=l1+l2-1; linear convolution using circular convolution
