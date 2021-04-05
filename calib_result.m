% 这边将整个遗传算法用图形化展示出来

x = 1:1:iteration_time;
plot(x,best_one_cost,'r');

[best_cost,best_loss] = getCost(population_size,chromosome_size,sample_size,M_temperature,M_voltage,people_all);
[best_id,best_id_cost] = getBestRes(best_cost,people_all);

format1 = "%4.0f ";
fprintf("the best scheme is:\n")
for i = 1:1:chromosome_size
    fprintf(format1,best_id(i));
end
fprintf("the best scheme id is:\n")
for i = 1:1:chromosome_size
    if best_id(i) == 1
        fprintf(format1,M_temperature(1,i));
    end
end
fprintf("\n");
format2 = "this is best cost: %4.0f";
fprintf(format2,best_id_cost);

% 以下是用最好的结果计算测试集成本
[cost_test,loss_test] = getCost(1,90,200,M_temperature_test,M_voltage_test,best_id);
fprintf("this is test:\n");
disp(cost_test);