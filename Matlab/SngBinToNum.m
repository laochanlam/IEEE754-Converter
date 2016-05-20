function ans = SngBinToNum (a)
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    count = 1;   %Exponent "Binary to Decimal"
    c = 0;
    for i =  9:-1:2
        c = c + count*a(i);
        count = count * 2;
    end
    
    count = 0.5;
    f = 0;
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for i =  10:1:32                    % Mantissa Binary to Decimal"
        f = f + count*a(i); 
        count = count * 0.5;
    end
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    ans = (-1)^a(1) * 2^(c-127) *(1 + f);   % Calculate the Ans!
    
    
end