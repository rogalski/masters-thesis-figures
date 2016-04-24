DOT_M_SIZE = 19;
X_M_SIZE = 5;

A0 = A;
A1 = A0(2:end, 2:end) - (A0(2:end,1)*A0(1,2:end))/A0(1,1);
A2 = A1(2:end, 2:end) - (A1(2:end,1)*A1(1,2:end))/A1(1,1);
A3 = A2(2:end, 2:end) - (A2(2:end,1)*A2(1,2:end))/A2(1,1);

[x0, y0] = find(A0);
[x1, y1] = find(A1);
[x2, y2] = find(A2);
[x3, y3] = find(A3);

f = figure('visible', 'off');
title('Max fillin')

subplot(1,4,1);
cholesky_my_spy(A0, N, 0, '.', DOT_M_SIZE);
title('A0');

subplot(1,4,2);
cholesky_my_spy(A1, N, 1, 'xr', X_M_SIZE);
hold on
cholesky_my_spy(A0(2:end, 2:end), N, 1, '.', DOT_M_SIZE);
title('A1');

subplot(1,4,3);
cholesky_my_spy(A2, N, 2, 'xr', X_M_SIZE);
hold on
cholesky_my_spy(A0(3:end, 3:end), N, 2, '.', DOT_M_SIZE);
title('A2');

subplot(1,4,4);
cholesky_my_spy(A3, N, 3, 'xr', X_M_SIZE);
hold on
cholesky_my_spy(A0(4:end, 4:end), N, 3, '.', DOT_M_SIZE);
title('A3');

set(gcf,'PaperPositionMode','auto')
set(gcf, 'Position', [0 0 800, 250])

