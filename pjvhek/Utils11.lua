local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function() return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...) local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30) if (v1(v30,2)==81) then local v87=0;while true do if (v87==0) then v19=v0(v3(v30,1,1));return "";end end else local v88=v2(v0(v30,16));if v19 then local v107=0;local v108;while true do if (v107==1) then return v108;end if (v107==0) then v108=v5(v88,v19);v19=nil;v107=1;end end else return v88;end end end);local function v20(v31,v32,v33) if v33 then local v89=(v31/((5 -3)^(v32-(1 + 0))))%((5 -3)^(((v33-(1 -0)) -(v32-(878 -(282 + 595)))) + (1638 -(1523 + 114)))) ;return v89-(v89%(2 -1)) ;else local v90=((738 -(32 + 85)) -(555 + 64))^(v32-((914 + 18) -(857 + 74))) ;return (((v31%(v90 + v90))>=v90) and (569 -(367 + 201))) or (0 -0) ;end end local function v21() local v34=v1(v16,v18,v18);v18=v18 + 1 ;return v34;end local function v22() local v35,v36=v1(v16,v18,v18 + 1 + 1 );v18=v18 + (959 -(892 + 65)) ;return (v36 * (610 -354)) + v35 ;end local function v23() local v37=0 -0 ;local v38;local v39;local v40;local v41;while true do if (v37==((3 -2) -0)) then return (v41 * (16777566 -(87 + 263))) + (v40 * (65716 -(67 + (1065 -(802 + 150))))) + (v39 * ((505 -317) + 68)) + v38 ;end if (v37==(0 -0)) then v38,v39,v40,v41=v1(v16,v18,v18 + 3 );v18=v18 + 4 ;v37=1 + 0 ;end end end local function v24() local v42=v23();local v43=v23();local v44=1 -0 ;local v45=(v20(v43,1 + 0 ,1017 -(915 + 82) ) * ((5 -3)^32)) + v42 ;local v46=v20(v43,13 + 8 ,40 -9 );local v47=((v20(v43,(1657 -(145 + 293)) -(1069 + 118) )==(2 -(431 -(44 + 386)))) and  -(1487 -(998 + 488))) or (1 -0) ;if (v46==(0 + 0 + 0)) then if (v45==(0 -0)) then return v47 * (0 + 0) ;else local v109=791 -(368 + 423) ;while true do if (v109==(0 -(0 + 0))) then v46=19 -(10 + 8) ;v44=0 -0 ;break;end end end elseif (v46==(2489 -(416 + 26))) then return ((v45==(0 -0)) and (v47 * (1/((772 -(201 + 571)) + (1138 -(116 + 1022)))))) or (v47 * NaN) ;end return v8(v47,v46-(1809 -786) ) * (v44 + (v45/(2^52))) ;end local function v25(v48) local v49=0 -0 ;local v50;local v51;while true do if (v49==(2 + (1081 -(1020 + 60)))) then return v6(v51);end if (v49==(3 -2)) then v50=v3(v16,v18,(v18 + v48) -(3 -2) );v18=v18 + v48 ;v49=861 -(814 + 45) ;end if (v49==((1427 -(630 + 793)) -2)) then v51={};for v110=1 + 0 , #v50 do v51[v110]=v2(v1(v3(v50,v110,v110)));end v49=(6 -4) + 1 ;end if (v49==0) then v50=nil;if  not v48 then local v119=885 -(261 + 624) ;while true do if (v119==0) then v48=v23();if (v48==(0 -0)) then return "";end break;end end end v49=1;end end end local v26=v23;local function v27(...) return {...},v12("#",...);end local function v28() local v52=(function() return function(v91,v92,v93,v94,v95,v96,v97,v98,v99) local v100=(function() return 0;end)();local v91=(function() return;end)();local v92=(function() return;end)();while true do if (v100==0) then v91=(function() return 0 -0 ;end)();v92=(function() return nil;end)();v100=(function() return 3 -2 ;end)();end if (1==v100) then local v120=(function() return 0;end)();while true do if (v120==0) then while true do if (v91~=0) then else v92=(function() return v93();end)();if (v94(v92, #"}", #"}")==0) then local v126=(function() return 0;end)();local v127=(function() return;end)();local v128=(function() return;end)();local v129=(function() return;end)();local v130=(function() return;end)();while true do if (v126~=0) then else local v188=(function() return 867 -(550 + 317) ;end)();while true do if (v188~=(0 -0)) then else v127=(function() return 0;end)();v128=(function() return nil;end)();v188=(function() return 1;end)();end if (v188~=(1 -0)) then else v126=(function() return 2 -1 ;end)();break;end end end if (v126==(287 -(134 + 151))) then while true do if (v127==0) then local v208=(function() return 0;end)();local v209=(function() return;end)();while true do if (v208==0) then v209=(function() return 1665 -(970 + 695) ;end)();while true do if (v209==1) then v127=(function() return  #",";end)();break;end if (v209==0) then v128=(function() return v94(v92,3 -1 , #"19(");end)();v129=(function() return v94(v92, #"0313",1996 -(582 + 1408) );end)();v209=(function() return 3 -2 ;end)();end end break;end end end if ( #"\\"~=v127) then else local v210=(function() return 0 -0 ;end)();local v211=(function() return;end)();while true do if (0==v210) then v211=(function() return 0 -0 ;end)();while true do if (v211~=0) then else v130=(function() return {v95(),v95(),nil,nil};end)();if (v128==(0 -0)) then local v236=(function() return 0;end)();local v237=(function() return;end)();while true do if (v236==(241 -(187 + 54))) then v237=(function() return 780 -(162 + 618) ;end)();while true do if (v237==(0 + 0)) then v130[ #"xnx"]=(function() return v95();end)();v130[ #"http"]=(function() return v95();end)();break;end end break;end end elseif (v128== #"}") then v130[ #"xxx"]=(function() return v96();end)();elseif (v128==(2 + 0)) then v130[ #"gha"]=(function() return v96() -((3 -1)^16) ;end)();elseif (v128== #"-19") then local v244=(function() return 0 -0 ;end)();local v245=(function() return;end)();while true do if (v244==0) then v245=(function() return 0;end)();while true do if (v245==0) then v130[ #"-19"]=(function() return v96() -(2^(2 + 14)) ;end)();v130[ #".com"]=(function() return v95();end)();break;end end break;end end end v211=(function() return 1;end)();end if ((1637 -(1373 + 263))==v211) then v127=(function() return 1002 -(451 + 549) ;end)();break;end end break;end end end if (v127~=2) then else local v212=(function() return 0;end)();local v213=(function() return;end)();while true do if (v212~=0) then else v213=(function() return 0;end)();while true do if (v213~=(0 + 0)) then else if (v94(v129, #" ", #"|")== #",") then v130[2]=(function() return v97[v130[2]];end)();end if (v94(v129,2 -0 ,2 -0 )== #"\\") then v130[ #"-19"]=(function() return v97[v130[ #"91("]];end)();end v213=(function() return 1;end)();end if (v213~=1) then else v127=(function() return  #"xnx";end)();break;end end break;end end end if (v127== #"xxx") then if (v94(v129, #"91(", #"-19")== #"/") then v130[ #"asd1"]=(function() return v97[v130[ #"xnxx"]];end)();end v98[v99]=(function() return v130;end)();break;end end break;end if (v126~=1) then else local v189=(function() return 0;end)();while true do if (v189~=(1384 -(746 + 638))) then else v129=(function() return nil;end)();v130=(function() return nil;end)();v189=(function() return 1;end)();end if (v189~=1) then else v126=(function() return 1 + 1 ;end)();break;end end end end end break;end end return v91,v92,v93,v94,v95,v96,v97,v98,v99;end end end end end;end)();local v53=(function() return function(v101,v102,v103) local v104=(function() return 0;end)();while true do if (v104==(0 -0)) then local v121=(function() return 0;end)();local v122=(function() return;end)();while true do if (v121==(341 -(218 + 123))) then v122=(function() return 1581 -(1535 + 46) ;end)();while true do if (v122~=(0 + 0)) then else local v125=(function() return 0;end)();while true do if (v125==0) then v101[v102-#"|" ]=(function() return v103();end)();return v101,v102,v103;end end end end break;end end end end end;end)();local v54=(function() return {};end)();local v55=(function() return {};end)();local v56=(function() return {};end)();local v57=(function() return {v54,v55,nil,v56};end)();local v58=(function() return v23();end)();local v59=(function() return {};end)();for v67= #"<",v58 do local v68=(function() return 0 + 0 ;end)();local v69=(function() return;end)();local v70=(function() return;end)();while true do if (v68~=(560 -(306 + 254))) then else local v112=(function() return 0 + 0 ;end)();local v113=(function() return;end)();while true do if (0==v112) then v113=(function() return 0 -0 ;end)();while true do if (v113~=1) then else v68=(function() return 1;end)();break;end if (v113==(1467 -(899 + 568))) then v69=(function() return v21();end)();v70=(function() return nil;end)();v113=(function() return 1;end)();end end break;end end end if (v68==(1 + 0)) then if (v69== #":") then v70=(function() return v21()~=(0 -0) ;end)();elseif (v69==(605 -(268 + 335))) then v70=(function() return v24();end)();elseif (v69== #"19(") then v70=(function() return v25();end)();end v59[v67]=(function() return v70;end)();break;end end end v57[ #"91("]=(function() return v21();end)();for v71= #"{",v23() do FlatIdent_7F35E,Descriptor,v21,v20,v22,v23,v59,v54,v71=(function() return v52(FlatIdent_7F35E,Descriptor,v21,v20,v22,v23,v59,v54,v71);end)();end for v72= #"{",v23() do v55,v72,v28=(function() return v53(v55,v72,v28);end)();end return v57;end local function v29(v61,v62,v63) local v64=v61[(561 -270) -(60 + 230) ];local v65=v61[338 -(144 + 192) ];local v66=v61[575 -(426 + 146) ];return function(...) local v73=v64;local v74=v65;local v75=v66;local v76=v27;local v77=1 + 0 ;local v78= -(1457 -((688 -(183 + 223)) + 1174));local v79={};local v80={...};local v81=v12("#",...) -(2 -1) ;local v82={};local v83={};for v105=0 + 0 ,v81 do if ((4051>1796) and (v105>=v75)) then v79[v105-v75 ]=v80[v105 + 1 + 0 ];else v83[v105]=v80[v105 + (1025 -(706 + (386 -68))) ];end end local v84=(v81-v75) + 1 ;local v85;local v86;while true do local v106=(0 + 0) -0 ;while true do if (v106==(1252 -((1758 -1037) + 530))) then if ((1619<=3756) and (v86<=(1282 -(341 + 604 + 326)))) then if ((604==604) and (v86<=(12 -7))) then if ((v86<=(2 + 0)) or (4484==900)) then if (v86<=((1037 -(10 + 327)) -(189 + 82 + (767 -(118 + 220))))) then v63[v85[(288 -(175 + 110)) + 0 ]]=v83[v85[(3791 -2289) -(1408 + 92) ]];elseif (v86>(1087 -(461 + 625))) then v83[v85[5 -3 ]]=v62[v85[1291 -(993 + 295) ]];else v83[v85[7 -5 ]]=v83[v85[(4 -3) + 2 ]];end elseif (v86<=(1174 -(418 + 753))) then v63[v85[2 + 1 + 0 ]]=v83[v85[2]];elseif ((v86>((2656 -(503 + 1293)) -(564 + 292))) or (4459<=1113)) then for v190=v85[1 + 1 ],v85[8 -5 ] do v83[v190]=nil;end elseif ((3632>3398) and (v83[v85[1 + 1 ]]==v85[2 + 2 ])) then v77=v77 + (530 -(406 + (343 -220))) ;else v77=v85[479 -(41 + 435) ];end elseif ((4082<=4917) and (v86<=(1777 -(1749 + 20)))) then if (v86<=(3 + 2 + (4 -3))) then v83[v85[1127 -((2429 -(711 + 782)) + 189) ]]=v63[v85[1 + 2 ]];elseif (v86>(2 + 5)) then v83[v85[1324 -(1249 + 73) ]]=v85[2 + 1 ];else local v165=v85[1147 -((893 -427) + (1148 -(270 + 199))) ];v83[v165](v83[v165 + (2 -(1 + 0)) ]);end elseif (v86<=(25 -(6 + 10))) then local v137=v85[1902 -(106 + 1794) ];local v138={};for v146=(1820 -(580 + 1239)) + 0 , #v82 do local v147=v82[v146];for v166=0 + 0 , #v147 do local v167=v147[v166];local v168=v167[2 -1 ];local v169=v167[2 + 0 ];if ((v168==v83) and (v169>=v137)) then v138[v169]=v168[v169];v167[1]=v138;end end end elseif (v86==(35 -25)) then do return;end else local v170=v85[6 -4 ];v83[v170](v83[v170 + (2 -1) ]);end elseif ((4832>=1386) and (v86<=(131 -(4 + 110)))) then if ((137==137) and (v86<=(598 -(57 + 527)))) then if (v86<=((2500 -(810 + 251)) -(41 + 1386))) then v83[v85[(73 + 32) -(17 + 86) ]]=v62[v85[3 + 0 ]];elseif ((v86>(29 -16)) or (1570>=4332)) then v83[v85[(1 + 2) -1 ]]=v63[v85[8 -(14 -9) ]];else v83[v85[3 -(1 + 0) ]][v85[169 -(122 + 44) ]]=v83[v85[6 -2 ]];end elseif (v86<=((45 + 4) -34)) then if (v83[v85[2]]==v85[(23 + 592) -(602 + 9) ]) then v77=v77 + 1 + 0 + 0 ;else v77=v85[875 -(826 + 46) ];end elseif (v86==(3 + 13)) then v83[v85[3 -1 ]][v85[3]]=v83[v85[69 -(30 + 35) ]];else local v178=(533 -(43 + 490)) -0 ;local v179;local v180;local v181;while true do if (v178==0) then v179=v74[v85[3 + (0 -0) ]];v180=nil;v178=1258 -(1043 + 214) ;end if (v178==((5 + 2) -5)) then for v215=1213 -((1490 -(645 + 522)) + 889) ,v85[(743 -(711 + 22)) -6 ] do local v216=(2243 -1663) -(361 + 219) ;local v217;while true do if (v216==(320 -(53 + 267))) then v77=v77 + 1 + 0 ;v217=v73[v77];v216=414 -(15 + (1257 -(240 + 619))) ;end if ((983 -(18 + 964))==v216) then if (v217[3 -2 ]==(1 + 0)) then v181[v215-(1 + 0) ]={v83,v217[129 -(116 + 10) ]};else v181[v215-1 ]={v62,v217[741 -(542 + 196) ]};end v82[ #v82 + (1 -0) ]=v181;break;end end end v83[v85[5 -3 ]]=v29(v179,v180,v63);break;end if (v178==(1 + 0)) then v181={};v180=v10({},{__index=function(v218,v219) local v220=0 + 0 ;local v221;while true do if (v220==(0 + 0)) then v221=v181[v219];return v221[2 -1 ][v221[4 -2 ]];end end end,__newindex=function(v222,v223,v224) local v225=v181[v223];v225[1552 -(1126 + 425) ][v225[407 -(118 + 287) ]]=v224;end});v178=238 -(141 + 95) ;end end end elseif (v86<=(78 -58)) then if (v86<=(1139 -(118 + 1003))) then local v141=v74[v85[8 -5 ]];local v142;local v143={};v142=v10({},{__index=function(v148,v149) local v150=v143[v149];return v150[378 -(142 + 235) ][v150[9 -7 ]];end,__newindex=function(v151,v152,v153) local v154=v143[v152];v154[1 + 0 ][v154[979 -(553 + 424) ]]=v153;end});for v156=1 -0 ,v85[5 -1 ] do v77=v77 + 1 + 0 ;local v157=v73[v77];if (v157[1 + 0 + 0 ]==((506 -(351 + 154)) + 0)) then v143[v156-((1575 -(1281 + 293)) + 0) ]={v83,v157[2 + 1 ]};else v143[v156-(1 + 0) ]={v62,v157[6 -3 ]};end v82[ #v82 + 1 + 0 + 0 ]=v143;end v83[v85[9 -7 ]]=v29(v141,v142,v63);elseif (v86==(145 -(55 + 71))) then v77=v85[(12 -9) -0 ];else v83[v85[1792 -(573 + 1217) ]]=v85[(610 + 146) -(239 + 514) ];end elseif (v86<=(8 + 14)) then if (v86>(2 + 19)) then v77=v85[1332 -(797 + 227 + 305) ];else local v186=v85[2 + (0 -0) ];local v187={};for v194=1 + 0 , #v82 do local v195=v82[v194];for v202=(0 -0) -0 , #v195 do local v203=v195[v202];local v204=v203[1 -0 ];local v205=v203[1204 -(373 + 829) ];if (((v204==v83) and (v205>=v186)) or (4064<=1819)) then v187[v205]=v204[v205];v203[732 -(476 + 255) ]=v187;end end end end elseif ((v86==(1153 -(369 + 761))) or (4986<1574)) then for v196=v85[808 -(118 + 688) ],v85[2 + 1 ] do v83[v196]=nil;end else do return;end end v77=v77 + (1 -0) ;break;end if (v106==(0 -0)) then v85=v73[v77];v86=v85[(1978 -(404 + 1335)) -(64 + 174) ];v106=1 + 0 + 0 ;end end end end;end return v29(v28(),{},v17)(...);end return v15("LOL!083Q00028Q00026Q00F03F030A3Q00534C4153485F504A563103083Q002F70726F78696D6103F0012Q00417661696C61626C6520636F2Q6D616E64733A0A2F707278207061757365202Q2D205061757365732074686520726F746174696F6E2E0A2F707278206D6F6465202Q2D204368616E676573206D6F6465206F6620726F746174696F6E202853696E676C652D416F652D4175746F6D61746963292E0A2F70727820746F2Q676C6520632Q6F6C646F776E73202Q2D20546F2Q676C657320432Q6F6C646F776E732E0A2F70727820746F2Q676C6520646566656E7369766573202Q2D20546F2Q676C657320446566656E73697665732E0A2F70727820746F2Q676C6520706F74696F6E73202Q2D20546F2Q676C657320506F74696F6E732E0A2F70727820746F2Q676C6520637573746F6D31202Q2D20546F2Q676C657320637573746F6D3120746F2Q676C652E0A2F70727820746F2Q676C6520637573746F6D32202Q2D20546F2Q676C657320637573746F6D3220746F2Q676C652E0A2F707278206D656E75206D6F7573656F766572202Q2D20546F2Q676C6573204D6F7573656F76657220496E74652Q727570742E0A2F707278207265636F2Q6D656E64205370652Q6C4944202Q2D205370652Q6C71756520666561747572652E2057692Q6C20717565756520616E79205370652Q6C494420696E746F20726F746174696F6E207768656E20757365642061732061206D6163726F2E0A027Q0040030C3Q00536C617368436D644C6973742Q033Q0050525800303Q0012143Q00014Q0017000100033Q0026043Q0007000100010004133Q00070001001214000100014Q0017000200023Q0012143Q00023Q0026043Q0002000100020004133Q000200012Q0017000300033Q00260400010018000100010004133Q00180001001214000400013Q00260400040011000100020004133Q00110001001214000100023Q0004133Q001800010026040004000D000100010004133Q000D0001001214000500043Q00122Q000500033Q001214000200053Q001214000400023Q0004133Q000D000100260400010026000100020004133Q00260001001214000400013Q00260400040021000100010004133Q002100012Q0017000300033Q00061200033Q000100012Q00013Q00023Q001214000400023Q0026040004001B000100020004133Q001B0001001214000100063Q0004133Q002600010004133Q001B00010026040001000A000100060004133Q000A0001001206000400073Q002Q100004000800030004133Q002E00010004133Q000A00010004133Q002E00010004133Q000200012Q00158Q00183Q00013Q00013Q00033Q0003043Q0068656C7003053Q007072696E7403383Q00556E6B6E6F776E20636F2Q6D616E642E2055736520272F7072782068656C702720666F7220617661696C61626C6520636F2Q6D616E64732E020A3Q0026043Q0006000100010004133Q00060001001206000200024Q000200036Q000B0002000200010004133Q00090001001206000200023Q001214000300034Q000B0002000200012Q00183Q00017Q00",v9(),...);