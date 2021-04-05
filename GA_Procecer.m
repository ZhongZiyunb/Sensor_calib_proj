% 遗传算法模块
format0 = "iteration: %4.0f \n";
for iter = 1:1:iteration_time
   
  fprintf(format0,iter);
  
% 种群选择（包含：1 方案成本计算模块 2 适应度计算模块 3 最优个体保留模块 4 轮盘法选择模块）
  [people_all,best_one_cost(iter)] = GA_selector(people_all,population_size,chromosome_size,M_temperature,M_voltage,best_one_cost(iter),sample_size);
% 多点交叉（包含：1 交叉 2 适应度计算模块）
  people_all = GA_multiCrossMatcher(people_all,population_size,chromosome_size);
% 单点变异（包含：1 交叉 2 适应度计算模块） 
  people_all = GA_mutator(people_all,population_size,chromosome_size);

end
