M = csvread('garage-2020-05-18_17_02.csv',1,0);
Time = M(:,8) - M(1,8);
X = M(:,1) - M(1,1);
Y = M(:,2) - M(1,2);
figure(1)
plot3(X,Y,Time)
xlabel('Longitude / m')
ylabel('Latitude / m')
zlabel('Time / s')

HeadingAngle = (M(:,9) + pi ) *360/(2*pi);
figure(2)
plot(Time,HeadingAngle)
xlabel('Time / s')
ylabel('HeadingAngle / deg')

Speed = M(:,4) * 3.6;
figure(3)
plot(Time,Speed)
xlabel('Time / s')
ylabel('Speed / kph')

Acceleration = M(:,5);
figure(4)
plot(Time,Acceleration)
xlabel('Time / s')
ylabel('Acceleration / ms2')

Steering = M(:,14);
figure(5)
plot(Time,Steering)
xlabel('Time / s')
ylabel('Steering / deg')