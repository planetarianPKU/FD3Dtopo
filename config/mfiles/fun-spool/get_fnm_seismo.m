function [fnm_out]=get_fnm_seismo(pnm,n_i,n_j,n_k)

fnm_out=[pnm '/' 'seismo_mpi'  ...
         num2str(n_i,'%2.2i') ...
         num2str(n_j,'%2.2i') ...
         num2str(n_k,'%2.2i') ...
         '.nc'];
