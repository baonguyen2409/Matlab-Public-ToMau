% baonguyen2409@gmail.com
% lenh fill to mau 1 da giac kin duoc gioi han boi cac diem
% Cu phap: fill([ma tran diem X],[ma tran diem Y],'Color')
clear; clc; clf; grid on; hold on;
% VD: To mau hinh binh hanh ABC voi A(0,0), B(1,1), C(2,1), D(1,0)
% De to mau hinh binh hanh nay ta di theo thu tu diem A -> B -> C - D, 3 diem nay tao
% thanh 1 da giac kin.
% khi do x se di t? 0 -> 1 -> 2 -> 1, y di tu 0 -> 1 -> 1 -> 0
fill([0 1 2 1],[0 1 1 0],'r');
