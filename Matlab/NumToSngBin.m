function out = NumToSngBin (a)
    out = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]; %initialize

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    if (a < 0)      %Sign part
        out(1) = 1;
        a = -a;
    end
  
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    first = 1;
    count = 10;
 
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for i = 38:-1:0         %Mantissa 小數點前 "Decimal to Binary"
        if ( a >= 2^i)
            a = a - 2^i;
            out(count) = 1;
            first = 0;
        end
        if (first == 0)    
            count = count + 1;
        end
    end

    sqr = count - 11;

    c = 127 + sqr;  % Exponent	

    while (a ~= 1) % Mantissa 小數點後
        a = a * 2;
        if (a < 1)
            out(count) = 0;
        end
        
        if (a > 1)
            out(count) = 1;
            a = a - 1;
        end
        if ( a == 1)
            out(count) = 1;
        end
        count = count + 1;
        
    end
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for i = 10 : 1 : 31  %把11~32往前一位,去掉1
        if (i ~= 31)
            out(i) = out(i+1) ;
        end
        if (i == 32)
            out(i) = 0 ;
        end
    end
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    
    count = 2;
    
    for i = 7:-1:0   %Exponent "Decimal to Binary"
        if ( c >= 2^i)
            c = c - 2^i;
            out(count) = 1;
        end
            count = count + 1;
    end

    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
end