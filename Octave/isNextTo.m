function r=isNextTo(x,fila,columna);
  try
    if x(fila,columna)==x(fila,columna+1);
      r=1;
    elseif x(fila,columna)==x(fila,columna-1);
      r=1;
    else
      r=0;
    endif
  catch
    if columna==1;
      r=0;
    elseif x(fila,columna)==x(fila,columna-1);
      r=1;
    else
      r=0;
    endif
  end_try_catch
endfunction
