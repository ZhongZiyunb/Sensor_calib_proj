function res = BS_bitcmp(Bseq)
%UNTITLED11 此处显示有关此函数的摘要
%   此处显示详细说明
res = zeros(1,length(Bseq));
for i = 1:1:90
    if Bseq(i) == 1
        res(i) = 0;
    else
        res(i) = 1;
    end
end

