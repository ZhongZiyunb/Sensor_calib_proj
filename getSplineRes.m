function T_hat = getSplineRes(T_tmp,V_tmp,k)
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明
T_hat = spline(T_tmp,V_tmp,k);
end