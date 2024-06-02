function dStateVec = DynODE(t,StateVec,Input)
%DYNODE 此处显示有关此函数的摘要
%  StateVec=[Theta;dTheta]
Theta=StateVec(1:7);
dTheta=StateVec(8:14);
%  Matrixes & Vectors in Dynamical Equations
M=get_MassMatrix(StateVec);
h=get_CoriolisVector(Theta,dTheta);
G=get_GravityVector(Theta);
f=get_FrictionTorque(dTheta);
dStateVec=[dTheta;M\( ...
    Input-G-h-f)];
end

