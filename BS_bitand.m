function res = BS_bitand(Bseq1,Bseq2)
%UNTITLED9 此处显示有关此函数的摘要
%   此处显示详细说明
res = zeros(1,length(Bseq1));

for i = 1:1:90
    res(i) = Bseq1(i) * Bseq2(i);
end
end