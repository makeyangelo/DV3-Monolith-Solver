%Si probas M2 en main da 24 grupos, 1 por cada "insterseccion", un total de 232 filas
%Idealmente debería de resultar 25 filas, 1 grupo.
%El problema probablemente esta en que hay mas de 1 intersección por grupo,
%Posible solución: Cambiar el codigo para usar while(not(isempty())) en vez de for loops
%Dentro de separateRest hay un ejemplo que podría ser util
%Hacer pruebas con M3, el cual es una modificación de M
function [group]=combine(a,b)
  %Idea: Meter todos los grupos en una sola matriz x,2 donde cada grupo esta separado por un separador, ie 0
  group=[];
  rowsA=rows(a);
  rowsB=rows(b);
  newA=a;
  newB=b;
  removeA=[];
  removeB=[];
  for i=1:rowsA; %Go through all of a to try for intersections
    inter=[];
    boolList=a(i,:)==b;
    for j=1:rows(boolList); %Find an intesection, add both intesrsected groups together and see which entires we've already used
      subV=[];
      if rowAnd(boolList(j,:))
        inter=[b(j,:)];
        
        
        for c=1:rowsA;
          if a(c,1)==inter(1,1);
            subV=[subV; a(c,:)];
            removeA=[removeA,c];
          endif
        endfor
        
        for c=1:rowsB;
          if b(c,2)==inter(1,2);
            subV=[subV; b(c,:)];
            removeB=[removeB,c];
          endif
        endfor
        
        
        group=[group;unique(subV,'rows'); 0 0];
      endif
    endfor
  
  endfor
  
  %now we remove what we've already used from A and B and add it to groups.
  
  newA(removeA,:)=[];
  newB(removeB,:)=[];
  %It is posible for newA or B to be empty so account for that, also note that
  %in newA groups will have the same row, whilst in B they'll have the same column.
  
  if not(isempty(newA));
    group=[group;separateRest(newA,1);0 0];
  endif
  
  if not(isempty(newB));
    group=[group;separateRest(newB,2);0 0];
  endif
  
  
endfunction