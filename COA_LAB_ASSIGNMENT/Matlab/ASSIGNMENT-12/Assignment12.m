1.
function y = and_gate(a,b)
    y = a & b;
end

2.
function y = or_gate(a,b)
    y = a | b;
end

3.
function y = nand_gate(a,b)
    y = ~(a & b);
end

4.
function y = nor_gate(a,b)
    y = ~(a | b);
end

5.
function y = xor_gate(a,b)
    y = xor(a,b);
end

6.
function [sum,carry] = half_adder(a,b)
    sum = xor(a,b);
    carry = a & b;
end

7.
function [sum,carry] = full_adder(a,b,cin)
    sum = xor(xor(a,b),cin);
    carry = (a & b) | (b & cin) | (a & cin);
end

8.
function y = logical_right_shift(num,n)
    y = bitshift(num,-n);
end

9.
function y = logical_left_shift(num,n)
    y = bitshift(num,n);
end

10.
function y = arithmetic_right_shift(num,n)
    y = bitshift(num,-n);
end

11.
function [y,carry] = rotate_left_carry(num,n,bits)
    for i = 1:n
        carry = bitget(num,bits);
        num = bitshift(num,1);
        num = bitset(num,1,carry);
    end
    y = num;
end

12.
function y = rotate_left(num,n,bits)
    for i = 1:n
        msb = bitget(num,bits);
        num = bitshift(num,1);
        num = bitset(num,1,msb);
    end
    y = num;
end