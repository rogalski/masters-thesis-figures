N = 10;
A = eye(N,N);
A(:,1) = 0.1;
A(1,:) = 0.1;
A(1,1) = 1;


cholesky_fillin_propagation;
print('cholesky_fillin_propagation_max', '-dpng');
close(gcf);


p = amd(A);
A = A(p, p);
cholesky_fillin_propagation;
print('cholesky_fillin_propagation_min', '-dpng');
close(gcf);

