% অবজেক্টিভ ফাংশন: Minimize Z = 5x + 6y
% শর্তসমূহ (Constraints):
% 4x + 7y >= 90
% 5x + 4y >= 120

% ১. গ্রাফিক্যাল প্লট (Feasible Region)
[x, y] = meshgrid(0:0.1:30, 0:0.1:35);
% শর্তগুলো সত্য হওয়ার অঞ্চল (এখানে >= শর্তের জন্য লজিক্যাল চেক)
cond = (4*x + 7*y >= 90) & (5*x + 4*y >= 120);

figure;
contourf(x, y, cond, [.5 .5], 'LineColor', 'none', 'FaceColor', 'yellow', 'FaceAlpha', 0.2);
hold on;
fimplicit(@(x,y) 4*x + 7*y - 90, [0 30 0 35], 'r', 'LineWidth', 2); % ভিটামিন X
fimplicit(@(x,y) 5*x + 4*y - 120, [0 30 0 35], 'g', 'LineWidth', 2); % মিনারেল Y

% ২. কর্নার পয়েন্ট নির্ধারণ
% গ্রাফ ও সমীকরণ সমাধান করে পাওয়া পয়েন্টগুলো:
% (0, 30), (24, 0) এবং ছেদবিন্দু (8.8, 7.8) প্রায়
points = [0, 30; 24, 0; 8.8, 7.8]; 
plot(points(:,1), points(:,2), 'bo', 'MarkerFaceColor', 'b');

grid on; xlabel('Food 1 (x)'); ylabel('Food 2 (y)');
legend('Feasible Region', '4x + 7y = 90', '5x + 4y = 120', 'Corner Points');
title('ভিটামিন ও মিনারেল সমস্যার সমাধান');

% ৩. Z এর মান নির্ণয় (Minimize Cost)
z = 5*points(:,1) + 6*points(:,2); 
results = table(points(:,1), points(:,2), z, 'VariableNames', {'x', 'y', 'Cost_Z'});
disp(results);

% ৪. সর্বনিম্ন খরচ খুঁজে বের করা
[minCost, idx] = min(results.Cost_Z);
fprintf('সর্বনিম্ন খরচ (Min Z) হলো: %.2f টাকা, যা পাওয়া যাবে (%0.1f, %0.1f) বিন্দুতে।\n', ...
    minCost, results.x(idx), results.y(idx));