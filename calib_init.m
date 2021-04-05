% 对遗传算法初始化

iteration_time = 100;
population_size = 100;
chromosome_size = 90;
best_one_cost = zeros(1,iteration_time);

% 读取表格
M = dlmread("dataform_train.csv");
M_test = dlmread("dataform_testA.csv");

[M_rows , M_cols] = size(M);
[M_rows_test , M_cols_test] = size(M_test);

M_temperature = zeros(M_rows/2,M_cols);
M_voltage = zeros(M_rows/2,M_cols);
M_temperature_test = zeros(M_rows_test/2,M_cols_test);
M_voltage_test = zeros(M_rows_test/2,M_cols_test);

sample_size = 500;

% 将dataform里的数据划分出来
for i = 1:1:M_rows
    if mod(i,2) == 1
        M_temperature((i+1)/2,:) = M(i,:);
    else
        M_voltage(i/2,:) = M(i,:);
    end
end

% 生成含90位染色体的个体,每个个体的基因用一段数组表达
people_all = zeros(population_size,chromosome_size);

for i = 1:1:population_size
    for j = 1:1:chromosome_size
       r = rand;
       if r > 0.90
        people_all(i,j) = 1;
       end
    end
end