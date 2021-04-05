function [T_tmp,V_tmp] = getSpline(T,V,PEOPLE_ALL)
%UNTITLED5 此处显示有关此函数的摘要
%   此处显示详细说明

cnt0 = 0;
cnt = 1;

for i = 1:1:length(T)
    if PEOPLE_ALL(i) == 1
        cnt0 = cnt0 + 1;
    end
end

T_tmp = zeros(1,cnt0);
V_tmp = zeros(1,cnt0);

for i = 1:1:length(T)
    if PEOPLE_ALL(i) == 1
        T_tmp(cnt) = T(i);
        V_tmp(cnt) = V(i);
        cnt = cnt + 1;
    end
end

end

