x = linspace(0,4);
y = zeros(6,100);
linS = {'-', '--', ':', '-.', '-', '--'};
figure(1)
for i = 1:6
    y(i,:)=(x-2).^i;
    hold on
    plot(x,y(i,:), 'linestyle', linS{i},'LineWidth', 3)
end
ylim([-32 64])
fontS = 20;
title('Plot of different polynomial', 'FontSize', fontS)
xlabel('0<=x<=4','FontSize', fontS) 
ylabel('y=(x-2)^n','FontSize', fontS)
legend({'n=1','n=2','n=3','n=4','n=5','n=6'},'FontSize', fontS)
hold off

N = 100;
degree1 = 5;
degree2 = 15;
yS1 = zeros(3,100);
yS2 = zeros(3,100);

i = 0;
j = 0;
fontS2 = 16;
figure(2)
for delta = [.5 .05 .005]
    i = i+1;
    xS = linspace(2-delta, 2+delta, N);
    yS1(i,:)= poly(2,degree1,xS);
    yS2(i,:)= poly(2,degree2,xS);
    j = j+1;
    subplot(3,2,j)
    plot(xS,yS1(i,:),'LineWidth', 1.5)
    title(['delta = ',num2str(delta), ', n =', num2str(degree1)],'FontSize', fontS2);
    xlabel('x') 
    ylabel('y, y = (x-2)^5') 
    j = j+1;
    subplot(3,2,j)
    plot(xS,yS2(i,:),'LineWidth', 1.5)
    title(['delta =',num2str(delta), ', n =', num2str(degree2)],'FontSize', fontS2);
    xlabel('x','FontSize', fontS2) 
    ylabel('y, y = (x-2)^15','FontSize', fontS2)
end

