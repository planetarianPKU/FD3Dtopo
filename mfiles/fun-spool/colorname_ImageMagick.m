function varargout = colormap_ImageMagick(varargin)
%
% colormap_ImageMagick: Generate colormap.
%
% Usage: cMap=colormap_ImageMagick(colorname)
%

% Major ChangeLog:
%   2009-01-09 Wei Zhang
%     * Added help information, but uncomplete.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% $Date: 2008-04-27 17:31:28 -0400 (Sun, 27 Apr 2008) $
% $Revision: 469 $
% $LastChangedBy: zhangw $
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

C.snow=[255,250,250];   %FFFAFA
C.snow1=[255,250,250];   %FFFAFA
C.snow2=[238,233,233];   %EEE9E9
C.RosyBrown1=[255,193,193];   %FFC1C1
C.RosyBrown2=[238,180,180];   %EEB4B4
C.snow3=[205,201,201];   %CDC9C9
C.LightCoral=[240,128,128];   %F08080
C.IndianRed1=[255,106,106];   %FF6A6A
C.RosyBrown3=[205,155,155];   %CD9B9B
C.IndianRed2=[238,99,99];   %EE6363
C.RosyBrown=[188,143,143];   %BC8F8F
C.brown1=[255,64,64];   %FF4040
C.firebrick1=[255,48,48];   %FF3030
C.brown2=[238,59,59];   %EE3B3B
C.IndianRed=[205,92,92];   %CD5C5C
C.IndianRed3=[205,85,85];   %CD5555
C.firebrick2=[238,44,44];   %EE2C2C
C.snow4=[139,137,137];   %8B8989
C.brown3=[205,51,51];   %CD3333
C.red=[255,0,0];   %FF0000
C.red1=[255,0,0];   %FF0000
C.RosyBrown4=[139,105,105];   %8B6969
C.firebrick3=[205,38,38];   %CD2626
C.red2=[238,0,0];   %EE0000
C.firebrick=[178,34,34];   %B22222
C.brown=[165,42,42];   %A52A2A
C.red3=[205,0,0];   %CD0000
C.IndianRed4=[139,58,58];   %8B3A3A
C.brown4=[139,35,35];   %8B2323
C.firebrick4=[139,26,26];   %8B1A1A
C.DarkRed=[139,0,0];   %8B0000
C.red4=[139,0,0];   %8B0000
C.maroon=[128,0,0];   %800000
C.LightPink1=[255,174,185];   %FFAEB9
C.LightPink3=[205,140,149];   %CD8C95
C.LightPink4=[139,95,101];   %8B5F65
C.LightPink2=[238,162,173];   %EEA2AD
C.LightPink=[255,182,193];   %FFB6C1
C.pink=[255,192,203];   %FFC0CB
C.crimson=[220,20,60];   %DC143C
C.pink1=[255,181,197];   %FFB5C5
C.pink2=[238,169,184];   %EEA9B8
C.pink3=[205,145,158];   %CD919E
C.pink4=[139,99,108];   %8B636C
C.PaleVioletRed4=[139,71,93];   %8B475D
C.PaleVioletRed=[219,112,147];   %DB7093
C.PaleVioletRed2=[238,121,159];   %EE799F
C.PaleVioletRed1=[255,130,171];   %FF82AB
C.PaleVioletRed3=[205,104,137];   %CD6889
C.LavenderBlush=[255,240,245];   %FFF0F5
C.LavenderBlush1=[255,240,245];   %FFF0F5
C.LavenderBlush3=[205,193,197];   %CDC1C5
C.LavenderBlush2=[238,224,229];   %EEE0E5
C.LavenderBlush4=[139,131,134];   %8B8386
C.maroon=[176,48,96];   %B03060
C.HotPink3=[205,96,144];   %CD6090
C.VioletRed3=[205,50,120];   %CD3278
C.VioletRed1=[255,62,150];   %FF3E96
C.VioletRed2=[238,58,140];   %EE3A8C
C.VioletRed4=[139,34,82];   %8B2252
C.HotPink2=[238,106,167];   %EE6AA7
C.HotPink1=[255,110,180];   %FF6EB4
C.HotPink4=[139,58,98];   %8B3A62
C.HotPink=[255,105,180];   %FF69B4
C.DeepPink=[255,20,147];   %FF1493
C.DeepPink1=[255,20,147];   %FF1493
C.DeepPink2=[238,18,137];   %EE1289
C.DeepPink3=[205,16,118];   %CD1076
C.DeepPink4=[139,10,80];   %8B0A50
C.maroon1=[255,52,179];   %FF34B3
C.maroon2=[238,48,167];   %EE30A7
C.maroon3=[205,41,144];   %CD2990
C.maroon4=[139,28,98];   %8B1C62
C.MediumVioletRed=[199,21,133];   %C71585
C.VioletRed=[208,32,144];   %D02090
C.orchid2=[238,122,233];   %EE7AE9
C.orchid=[218,112,214];   %DA70D6
C.orchid1=[255,131,250];   %FF83FA
C.orchid3=[205,105,201];   %CD69C9
C.orchid4=[139,71,137];   %8B4789
C.thistle1=[255,225,255];   %FFE1FF
C.thistle2=[238,210,238];   %EED2EE
C.plum1=[255,187,255];   %FFBBFF
C.plum2=[238,174,238];   %EEAEEE
C.thistle=[216,191,216];   %D8BFD8
C.thistle3=[205,181,205];   %CDB5CD
C.plum=[221,160,221];   %DDA0DD
C.violet=[238,130,238];   %EE82EE
C.plum3=[205,150,205];   %CD96CD
C.thistle4=[139,123,139];   %8B7B8B
C.fuchsia=[255,0,255];   %FF00FF
C.magenta=[255,0,255];   %FF00FF
C.magenta1=[255,0,255];   %FF00FF
C.plum4=[139,102,139];   %8B668B
C.magenta2=[238,0,238];   %EE00EE
C.magenta3=[205,0,205];   %CD00CD
C.DarkMagenta=[139,0,139];   %8B008B
C.magenta4=[139,0,139];   %8B008B
C.purple=[128,0,128];   %800080
C.MediumOrchid=[186,85,211];   %BA55D3
C.MediumOrchid1=[224,102,255];   %E066FF
C.MediumOrchid2=[209,95,238];   %D15FEE
C.MediumOrchid3=[180,82,205];   %B452CD
C.MediumOrchid4=[122,55,139];   %7A378B
C.DarkViolet=[148,0,211];   %9400D3
C.DarkOrchid=[153,50,204];   %9932CC
C.DarkOrchid1=[191,62,255];   %BF3EFF
C.DarkOrchid3=[154,50,205];   %9A32CD
C.DarkOrchid2=[178,58,238];   %B23AEE
C.DarkOrchid4=[104,34,139];   %68228B
C.purple=[160,32,240];   %A020F0
C.indigo=[75,0,130];   %4B0082
C.BlueViolet=[138,43,226];   %8A2BE2
C.purple2=[145,44,238];   %912CEE
C.purple3=[125,38,205];   %7D26CD
C.purple4=[85,26,139];   %551A8B
C.purple1=[155,48,255];   %9B30FF
C.MediumPurple=[147,112,219];   %9370DB
C.MediumPurple1=[171,130,255];   %AB82FF
C.MediumPurple2=[159,121,238];   %9F79EE
C.MediumPurple3=[137,104,205];   %8968CD
C.MediumPurple4=[93,71,139];   %5D478B
C.DarkSlateBlue=[72,61,139];   %483D8B
C.LightSlateBlue=[132,112,255];   %8470FF
C.MediumSlateBlue=[123,104,238];   %7B68EE
C.SlateBlue=[106,90,205];   %6A5ACD
C.SlateBlue1=[131,111,255];   %836FFF
C.SlateBlue2=[122,103,238];   %7A67EE
C.SlateBlue3=[105,89,205];   %6959CD
C.SlateBlue4=[71,60,139];   %473C8B
C.GhostWhite=[248,248,255];   %F8F8FF
C.lavender=[230,230,250];   %E6E6FA
C.blue=[0,0,255];   %0000FF
C.blue1=[0,0,255];   %0000FF
C.blue2=[0,0,238];   %0000EE
C.blue3=[0,0,205];   %0000CD
C.MediumBlue=[0,0,205];   %0000CD
C.blue4=[0,0,139];   %00008B
C.DarkBlue=[0,0,139];   %00008B
C.MidnightBlue=[25,25,112];   %191970
C.navy=[0,0,128];   %000080
C.NavyBlue=[0,0,128];   %000080
C.RoyalBlue=[65,105,225];   %4169E1
C.RoyalBlue1=[72,118,255];   %4876FF
C.RoyalBlue2=[67,110,238];   %436EEE
C.RoyalBlue3=[58,95,205];   %3A5FCD
C.RoyalBlue4=[39,64,139];   %27408B
C.CornflowerBlue=[100,149,237];   %6495ED
C.LightSteelBlue=[176,196,222];   %B0C4DE
C.LightSteelBlue1=[202,225,255];   %CAE1FF
C.LightSteelBlue2=[188,210,238];   %BCD2EE
C.LightSteelBlue3=[162,181,205];   %A2B5CD
C.LightSteelBlue4=[110,123,139];   %6E7B8B
C.SlateGray4=[108,123,139];   %6C7B8B
C.SlateGray1=[198,226,255];   %C6E2FF
C.SlateGray2=[185,211,238];   %B9D3EE
C.SlateGray3=[159,182,205];   %9FB6CD
C.LightSlateGray=[119,136,153];   %778899
C.LightSlateGrey=[119,136,153];   %778899
C.SlateGray=[112,128,144];   %708090
C.SlateGrey=[112,128,144];   %708090
C.DodgerBlue=[30,144,255];   %1E90FF
C.DodgerBlue1=[30,144,255];   %1E90FF
C.DodgerBlue2=[28,134,238];   %1C86EE
C.DodgerBlue4=[16,78,139];   %104E8B
C.DodgerBlue3=[24,116,205];   %1874CD
C.AliceBlue=[240,248,255];   %F0F8FF
C.SteelBlue4=[54,100,139];   %36648B
C.SteelBlue=[70,130,180];   %4682B4
C.SteelBlue1=[99,184,255];   %63B8FF
C.SteelBlue2=[92,172,238];   %5CACEE
C.SteelBlue3=[79,148,205];   %4F94CD
C.SkyBlue4=[74,112,139];   %4A708B
C.SkyBlue1=[135,206,255];   %87CEFF
C.SkyBlue2=[126,192,238];   %7EC0EE
C.SkyBlue3=[108,166,205];   %6CA6CD
C.LightSkyBlue=[135,206,250];   %87CEFA
C.LightSkyBlue4=[96,123,139];   %607B8B
C.LightSkyBlue1=[176,226,255];   %B0E2FF
C.LightSkyBlue2=[164,211,238];   %A4D3EE
C.LightSkyBlue3=[141,182,205];   %8DB6CD
C.SkyBlue=[135,206,235];   %87CEEB
C.LightBlue3=[154,192,205];   %9AC0CD
C.DeepSkyBlue=[0,191,255];   %00BFFF
C.DeepSkyBlue1=[0,191,255];   %00BFFF
C.DeepSkyBlue2=[0,178,238];   %00B2EE
C.DeepSkyBlue4=[0,104,139];   %00688B
C.DeepSkyBlue3=[0,154,205];   %009ACD
C.LightBlue1=[191,239,255];   %BFEFFF
C.LightBlue2=[178,223,238];   %B2DFEE
C.LightBlue=[173,216,230];   %ADD8E6
C.LightBlue4=[104,131,139];   %68838B
C.PowderBlue=[176,224,230];   %B0E0E6
C.CadetBlue1=[152,245,255];   %98F5FF
C.CadetBlue2=[142,229,238];   %8EE5EE
C.CadetBlue3=[122,197,205];   %7AC5CD
C.CadetBlue4=[83,134,139];   %53868B
C.turquoise1=[0,245,255];   %00F5FF
C.turquoise2=[0,229,238];   %00E5EE
C.turquoise3=[0,197,205];   %00C5CD
C.turquoise4=[0,134,139];   %00868B
%C.cadet=bluergb[95,158,160];
C.CadetBlue=[95,158,160];   %5F9EA0
C.DarkTurquoise=[0,206,209];   %00CED1
C.azure=[240,255,255];   %F0FFFF
C.azure1=[240,255,255];   %F0FFFF
C.LightCyan=[224,255,255];   %E0FFFF
C.LightCyan1=[224,255,255];   %E0FFFF
C.azure2=[224,238,238];   %E0EEEE
C.LightCyan2=[209,238,238];   %D1EEEE
C.PaleTurquoise1=[187,255,255];   %BBFFFF
C.PaleTurquoise=[175,238,238];   %AFEEEE
C.PaleTurquoise2=[174,238,238];   %AEEEEE
C.DarkSlateGray1=[151,255,255];   %97FFFF
C.azure3=[193,205,205];   %C1CDCD
C.LightCyan3=[180,205,205];   %B4CDCD
C.DarkSlateGray2=[141,238,238];   %8DEEEE
C.PaleTurquoise3=[150,205,205];   %96CDCD
C.DarkSlateGray3=[121,205,205];   %79CDCD
C.azure4=[131,139,139];   %838B8B
C.LightCyan4=[122,139,139];   %7A8B8B
C.aqua=[0,255,255];   %00FFFF
C.cyan=[0,255,255];   %00FFFF
C.cyan1=[0,255,255];   %00FFFF
C.PaleTurquoise4=[102,139,139];   %668B8B
C.cyan2=[0,238,238];   %00EEEE
C.DarkSlateGray4=[82,139,139];   %528B8B
C.cyan3=[0,205,205];   %00CDCD
C.cyan4=[0,139,139];   %008B8B
C.DarkCyan=[0,139,139];   %008B8B
C.teal=[0,128,128];   %008080
C.DarkSlateGray=[47,79,79];   %2F4F4F
C.DarkSlateGrey=[47,79,79];   %2F4F4F
C.MediumTurquoise=[72,209,204];   %48D1CC
C.LightSeaGreen=[32,178,170];   %20B2AA
C.turquoise=[64,224,208];   %40E0D0
C.aquamarine4=[69,139,116];   %458B74
C.aquamarine=[127,255,212];   %7FFFD4
C.aquamarine1=[127,255,212];   %7FFFD4
C.aquamarine2=[118,238,198];   %76EEC6
C.aquamarine3=[102,205,170];   %66CDAA
C.MediumAquamarine=[102,205,170];   %66CDAA
C.MediumSpringGreen=[0,250,154];   %00FA9A
C.MintCream=[245,255,250];   %F5FFFA
C.SpringGreen=[0,255,127];   %00FF7F
C.SpringGreen1=[0,255,127];   %00FF7F
C.SpringGreen2=[0,238,118];   %00EE76
C.SpringGreen3=[0,205,102];   %00CD66
C.SpringGreen4=[0,139,69];   %008B45
C.MediumSeaGreen=[60,179,113];   %3CB371
C.SeaGreen=[46,139,87];   %2E8B57
C.SeaGreen3=[67,205,128];   %43CD80
C.SeaGreen1=[84,255,159];   %54FF9F
C.SeaGreen4=[46,139,87];   %2E8B57
C.SeaGreen2=[78,238,148];   %4EEE94
C.MediumForestGreen=[50,129,75];   %32814B
C.honeydew=[240,255,240];   %F0FFF0
C.honeydew1=[240,255,240];   %F0FFF0
C.honeydew2=[224,238,224];   %E0EEE0
C.DarkSeaGreen1=[193,255,193];   %C1FFC1
C.DarkSeaGreen2=[180,238,180];   %B4EEB4
C.PaleGreen1=[154,255,154];   %9AFF9A
C.PaleGreen=[152,251,152];   %98FB98
C.honeydew3=[193,205,193];   %C1CDC1
C.LightGreen=[144,238,144];   %90EE90
C.PaleGreen2=[144,238,144];   %90EE90
C.DarkSeaGreen3=[155,205,155];   %9BCD9B
C.DarkSeaGreen=[143,188,143];   %8FBC8F
C.PaleGreen3=[124,205,124];   %7CCD7C
C.honeydew4=[131,139,131];   %838B83
C.green1=[0,255,0];   %00FF00
C.lime=[0,255,0];   %00FF00
C.LimeGreen=[50,205,50];   %32CD32
C.DarkSeaGreen4=[105,139,105];   %698B69
C.green2=[0,238,0];   %00EE00
C.PaleGreen4=[84,139,84];   %548B54
C.green3=[0,205,0];   %00CD00
C.ForestGreen=[34,139,34];   %228B22
C.green4=[0,139,0];   %008B00
C.green=[0,128,0];   %008000
C.DarkGreen=[0,100,0];   %006400
C.LawnGreen=[124,252,0];   %7CFC00
C.chartreuse=[127,255,0];   %7FFF00
C.chartreuse1=[127,255,0];   %7FFF00
C.chartreuse2=[118,238,0];   %76EE00
C.chartreuse3=[102,205,0];   %66CD00
C.chartreuse4=[69,139,0];   %458B00
C.GreenYellow=[173,255,47];   %ADFF2F
C.DarkOliveGreen3=[162,205,90];   %A2CD5A
C.DarkOliveGreen1=[202,255,112];   %CAFF70
C.DarkOliveGreen2=[188,238,104];   %BCEE68
C.DarkOliveGreen4=[110,139,61];   %6E8B3D
C.DarkOliveGreen=[85,107,47];   %556B2F
C.OliveDrab=[107,142,35];   %6B8E23
C.OliveDrab1=[192,255,62];   %C0FF3E
C.OliveDrab2=[179,238,58];   %B3EE3A
C.OliveDrab3=[154,205,50];   %9ACD32
C.YellowGreen=[154,205,50];   %9ACD32
C.OliveDrab4=[105,139,34];   %698B22
C.ivory=[255,255,240];   %FFFFF0
C.ivory1=[255,255,240];   %FFFFF0
C.LightYellow=[255,255,224];   %FFFFE0
C.LightYellow1=[255,255,224];   %FFFFE0
C.beige=[245,245,220];   %F5F5DC
C.ivory2=[238,238,224];   %EEEEE0
C.LightGoldenrodYellow=[250,250,210];   %FAFAD2
C.LightYellow2=[238,238,209];   %EEEED1
C.ivory3=[205,205,193];   %CDCDC1
C.LightYellow3=[205,205,180];   %CDCDB4
C.ivory4=[139,139,131];   %8B8B83
C.LightYellow4=[139,139,122];   %8B8B7A
C.yellow=[255,255,0];   %FFFF00
C.yellow1=[255,255,0];   %FFFF00
C.yellow2=[238,238,0];   %EEEE00
C.yellow3=[205,205,0];   %CDCD00
C.yellow4=[139,139,0];   %8B8B00
C.olive=[128,128,0];   %808000
C.DarkKhaki=[189,183,107];   %BDB76B
C.khaki2=[238,230,133];   %EEE685
C.LemonChiffon4=[139,137,112];   %8B8970
C.khaki1=[255,246,143];   %FFF68F
C.khaki3=[205,198,115];   %CDC673
C.khaki4=[139,134,78];   %8B864E
C.PaleGoldenrod=[238,232,170];   %EEE8AA
C.LemonChiffon=[255,250,205];   %FFFACD
C.LemonChiffon1=[255,250,205];   %FFFACD
C.khaki=[240,230,140];   %F0E68C
C.LemonChiffon3=[205,201,165];   %CDC9A5
C.LemonChiffon2=[238,233,191];   %EEE9BF
C.MediumGoldenRod=[209,193,102];   %D1C166
C.cornsilk4=[139,136,120];   %8B8878
C.gold=[255,215,0];   %FFD700
C.gold1=[255,215,0];   %FFD700
C.gold2=[238,201,0];   %EEC900
C.gold3=[205,173,0];   %CDAD00
C.gold4=[139,117,0];   %8B7500
C.LightGoldenrod=[238,221,130];   %EEDD82
C.LightGoldenrod4=[139,129,76];   %8B814C
C.LightGoldenrod1=[255,236,139];   %FFEC8B
C.LightGoldenrod3=[205,190,112];   %CDBE70
C.LightGoldenrod2=[238,220,130];   %EEDC82
C.cornsilk3=[205,200,177];   %CDC8B1
C.cornsilk2=[238,232,205];   %EEE8CD
C.cornsilk=[255,248,220];   %FFF8DC
C.cornsilk1=[255,248,220];   %FFF8DC
C.goldenrod=[218,165,32];   %DAA520
C.goldenrod1=[255,193,37];   %FFC125
C.goldenrod2=[238,180,34];   %EEB422
C.goldenrod3=[205,155,29];   %CD9B1D
C.goldenrod4=[139,105,20];   %8B6914
C.DarkGoldenrod=[184,134,11];   %B8860B
C.DarkGoldenrod1=[255,185,15];   %FFB90F
C.DarkGoldenrod2=[238,173,14];   %EEAD0E
C.DarkGoldenrod3=[205,149,12];   %CD950C
C.DarkGoldenrod4=[139,101,8];   %8B6508
C.FloralWhite=[255,250,240];   %FFFAF0
C.wheat2=[238,216,174];   %EED8AE
C.OldLace=[253,245,230];   %FDF5E6
C.wheat=[245,222,179];   %F5DEB3
C.wheat1=[255,231,186];   %FFE7BA
C.wheat3=[205,186,150];   %CDBA96
C.orange=[255,165,0];   %FFA500
C.orange1=[255,165,0];   %FFA500
C.orange2=[238,154,0];   %EE9A00
C.orange3=[205,133,0];   %CD8500
C.orange4=[139,90,0];   %8B5A00
C.wheat4=[139,126,102];   %8B7E66
C.moccasin=[255,228,181];   %FFE4B5
C.PapayaWhip=[255,239,213];   %FFEFD5
C.NavajoWhite3=[205,179,139];   %CDB38B
C.BlanchedAlmond=[255,235,205];   %FFEBCD
C.NavajoWhite=[255,222,173];   %FFDEAD
C.NavajoWhite1=[255,222,173];   %FFDEAD
C.NavajoWhite2=[238,207,161];   %EECFA1
C.NavajoWhite4=[139,121,94];   %8B795E
C.AntiqueWhite4=[139,131,120];   %8B8378
C.AntiqueWhite=[250,235,215];   %FAEBD7
C.tan=[210,180,140];   %D2B48C
C.bisque4=[139,125,107];   %8B7D6B
C.burlywood=[222,184,135];   %DEB887
C.AntiqueWhite2=[238,223,204];   %EEDFCC
C.burlywood1=[255,211,155];   %FFD39B
C.burlywood3=[205,170,125];   %CDAA7D
C.burlywood2=[238,197,145];   %EEC591
C.AntiqueWhite1=[255,239,219];   %FFEFDB
C.burlywood4=[139,115,85];   %8B7355
C.AntiqueWhite3=[205,192,176];   %CDC0B0
C.DarkOrange=[255,140,0];   %FF8C00
C.bisque2=[238,213,183];   %EED5B7
C.bisque=[255,228,196];   %FFE4C4
C.bisque1=[255,228,196];   %FFE4C4
C.bisque3=[205,183,158];   %CDB79E
C.DarkOrange1=[255,127,0];   %FF7F00
C.linen=[250,240,230];   %FAF0E6
C.DarkOrange2=[238,118,0];   %EE7600
C.DarkOrange3=[205,102,0];   %CD6600
C.DarkOrange4=[139,69,0];   %8B4500
C.peru=[205,133,63];   %CD853F
C.tan1=[255,165,79];   %FFA54F
C.tan2=[238,154,73];   %EE9A49
C.tan3=[205,133,63];   %CD853F
C.tan4=[139,90,43];   %8B5A2B
C.PeachPuff=[255,218,185];   %FFDAB9
C.PeachPuff1=[255,218,185];   %FFDAB9
C.PeachPuff4=[139,119,101];   %8B7765
C.PeachPuff2=[238,203,173];   %EECBAD
C.PeachPuff3=[205,175,149];   %CDAF95
C.SandyBrown=[244,164,96];   %F4A460
C.seashell4=[139,134,130];   %8B8682
C.seashell2=[238,229,222];   %EEE5DE
C.seashell3=[205,197,191];   %CDC5BF
C.chocolate=[210,105,30];   %D2691E
C.chocolate1=[255,127,36];   %FF7F24
C.chocolate2=[238,118,33];   %EE7621
C.chocolate3=[205,102,29];   %CD661D
C.chocolate4=[139,69,19];   %8B4513
C.SaddleBrown=[139,69,19];   %8B4513
C.seashell=[255,245,238];   %FFF5EE
C.seashell1=[255,245,238];   %FFF5EE
C.sienna4=[139,71,38];   %8B4726
C.sienna=[160,82,45];   %A0522D
C.sienna1=[255,130,71];   %FF8247
C.sienna2=[238,121,66];   %EE7942
C.sienna3=[205,104,57];   %CD6839
C.LightSalmon3=[205,129,98];   %CD8162
C.LightSalmon=[255,160,122];   %FFA07A
C.LightSalmon1=[255,160,122];   %FFA07A
C.LightSalmon4=[139,87,66];   %8B5742
C.LightSalmon2=[238,149,114];   %EE9572
C.coral=[255,127,80];   %FF7F50
C.OrangeRed=[255,69,0];   %FF4500
C.OrangeRed1=[255,69,0];   %FF4500
C.OrangeRed2=[238,64,0];   %EE4000
C.OrangeRed3=[205,55,0];   %CD3700
C.OrangeRed4=[139,37,0];   %8B2500
C.DarkSalmon=[233,150,122];   %E9967A
C.salmon1=[255,140,105];   %FF8C69
C.salmon2=[238,130,98];   %EE8262
C.salmon3=[205,112,84];   %CD7054
C.salmon4=[139,76,57];   %8B4C39
C.coral1=[255,114,86];   %FF7256
C.coral2=[238,106,80];   %EE6A50
C.coral3=[205,91,69];   %CD5B45
C.coral4=[139,62,47];   %8B3E2F
C.tomato4=[139,54,38];   %8B3626
C.tomato=[255,99,71];   %FF6347
C.tomato1=[255,99,71];   %FF6347
C.tomato2=[238,92,66];   %EE5C42
C.tomato3=[205,79,57];   %CD4F39
C.MistyRose4=[139,125,123];   %8B7D7B
C.MistyRose2=[238,213,210];   %EED5D2
C.MistyRose=[255,228,225];   %FFE4E1
C.MistyRose1=[255,228,225];   %FFE4E1
C.salmon=[250,128,114];   %FA8072
C.MistyRose3=[205,183,181];   %CDB7B5
C.white=[255,255,255];   %FFFFFF
C.gray100=[255,255,255];   %FFFFFF
C.grey100=[255,255,255];   %FFFFFF
C.grey100=[255,255,255];   %FFFFFF
C.gray99=[252,252,252];   %FCFCFC
C.grey99=[252,252,252];   %FCFCFC
C.gray98=[250,250,250];   %FAFAFA
C.grey98=[250,250,250];   %FAFAFA
C.gray97=[247,247,247];   %F7F7F7
C.grey97=[247,247,247];   %F7F7F7
C.gray96=[245,245,245];   %F5F5F5
C.grey96=[245,245,245];   %F5F5F5
C.WhiteSmoke=[245,245,245];   %F5F5F5
C.gray95=[242,242,242];   %F2F2F2
C.grey95=[242,242,242];   %F2F2F2
C.gray94=[240,240,240];   %F0F0F0
C.grey94=[240,240,240];   %F0F0F0
C.gray93=[237,237,237];   %EDEDED
C.grey93=[237,237,237];   %EDEDED
C.gray92=[235,235,235];   %EBEBEB
C.grey92=[235,235,235];   %EBEBEB
C.gray91=[232,232,232];   %E8E8E8
C.grey91=[232,232,232];   %E8E8E8
C.gray90=[229,229,229];   %E5E5E5
C.grey90=[229,229,229];   %E5E5E5
C.gray89=[227,227,227];   %E3E3E3
C.grey89=[227,227,227];   %E3E3E3
C.gray88=[224,224,224];   %E0E0E0
C.grey88=[224,224,224];   %E0E0E0
C.gray87=[222,222,222];   %DEDEDE
C.grey87=[222,222,222];   %DEDEDE
C.gainsboro=[220,220,220];   %DCDCDC
C.gray86=[219,219,219];   %DBDBDB
C.grey86=[219,219,219];   %DBDBDB
C.gray85=[217,217,217];   %D9D9D9
C.grey85=[217,217,217];   %D9D9D9
C.gray84=[214,214,214];   %D6D6D6
C.grey84=[214,214,214];   %D6D6D6
C.gray83=[212,212,212];   %D4D4D4
C.grey83=[212,212,212];   %D4D4D4
C.LightGray=[211,211,211];   %D3D3D3
C.LightGrey=[211,211,211];   %D3D3D3
C.gray82=[209,209,209];   %D1D1D1
C.grey82=[209,209,209];   %D1D1D1
C.gray81=[207,207,207];   %CFCFCF
C.grey81=[207,207,207];   %CFCFCF
C.gray80=[204,204,204];   %CCCCCC
C.grey80=[204,204,204];   %CCCCCC
C.gray79=[201,201,201];   %C9C9C9
C.grey79=[201,201,201];   %C9C9C9
C.gray78=[199,199,199];   %C7C7C7
C.grey78=[199,199,199];   %C7C7C7
C.gray77=[196,196,196];   %C4C4C4
C.grey77=[196,196,196];   %C4C4C4
C.gray76=[194,194,194];   %C2C2C2
C.grey76=[194,194,194];   %C2C2C2
C.silver=[192,192,192];   %C0C0C0
C.gray75=[191,191,191];   %BFBFBF
C.grey75=[191,191,191];   %BFBFBF
C.gray=[190,190,190];   %BEBEBE
C.grey=[190,190,190];   %BEBEBE
C.gray74=[189,189,189];   %BDBDBD
C.grey74=[189,189,189];   %BDBDBD
C.gray73=[186,186,186];   %BABABA
C.grey73=[186,186,186];   %BABABA
C.gray72=[184,184,184];   %B8B8B8
C.grey72=[184,184,184];   %B8B8B8
C.gray71=[181,181,181];   %B5B5B5
C.grey71=[181,181,181];   %B5B5B5
C.gray70=[179,179,179];   %B3B3B3
C.grey70=[179,179,179];   %B3B3B3
C.gray69=[176,176,176];   %B0B0B0
C.grey69=[176,176,176];   %B0B0B0
C.gray68=[173,173,173];   %ADADAD
C.grey68=[173,173,173];   %ADADAD
C.gray67=[171,171,171];   %ABABAB
C.grey67=[171,171,171];   %ABABAB
C.DarkGray=[169,169,169];   %A9A9A9
C.DarkGrey=[169,169,169];   %A9A9A9
C.gray66=[168,168,168];   %A8A8A8
C.grey66=[168,168,168];   %A8A8A8
C.gray65=[166,166,166];   %A6A6A6
C.grey65=[166,166,166];   %A6A6A6
C.gray64=[163,163,163];   %A3A3A3
C.grey64=[163,163,163];   %A3A3A3
C.gray63=[161,161,161];   %A1A1A1
C.grey63=[161,161,161];   %A1A1A1
C.gray62=[158,158,158];   %9E9E9E
C.grey62=[158,158,158];   %9E9E9E
C.gray61=[156,156,156];   %9C9C9C
C.grey61=[156,156,156];   %9C9C9C
C.gray60=[153,153,153];   %999999
C.grey60=[153,153,153];   %999999
C.gray59=[150,150,150];   %969696
C.grey59=[150,150,150];   %969696
C.gray58=[148,148,148];   %949494
C.grey58=[148,148,148];   %949494
C.gray57=[145,145,145];   %919191
C.grey57=[145,145,145];   %919191
C.gray56=[143,143,143];   %8F8F8F
C.grey56=[143,143,143];   %8F8F8F
C.gray55=[140,140,140];   %8C8C8C
C.grey55=[140,140,140];   %8C8C8C
C.gray54=[138,138,138];   %8A8A8A
C.grey54=[138,138,138];   %8A8A8A
C.gray53=[135,135,135];   %878787
C.grey53=[135,135,135];   %878787
C.gray52=[133,133,133];   %858585
C.grey52=[133,133,133];   %858585
C.gray51=[130,130,130];   %828282
C.grey51=[130,130,130];   %828282
C.fractal=[128,128,128];   %808080
C.gray50=[127,127,127];   %7F7F7F
C.grey50=[127,127,127];   %7F7F7F
C.gray=[126,126,126];   %7E7E7E
C.gray49=[125,125,125];   %7D7D7D
C.grey49=[125,125,125];   %7D7D7D
C.gray48=[122,122,122];   %7A7A7A
C.grey48=[122,122,122];   %7A7A7A
C.gray47=[120,120,120];   %787878
C.grey47=[120,120,120];   %787878
C.gray46=[117,117,117];   %757575
C.grey46=[117,117,117];   %757575
C.gray45=[115,115,115];   %737373
C.grey45=[115,115,115];   %737373
C.gray44=[112,112,112];   %707070
C.grey44=[112,112,112];   %707070
C.gray43=[110,110,110];   %6E6E6E
C.grey43=[110,110,110];   %6E6E6E
C.gray42=[107,107,107];   %6B6B6B
C.grey42=[107,107,107];   %6B6B6B
C.DimGray=[105,105,105];   %696969
C.DimGrey=[105,105,105];   %696969
C.gray41=[105,105,105];   %696969
C.grey41=[105,105,105];   %696969
C.gray40=[102,102,102];   %666666
C.grey40=[102,102,102];   %666666
C.gray39=[99,99,99];   %636363
C.grey39=[99,99,99];   %636363
C.gray38=[97,97,97];   %616161
C.grey38=[97,97,97];   %616161
C.gray37=[94,94,94];   %5E5E5E
C.grey37=[94,94,94];   %5E5E5E
C.gray36=[92,92,92];   %5C5C5C
C.grey36=[92,92,92];   %5C5C5C
C.gray35=[89,89,89];   %595959
C.grey35=[89,89,89];   %595959
C.gray34=[87,87,87];   %575757
C.grey34=[87,87,87];   %575757
C.gray33=[84,84,84];   %545454
C.grey33=[84,84,84];   %545454
C.gray32=[82,82,82];   %525252
C.grey32=[82,82,82];   %525252
C.gray31=[79,79,79];   %4F4F4F
C.grey31=[79,79,79];   %4F4F4F
C.gray30=[77,77,77];   %4D4D4D
C.grey30=[77,77,77];   %4D4D4D
C.gray29=[74,74,74];   %4A4A4A
C.grey29=[74,74,74];   %4A4A4A
C.gray28=[71,71,71];   %474747
C.grey28=[71,71,71];   %474747
C.gray27=[69,69,69];   %454545
C.grey27=[69,69,69];   %454545
C.gray26=[66,66,66];   %424242
C.grey26=[66,66,66];   %424242
C.gray25=[64,64,64];   %404040
C.grey25=[64,64,64];   %404040
C.gray24=[61,61,61];   %3D3D3D
C.grey24=[61,61,61];   %3D3D3D
C.gray23=[59,59,59];   %3B3B3B
C.grey23=[59,59,59];   %3B3B3B
C.gray22=[56,56,56];   %383838
C.grey22=[56,56,56];   %383838
C.gray21=[54,54,54];   %363636
C.grey21=[54,54,54];   %363636
C.gray20=[51,51,51];   %333333
C.grey20=[51,51,51];   %333333
C.gray19=[48,48,48];   %303030
C.grey19=[48,48,48];   %303030
C.gray18=[46,46,46];   %2E2E2E
C.grey18=[46,46,46];   %2E2E2E
C.gray17=[43,43,43];   %2B2B2B
C.grey17=[43,43,43];   %2B2B2B
C.gray16=[41,41,41];   %292929
C.grey16=[41,41,41];   %292929
C.gray15=[38,38,38];   %262626
C.grey15=[38,38,38];   %262626
C.gray14=[36,36,36];   %242424
C.grey14=[36,36,36];   %242424
C.gray13=[33,33,33];   %212121
C.grey13=[33,33,33];   %212121
C.gray12=[31,31,31];   %1F1F1F
C.grey12=[31,31,31];   %1F1F1F
C.gray11=[28,28,28];   %1C1C1C
C.grey11=[28,28,28];   %1C1C1C
C.gray10=[26,26,26];   %1A1A1A
C.grey10=[26,26,26];   %1A1A1A
C.gray9=[23,23,23];   %171717
C.grey9=[23,23,23];   %171717
C.gray8=[20,20,20];   %141414
C.grey8=[20,20,20];   %141414
C.gray7=[18,18,18];   %121212
C.grey7=[18,18,18];   %121212
C.gray6=[15,15,15];   %0F0F0F
C.grey6=[15,15,15];   %0F0F0F
C.gray5=[13,13,13];   %0D0D0D
C.grey5=[13,13,13];   %0D0D0D
C.gray4=[10,10,10];   %0A0A0A
C.grey4=[10,10,10];   %0A0A0A
C.gray3=[8,8,8];   %080808
C.grey3=[8,8,8];   %080808
C.gray2=[5,5,5];   %050505
C.grey2=[5,5,5];   %050505
C.gray1=[3,3,3];   %030303
C.grey1=[3,3,3];   %030303
C.black=[0,0,0];   %000000
C.gray0=[0,0,0];   %000000
C.grey0=[0,0,0];   %000000
C.opaque=[0,0,0];   %000000
%C.none=[0,0,0,1.0];   %00000000
%C.transparent=[0,0,0,1.0];   %00000000

if strcmp(varargin{1},'all')
   varargout{1}=C;
   return;
end

if strcmp(varargin{1},'print')
   nm=fieldnames(C);
   N=numel(nm);
   %ni=34; nj=20;
   %ni=34; nj=15;
   %ni=14; nj=34;
   ni=10; nj=47;
   n=0;
   for j=1:nj
   for i=1:ni
       n=n+1;
       if n<=N
          d(j,i)=1;
          sdata{j,i}=nm{n};
          cdata(j,i,1:3)=getfield(C,nm{n})/255;
       end
   end
   end
   d(end+1,:)=d(end,:); d(:,end+1)=d(:,end);
   cdata(end+1,:,:)=cdata(end,:,:); cdata(:,end+1,:)=cdata(:,end,:);
   figure; set(gcf,'renderer','zbuffer');
   h=pcolor(d); set(h,'cdata',cdata);
   for j=1:nj
   for i=1:ni
       text(i+0.1,j+0.4,sdata{j,i});
   end
   end
   %keyboard
   return;
end

for n=1:nargin
    if ~ischar(varargin{n}), error([mfilename ': only color name accepted']);end
    if ~isfield(C,varargin{n}), error([mfilename ': color ' varargin{n} ' does not exist']);end
    varargout{n}=getfield(C,varargin{n})/255;
end
