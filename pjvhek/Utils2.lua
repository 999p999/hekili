local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function() return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...) local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30) if (v1(v30,2)==81) then v19=v0(v3(v30,1,1));return "";else local v87=0;local v88;while true do if (v87==0) then v88=v2(v0(v30,16));if v19 then local v128=v5(v88,v19);v19=nil;return v128;else return v88;end break;end end end end);local function v20(v31,v32,v33) if v33 then local v89=0 -0 ;local v90;while true do if (v89==(0 -0)) then v90=(v31/(2^(v32-(1 -0))))%(((881 -(282 + 595)) -2)^(((v33-(620 -(555 + 64))) -(v32-1)) + (932 -(857 + 74)))) ;return v90-(v90%1) ;end end else local v91=(570 -(367 + 201))^(v32-(928 -(214 + 713))) ;return (((v31%(v91 + v91))>=v91) and (1 + 0)) or ((1637 -(1523 + 114)) + 0) ;end end local function v21() local v34=v1(v16,v18,v18);v18=v18 + 1 ;return v34;end local function v22() local v35=0 + 0 ;local v36;local v37;while true do if (v35==1) then return (v37 * (364 -108)) + v36 ;end if (v35==(1065 -(68 + 997))) then v36,v37=v1(v16,v18,v18 + (1272 -(226 + 1024 + 20)) );v18=v18 + (8 -6) ;v35=118 -(32 + 85) ;end end end local function v23() local v38,v39,v40,v41=v1(v16,v18,v18 + (351 -(87 + 263)) + 2 );v18=v18 + (961 -(892 + 65)) ;return (v41 * (40022563 -23245347)) + (v40 * (121138 -55602)) + (v39 * (469 -213)) + v38 ;end local function v24() local v42=0;local v43;local v44;local v45;local v46;local v47;local v48;while true do if (v42==(183 -(67 + 113))) then if (v47==(0 + 0)) then if (v46==0) then return v48 * (0 -0) ;else v47=1 + 0 ;v45=0 -0 ;end elseif (v47==((9575 -6576) -(802 + 65 + 85))) then return ((v46==0) and (v48 * ((2 -1)/(0 -0)))) or (v48 * NaN) ;end return v8(v48,v47-(745 + 278) ) * (v45 + (v46/(2^(1049 -(915 + 82))))) ;end if (v42==((0 -0) -0)) then v43=v23();v44=v23();v42=1 + 0 ;end if (v42==(2 -0)) then v47=v20(v44,21,1218 -((1507 -(145 + 293)) + 118) );v48=((v20(v44,72 -40 )==(1 -0)) and  -(1 + 0)) or (1 -0) ;v42=3 + (430 -(44 + 386)) ;end if (v42==(792 -((1854 -(998 + 488)) + 423))) then v45=3 -2 ;v46=(v20(v44,19 -(10 + 8) ,20) * (2^(122 -90))) + v43 ;v42=444 -(416 + 26) ;end end end local function v25(v49) local v50;if  not v49 then local v92=1138 -(116 + (1881 -(814 + 45))) ;while true do if (v92==(0 + 0)) then v49=v23();if (v49==((0 -0) + 0)) then return "";end break;end end end v50=v3(v16,v18,(v18 + v49) -((1 + 2) -2) );v18=v18 + v49 ;local v51={};for v68=773 -(72 + 129 + 571) , #v50 do v51[v68]=v2(v1(v3(v50,v68,v68)));end return v6(v51);end local v26=v23;local function v27(...) return {...},v12("#",...);end local function v28() local v52=(function() return function(v93,v94,v95,v96,v97,v98,v99,v100) local v93=(function() return 0 -0 ;end)();local v94=(function() return;end)();local v96=(function() return;end)();while true do if (v93==0) then local v123=(function() return 0;end)();local v124=(function() return;end)();while true do if (v123==0) then v124=(function() return 0;end)();while true do if ((0 -0)~=v124) then else v94=(function() return v95();end)();v96=(function() return nil;end)();v124=(function() return 1;end)();end if (v124==1) then v93=(function() return  #"!";end)();break;end end break;end end end if (v93== #",") then if (v94== #"~") then v96=(function() return v95()~=0 ;end)();elseif (v94==(1786 -(599 + 1185))) then v96=(function() return v97();end)();elseif (v94== #"-19") then v96=(function() return v98();end)();end v99[v100]=(function() return v96;end)();break;end end return v93,v94,v95,v96,v97,v98,v99,v100;end;end)();local v53=(function() return function(v101,v102,v103,v104,v105,v106,v107,v108,v109) local v110=(function() return 0 + 0 ;end)();local v101=(function() return;end)();local v102=(function() return;end)();while true do local v118=(function() return 0;end)();while true do if (v118~=0) then else if (v110~=1) then else local v129=(function() return 0;end)();while true do if (v129==(0 + 0)) then local v134=(function() return 574 -(507 + 67) ;end)();while true do if (v134==(1749 -(1013 + 736))) then while true do if (v101~=0) then else v102=(function() return v103();end)();if (v104(v102, #"~", #".")~=0) then else local v414=(function() return 0;end)();local v415=(function() return;end)();local v416=(function() return;end)();local v417=(function() return;end)();while true do if (v414==(0 + 0)) then local v506=(function() return 0;end)();local v507=(function() return;end)();while true do if (v506~=0) then else v507=(function() return 0;end)();while true do if (v507~=(2 -1)) then else v414=(function() return 3 -2 ;end)();break;end if (v507==0) then v415=(function() return v104(v102,869 -(550 + 317) , #"asd");end)();v416=(function() return v104(v102, #".dev",6);end)();v507=(function() return 1;end)();end end break;end end end if ((1 -0)==v414) then local v508=(function() return 0 -0 ;end)();while true do if (v508~=0) then else v417=(function() return {v105(),v105(),nil,nil};end)();if (v415==0) then local v527=(function() return 0;end)();local v528=(function() return;end)();while true do if (v527==0) then v528=(function() return 0;end)();while true do if (v528==0) then v417[ #"91("]=(function() return v105();end)();v417[ #"?id="]=(function() return v105();end)();break;end end break;end end elseif (v415== #"[") then v417[ #"19("]=(function() return v106();end)();elseif (v415==(5 -3)) then v417[ #"xxx"]=(function() return v106() -(2^(301 -(134 + 151))) ;end)();elseif (v415~= #"xnx") then else local v536=(function() return 1665 -(970 + 695) ;end)();local v537=(function() return;end)();while true do if ((0 -0)==v536) then v537=(function() return 1990 -(582 + 1408) ;end)();while true do if (v537==(0 -0)) then v417[ #"-19"]=(function() return v106() -((2 -0)^16) ;end)();v417[ #"0836"]=(function() return v105();end)();break;end end break;end end end v508=(function() return 1;end)();end if (v508~=1) then else v414=(function() return 2;end)();break;end end end if (v414==(11 -8)) then if (v104(v416, #"xxx", #"xnx")== #"/") then v417[ #"0836"]=(function() return v107[v417[ #"?id="]];end)();end v108[v109]=(function() return v417;end)();break;end if (v414==(1826 -(1195 + 629))) then if (v104(v416, #"{", #"}")== #",") then v417[2]=(function() return v107[v417[2 -0 ]];end)();end if (v104(v416,243 -(187 + 54) ,782 -(162 + 618) )~= #"\\") then else v417[ #"19("]=(function() return v107[v417[ #"19("]];end)();end v414=(function() return 3 + 0 ;end)();end end end break;end end return v101,v102,v103,v104,v105,v106,v107,v108,v109;end end end end end if (v110~=(0 + 0)) then else local v130=(function() return 0 -0 ;end)();local v131=(function() return;end)();while true do if (v130==0) then v131=(function() return 0 -0 ;end)();while true do if (v131==1) then v110=(function() return 1;end)();break;end if (0~=v131) then else v101=(function() return 0;end)();v102=(function() return nil;end)();v131=(function() return 1 + 0 ;end)();end end break;end end end break;end end end end;end)();local v54=(function() return function(v111,v112,v113) local v114=(function() return 1636 -(1373 + 263) ;end)();local v115=(function() return;end)();while true do if (0==v114) then v115=(function() return 1000 -(451 + 549) ;end)();while true do if ((0 + 0)~=v115) then else local v132=(function() return 0 -0 ;end)();local v133=(function() return;end)();while true do if (v132~=(0 -0)) then else v133=(function() return 0;end)();while true do if (v133==0) then v111[v112-#"!" ]=(function() return v113();end)();return v111,v112,v113;end end break;end end end end break;end end end;end)();local v55=(function() return {};end)();local v56=(function() return {};end)();local v57=(function() return {};end)();local v58=(function() return {v55,v56,nil,v57};end)();local v59=(function() return v23();end)();local v60=(function() return {};end)();for v70= #" ",v59 do FlatIdent_5431F,Type,v21,Cons,v24,v25,v60,v70=(function() return v52(FlatIdent_5431F,Type,v21,Cons,v24,v25,v60,v70);end)();end v58[ #"-19"]=(function() return v21();end)();for v71= #",",v23() do FlatIdent_86900,Descriptor,v21,v20,v22,v23,v60,v55,v71=(function() return v53(FlatIdent_86900,Descriptor,v21,v20,v22,v23,v60,v55,v71);end)();end for v72= #"\\",v23() do v56,v72,v28=(function() return v54(v56,v72,v28);end)();end return v58;end local function v29(v62,v63,v64) local v65=v62[1 + 0 ];local v66=v62[3 -1 ];local v67=v62[4 -1 ];return function(...) local v73=v65;local v74=v66;local v75=v67;local v76=v27;local v77=342 -(218 + 123) ;local v78= -(1582 -(1535 + (1095 -(572 + 477))));local v79={};local v80={...};local v81=v12("#",...) -(1 + 0 + 0) ;local v82={};local v83={};for v116=0,v81 do if (v116>=v75) then v79[v116-v75 ]=v80[v116 + (561 -(306 + 254)) ];else v83[v116]=v80[v116 + 1 ];end end local v84=(v81-v75) + 1 + 0 ;local v85;local v86;while true do local v117=0 -0 ;while true do if (v117==(1468 -(899 + 568))) then if (v86<=(14 + 6)) then if ((4563>=56) and (v86<=(21 -12))) then if (v86<=(607 -(161 + 107 + 335))) then if ((v86<=(291 -(60 + 230))) or (446==622)) then if ((2069>1009) and (2954==2954) and (v86>(572 -(426 + 146)))) then v83[v85[1 + 1 ]]=v63[v85[1459 -(282 + 1174) ]];else local v138=811 -(68 + 501 + (328 -(84 + 2))) ;local v139;while true do if (v138==0) then v139=v85[5 -3 ];v83[v139](v13(v83,v139 + 1 + 0 ,v85[1027 -((1163 -457) + 318) ]));break;end end end elseif ((12<4208) and (v86<=(1253 -(721 + 530)))) then v83[v85[1273 -(945 + 326) ]]=v64[v85[7 -4 ]];elseif (v86>(3 + 0 + (842 -(497 + 345)))) then local v221;local v222,v223;local v224;v83[v85[702 -(7 + 264 + 429) ]]=v85[1 + 2 + 0 ];v77=v77 + (1501 -(1408 + 92)) ;v85=v73[v77];v83[v85[(2421 -(605 + 728)) -(461 + 446 + 179) ]]=v64[v85[1291 -((2207 -1214) + 295) ]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[1 + 2 ];v77=v77 + ((54 + 1118) -((1545 -1127) + 753)) ;v85=v73[v77];v224=v85[2];v222,v223=v76(v83[v224](v83[v224 + 1 ]));v78=(v223 + v224) -(1 + 0) ;v221=0 + 0 ;for v309=v224,v78 do local v310=0 + 0 ;while true do if ((v310==((0 -0) + 0 + 0)) or (2990<=2980)) then v221=v221 + 1 + 0 ;v83[v309]=v222[v221];break;end end end v77=v77 + (530 -(406 + 123)) ;v85=v73[v77];v224=v85[2];v83[v224]=v83[v224](v13(v83,v224 + (1770 -(1749 + 20)) ,v78));v77=v77 + 1 + 0 ;v85=v73[v77];for v311=v85[1324 -(1249 + 73) ],v85[2 + 1 ] do v83[v311]=nil;end v77=v77 + 1 ;v85=v73[v77];v83[v85[1147 -(466 + (1168 -(457 + 32))) ]]=v85[3]~=(0 -0) ;else local v235=0;local v236;while true do if (((117<=2892) and (v235==0)) or (2575>=4275)) then v236=v85[5 -(2 + 1) ];v83[v236]=v83[v236](v13(v83,v236 + (1403 -(832 + 570)) ,v78));break;end end end elseif ((v86<=(1906 -(106 + 1691 + 103))) or (453>4662)) then if (v86==(2 + 3)) then v83[v85[2]][v85[1 + 2 ]]=v83[v85[11 -7 ]];else v83[v85[5 -3 ]]=v85[117 -(4 + 110) ];end elseif (v86<=(591 -(57 + 527))) then local v146=0;local v147;while true do if (((1320>595) and (v146==(1427 -(41 + 1386)))) or (3626<=1306)) then v147=v85[105 -(17 + 86) ];v83[v147]=v83[v147](v83[v147 + 1 + 0 ]);break;end end elseif ((v86>(3 + 5)) or (3199<590)) then local v237;local v238;v83[v85[3 -1 ]]=v85[8 -5 ];v77=v77 + (167 -(122 + 44)) ;v85=v73[v77];v238=v85[(6 -4) -0 ];v83[v238](v13(v83,v238 + (3 -2) ,v85[2 + 1 + 0 ]));v77=v77 + 1 + (796 -(588 + 208)) ;v85=v73[v77];v238=v85[2];v237=v83[v85[5 -2 ]];v83[v238 + 1 ]=v237;v83[v238]=v237[v85[4]];v77=v77 + (66 -((80 -50) + 35)) ;v85=v73[v77];v83[v85[2 + 0 ]]=v85[1260 -(1043 + 214) ];v77=v77 + (3 -2) ;v85=v73[v77];v238=v85[1214 -(323 + 889) ];v83[v238](v13(v83,v238 + 1 ,v85[3]));v77=v77 + (2 -1) ;v85=v73[v77];v238=v85[582 -(361 + 219) ];v237=v83[v85[1803 -(884 + 916) ]];v83[v238 + (321 -(53 + (558 -291))) ]=v237;v83[v238]=v237[v85[1 + 3 ]];v77=v77 + (414 -(15 + 398)) ;v85=v73[v77];v83[v85[2]]=v85[985 -(18 + 964) ];v77=v77 + (3 -2) ;v85=v73[v77];v238=v85[2 + 0 ];v83[v238](v13(v83,v238 + 1 ,v85[2 + 0 + 1 ]));v77=v77 + (851 -(20 + (1483 -(232 + 421)))) ;v85=v73[v77];v238=v85[2 + 0 ];v237=v83[v85[129 -(116 + 10) ]];v83[v238 + 1 + 0 ]=v237;v83[v238]=v237[v85[(2631 -(1569 + 320)) -(542 + 196) ]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[6 -3 ];else local v262;local v263;v263=v85[1 + 1 ];v262=v85[2 + 1 ];for v315=v263,v262 do v83[v315]=v79[v315-v263 ];end v77=v77 + 1 + 0 ;v85=v73[v77];v83[v85[4 -2 ]]=v83[v85[7 -4 ]][v85[(382 + 1173) -(1126 + 425) ]];v77=v77 + (406 -(118 + 287)) ;v85=v73[v77];v263=v85[7 -5 ];v262=v83[v85[1124 -(118 + 1003) ]];v83[v263 + (2 -1) ]=v262;v83[v263]=v262[v85[381 -(142 + 235) ]];v77=v77 + 1 ;v85=v73[v77];v263=v85[2];v83[v263]=v83[v263](v83[v263 + ((1 + 3) -3) ]);v77=v77 + 1 + 0 ;v85=v73[v77];if (v83[v85[979 -(553 + 424) ]] or (4793<30)) then v77=v77 + ((3 -2) -0) ;else v77=v85[3];end end elseif (v86<=(13 + 1)) then if (v86<=(11 + (605 -(316 + 289)))) then if ((v86>(6 + 4)) or (1696<=1059)) then local v148=0 + 0 ;local v149;local v150;while true do if ((1368<3780) and (v148==(5 + 3))) then v85=v73[v77];for v419=v85[2],v85[6 -3 ] do v83[v419]=nil;end v77=v77 + (2 -1) ;v85=v73[v77];v148=19 -10 ;end if ((2343==2343) and (v148==2)) then v83[v85[1 + 1 ]]=v85[7 -4 ];v77=v77 + (4 -3) ;v85=v73[v77];v83[v85[755 -(239 + 514) ]]=v85[2 + 1 ];v148=1332 -(797 + 532) ;end if (((0 + 0)==v148) or (3169==2273)) then v149=nil;v150=nil;v150=v85[1 + 1 ];v149=v83[v85[6 -3 ]];v148=1 + 0 ;end if ((2481<=3279) and ((1208 -(373 + 829))==v148)) then v83[v85[(2186 -(666 + 787)) -(476 + (680 -(360 + 65))) ]]=v63[v85[1133 -(369 + 761) ]];v77=v77 + 1 + 0 ;v85=v73[v77];v150=v85[2];v148=12 -5 ;end if (v148==(18 -8)) then v83[v150]=v83[v150](v13(v83,v150 + (239 -(60 + 4 + 174)) ,v85[1 + 2 ]));v77=v77 + (1 -0) ;v85=v73[v77];v83[v85[338 -(144 + 192) ]][v85[219 -(42 + (428 -(79 + 175))) ]]=v83[v85[5 -1 ]];v148=9 + 2 + 0 ;end if (v148==(4 + 0)) then v85=v73[v77];v150=v85[1 + 1 ];v83[v150](v13(v83,v150 + (1505 -((1112 -749) + 1141)) ,v85[1583 -(1183 + 397) ]));v77=v77 + (2 -1) ;v148=4 + 1 ;end if (v148==(1 + 0)) then v83[v150 + (1976 -(1913 + 62)) ]=v149;v83[v150]=v149[v85[3 + 1 ]];v77=v77 + (2 -1) ;v85=v73[v77];v148=(3726 -1791) -(565 + 1368) ;end if ((v148==(26 -(918 -(503 + 396)))) or (1063<=877)) then v149=v83[v85[1664 -(1477 + 184) ]];v83[v150 + (1 -0) ]=v149;v83[v150]=v149[v85[4]];v77=v77 + 1 + 0 ;v148=864 -(564 + 292) ;end if ((v148==(8 -3)) or (1043>3591)) then v85=v73[v77];v83[v85[5 -3 ]]=v63[v85[3]];v77=v77 + (305 -((425 -(92 + 89)) + 60)) ;v85=v73[v77];v148=5 + 1 ;end if ((2314==2314) and ((v148==(485 -((79 -38) + 435))) or (2890>=4079))) then v83[v85[(515 + 488) -(938 + 63) ]]=v85[3 + 0 ];v77=v77 + 1 ;v85=v73[v77];v150=v85[1127 -(936 + 189) ];v148=4 + 6 ;end if ((924>=477) and (v148==(1616 -(927 + 638 + 48)))) then v77=v77 + 1 + 0 ;v85=v73[v77];v83[v85[1140 -(782 + 356) ]]=v85[3];v77=v77 + (268 -(176 + 91)) ;v148=4;end if (v148==(28 -17)) then v77=v77 + (1 -0) ;v85=v73[v77];v83[v85[1094 -((3818 -2843) + 117) ]]=v85[3];break;end end else v63[v85[1878 -(157 + 1718) ]]=v83[v85[2]];end elseif (v86<=(10 + 2)) then local v153=0;local v154;while true do if ((4474<=4770) and (v153==(10 -7))) then v77=v77 + 1 ;v85=v73[v77];v83[v85[6 -4 ]]=v83[v85[(140 + 881) -((1589 -892) + 321) ]];v153=10 -6 ;end if ((1813<=3778) and (v153==0)) then v154=nil;v83[v85[2]]=v83[v85[5 -2 ]][v85[8 -4 ]];v77=v77 + 1 + 0 ;v153=1 -0 ;end if (v153==(2 -1)) then v85=v73[v77];v83[v85[2]]=v83[v85[1230 -(322 + 905) ]];v77=v77 + (612 -(602 + 9)) ;v153=1191 -(449 + 740) ;end if ((4150==4150) and (v153==(877 -(826 + 46)))) then v77=v77 + (948 -(245 + 702)) ;v85=v73[v77];v83[v85[6 -(4 + 0) ]]=v85[1 + 2 ];v153=6;end if (v153==(1902 -(260 + 1638))) then v77=v77 + (441 -(382 + 58)) ;v85=v73[v77];v83[v85[(3 + 3) -4 ]]=v83[v85[3 + 0 ]][v85[8 -4 ]];v153=14 -9 ;end if ((v153==(1211 -(902 + 303))) or (4942==3903)) then v77=v77 + (1 -0) ;v85=v73[v77];v77=v85[6 -3 ];break;end if (v153==(1 + 1)) then v85=v73[v77];v154=v85[1692 -(1121 + 569) ];v83[v154]=v83[v154](v83[v154 + (215 -((66 -44) + 24 + 168)) ]);v153=686 -(483 + 200) ;end end elseif (v86>(1476 -(1404 + 59))) then local v275=0;local v276;local v277;while true do if ((v275==(2 -1)) or (248>4845)) then v83[v276 + (1 -(0 -0)) ]=v277;v83[v276]=v277[v85[769 -(468 + 297) ]];break;end if (v275==(562 -((1578 -(485 + 759)) + 228))) then v276=v85[2];v277=v83[v85[10 -7 ]];v275=2 -(2 -1) ;end end else local v278=0;local v279;local v280;while true do if (v278==(9 -(1193 -(442 + 747)))) then v83[v85[1 + 1 ]]=v85[239 -(141 + 95) ];v77=v77 + 1 + 0 ;v85=v73[v77];v280=v85[2];v83[v280](v13(v83,v280 + (2 -1) ,v85[6 -3 ]));v77=v77 + 1 ;v278=(1137 -(832 + 303)) + (950 -(88 + 858)) ;end if ((1569==1569) and ((8 -5)==v278)) then v83[v85[2 + 0 + 0 ]]=v63[v85[2 + 1 ]];v77=v77 + (1 -0) ;v85=v73[v77];v280=v85[2];v279=v83[v85[3]];v83[v280 + 1 + 0 ]=v279;v278=167 -(92 + 71) ;end if ((v278==(0 + 0)) or (4927<=3221)) then v279=nil;v280=nil;v83[v85[2 -0 ]]=v85[768 -(574 + 191) ];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3 + 0 ];v278=2 -1 ;end if (v278==(3 + 1)) then v83[v280]=v279[v85[853 -(211 + 43 + 595) ]];v77=v77 + 1 ;v85=v73[v77];v83[v85[128 -(55 + 71) ]]=v85[(1 + 2) -0 ];v77=v77 + (1791 -(573 + 1217)) ;v85=v73[v77];v278=13 -8 ;end if ((432<=3007) and ((v278==2) or (1780>2787))) then v83[v280]=v83[v280](v13(v83,v280 + (790 -(766 + 23)) ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v63[v85[1 + 2 ]]=v83[v85[2 -0 ]];v77=v77 + 1 ;v85=v73[v77];v278=942 -(714 + 225) ;end if (v278==1) then v77=v77 + (2 -1) ;v85=v73[v77];v83[v85[2 -0 ]]=v64[v85[(4 -3) + 2 ]];v77=v77 + ((1 -0) -0) ;v85=v73[v77];v280=v85[808 -(118 + 688) ];v278=50 -((65 -40) + 23) ;end if ((v278==(2 + 4)) or (408>2721)) then v85=v73[v77];v83[v85[1888 -(927 + 959) ]]=v85[10 -7 ];break;end end end elseif (v86<=17) then if (v86<=(747 -(16 + 716))) then v83[v85[3 -1 ]]();elseif ((v86>16) or (3937<=1230)) then v64[v85[100 -((37 -26) + 86) ]]=v83[v85[4 -2 ]];elseif v83[v85[2]] then v77=v77 + 1 ;else v77=v85[288 -(175 + 110) ];end elseif ((v86<=(45 -27)) or (2637<1706)) then local v155=1073 -(1036 + 37) ;local v156;while true do if ((v155==(0 -0)) or (2669<=2409)) then v156=v85[2];v83[v156](v83[v156 + 1 ]);break;end end elseif (v86>(1815 -(503 + 1293))) then v83[v85[5 -(3 + 0) ]]=v83[v85[3 + (0 -0) ]];else local v285=1061 -(810 + 251) ;local v286;local v287;while true do if (v285==(1 + 0 + 0)) then for v490=(1481 -(641 + 839)) + 0 , #v82 do local v491=v82[v490];for v510=0 + 0 , #v491 do local v511=533 -(43 + 490) ;local v512;local v513;local v514;while true do if ((v511==(734 -(711 + 22))) or (1401>4696)) then v514=v512[7 -5 ];if ((v513==v83) and (v514>=v286)) then v287[v514]=v513[v514];v512[860 -(240 + 619) ]=v287;end break;end if (v511==(0 + 0)) then v512=v491[v510];v513=v512[1 -0 ];v511=1;end end end end break;end if (v285==(0 + 0)) then v286=v85[1746 -(1344 + 400) ];v287={};v285=406 -(255 + 150) ;end end end elseif ((v86<=31) or (3280<1321)) then if ((v86<=25) or (3418<2497)) then if (v86<=(18 + 4)) then if ((1735<2169) and (v86>((925 -(910 + 3)) + 9))) then local v157=v85[8 -6 ];local v158,v159=v76(v83[v157](v83[v157 + (3 -2) ]));v78=(v159 + v157) -1 ;local v160=1739 -((1029 -625) + 1335) ;for v217=v157,v78 do local v218=406 -(183 + 223) ;while true do if (v218==(0 -0)) then v160=v160 + 1 ;v83[v217]=v158[v160];break;end end end else local v161;local v162;v83[v85[2 + 0 ]]=v85[2 + 1 ];v77=v77 + 1 ;v85=v73[v77];v162=v85[2];v83[v162](v83[v162 + (338 -(10 + 327)) ]);v77=v77 + (1685 -(1466 + 218)) + 0 ;v85=v73[v77];v83[v85[2]]=v63[v85[3]];v77=v77 + 1 ;v85=v73[v77];v162=v85[340 -(118 + 220) ];v161=v83[v85[3]];v83[v162 + 1 + 0 ]=v161;v83[v162]=v161[v85[2 + (1150 -(556 + 592)) ]];v77=v77 + (450 -(108 + 341)) ;v85=v73[v77];v162=v85[2];v83[v162](v83[v162 + 1 + 0 + 0 ]);v77=v77 + (4 -3) ;v85=v73[v77];v77=v85[1496 -(711 + 782) ];end elseif (v86<=(43 -20)) then v83[v85[2]]=v85[(1280 -(329 + 479)) -(270 + 199) ]~=(0 + (854 -(174 + 680))) ;elseif ((3890>=3262) and (4927>=2303) and (v86>(1843 -(580 + 1239)))) then v77=v85[8 -(17 -12) ];else v83[v85[2 + 0 ]]=v85[1 + 2 ]~=0 ;v77=v77 + (1 -0) + 0 ;end elseif (v86<=28) then if (v86<=26) then local v176;v83[v85[2]]();v77=v77 + (2 -1) ;v85=v73[v77];v83[v85[2 + 0 ]]=v64[v85[3]];v77=v77 + (1168 -(645 + 373 + 149)) ;v85=v73[v77];v83[v85[(2531 -(396 + 343)) -(1010 + 780) ]]=v83[v85[3 + 0 ]][v85[19 -15 ]];v77=v77 + ((1 + 1) -1) ;v85=v73[v77];v83[v85[2]]=v85[1839 -(1045 + 791) ];v77=v77 + (2 -(1478 -(29 + 1448))) ;v85=v73[v77];v83[v85[2 -0 ]]=v63[v85[508 -(351 + 154) ]];v77=v77 + (1575 -(1281 + 293)) ;v85=v73[v77];v176=v85[268 -(28 + 238) ];v83[v176](v13(v83,v176 + (2 -1) ,v85[1562 -(1381 + 178) ]));v77=v77 + 1 + 0 ;v85=v73[v77];v77=v85[3 + 0 ];elseif (v86==27) then if (((3462>=1032) and (v85[2]<v83[v85[4]])) or (4356>=4649)) then v77=v77 + 1 + 0 ;else v77=v85[(1399 -(135 + 1254)) -7 ];end else local v290=0 + 0 ;local v291;while true do if (((470 -(381 + 89))==v290) or (1077>=2011)) then v291=v85[(7 -5) + 0 ];v83[v291]=v83[v291]();break;end end end elseif (v86<=29) then local v188=0;local v189;local v190;while true do if ((3904==3904) and (v188==(5 + 1))) then v83[v85[2 -0 ]]=v85[1159 -(1074 + 82) ];v77=v77 + (1 -0) ;v85=v73[v77];v83[v85[1786 -(214 + 1570) ]]=v85[13 -10 ];v77=v77 + (1456 -(990 + 465)) ;v188=3 + 4 ;end if (((1543<2415) and (v188==(4 + 3))) or (2860>=3789)) then v85=v73[v77];v83[v85[2]]=v85[2 + 1 + 0 ];v77=v77 + (3 -2) ;v85=v73[v77];v83[v85[1728 -(1668 + 58) ]]=v85[3];v188=634 -(512 + (1641 -(389 + 1138))) ;end if (v188==2) then v85=v73[v77];v83[v85[5 -3 ]]=v85[(579 -(102 + 472)) -(2 + 0) ]~=(0 -0) ;v77=v77 + 1 + 0 ;v85=v73[v77];v190=v85[1 + 1 ];v188=2 + 1 ;end if ((v188==1) or (4444<2015)) then v190=v85[2 + 0 ];v189=v83[v85[3 + 0 ]];v83[v190 + (1546 -(320 + 1225)) ]=v189;v83[v190]=v189[v85[13 -9 ]];v77=v77 + (1995 -(109 + 1885)) ;v188=1471 -(1269 + 200) ;end if ((v188==(9 -4)) or (1086>4449)) then v189=v83[v85[818 -(98 + 717) ]];v83[v190 + 1 ]=v189;v83[v190]=v189[v85[830 -(802 + 24) ]];v77=v77 + ((1 -0) -0) ;v85=v73[v77];v188=7 -1 ;end if (v188==(0 + 0)) then v189=nil;v190=nil;v83[v85[2 + 0 ]]=v83[v85[1 + 2 + 0 ]][v85[1 + 3 ]];v77=v77 + (2 -1) ;v85=v73[v77];v188=3 -2 ;end if (v188==8) then v77=v77 + 1 + (1464 -(157 + 1307)) ;v85=v73[v77];v190=v85[1 + 1 ];v83[v190](v13(v83,v190 + 1 + 0 ,v85[3 + 0 ]));v77=v77 + 1 + 0 ;v188=1442 -(797 + (2495 -(821 + 1038))) ;end if ((4981>546) and ((14 -11)==v188)) then v83[v190](v13(v83,v190 + (1620 -(1427 + 192)) ,v85[2 + 1 ]));v77=v77 + (2 -1) ;v85=v73[v77];v83[v85[(4 -2) + 0 ]]=v63[v85[2 + 1 ]];v77=v77 + 1 ;v188=1 + 3 ;end if (v188==(330 -(192 + 134))) then v85=v73[v77];v83[v85[3 -1 ]]=v83[v85[1279 -(118 + 198 + 960) ]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v190=v85[2 + 0 ];v188=4 + 1 ;end if ((v188==(9 + 0)) or (4200==2332)) then v85=v73[v77];v77=v85[11 -8 ];break;end end elseif ((v86==(581 -((205 -122) + 468))) or (1278>=1316)) then local v292=1806 -(1202 + 604) ;local v293;local v294;local v295;while true do if ((4 -3)==v292) then v295={};v294=v10({},{__index=function(v492,v493) local v494=v295[v493];return v494[1 -0 ][v494[5 -3 ]];end,__newindex=function(v495,v496,v497) local v498=325 -(45 + 280) ;local v499;while true do if ((v498==(0 + 0)) or (2366<=8)) then v499=v295[v496];v499[1 + 0 ][v499[1 + 1 ]]=v497;break;end end end});v292=2 + 0 + 0 ;end if ((1082==1082) and (v292==(0 + 0))) then v293=v74[v85[3]];v294=nil;v292=(1 + 0) -0 ;end if (v292==(1913 -(340 + 1571))) then for v500=1 + 0 ,v85[2 + (2 -0) ] do local v501=(2076 -(300 + 4)) -(1733 + 39) ;local v502;while true do if ((1328<=4878) and (v501==(0 -0))) then v77=v77 + (1035 -(34 + 91 + 909)) ;v502=v73[v77];v501=1949 -(1096 + 852) ;end if ((1 + 0)==v501) then if ((v502[1]==(28 -8)) or (2590==2864)) then v295[v500-(1 + 0) ]={v83,v502[3]};else v295[v500-(96 -(51 + 44)) ]={v63,v502[729 -(228 + 498) ]};end v82[ #v82 + 1 + 0 ]=v295;break;end end end v83[v85[2]]=v29(v293,v294,v64);break;end end else local v296=0 + 0 ;local v297;local v298;while true do if (v296==((1662 -998) -(174 + 489))) then for v503=v297,v298 do v83[v503]=v79[v503-v297 ];end break;end if ((0 -0)==v296) then v297=v85[1907 -(830 + 1075) ];v298=v85[3];v296=525 -(303 + 127 + 94) ;end end end elseif (v86<=(1305 -(231 + 1038))) then if (v86<=(28 + 5)) then if (v86>32) then local v191;local v192;v83[v85[1164 -(171 + 991) ]][v85[12 -9 ]]=v83[v85[4]];v77=v77 + (2 -1) ;v85=v73[v77];v83[v85[4 -2 ]]=v64[v85[3 + 0 ]];v77=v77 + (3 -2) ;v85=v73[v77];v83[v85[(3 + 2) -3 ]]=v85[3 + 0 ];v77=v77 + 1 ;v85=v73[v77];v192=v85[2 -0 ];v83[v192]=v83[v192](v83[v192 + 1 ]);v77=v77 + (3 -2) ;v85=v73[v77];v192=v85[1250 -(111 + 1137) ];v191=v83[v85[161 -(91 + 67) ]];v83[v192 + (2 -1) ]=v191;v83[v192]=v191[v85[1 + 0 + 3 ]];v77=v77 + 1 ;v85=v73[v77];v83[v85[525 -(315 + 108 + 100) ]]=v85[1 + 2 ];v77=v77 + (2 -1) ;v85=v73[v77];v192=v85[2 + 0 ];v83[v192](v13(v83,v192 + (772 -(326 + 445)) ,v85[13 -10 ]));v77=v77 + (2 -1) ;v85=v73[v77];v192=v85[(1418 -(1001 + 413)) -2 ];v191=v83[v85[3]];v83[v192 + 1 ]=v191;v83[v192]=v191[v85[(1594 -879) -(530 + 181) ]];v77=v77 + (882 -(614 + 267)) ;v85=v73[v77];v83[v85[34 -(19 + 13) ]]=v85[3];v77=v77 + (1 -0) ;v85=v73[v77];v192=v85[4 -2 ];v83[v192](v13(v83,v192 + (2 -(883 -(244 + 638))) ,v85[1 + 2 ]));elseif (v85[3 -1 ]<v83[v85[7 -3 ]]) then v77=v85[(2508 -(627 + 66)) -(1293 + 519) ];else v77=v77 + (1 -0) ;end elseif ((4087>=1355) and (v86<=(88 -54))) then v83[v85[(8 -5) -1 ]]= not v83[v85[(614 -(512 + 90)) -9 ]];elseif (v86==(82 -47)) then v83[v85[2 + 0 ]]=v83[v85[1 + 2 ]][v85[9 -5 ]];else local v302=0 + 0 ;local v303;local v304;while true do if (v302==(2 + 3)) then v77=v77 + 1 + 0 ;v85=v73[v77];v77=v85[1099 -(709 + 387) ];break;end if (((1858 -(673 + (3091 -(1665 + 241))))==v302) or (2624>4149)) then v303=nil;v304=nil;v83[v85[5 -3 ]]=v85[9 -6 ];v77=v77 + (1 -0) ;v302=1;end if ((v302==(1 + 0)) or (2618>=4495)) then v85=v73[v77];v304=v85[2];v83[v304](v83[v304 + 1 + 0 ]);v77=v77 + (1 -0) ;v302=719 -(373 + 344) ;end if (((1 + 1)==v302) or (2485>=3131)) then v85=v73[v77];v83[v85[3 -1 ]]=v63[v85[5 -2 ]];v77=v77 + (1881 -(446 + 1434)) ;v85=v73[v77];v302=3;end if ((1286 -(1040 + 243))==v302) then v304=v85[5 -3 ];v303=v83[v85[2 + 1 ]];v83[v304 + ((489 + 1359) -(559 + 1288)) ]=v303;v83[v304]=v303[v85[1935 -(609 + (3486 -2164)) ]];v302=458 -(13 + 441) ;end if ((v302==(14 -(16 -6))) or (590>4650)) then v77=v77 + ((1101 -(35 + 1064)) -1) ;v85=v73[v77];v304=v85[9 -7 ];v83[v304](v83[v304 + 1 + 0 ]);v302=5;end end end elseif ((v86<=39) or (3774<=3667)) then if ((v86<=((98 + 36) -97)) or (2804<=2785)) then if (v83[v85[2]]==v85[(4 -2) + 2 ]) then v77=v77 + 1 + 0 ;else v77=v85[8 -5 ];end elseif ((v86==(21 + 17)) or (4571==3415)) then local v306=v85[3 -(1 + 0) ];v83[v306]=v83[v306](v13(v83,v306 + 1 ,v85[2 + 1 ]));elseif (v83[v85[2 + 0 ]]~=v85[3 + 1 ]) then v77=v77 + 1 + 0 ;else v77=v85[3 + 0 ];end elseif (v86<=(473 -(153 + 280))) then for v219=v85[5 -3 ],v85[3 + 0 ] do v83[v219]=nil;end elseif (v86>(17 + (1260 -(298 + 938)))) then do return;end elseif ( not v83[v85[2 + 0 ]] or (4441>4787)) then v77=v77 + 1 + 0 ;else v77=v85[3 + (1259 -(233 + 1026)) ];end v77=v77 + (1 -0) ;break;end if ((1920==1920) and (1270<2146) and (v117==(0 + 0))) then v85=v73[v77];v86=v85[668 -(89 + 578) ];v117=1 + 0 ;end end end end;end return v29(v28(),{},v17)(...);end return v15("LOL!153Q0003053Q00412Q646F6E030C3Q00566563746F724D6F64756C6503063Q0073656C656374027Q004003093Q00556E6974436C612Q7303063Q00706C6179657203123Q00534C4153485F4155544F535445414C544831030C3Q002F6175746F737465616C7468030C3Q00536C617368436D644C697374030B3Q004155544F535445414C5448030B3Q004372656174654672616D6503053Q004672616D65030D3Q0052656769737465724576656E7403153Q00504C415945525F454E544552494E475F574F524C44030E3Q005350452Q4C535F4348414E474544030E3Q005550444154455F535445414C544803143Q00504C415945525F524547454E5F454E41424C454403153Q00504C415945525F524547454E5F44495341424C454403093Q0053657453637269707403073Q004F6E4576656E7403123Q00457870697265537465616C74684672616D65003E4Q00083Q00023Q00202Q00020001000100202Q0003000200024Q00030002000200062Q0003000700013Q0004193Q000700012Q002A3Q00013Q001202000300033Q001204000400043Q00122Q000500053Q00122Q000600066Q000500066Q00033Q00024Q000400046Q000500013Q00061E00063Q000100032Q00143Q00044Q00143Q00034Q00143Q00053Q00061E00070001000100022Q00143Q00054Q00143Q00043Q001206000800083Q001211000800073Q001202000800093Q00061E00090002000100022Q00143Q00054Q00143Q00043Q0010210008000A000900122Q0008000B3Q00122Q0009000C6Q00080002000200202Q00090008000D00122Q000B000E6Q0009000B000100202Q00090008000D00122Q000B000F6Q0009000B000100200E00090008000D001209000B00106Q0009000B000100202Q00090008000D00122Q000B00116Q0009000B000100202Q00090008000D00122Q000B00126Q0009000B000100202Q00090008001300122Q000B00143Q00061E000C0003000100012Q00143Q00066Q0009000C000100061E00090004000100022Q00143Q00064Q00143Q00094Q0014000A00094Q000F000A0001000100061E000A0005000100012Q00143Q00043Q00100500020015000A2Q00138Q002A3Q00013Q00063Q00263Q0003063Q0048656B696C6903053Q005061757365028Q0003043Q0048696465030B3Q004372656174654672616D6503053Q004672616D65030C3Q004D7947722Q656E4672616D6503083Q005549506172656E7403073Q0053657453697A65026Q33E33F026Q00F03F03083Q00536574506F696E7403073Q00544F504C45465403073Q0074657874757265030D3Q0043726561746554657874757265030A3Q004241434B47524F554E44027Q0040030C3Q00536574412Q6C506F696E7473030F3Q00536574436F6C6F725465787475726503053Q00524F475545025Q00E09B4003053Q00445255494403113Q004765745370656369616C697A6174696F6E025Q005FB440026Q002440030D3Q004973506C617965725370652Q6C03083Q006475726174696F6E030B3Q004973537465616C7468656403133Q00556E6974412Q66656374696E67436F6D62617403063Q00706C6179657203093Q0049734D6F756E746564030A3Q00556E697449734465616403183Q0043686174456469745F47657441637469766557696E646F7703083Q004973466C79696E6703043Q0053686F7703073Q00435F5370652Q6C03103Q004765745370652Q6C432Q6F6C646F776E03093Q00737461727454696D6500B33Q0012023Q00013Q0020235Q00020006103Q000F00013Q0004193Q000F0001001206000100033Q00262500010005000100030004193Q000500012Q000100025Q0006100002000D00013Q0004193Q000D00012Q000100025Q00200E0002000200042Q00120002000200012Q002A3Q00013Q0004193Q000500012Q000100015Q00062900010042000100010004193Q00420001001206000100033Q00262500010021000100030004193Q00210001001202000200053Q00120D000300063Q00122Q000400073Q00122Q000500086Q0002000500024Q00028Q00025Q00202Q00020002000900122Q0004000A3Q00122Q0005000A6Q00020005000100122Q0001000B3Q002625000100310001000B0004193Q003100012Q000100025Q00200B00020002000C00122Q0004000D3Q00122Q000500033Q00122Q000600036Q0002000600014Q00028Q00035Q00202Q00030003000F4Q000500053Q00122Q000600106Q00030006000200102Q0002000E000300122Q000100113Q00262500010013000100110004193Q001300012Q000100025Q00201D00020002000E00202Q0002000200124Q000400016Q0002000400014Q00025Q00202Q00020002000E00202Q00020002001300122Q0004000A3Q00122Q0005000A3Q00122Q0006000A3Q00122Q0007000B6Q00020007000100044Q004200010004193Q001300012Q0028000100024Q0001000300013Q00262500030054000100140004193Q00540001001206000300034Q0028000400043Q00262500030048000100030004193Q00480001001206000400033Q0026250004004B000100030004193Q004B0001001206000100153Q001206000200113Q0004193Q006800010004193Q004B00010004193Q006800010004193Q004800010004193Q006800012Q0001000300013Q00262500030068000100160004193Q00680001001202000300174Q001C00030001000200262500030068000100110004193Q00680001001206000300034Q0028000400043Q0026250003005D000100030004193Q005D0001001206000400033Q00262500040060000100030004193Q00600001001206000100183Q001206000200193Q0004193Q006800010004193Q006000010004193Q006800010004193Q005D0001000610000100AF00013Q0004193Q00AF00010012020003001A4Q0014000400014Q0007000300020002000610000300AF00013Q0004193Q00AF0001001206000300034Q0028000400073Q0026250003007B0001000B0004193Q007B000100202300060004001B000E1B00030078000100050004193Q00780001000E2000030079000100060004193Q007900012Q001800076Q0017000700013Q001206000300113Q002625000300A4000100110004193Q00A400012Q0001000800023Q000610000800A000013Q0004193Q00A000010012020008001C4Q001C000800010002000629000800A0000100010004193Q00A00001000629000700A0000100010004193Q00A000010012020008001D3Q0012060009001E4Q0007000800020002000629000800A0000100010004193Q00A000010012020008001F4Q001C000800010002000629000800A0000100010004193Q00A00001001202000800203Q0012060009001E4Q0007000800020002000629000800A0000100010004193Q00A00001001202000800214Q001C000800010002000629000800A0000100010004193Q00A00001001202000800224Q001C000800010002000629000800A0000100010004193Q00A000012Q000100085Q00200E0008000800232Q00120008000200010004193Q00B200012Q000100085Q00200E0008000800042Q00120008000200010004193Q00B2000100262500030071000100030004193Q00710001001202000800243Q00200C0008000800254Q000900016Q0008000200024Q000400083Q00202Q00050004002600122Q0003000B3Q00044Q007100010004193Q00B200012Q000100035Q00200E0003000300042Q00120003000200012Q002A3Q00017Q00053Q00028Q0003053Q007072696E7403153Q004175746F20537465616C746820656E61626C65642E03163Q004175746F20537465616C74682064697361626C65642E03043Q004869646500273Q0012063Q00014Q0028000100013Q0026253Q0002000100010004193Q00020001001206000100013Q00262500010005000100010004193Q000500012Q000100026Q0022000200024Q000A00026Q000100025Q0006100002001100013Q0004193Q00110001001202000200023Q001206000300034Q00120002000200010004193Q00260001001206000200014Q0028000300033Q00262500020013000100010004193Q00130001001206000300013Q00262500030016000100010004193Q00160001001202000400023Q001224000500046Q0004000200014Q000400013Q00202Q0004000400054Q00040002000100044Q002600010004193Q001600010004193Q002600010004193Q001300010004193Q002600010004193Q000500010004193Q002600010004193Q000200012Q002A3Q00017Q00053Q00028Q0003053Q007072696E7403153Q004175746F20537465616C746820656E61626C65642E03163Q004175746F20537465616C74682064697361626C65642E03043Q0048696465001B3Q0012063Q00013Q0026253Q0001000100010004193Q000100012Q000100016Q0022000100014Q000A00016Q000100015Q0006100001000D00013Q0004193Q000D0001001202000100023Q001206000200034Q00120001000200010004193Q001A0001001206000100013Q0026250001000E000100010004193Q000E0001001202000200023Q001224000300046Q0002000200014Q000200013Q00202Q0002000200054Q00020002000100044Q001A00010004193Q000E00010004193Q001A00010004193Q000100012Q002A3Q00017Q00053Q0003153Q00504C415945525F454E544552494E475F574F524C44030E3Q005350452Q4C535F4348414E474544030E3Q005550444154455F535445414C544803143Q00504C415945525F524547454E5F454E41424C454403153Q00504C415945525F524547454E5F44495341424C454402103Q00262700010006000100010004193Q0006000100262700010006000100020004193Q0006000100262500010009000100030004193Q000900012Q000100036Q000F0003000100010004193Q000F00010026270001000D000100040004193Q000D00010026250001000F000100050004193Q000F00012Q000100036Q000F0003000100012Q002A3Q00017Q00043Q00028Q0003073Q00435F54696D657203053Q004166746572029A5Q99B93F000D3Q0012063Q00013Q0026253Q0001000100010004193Q000100012Q000100016Q001A00010001000100122Q000100023Q00202Q00010001000300122Q000200046Q000300016Q00010003000100044Q000C00010004193Q000100012Q002A3Q00017Q00013Q0003043Q004869646500094Q00017Q0006103Q000800013Q0004193Q000800012Q00017Q00200E5Q00012Q00123Q000200012Q00288Q000A8Q002A3Q00017Q00",v9(),...);