function res_people = GA_mutator(people,population_size,chromosome_size)
%UNTITLED5 此处显示有关此函数的摘要
%   此处显示详细说明

mutation_probability = 0.001;

res_people = people;

for i = 1:1:population_size
    p = rand;
    if p < mutation_probability
        t = randi(chromosome_size);
        if people(i,t) == 1
            res_people(i,t) = 0;
        elseif people(i,t) == 0
            res_people(i,t) = 1;
        end
        if sum(res_people(i,:))<=4
            if res_people(i,t) == 1
                res_people(i,t) = 0;
            elseif res_people(i,t) == 0
                res_people(i,t) = 1;
            end
        end
    end
end
end
