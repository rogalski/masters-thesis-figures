function cholesky_my_spy( A, N, offset ,style, marker_size)
    [x, y] = find(A);
    plot(x+offset, y+offset, style, 'MarkerSize', marker_size)
    xlim([0, N+1])
    ylim([0, N+1])
    axis square
    axis ij
end
