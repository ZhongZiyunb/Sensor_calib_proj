function Dec = BinSeqToDec(BinSeq,BinSeqSize)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
Dec = 0;
for i = 1:1:BinSeqSize
    Dec = Dec + BinSeq(i)* 2^(i-1);
end
end

