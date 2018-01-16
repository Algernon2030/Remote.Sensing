%% compare between MDC and MVC algorithm
    clear all
    % generate true W, H, V
    sampleNum = 900;
    noiseLevel = 0.2;
    bandNum = 4;
    endNum = 4;
    
    % compare several times
    HTrue = abs( randn( endNum, bandNum ) );
    V = create4(sampleNum, HTrue);
    
    % run Nfindr
    indxNfindr = nFindr(V, endNum);
    HNfindr = V(indxNfindr, :);
    
    % visualize result
    figure;
    hold on
    scatter3(V(:,1), V(:,2), V(:, 3),  'x');
    scatter3(HTrue(:, 1), HTrue(:, 2), HTrue(:, 3),  'filled', 'r');
    %scatter3(HNfindr(:, 1), HNfindr(:, 2), HNfindr(:, 3), 'filled', 'k')
    xlabel('����1')
    ylabel('����2')
    zlabel('����3')
    legend('�߹�������', '��ʵ��Ԫ', '��ȡ�Ķ�Ԫ')
    grid on