function [tmp_people_all,best_one_cost] = GA_selector(people_all,population_size,chromosome_size,M_temperature,M_voltage,best_one_cost,sample_size)
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明

% 方案成本计算部分
[cost,fitness] = getCost(population_size,chromosome_size,sample_size,M_temperature,M_voltage,people_all);
% 结果计算部分
[best_res,best_one_cost] = getBestRes(cost,people_all);
% 轮盘选择部分
tmp_people_all = coronaSelect(best_res,fitness,population_size,chromosome_size,people_all);

end

