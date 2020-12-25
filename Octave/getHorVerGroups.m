function [group1 group2]=getHorVerGroups(x)
  number=2;
  group1=[];
  for i=1:rows(x);
    for j=1:columns(x);
      if (isNextTo(x,i,j));
        group1=[group1;i j];
      endif
    endfor
  endfor
  
    group2=[];
  for i=1:rows(x);
    for j=1:columns(x);
      if (isOverOrUnder(x,i,j));
        group2=[group2;i j];
      endif
    endfor
  endfor
  group2=sortrows(group2,2);
endfunction