clear all;
close all;
clc;

p0=[-0.5 0.5];
p1=[0.5 0.5];
p2=[-0.612372 0 0.612372];
p3=[-0.790569 0 0.790569 0];
p4=[-1.16927 0 1.40312 0 -0.233854];
p5=[-1.85616 0 2.65165 0 -0.795495 0];

N_points=1000;
x=linspace(-1,1,N_points);
y0=polyval(p0,x);
y1=polyval(p1,x);
y2=polyval(p2,x);
y3=polyval(p3,x);
y4=polyval(p4,x);
y5=polyval(p5,x);

figure(1);
hold on;
grid on;
title('Modal basis','FontSize',20,'FontWeight','bold');
plot(x,y0,'Color','r','LineWidth',2);
plot(x,y1,'Color','b','LineWidth',2);
plot(x,y2,'Color','g','LineWidth',2);
plot(x,y3,'Color','c','LineWidth',2);
plot(x,y4,'Color','m','LineWidth',2);
plot(x,y5,'Color','k','LineWidth',2);
set(0,'defaulttextinterpreter','latex')
legend('\phi_0(x)','\phi_1(x)','\phi_2(x)','\phi_3(x)','\phi_4(x)','\phi_5(x)');


% [xi,yi]=meshgrid(x,x);
% zi00=zeros(N_points,N_points);
% zi01=zeros(N_points,N_points);
% zi10=zeros(N_points,N_points);
% zi11=zeros(N_points,N_points);
% zi02=zeros(N_points,N_points);
% zi20=zeros(N_points,N_points);
% zi12=zeros(N_points,N_points);
% zi21=zeros(N_points,N_points);
% zi22=zeros(N_points,N_points);

% for i=1:(N_points)
%     for ii=1:(N_points);
%         zi00(i,ii)=y0(i)*y0(ii);
%         zi01(i,ii)=y0(i)*y1(ii);
%         zi10(i,ii)=y1(i)*y0(ii);
%         zi11(i,ii)=y1(i)*y1(ii);
%         zi02(i,ii)=y0(i)*y2(ii);
%         zi20(i,ii)=y2(i)*y0(ii);
%         zi12(i,ii)=y1(i)*y2(ii);
%         zi21(i,ii)=y2(i)*y1(ii);
%         zi22(i,ii)=y2(i)*y2(ii);
%     end
% end
%
% figure(2);
%
% subplot(3,3,1);
% mesh(xi,yi,zi00);
%
% subplot(3,3,2);
% mesh(xi,yi,zi01);
%
% subplot(3,3,3);
% mesh(xi,yi,zi10);
%
% subplot(3,3,4);
% mesh(xi,yi,zi11);
%
% subplot(3,3,5);
% mesh(xi,yi,zi02);
%
% subplot(3,3,6);
% mesh(xi,yi,zi20);
%
% subplot(3,3,7);
% mesh(xi,yi,zi12);
%
% subplot(3,3,8);
% mesh(xi,yi,zi21);
%
% subplot(3,3,9);
% mesh(xi,yi,zi22);

[xi,yi]=meshgrid(x,x);
zi30=zeros(N_points,N_points);
zi31=zeros(N_points,N_points);

for i=1:(N_points)
    for ii=1:(N_points);
        zi30(i,ii)=y3(i)*y0(ii);
        zi31(i,ii)=y3(i)*y1(ii);
    end
end

figure(3);

h = subplot(2,1,1);
p = get(h, 'position');
p(3) = p(3) + 0.02;
set(h, 'position', p);

subplot(2,2,1);
mesh(xi,yi,zi31);
axis square;

subplot(2,2,2);
mesh(xi,yi,zi30);
axis square;

subplot(2,2,3);
mesh(xi,yi,zi31);
axis square;

subplot(2,2,4);
mesh(xi,yi,-zi30);
axis square;
