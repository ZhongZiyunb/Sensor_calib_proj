function  [best_res,best_one_cost] = getBestRes(cost,people_all)
%UNTITLED8 此处显示有关此函数的摘要
%   此处显示详细说明

best_res = zeros(1,90);
idx = find(cost == min(cost));
if length(idx) > 1
    idx = idx(1);
end
best_res = people_all(idx,:);
best_one_cost = cost(idx);
end

