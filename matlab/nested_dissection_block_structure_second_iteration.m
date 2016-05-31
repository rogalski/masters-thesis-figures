nested_dissection_block_structure_base;

part11 = (part1+0) / 2;
part22 = (part1+part2) / 2;
parts1 = (part1+part2) / 2;


spy(sparse(N , N));
hold on;
for k1=[part1, part2, partS]
    plot([k1 k1], [0 N], style);
    hold on;
    plot([0 N], [k1 k1], style);
    hold on;
end

text( (part1+0)/2, (part1+0)/2, 'V_1', 'HorizontalAlignment','center', 'VerticalAlignment', 'middle')
text( (part2+part1)/2, (part2+part1)/2, 'V_2', 'HorizontalAlignment','center', 'VerticalAlignment', 'middle')

text( (N + partS)/2, (N + partS)/2, 'S_0', 'HorizontalAlignment','center', 'VerticalAlignment', 'middle')


set(gca,'xticklabel',[])
set(gca,'yticklabel',[])
xlabel('');
