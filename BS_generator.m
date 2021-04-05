function BS_res = BS_generator(BS_length)
%UNTITLED12 此处显示有关此函数的摘要
%   此处显示详细说明

BS_res = zeros(1,BS_length);   

for i = 1:1:BS_length
    r = rand;
    if r > 0.9
        BS_res(i) = 1;
    end
end
end

