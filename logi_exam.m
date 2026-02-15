function logi_exam
vec = randi([-10,10],1,1000000);
count = 0;
disp('For Loop')
tic
for i = 1:length(vec)
    if vec(i)>0
        count = count+1;
    end
end
toc
disp('count:');
count
disp('Vector Loop:');
%(vec>0) creates a logical array of 1s and 0s,sum adds them up
tic
count = sum(vec>0);
toc
disp('count:\n');
count
end


