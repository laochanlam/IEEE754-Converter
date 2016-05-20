% initialize
a = [ 0 1 0 0 0 0 0 1 1 0 0 1 1 0 1 1 1 0 0 1 0 0 0 1 0 1 1 0 1 0 0 0 ]; %%19.446
fa = 19.446; %Solution1
b = [ 0 1 0 0 0 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 0 1 1 1 0 0 1 0 1 1 0 ]; %%446.778
fb = 446.778; %Solution2
c = [ 1 1 0 0 0 1 0 1 0 0 0 1 0 1 1 0 0 0 1 0 1 0 1 0 1 0 1 1 0 0 0 0 ]; %%-2402.668
fc = -2402.668; %Solution3

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Solution1

ans = SngBinToNum (a);  %enter the function

fprintf('The binary representation of %.3f is [',ans); 

for i = 1:1:32 %print out
    fprintf('%d',a(i));
    if (i ~= 32) 
        fprintf(' ');
    end
end
fprintf('];\n');

fprintf('The decimal representation of [');

ans = NumToSngBin (fa); %enter the function


for i = 1:1:32 %print out 
    fprintf('%d',ans(i));
    if (i ~= 32) 
        fprintf(' ');
    end
end

fprintf('] is %.3f;\n',fa);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Solution2

ans = SngBinToNum (b); %%enter the function
fprintf('The binary representation of %.3f is [',ans); %print out

for i = 1:1:32 %print out
    fprintf('%d',b(i));
    if (i ~= 32) 
        fprintf(' ');
    end
end
fprintf('];\n');

fprintf('The decimal representation of [');

ans = NumToSngBin (fb); %enter the function


for i = 1:1:32 % print out
    fprintf('%d',ans(i));
    if (i ~= 32) 
        fprintf(' ');
    end
end

fprintf('] is %.3f;\n',fb);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Solution3

ans = SngBinToNum (c); %enter the function
fprintf('The binary representation of %.3f is [',ans);

for i = 1:1:32
    fprintf('%d',c(i));
    if (i ~= 32) 
        fprintf(' ');
    end
end
fprintf('];\n');

fprintf('The decimal representation of [');

ans = NumToSngBin (fc); %enter the function


for i = 1:1:32 %print out
    fprintf('%d',ans(i));
    if (i ~= 32) 
        fprintf(' ');
    end
end

fprintf('] is %.3f;\n',fc);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%