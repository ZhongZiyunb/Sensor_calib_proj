function [cost_single,loss] = getCost(population_size,chromosome_size,sample_size,temperature,voltage,people_all)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明

cnt = 0;
cost_single = zeros(1,population_size);
loss = zeros(1,population_size);
base_cost = 50;

% ================================== %
for i = 1:1:population_size
    % 计算单个方案的平均标定成本和平均损失函数值
    for j = 1:1:sample_size
        % 得到当前sample在当前标定方案下的插值拟合需要用的序列
        [temperature_tmp,voltage_tmp] = getSpline(temperature(j,:),voltage(j,:),people_all(i,:));
            % 计算当前sample下得到的样本个体标定成本和个体损失函数值
            cnt = sum(people_all(i,:))+cnt;
            T_hat = getSplineRes(voltage_tmp,temperature_tmp,voltage(j,:));
            T_delt = abs(T_hat - temperature(j,:));
            %--------------------------------------------%
            for k = 1:1:90
            if T_delt(k) <= 0.5
                cost_single(i) = cost_single(i) + 0;
                %--------------------------------------------%
            elseif T_delt(k) <= 1.0
                cost_single(i) = cost_single(i) + 1;
                %--------------------------------------------%
            elseif T_delt(k) <= 1.5
                cost_single(i) = cost_single(i) + 6;
                %--------------------------------------------%
            elseif T_delt(k) <= 2.0
                cost_single(i) = cost_single(i) + 20;
                %--------------------------------------------%
            else
                cost_single(i) = cost_single(i) + 10000;
                %--------------------------------------------%
            end
            end
    end
    cost_single(i) = (cost_single(i) + base_cost * cnt)/sample_size;
    loss(i) = 1/log(cost_single(i));
    
    cnt = 0;
end

end

