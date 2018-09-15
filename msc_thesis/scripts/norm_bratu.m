clear all
close all
clc

n_iter=[1 2 3 4 5 6 7 8 9];
norm_value0=[0.0719401 0.0024201 6.4778e-06 4.465e-11 0 0 0 0 0];
norm_value1=[33.1677 0.0719401 0.0024201 6.4778e-06 4.465e-11 0 0 0 0];
norm_value2=[66.3082 2.43303 0.804225 0.244332 0.20116 0.0128242 0.00051939 2.78941e-07 2.18218e-13];

figure(1);
hold on;
grid on;

title('Residual quadratic error','FontSize',20,'FontWeight','bold');
xlabel('Iteration number','FontSize',20,'FontWeight','bold');

plot(n_iter,norm_value0,'Color','r','LineWidth',2);
plot(n_iter,norm_value1,'Color','g','LineWidth',2);
plot(n_iter,norm_value2,'Color','b','LineWidth',2);

legend('u0=0','u0=1','u0=2');
