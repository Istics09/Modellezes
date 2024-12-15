M = zeros(5, 5);

M(1, [2, 4]) = 1; 
M(2, [3, 5]) = 1; 
M(3, 1) = 1
M(4, [2, 3]) = 1; 
M(5, 4) = 1;     

M = M ./ sum(M, 1);

d = 0.85;

n = size(M, 1);
pagerank = ones(n, 1) / n;

for i = 1:100
    pagerank = (1 - d) / n + d * M * pagerank;
end

pagerank
