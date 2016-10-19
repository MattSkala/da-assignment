clear all, close all, clc
load('student_port_data.mat')

inputs = studentporpreprocessednormalized1(:,1:35);
targets = studentporpreprocessednormalized1(:,36);
targets_transformed = zeros(length(targets), 3);
% 
% for i = 1:length(targets)
%     if (targets(i) < 9.5) %0-9, FAIL
%         targets_transformed(i,1) = 1;
%         targets_transformed(i,2) = 0;
%         targets_transformed(i,3) = 0;
%         targets_transformed(i,4) = 0;
%         targets_transformed(i,5) = 0;
%         targets_transformed(i,6) = 0;
%     elseif (targets(i) >= 9.5) && (targets(i) < 11.5) %10-11 E/Sufficient
%         targets_transformed(i,1) = 0;
%         targets_transformed(i,2) = 1;
%         targets_transformed(i,3) = 0;
%         targets_transformed(i,4) = 0;
%         targets_transformed(i,5) = 0;
%         targets_transformed(i,6) = 0;
%     elseif (targets(i) >= 11.5) && (targets(i) < 13.5) %12-13 D/Satisf.
%         targets_transformed(i,1) = 0;
%         targets_transformed(i,2) = 0;
%         targets_transformed(i,3) = 1;
%         targets_transformed(i,4) = 0;
%         targets_transformed(i,5) = 0;
%         targets_transformed(i,6) = 0;
%     elseif (targets(i) >=13.5) && (targets(i) < 15.5) %14-15 C/Good
%         targets_transformed(i,1) = 0;
%         targets_transformed(i,2) = 0;
%         targets_transformed(i,3) = 0;
%         targets_transformed(i,4) = 1;
%         targets_transformed(i,5) = 0;
%         targets_transformed(i,6) = 0;
%     elseif (targets(i) >= 15.5) && (targets(i) < 17.5) %16-17 B/VeryGood!
%         targets_transformed(i,1) = 0;
%         targets_transformed(i,2) = 0;
%         targets_transformed(i,3) = 0;
%         targets_transformed(i,4) = 0;
%         targets_transformed(i,5) = 1;
%         targets_transformed(i,6) = 0;
%     elseif (targets(i) >17.5) && (targets(i) <= 20)  %A/Excellent
%         targets_transformed(i,1) = 0;
%         targets_transformed(i,2) = 0;
%         targets_transformed(i,3) = 0;
%         targets_transformed(i,4) = 0;
%         targets_transformed(i,5) = 0;
%         targets_transformed(i,6) = 1;
%     end
% end
for i = 1:length(targets)
    if (targets(i) < 9.5) %0-9, FAIL
        targets_transformed(i,1) = 1;
        targets_transformed(i,2) = 0;
        targets_transformed(i,3) = 0;
        targets_transformed(i,4) = 0;
        targets_transformed(i,5) = 0;
    elseif (targets(i) >= 9.5) && (targets(i) < 11.5) %10-11 E/Sufficient
        targets_transformed(i,1) = 0;
        targets_transformed(i,2) = 1;
        targets_transformed(i,3) = 0;
        targets_transformed(i,4) = 0;
        targets_transformed(i,5) = 0;
    elseif (targets(i) >= 11.5) && (targets(i) < 13.5) %12-13 D/Satisf.
        targets_transformed(i,1) = 0;
        targets_transformed(i,2) = 0;
        targets_transformed(i,3) = 1;
        targets_transformed(i,4) = 0;
        targets_transformed(i,5) = 0;
    elseif (targets(i) >=13.5) && (targets(i) < 15.5) %14-15 C/Good
        targets_transformed(i,1) = 0;
        targets_transformed(i,2) = 0;
        targets_transformed(i,3) = 0;
        targets_transformed(i,4) = 1;
        targets_transformed(i,5) = 0;

    elseif (targets(i) >15.5) && (targets(i) <= 20)  %A&B/Excellent&verygood
        targets_transformed(i,1) = 0;
        targets_transformed(i,2) = 0;
        targets_transformed(i,3) = 0;
        targets_transformed(i,4) = 0;
        targets_transformed(i,5) = 1;
    end
end
% for i = 1:length(targets)
%     if (targets(i) <= 5)
%         targets_transformed(i,1) = 1;
%         targets_transformed(i,2) = 0;
%         targets_transformed(i,3) = 0;
%         targets_transformed(i,4) = 0;
%     elseif (targets(i) >5) && (targets(i) <= 10)
%         targets_transformed(i,1) = 0;
%         targets_transformed(i,2) = 1;
%         targets_transformed(i,3) = 0;
%         targets_transformed(i,4) = 0;
%     elseif (targets(i) >10) && (targets(i) <= 15)
%         targets_transformed(i,1) = 0;
%         targets_transformed(i,2) = 0;
%         targets_transformed(i,3) = 1;
%         targets_transformed(i,4) = 0;
%     elseif (targets(i) >15) && (targets(i) <= 20)
%         targets_transformed(i,1) = 0;
%         targets_transformed(i,2) = 0;
%         targets_transformed(i,3) = 0;
%         targets_transformed(i,4) = 1;
%     end
% end
% 
% for i = 1:length(targets)
%     if (targets(i) <= 6)
%         targets_transformed(i,1) = 1;
%         targets_transformed(i,2) = 0;
%         targets_transformed(i,3) = 0;
%     elseif (targets(i) >6) && (targets(i) <= 13)
%         targets_transformed(i,1) = 0;
%         targets_transformed(i,2) = 1;
%         targets_transformed(i,3) = 0;
%     elseif (targets(i) >13) && (targets(i) <= 20)
%         targets_transformed(i,1) = 0;
%         targets_transformed(i,2) = 0;
%         targets_transformed(i,3) = 1;
%     end
% end
