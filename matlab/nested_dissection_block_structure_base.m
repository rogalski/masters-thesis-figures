N = 10000;

sizeS = 0.08;
sizePart = (1 - sizeS)/2;

part1 = N*sizePart;
part2 = N*2*sizePart;
partS = N * (1 - sizeS);

style = '--b';

spy(sparse(N , N));
hold on;
for k1=[part1, part2, partS]
    plot([k1 k1], [0 N], style);
    hold on;
    plot([0 N], [k1 k1], style);
    hold on;
end

set(gca,'xticklabel',[])
set(gca,'yticklabel',[])
xlabel('');
