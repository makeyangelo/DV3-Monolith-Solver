%clear ; close all; clc
function [poppable]= main(x)
  [horizontal vertical]=getHorVerGroups(x);
  poppable=combine(horizontal,vertical);
endfunction
