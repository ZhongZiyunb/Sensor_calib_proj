function people_tmp = coronaSelect(Best,fitness,population_size,chromosome_size,people_all)
%UNTITLED6 此处显示有关此函数的摘要
%   此处显示详细说明
fitness_all = sum(fitness);
div_points = zeros(1,population_size + 1);
people_tmp = zeros(population_size,chromosome_size);
% 这边先得到赌轮的划分点
for i = 1:1:population_size
    if i == population_size    
        div_points(i+1) = 1;
    else
        div_points(i+1) = div_points(i) + fitness(i)/fitness_all;
    end    
end
% 这边通过循环检索得到每次的个体
for i = 1:1:population_size
    % 这边先保留一波最优的个体
    if i == 1
        people_tmp(i,:) = Best;
        continue;
    end
    % 剩余个体使用轮盘选择法
    p = rand;
    for j = 1:1:(length(div_points)-1)
        if p >= div_points(j) && p <= div_points(j+1)
            people_tmp(i,:) = people_all(i,:);
        end
    end
end

end

