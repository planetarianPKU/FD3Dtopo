function sid=vef_slice(x,y,z,v,sx,sy,sz)

sid=slice(x,y,z,v,sx,sy,sz);
set(sid,'DiffuseStrength',1.0,'SpecularStrength',0.2, ...
    'SpecularExponent',50, ...
    'SpecularColorReflectance',0.1)