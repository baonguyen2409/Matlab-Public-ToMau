% baonguyen2409@gmail.com
syms x;
t1 = linspace(0,1,2000);
t2 = linspace(1,0,2000);
clf;hold on;grid on;
% phuong trinh trai tim
y1 = subs(-sqrt(1-x^2)+x^(2/3),x,t1);
y2 = subs(sqrt(1-x^2)+x^(2/3),x,t1);
y3 = subs(-sqrt(1-x^2)+x^(2/3),x,t2);
y4 = subs(sqrt(1-x^2)+x^(2/3),x,t2);
Y_up = [y4,y2];Y_down = [y3,y1];

X = linspace(-1,1,4000);
% Chon mau trong he RGB
color_start = [153 153 255]/255;
color_end = [255 153 204]/255;
% Tinh vi phan
dr=(color_end(1)-color_start(1))/3999;
dg=(color_end(2)-color_start(2))/3999;
db=(color_end(3)-color_start(3))/3999;
% tao ma tran grad
grad=zeros(4000,3);
% tinh toan va to mau
for i=1:4000
    grad(i,1)=color_start(1)+dr*(i-1);
    grad(i,2)=color_start(2)+dg*(i-1);
    grad(i,3)=color_start(3)+db*(i-1);
    y = plot([X(i) X(i)],[Y_up(i) Y_down(i)]);
    set(y,'Color',grad(i,:));
end

text(-.2,1.75,'I <3 U','Color',[148 0 211]/255,'FontSize',20);
