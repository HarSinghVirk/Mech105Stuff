function [tout,yout]=Balloon(ti,vi,zi,tf,dt,varargin)
% balloon
% function [tout,yout]=Balloon(ti,vi,zi,tf,dt,FB,FG,mG,cdp,mP,md,zd)
% Function to generate solutions of vertical velocity and elevation
% versus time with Euler’s method for a hot air balloon  
% Input:
% FB = buoyancy force (N)
% FG = gravity force (N)
% mG = mass (kg)
% cdp=dimensional drag coefficient
% mP= mass of payload (kg)
% md=mass jettisoned (kg)
% zd=elevation at which mass is jettisoned (m)
% ti = initial time (s)
% vi=initial velocity (m/s)
% zi=initial elevation (m)
% tf = final time (s)
% dt=integration time step (s)
% Output:
% tout = vector of times (s)
% yout[:,1] = velocities (m/s)
% yout[:,2] = elevations (m)
 
% Code to implement Euler’s method to compute output
t = ti; y = [vi zi];
tout = t; yout = y;
while(1)
  if t + dt > tf, dt = tf - t; end
  dy=dydt(y,varargin{:});
  y = y + dy' * dt;
  t = t + dt;
  tout = [tout; t]; yout = [yout; y];
  if t >= tf, break, end
end
end