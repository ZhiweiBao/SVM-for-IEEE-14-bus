s = 500;
Y_5 = zeros(500,4);
Y_5(:,1) = unifrnd (1.0197, 1.6638, s, 1);
Y_5(:,2) = unifrnd (0.5692, 0.9286, s, 1);
Y_5(:,3) = unifrnd (-152.9550/180*pi, -132.9422/180*pi, s, 1);
Y_5(:,4) = unifrnd (6.6112/180*pi, 7.6065/180*pi, s, 1);

[~,~,Z5] = node_admittance(5,1); 

I_bus6_h5 = Y_5(:,1).*exp(1i*Y_5(:,3));
I_bus13_h5 = Y_5(:,2).*exp(1i*Y_5(:,4));

X_5 = zeros(s,2);
for i=1:s
    I = zeros(14,1);
    I(6) = I_bus6_h5(i);
    I(13) = I_bus13_h5(i);
    U = Z5*I;
    I_bus6_13_h5 = (U(6)-U(13))/Z5(6,13);
    X_5(i,1)=abs(I_bus6_13_h5);
    X_5(i,2)=angle(I_bus6_13_h5);
end
dataset_5 = [X_5,Y_5];

Y_7 = zeros(500,4);
Y_7(:,1) = unifrnd (0.3632, 0.5925, s, 1);
Y_7(:,2) = unifrnd (0.4401, 0.6263, s, 1);
Y_7(:,3) = unifrnd (-109.4752/180*pi, -95.1514/180*pi, s, 1);
Y_7(:,4) = unifrnd (108.5593/180*pi, 124.9015/180*pi, s, 1);

[~,~,Z7] = node_admittance(7,1); 

I_bus6_h7 = Y_7(:,1).*exp(1i*Y_7(:,3));
I_bus13_h7 = Y_7(:,2).*exp(1i*Y_7(:,4));

X_7 = zeros(s,2);
for i=1:s
    I = zeros(14,1);
    I(6) = I_bus6_h7(i);
    I(13) = I_bus13_h7(i);
    U = Z7*I;
    I_bus6_13_h7 = (U(6)-U(13))/Z7(6,13);
    X_7(i,1)=abs(I_bus6_13_h7);
    X_7(i,2)=angle(I_bus6_13_h7);
end
dataset_7 = [X_7,Y_7];