function [r]=separateRest(x,RC)%RC=1 use rows or 2 for columns
  r=[];
  counter=0;
  while not(isempty(x));
    counter=counter+1;
    belongToGroup=find(x(:,RC)==counter);
    r=[r; x(belongToGroup,:)];
    x(belongToGroup,:)=[];
  endwhile
endfunction