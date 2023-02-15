t = MyOutput.time;
dt = simu.dt;
pos = MyOutput.signals.values(:,1);
vel = MyOutput.signals.values(:,2);

figure, plot(t,pos,t,cumtrapz(vel*t(2))), xlabel('Time [s]'), ylabel('Position [m]'), grid
legend('Translational Position of Cylinder','Integrated Velocity of Cylinder')

figure, plot(t,-pos,t,cumtrapz(vel*t(2))), xlabel('Time [s]'), ylabel('Position [m]'), grid
legend('NEGATED Translational Position of Cylinder','Integrated Velocity of Cylinder')