function [y,DM,tao] = Mgaussfit(x,A,a,t0,W)
ch=100:1:130;
BW=length(ch);
y = A*exp(-(x-t0).^2/W^2) + A*exp(-(x-t0-a*(ch(2)^(-2)-ch(1)^(-2))^2).^2/W^2)+ ...
    A*exp(-(x-t0-a*(ch(3)^(-2)-ch(1)^(-2))).^2/W^2) + A*exp(-(x-t0-a*(ch(4)^(-2)-ch(1)^(-2))).^2/W.^2) + ...
    A*exp(-(x-t0-a*(ch(6)^(-2)-ch(1)^(-2))).^2/W.^2)+ A*exp(-(x-t0-a*(ch(5)^(-2)-ch(1)^(-2))).^2/W.^2) +...
    A*exp(-(x-t0-a*(ch(7)^(-2)-ch(1)^(-2))).^2/W.^2)+ A*exp(-(x-t0-a*(ch(8)^(-2)-ch(1)^(-2))).^2/W.^2) + ...
    A*exp(-(x-t0-a*(ch(9)^(-2)-ch(1)^(-2))).^2/W.^2)+ A*exp(-(x-t0-a*(ch(10)^(-2)-ch(1)^(-2))).^2/W.^2) + ...
    A*exp(-(x-t0-a*(ch(11)^(-2)-ch(1)^(-2))).^2/W.^2)+ A*exp(-(x-t0-a*(ch(12)^(-2)-ch(1)^(-2))).^2/W.^2) + ...
    A*exp(-(x-t0-a*(ch(13)^(-2)-ch(1)^(-2))).^2/W.^2)+ A*exp(-(x-t0-a*(ch(14)^(-2)-ch(1)^(-2))).^2/W.^2) + ...
    A*exp(-(x-t0-a*(ch(15)^(-2)-ch(1)^(-2))).^2/W.^2)+ A*exp(-(x-t0-a*(ch(16)^(-2)-ch(1)^(-2))).^2/W.^2) + ...
    A*exp(-(x-t0-a*(ch(17)^(-2)-ch(1)^(-2))).^2/W.^2)+ A*exp(-(x-t0-a*(ch(18)^(-2)-ch(1)^(-2))).^2/W.^2) + ...
    A*exp(-(x-t0-a*(ch(19)^(-2)-ch(1)^(-2))).^2/W.^2)+ A*exp(-(x-t0-a*(ch(20)^(-2)-ch(1)^(-2))).^2/W.^2) + ...
    A*exp(-(x-t0-a*(ch(21)^(-2)-ch(1)^(-2))).^2/W.^2)+ A*exp(-(x-t0-a*(ch(22)^(-2)-ch(1)^(-2))).^2/W.^2) + ...
    A*exp(-(x-t0-a*(ch(23)^(-2)-ch(1)^(-2))).^2/W.^2)+ A*exp(-(x-t0-a*(ch(24)^(-2)-ch(1)^(-2))).^2/W.^2) + ...
    A*exp(-(x-t0-a*(ch(25)^(-2)-ch(1)^(-2))).^2/W.^2)+ A*exp(-(x-t0-a*(ch(26)^(-2)-ch(1)^(-2))).^2/W.^2) + ...
    A*exp(-(x-t0-a*(ch(27)^(-2)-ch(1)^(-2))).^2/W.^2)+ A*exp(-(x-t0-a*(ch(28)^(-2)-ch(1)^(-2))).^2/W.^2) + ...
    A*exp(-(x-t0-a*(ch(29)^(-2)-ch(1)^(-2))).^2/W.^2)+ A*exp(-(x-t0-a*(ch(30)^(-2)-ch(1)^(-2))).^2/W.^2) + ...
    A*exp(-(x-t0-a*(ch(31)^(-2)-ch(1))^(-2)).^2/W.^2);


DM=a/4150;
tao=zeros(BW,1);
tao(1)=0;
for i=2:1:BW
    tao(i)=a*(ch(i)^(-2)-ch(i-1)^(-2));
end


end
