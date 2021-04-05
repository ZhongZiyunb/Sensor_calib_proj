M_test = dlmread("dataform_testA.csv");
[M_rows_test , M_cols_test] = size(M_test);

M_temperature_test = zeros(M_rows_test/2,M_cols_test);
M_voltage_test = zeros(M_rows_test/2,M_cols_test);

for i = 1:1:M_rows_test
    if mod(i,2) == 1
        M_temperature_test((i+1)/2,:) = M_test(i,:);
    else
        M_voltage_test(i/2,:) = M_test(i,:);
    end
end

res = [-17 0 8 15 22 33 54 68];
best_test = zeros(1,90);
for i = 1:1:90
    if ismember(M_temperature_test(1,i),res)
        best_test(i) = 1;
    end
end


best_id1 = zeros(1,90);
best_id1(1,:) = [0    0    0    0    1    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    1    0    0    0    0    0    0    0    1    0    0    0    0    0    0    0    1    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    1    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    1    1    0    0    0    0    0 ];
[cost_test1,loss_test1] = getCost(1,90,200,M_temperature_test,M_voltage_test,best_test);
fprintf("this is test:\n");
disp(cost_test1);