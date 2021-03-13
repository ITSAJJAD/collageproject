clear all; close all; clc
B=imread('lion.jpg');
A=rgb2gray(B);
%A=imread('lion.jpg');
key = 'project';
plaintext = B;
Z = uint8(PRGA(KSA(key), size(plaintext,2)));
P = uint8(char(plaintext));
res = bitxor(Z, P);
%printing result in hex and unicode
res_in_hex = mat2str(dec2hex(res,2));
res_in_unicode = char(res);
