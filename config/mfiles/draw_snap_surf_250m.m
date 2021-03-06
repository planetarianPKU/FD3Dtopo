% draw_snap_surf: Draw wavefield snapshot by using surf.

% Major ChangeLog:
%   2009-01-09 Wei Zhang
%     * Initial

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% $Date: 2008-04-27 17:31:28 -0400 (Sun, 27 Apr 2008) $
% $Revision: 469 $
% $LastChangedBy: zhangw $
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
addpath(genpath('/ssd/ashton/ANT/matlab'))
%path='/home/ashton/FD3Dtopo/FD3Dtopo-nonstaggered-090406/run/m.rainier'
%path='/ssd/ashton/ANT/Proj/m.rainier/iterative_models/crust1v5/ite_04/sim.station/UW.LON/fz'
path='.'
path
set_mfiles_path
[fnm_conf,dir_coord,dir_metric,dir_media,dir_source, ...
  dir_station,dir_out]=get_simul_path('root',path)

% ----------------------- parameter -----------------------
flag_overlap = 0;

flag_km=1;
flag_emlast=1;
flag_jetwr=1;
flag_light=1;

flag_print = 1;
flag_avi = 0;

varnm='Vz'; taut=0.5;
scl_daspect=[1 1 1];
%scl_daspect=[10 10 1];
scl_caxis=[-0.25 0.25];

%id = 1; subs=[1,1,1];subc=[-1,-1,1];subt=[1,1,1];
%id = 2; subs=[1,1,1];subc=[-1,1,-1];subt=[1,1,1];
%id = 3; subs=[1,1,1];subc=[1,-1,-1];subt=[1,1,1];
id = 2; subs=[1,1,1];subc=[-1,-1,1];subt=[1,1,1];
%n1=100; n2=5000; dn=100;
n1=1; n2=1000; dn=5;
%n1=1; n2=640; dn=2;

% -------------------- load data --------------------------
[snapinfo]=locate_snap(fnm_conf,id,'start',subs,'count',subc,'stride',subt);
%-- get coord data
[x,y,z]=gather_coord(snapinfo,'coorddir',dir_coord);
nx=size(x,1);ny=size(x,2);nz=size(x,3);

str_unit='m';
if flag_km
   x=x/1e3;y=y/1e3;z=z/1e3; str_unit='km';
end

% ----------------------- plot figure -----------------------------------
% -- create new window --
if flag_overlap==1
   hold on
else
   hid=figure;
   set(hid,'BackingStore','on');
   set(hid,'renderer','zbuffer');
   %set(hid,'menubar','none');
   set(gcf, 'PaperPositionMode', 'manual');
   set(gcf,'PaperUnits','points')
   set(gcf,'PaperPosition',[0 0 1024 768])
end

if flag_avi
   aviid = avifile(['snap_' num2str(id,'%3.3i') '_' varnm '.avi']);
end

% -- time loop --

for nlayer=n1:dn:n2

[v,t]=gather_snap(snapinfo,id,nlayer,varnm,'outdir',dir_out);
v=double(v);
disp([ '  draw ' num2str(nlayer) 'th layer(t=' num2str(t) ')']);

if flag_emlast
   sid=surf(squeeze(permute(x,[2 1 3])), ...
            squeeze(permute(y,[2 1 3])), ...
            squeeze(permute(z,[2 1 3])), ...
            squeeze(permute(v,[2 1 3])));
else
   sid=surf(flipdim(squeeze(permute(x,[2 1 3])),3), ...
            flipdim(squeeze(permute(y,[2 1 3])),3), ...
            flipdim(squeeze(permute(z,[2 1 3])),3), ...
            flipdim(squeeze(permute(v,[2 1 3])),3));
end

%set(sid,'DiffuseStrength',1.0,'SpecularStrength',0.2, ...
%    'SpecularExponent',50, ...
%    'SpecularColorReflectance',0.1)

%axis image
%shading interp;
shading flat;
if exist('scl_caxis'); caxis(scl_caxis); end
if exist('scl_daspect'); daspect(scl_daspect); end

if flag_jetwr; colormap(jetwr); end
if flag_light
   view(-40,35)
   set(gca,'box','off');
   camlight(0,10,'local');
   lighting phong
   %camlight
end

colorbar('vert')

titlestr=['Snapshot of ' varnm ' at ' ...
          '{\fontsize{16}{\bf ' ...
          num2str(double(t),'%07.3f') ...
          '}}s'];
title(titlestr)

drawnow
pause(taut);

if flag_print==1
   fnm_out=[varnm '_ndim',num2str(nlayer,'%5.5i')];
   set(gca,'FontName','FixedWidth');
   print(gcf,'-dpng',[fnm_out '.png']);
end

if flag_avi==1
   F = getframe(gca);
   aviid = addframe(aviid,F);
end

end

if flag_avi==1
   aviid = close(aviid);
end

