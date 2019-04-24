% baonguyen2409@gmail.com
% lenh fill to mau 1 da giac kin duoc gioi han boi cac diem
% Cu phap: fill([ma tran diem X],[ma tran diem Y],'Color')
clear; clc; clf; grid on; hold on;
% VD: To mau do thi gioi han boi  y1 = x, y2 = x^2
% De to mau mien D nay ta dat:
% A(0,0), B(1,1) la giao diem y1, y2
syms x;
y1 = x;
y2 = x^2;
% ve do thi
ezplot(y1,[-0.5 1.5]);
ezplot(y2,[-0.5 1.5]);
text(0,0,'A');
text(1,1,'B');

% ta di lan luot tu A -> B tren duong thang y = x va di tu B -> A tren
% duong y = x^2 thi ta duoc mot da giac kin chinh la mien D can to mau
% khi di tu A -> B, ma tran x di theo chieu duong truc Ox
% khi di tu B -> A, ma tran x di theo chieu am truc Ox
% Do do:
x1 = linspace(0,1,100);
x2 = linspace(1,0,100);
y1 = double(subs(y1,x,x1));
y2 = double(subs(y2,x,x2));
fill([x1 x2],[y1 y2],'r');
