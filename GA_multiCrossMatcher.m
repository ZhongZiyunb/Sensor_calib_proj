function res_people = GA_multiCrossMatcher(people,population_size,chromosome_size)
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明
cross_probability = 0.9;
res_people = zeros(population_size,chromosome_size);
for i = 1:2:population_size
    p = rand;
    if p <cross_probability && sum(people(i,:) ~= people(i+1,:))
        t = randi(89);
        s1 = people(i,:);
        s2 = people(i+1,:);
        res_people(i,:) = [s1(1:t) s2(t+1:90)];
        res_people(i+1,:) = [s2(1:t) s1(t+1:90)];
        if sum(res_people(i,:))<=4 || sum(res_people(i+1,:))<=4
            res_people(i,:) = people(i,:);
            res_people(i+1,:) = people(i+1,:);
        end
        t2 = randi(89);
        if t2 ~= t
            s1 = res_people(i,:);
            s2 = res_people(i+1,:);
            res_people(i,:) = [s1(1:t2) s2(t2+1:90)];
            res_people(i+1,:) = [s2(1:t2) s1(t2+1:90)];
            if sum(res_people(i,:))<=4 || sum(res_people(i+1,:))<=4
                res_people(i,:) = people(i,:);
                res_people(i+1,:) = people(i+1,:);
            end
            t3 = randi(89);
            if t3 ~= t2
                s1 = res_people(i,:);
                s2 = res_people(i+1,:);
                res_people(i,:) = [s1(1:t3) s2(t3+1:90)];
                res_people(i+1,:) = [s2(1:t3) s1(t3+1:90)];
                if sum(res_people(i,:))<=4 || sum(res_people(i+1,:))<=4
                    res_people(i,:) = people(i,:);
                    res_people(i+1,:) = people(i+1,:);
                end
                t4 = randi(89);
                if t4 ~= t3
                    s1 = res_people(i,:);
                    s2 = res_people(i+1,:);
                    res_people(i,:) = [s1(1:t4) s2(t4+1:90)];
                    res_people(i+1,:) = [s2(1:t4) s1(t4+1:90)];
                    if sum(res_people(i,:))<=4 || sum(res_people(i+1,:))<=4
                        res_people(i,:) = people(i,:);
                        res_people(i+1,:) = people(i+1,:);
                    end
                    t5 = randi(89);
                    if t5 ~= t4
                        s1 = res_people(i,:);
                        s2 = res_people(i+1,:);
                        res_people(i,:) = [s1(1:t5) s2(t5+1:90)];
                        res_people(i+1,:) = [s2(1:t5) s1(t5+1:90)];
                        if sum(res_people(i,:))<=4 || sum(res_people(i+1,:))<=4
                            res_people(i,:) = people(i,:);
                            res_people(i+1,:) = people(i+1,:);
                        end
                        t6 = randi(89);
                        %                 if t6 ~= t5
                        %                     s1 = people(i,:);
                        %                     s2 = people(i+1,:);
                        %                     res_people(i,:) = [s1(1:t6) s2(t6+1:90)];
                        %                     res_people(i+1,:) = [s2(1:t6) s1(t6+1:90)];
                        %                     t7 = randi(89);
                        %                 if t7 ~= t6
                        %                     s1 = people(i,:);
                        %                     s2 = people(i+1,:);
                        %                     res_people(i,:) = [s1(1:t7) s2(t7+1:90)];
                        %                     res_people(i+1,:) = [s2(1:t7) s1(t7+1:90)];
                        
                    end
                    %                 end
                end
            end
        end
        
        % 由于内置的二进制bitand不好用，所以给进来一个数组就能实现多点交叉
        %         mask = BS_generator(chromosome_size);
        %         mask_cmp = BS_bitcmp(mask);
        %res_people(i,:) = BS_bitand(people(i,:),mask);
        %res_people(i+1,:) = BS_bitand(people(i+1,:),mask_cmp);
        %=======================
        %         for e = 1:1:90
        %             if mask(e) == 1
        %                 res_people(i,e) = people(i+1,e);
        %                 res_people(i+1,e) = people(i,e);
        %             else
        %                 res_people(i,e) = people(i,e);
        %                 res_people(i+1,e) = people(i+1,e);
        %             end
        %         end
        %=======================
    else
        res_people(i,:) = people(i,:);
        res_people(i+1,:) = people(i+1,:);
    end
end
end

