clear all
close all
clc

A=0.04;
q=0.2;
num_nodes_h=40;

num_nodes_v=round(num_nodes_h*q);
delta_x=1/(num_nodes_h-1);
delta_y=(q-A)/(num_nodes_v-1);


x1=zeros(num_nodes_v,1);
y1=0:delta_y:(q-A);
y1=y1';

x2=0:delta_x:1;
x2=x2';
y2=A*sin((x2-1/4)*pi*2)+q;

x3=ones(num_nodes_v,1);
y3=y1;

x4=x2;
y4=zeros(num_nodes_h,1);

xy=zeros(num_nodes_h*2+num_nodes_v*2-4,2);

for i=1:(num_nodes_v-1)
    xy(i,1)=x1(i);
    xy(i,2)=y1(i);
    xy(i+num_nodes_v+num_nodes_h-2,1)=x3(i);
    xy(i+num_nodes_v+num_nodes_h-2,2)=y3(num_nodes_v-i+1);
end

for i=1:(num_nodes_h-1)
    xy(i+num_nodes_v-1,1)=x2(i);
    xy(i+num_nodes_v-1,2)=y2(i);
    xy(i+num_nodes_v*2+num_nodes_h-3,1)=x4(num_nodes_h-i+1);
    xy(i+num_nodes_v*2+num_nodes_h-3,2)=y4(i);
end

hold on;
axis equal
plot(xy(:,1),xy(:,2));

disp(xy);
