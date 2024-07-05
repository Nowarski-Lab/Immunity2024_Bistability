function C=kinetics(theta,t)
c0=0.01;
[T,Cv]=ode45(@DifEq,t,c0);
%
function dC=DifEq(t,c)
dcdt=theta(1) + theta(2).*c^3.2/(1+c^3.2) - c;
dC=dcdt;
end
C=Cv;
end
