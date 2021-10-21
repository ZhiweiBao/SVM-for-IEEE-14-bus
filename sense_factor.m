function [sense_fact] = sense_factor(h,i,j)

Y,Z = node_addmittance(h);

sense_fact = Y(i,j) + 


end

