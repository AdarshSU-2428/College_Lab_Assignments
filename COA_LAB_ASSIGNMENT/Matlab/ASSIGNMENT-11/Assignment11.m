1.
function power_of_2()
    for i = 0:10
        val = 2^i;
        if val < 100
            fprintf('%d\n', val);
        end
    end
end

2.
function check_vote()
    age = input('Enter age: ');
    if age >= 18
        disp('Eligible to vote');
    else
        disp('Not eligible');
    end
end

3.
function greatest_three()
    a = input('Enter a: ');
    b = input('Enter b: ');
    c = input('Enter c: ');

    if a > b && a > c
        disp(a);
    elseif b > c
        disp(b);
    else
        disp(c);
    end
end

4.
function is_prime()
    n = input('Enter number: ');
    flag = 1;

    if n <= 1
        flag = 0;
    end

    for i = 2:n-1
        if mod(n,i) == 0
            flag = 0;
            break;
        end
    end

    if flag == 1
        disp('Prime');
    else
        disp('Not Prime');
    end
end

5.
function grade_calc()
    marks = zeros(1,5);
    for i=1:5
        marks(i) = input('Enter marks: ');
    end

    avg = mean(marks);

    switch true
        case avg >= 60
            disp('1st Division');
        case avg >= 50
            disp('2nd Division');
        case avg >= 30
            disp('3rd Division');
        otherwise
            disp('Fail');
    end
end

6.
function table_num()
    n = input('Enter number: ');

    disp('Multiplication Table')
    for i=1:6
        fprintf('%d * %d = %d\n', n, i, n*i);
    end

    disp('Addition Table')
    for i=0:5
        fprintf('%d + %d = %d\n', i, n-i, n);
    end
end

7.
function cos_series()
    x = input('Enter x: ');
    n = input('Enter terms: ');

    sum = 0;
    for i = 0:n
        term = ((-1)^i)*(x^(2*i))/factorial(2*i);
        sum = sum + term;
    end

    disp(sum);
end

8.
function f = fact_rec(n)
    if n == 0 || n == 1
        f = 1;
    else
        f = n * fact_rec(n-1);
    end
end

9.
function pattern()
    for i=1:5
        for j=1:i
            fprintf('* ');
        end
        fprintf('\n');
    end
end

10.
function login()
    correct_user = 'admin';
    correct_pass = '1234';

    for i=1:3
        user = input('Enter username: ','s');
        pass = input('Enter password: ','s');

        if strcmp(user,correct_user) && strcmp(pass,correct_pass)
            disp('Login Successful');
            return;
        else
            disp('Wrong credentials');
        end
    end

    disp('Access Denied');
end

11.
function flag = prime(n)
    flag = 1;
    if n <= 1
        flag = 0;
        return;
    end

    for i=2:n-1
        if mod(n,i)==0
            flag = 0;
            return;
        end
    end
end

function prime_factors()
    n = input('Enter number: ');

    for i=2:n
        if mod(n,i)==0 && prime(i)
            fprintf('%d ', i);
        end
    end
end

12.
function combinations()
    arr = [1 2 3];
    for i=1:3
        for j=1:3
            for k=1:3
                fprintf('%d%d%d\n', arr(i), arr(j), arr(k));
            end
        end
    end
end

13.
function result = sum_digits(n)
    while n >= 10
        s = 0;
        while n > 0
            s = s + mod(n,10);
            n = floor(n/10);
        end

        n = s;
    end

    result = n;
end

14.
function second_greatest()
    arr = input('Enter array: ');

    arr = unique(arr);
    arr = sort(arr);

    disp(arr(end-1));
end

15.
function rotate_array()
    arr = input('Enter array: ');
    n = input('Enter rotations: ');

    len = length(arr);

    n = mod(n,len);
    result = [arr(n+1:end), arr(1:n)];

    disp(result);
end

16.
function len = string_length(str)
    len = 0;
    for i = 1:length(str)
        len = len + 1;
    end
end

17.
function initials()
    name = input('Enter name: ','s');
    words = strsplit(name);

    for i=1:length(words)
        fprintf('%s. ', upper(words{i}(1)));
    end
end
