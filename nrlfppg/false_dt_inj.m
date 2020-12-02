
function [busd, xxx] = false_dt_inj(busd)

[row column] = size(busd);                                      %size of bus
chosen_column = randi([3,3],1,1);                               %coloumn choose random
range = max(abs(busd(:,chosen_column))) ;                    %range set
chosen_row = randi([1,row],1,1);                                %row choose                                              %random value
busd(chosen_row,chosen_column) = range*randi([1,2]);           %random value
xxx = chosen_row;
end