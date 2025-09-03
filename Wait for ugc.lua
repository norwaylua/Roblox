--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local v0 = tonumber;
local v1 = string.byte;
local v2 = string.char;
local v3 = string.sub;
local v4 = string.gsub;
local v5 = string.rep;
local v6 = table.concat;
local v7 = table.insert;
local v8 = math.ldexp;
local v9 = getfenv or function()
	return _ENV;
end;
local v10 = setmetatable;
local v11 = pcall;
local v12 = select;
local v13 = unpack or table.unpack;
local v14 = tonumber;
local function v15(v16, v17, ...)
	local v18 = 1;
	local v19;
	v16 = v4(v3(v16, 5), "..", function(v30)
		if (v1(v30, 2) == 81) then
			local v89 = 0;
			while true do
				if (v89 == 0) then
					v19 = v0(v3(v30, 1, 1));
					return "";
				end
			end
		else
			local v90 = v2(v0(v30, 16));
			if v19 then
				local v121 = v5(v90, v19);
				v19 = nil;
				return v121;
			else
				return v90;
			end
		end
	end);
	local function v20(v31, v32, v33)
		if v33 then
			local v91 = 0 - 0;
			local v92;
			while true do
				if (v91 == (0 - 0)) then
					v92 = (v31 / ((3 - (1 - 0)) ^ (v32 - (2 - 1)))) % (2 ^ (((v33 - ((1685 - (68 + 997)) - (555 + 64))) - (v32 - (932 - ((2127 - (226 + 1044)) + 74)))) + (569 - (367 + 201))));
					return v92 - (v92 % (928 - (214 + 713)));
				end
			end
		else
			local v93 = 0 + 0;
			local v94;
			while true do
				if (v93 == (0 + (0 - 0))) then
					v94 = (879 - (282 + 595)) ^ (v32 - (1638 - (1523 + 114)));
					return (((v31 % (v94 + v94)) >= v94) and (1 + 0)) or 0;
				end
			end
		end
	end
	local function v21()
		local v34 = 117 - (32 + 85);
		local v35;
		while true do
			if (v34 == (0 + 0)) then
				v35 = v1(v16, v18, v18);
				v18 = v18 + 1 + 0;
				v34 = 1;
			end
			if ((958 - ((2127 - 1235) + 65)) == v34) then
				return v35;
			end
		end
	end
	local function v22()
		local v36 = 0 - 0;
		local v37;
		local v38;
		while true do
			if (v36 == (1 - (0 - 0))) then
				return (v38 * (606 - (87 + 263))) + v37;
			end
			if (v36 == (180 - (67 + 113))) then
				v37, v38 = v1(v16, v18, v18 + 2 + (952 - (802 + 150)));
				v18 = v18 + (4 - 2);
				v36 = 1 + 0;
			end
		end
	end
	local function v23()
		local v39 = 0 - 0;
		local v40;
		local v41;
		local v42;
		local v43;
		while true do
			if (v39 == (1187 - (1069 + (136 - (10 + 8))))) then
				v40, v41, v42, v43 = v1(v16, v18, v18 + (5 - 2));
				v18 = v18 + (8 - 4);
				v39 = 1 + 0;
			end
			if (v39 == (1 + (0 - 0))) then
				return (v43 * (16778213 - (915 + 82))) + (v42 * (185570 - 120034)) + (v41 * (150 + 106)) + v40;
			end
		end
	end
	local function v24()
		local v44 = 442 - (416 + 26);
		local v45;
		local v46;
		local v47;
		local v48;
		local v49;
		local v50;
		while true do
			if ((0 - 0) == v44) then
				v45 = v23();
				v46 = v23();
				v44 = 1 + 0;
			end
			if ((3 - 1) == v44) then
				v49 = v20(v46, 459 - (145 + 293), 461 - (44 + 386));
				v50 = ((v20(v46, 1518 - ((3435 - 2437) + (2235 - (760 + 987)))) == ((1914 - (1789 + 124)) + 0)) and -1) or (1 + 0);
				v44 = 775 - (201 + 571);
			end
			if (v44 == (1141 - (116 + 1022))) then
				if (v49 == (0 - 0)) then
					if (v48 == (0 + 0)) then
						return v50 * ((766 - (745 + 21)) - (0 + 0));
					else
						local v132 = 0 - 0;
						while true do
							if (v132 == (859 - ((2239 - 1425) + 45))) then
								v49 = 1;
								v47 = 0;
								break;
							end
						end
					end
				elseif (v49 == (5043 - 2996)) then
					return ((v48 == 0) and (v50 * ((1 + (0 - 0)) / (0 + 0)))) or (v50 * NaN);
				end
				return v8(v50, v49 - (1908 - (261 + 624))) * (v47 + (v48 / (2 ^ 52)));
			end
			if (v44 == 1) then
				v47 = 1 - 0;
				v48 = (v20(v46, 1081 - (1020 + 1 + 59), 1443 - (630 + 793)) * (((5 + 1) - 4) ^ (151 - 119))) + v45;
				v44 = (1056 - (87 + 968)) + 1;
			end
		end
	end
	local function v25(v51)
		local v52;
		if not v51 then
			local v95 = 0 - 0;
			while true do
				if (v95 == (0 - 0)) then
					v51 = v23();
					if (v51 == (0 + (0 - 0))) then
						return "";
					end
					break;
				end
			end
		end
		v52 = v3(v16, v18, (v18 + v51) - (2 - 1));
		v18 = v18 + v51;
		local v53 = {};
		for v70 = 1, #v52 do
			v53[v70] = v2(v1(v3(v52, v70, v70)));
		end
		return v6(v53);
	end
	local v26 = v23;
	local function v27(...)
		return {...}, v12("#", ...);
	end
	local function v28()
		local v54 = (function()
			return function(v96, v97, v98, v99, v100, v101, v102, v103)
				local v96 = (function()
					return 0;
				end)();
				local v97 = (function()
					return;
				end)();
				local v98 = (function()
					return;
				end)();
				while true do
					if (v96 == #"}") then
						if (v97 == #">") then
							v98 = (function()
								return v99() ~= 0;
							end)();
						elseif (v97 == (1 + 1)) then
							v98 = (function()
								return v100();
							end)();
						elseif (v97 ~= #"91(") then
						else
							v98 = (function()
								return v101();
							end)();
						end
						v102[v103] = (function()
							return v98;
						end)();
						break;
					end
					if (v96 ~= 0) then
					else
						local v127 = (function()
							return 1024 - (706 + 318);
						end)();
						while true do
							if (v127 ~= 1) then
							else
								v96 = (function()
									return #"\\";
								end)();
								break;
							end
							if (v127 ~= (1251 - (721 + 530))) then
							else
								v97 = (function()
									return v99();
								end)();
								v98 = (function()
									return nil;
								end)();
								v127 = (function()
									return 1272 - (945 + 326);
								end)();
							end
						end
					end
				end
				return v96, v97, v98, v99, v100, v101, v102, v103;
			end;
		end)();
		local v55 = (function()
			return function(v104, v105, v106, v107, v108, v109, v110, v111, v112)
				local v113 = (function()
					return 0 - 0;
				end)();
				local v104 = (function()
					return;
				end)();
				local v105 = (function()
					return;
				end)();
				while true do
					if (v113 ~= 0) then
					else
						local v128 = (function()
							return 0 + 0;
						end)();
						while true do
							if (v128 ~= 1) then
							else
								v113 = (function()
									return 1;
								end)();
								break;
							end
							if (v128 == 0) then
								v104 = (function()
									return 700 - (271 + 429);
								end)();
								v105 = (function()
									return nil;
								end)();
								v128 = (function()
									return 1 + 0;
								end)();
							end
						end
					end
					if (v113 ~= 1) then
					else
						local v129 = (function()
							return 1500 - (1408 + 92);
						end)();
						while true do
							if (v129 ~= 0) then
							else
								local v133 = (function()
									return 1086 - (461 + 625);
								end)();
								while true do
									if ((1288 - (993 + 295)) ~= v133) then
									else
										while true do
											if (v104 == (0 + 0)) then
												v105 = (function()
													return v106();
												end)();
												if (v107(v105, #" ", #"[") == (1171 - (418 + 753))) then
													local v221 = (function()
														return 0 + 0;
													end)();
													local v222 = (function()
														return;
													end)();
													local v223 = (function()
														return;
													end)();
													local v224 = (function()
														return;
													end)();
													local v225 = (function()
														return;
													end)();
													while true do
														if ((0 + 0) == v221) then
															local v466 = (function()
																return 0;
															end)();
															local v467 = (function()
																return;
															end)();
															while true do
																if (v466 ~= 0) then
																else
																	v467 = (function()
																		return 0 + 0;
																	end)();
																	while true do
																		if (v467 == (0 + 0)) then
																			v222 = (function()
																				return 0;
																			end)();
																			v223 = (function()
																				return nil;
																			end)();
																			v467 = (function()
																				return 1;
																			end)();
																		end
																		if (v467 ~= 1) then
																		else
																			v221 = (function()
																				return 530 - (406 + 123);
																			end)();
																			break;
																		end
																	end
																	break;
																end
															end
														end
														if (v221 == 1) then
															local v468 = (function()
																return 1769 - (1749 + 20);
															end)();
															local v469 = (function()
																return;
															end)();
															while true do
																if (v468 ~= (0 + 0)) then
																else
																	v469 = (function()
																		return 0;
																	end)();
																	while true do
																		if (0 == v469) then
																			v224 = (function()
																				return nil;
																			end)();
																			v225 = (function()
																				return nil;
																			end)();
																			v469 = (function()
																				return 1;
																			end)();
																		end
																		if (v469 ~= (1323 - (1249 + 73))) then
																		else
																			v221 = (function()
																				return 1 + 1;
																			end)();
																			break;
																		end
																	end
																	break;
																end
															end
														end
														if (v221 ~= (1147 - (466 + 679))) then
														else
															while true do
																if (v222 ~= #"}") then
																else
																	local v531 = (function()
																		return 0;
																	end)();
																	local v532 = (function()
																		return;
																	end)();
																	while true do
																		if ((0 - 0) ~= v531) then
																		else
																			v532 = (function()
																				return 0 - 0;
																			end)();
																			while true do
																				if (v532 ~= 0) then
																				else
																					v225 = (function()
																						return {v108(),v108(),nil,nil};
																					end)();
																					if (v223 == 0) then
																						local v552 = (function()
																							return 0;
																						end)();
																						local v553 = (function()
																							return;
																						end)();
																						while true do
																							if (v552 == 0) then
																								v553 = (function()
																									return 0 + 0;
																								end)();
																								while true do
																									if ((0 + 0) ~= v553) then
																									else
																										v225[#"gha"] = (function()
																											return v108();
																										end)();
																										v225[#"http"] = (function()
																											return v108();
																										end)();
																										break;
																									end
																								end
																								break;
																							end
																						end
																					elseif (v223 == #">") then
																						v225[#"nil"] = (function()
																							return v109();
																						end)();
																					elseif (v223 == 2) then
																						v225[#"gha"] = (function()
																							return v109() - ((5 - 3) ^ 16);
																						end)();
																					elseif (v223 ~= #"gha") then
																					else
																						local v560 = (function()
																							return 0 - 0;
																						end)();
																						local v561 = (function()
																							return;
																						end)();
																						while true do
																							if (0 ~= v560) then
																							else
																								v561 = (function()
																									return 0;
																								end)();
																								while true do
																									if (v561 == (114 - (4 + 110))) then
																										v225[#"nil"] = (function()
																											return v109() - (2 ^ 16);
																										end)();
																										v225[#"asd1"] = (function()
																											return v108();
																										end)();
																										break;
																									end
																								end
																								break;
																							end
																						end
																					end
																					v532 = (function()
																						return 1;
																					end)();
																				end
																				if (v532 ~= 1) then
																				else
																					v222 = (function()
																						return 2;
																					end)();
																					break;
																				end
																			end
																			break;
																		end
																	end
																end
																if (v222 ~= (586 - (57 + 527))) then
																else
																	local v533 = (function()
																		return 1427 - (41 + 1386);
																	end)();
																	local v534 = (function()
																		return;
																	end)();
																	while true do
																		if (v533 == (103 - (17 + 86))) then
																			v534 = (function()
																				return 0 + 0;
																			end)();
																			while true do
																				if (v534 == (0 - 0)) then
																					if (v107(v224, #".", #"]") == #"|") then
																						v225[2] = (function()
																							return v110[v225[5 - 3]];
																						end)();
																					end
																					if (v107(v224, 2, 168 - (122 + 44)) == #".") then
																						v225[#"91("] = (function()
																							return v110[v225[#"xnx"]];
																						end)();
																					end
																					v534 = (function()
																						return 1;
																					end)();
																				end
																				if (v534 ~= 1) then
																				else
																					v222 = (function()
																						return #"gha";
																					end)();
																					break;
																				end
																			end
																			break;
																		end
																	end
																end
																if (v222 ~= (0 - 0)) then
																else
																	local v535 = (function()
																		return 0;
																	end)();
																	local v536 = (function()
																		return;
																	end)();
																	while true do
																		if (v535 == (0 - 0)) then
																			v536 = (function()
																				return 0;
																			end)();
																			while true do
																				if (v536 ~= 0) then
																				else
																					v223 = (function()
																						return v107(v105, 2, #"gha");
																					end)();
																					v224 = (function()
																						return v107(v105, #"xnxx", 6);
																					end)();
																					v536 = (function()
																						return 1;
																					end)();
																				end
																				if (v536 ~= (1 + 0)) then
																				else
																					v222 = (function()
																						return #"|";
																					end)();
																					break;
																				end
																			end
																			break;
																		end
																	end
																end
																if (#"xxx" == v222) then
																	if (v107(v224, #"gha", #"gha") == #":") then
																		v225[#"asd1"] = (function()
																			return v110[v225[#"http"]];
																		end)();
																	end
																	v111[v112] = (function()
																		return v225;
																	end)();
																	break;
																end
															end
															break;
														end
													end
												end
												break;
											end
										end
										return v104, v105, v106, v107, v108, v109, v110, v111, v112;
									end
								end
							end
						end
					end
				end
			end;
		end)();
		local v56 = (function()
			return function(v114, v115, v116)
				local v117 = (function()
					return 0 + 0;
				end)();
				local v118 = (function()
					return;
				end)();
				while true do
					if (v117 == (0 - 0)) then
						v118 = (function()
							return 65 - (30 + 35);
						end)();
						while true do
							if (v118 == (0 + 0)) then
								v114[v115 - #"|"] = (function()
									return v116();
								end)();
								return v114, v115, v116;
							end
						end
						break;
					end
				end
			end;
		end)();
		local v57 = (function()
			return {};
		end)();
		local v58 = (function()
			return {};
		end)();
		local v59 = (function()
			return {};
		end)();
		local v60 = (function()
			return {v57,v58,nil,v59};
		end)();
		local v61 = (function()
			return v23();
		end)();
		local v62 = (function()
			return {};
		end)();
		for v72 = #"]", v61 do
			FlatIdent_7A75F, Type, Cons, v21, v24, v25, v62, v72 = (function()
				return v54(FlatIdent_7A75F, Type, Cons, v21, v24, v25, v62, v72);
			end)();
		end
		v60[#"-19"] = (function()
			return v21();
		end)();
		for v73 = #",", v23() do
			FlatIdent_E0D0, Descriptor, v21, v20, v22, v23, v62, v57, v73 = (function()
				return v55(FlatIdent_E0D0, Descriptor, v21, v20, v22, v23, v62, v57, v73);
			end)();
		end
		for v74 = #"\\", v23() do
			v58, v74, v28 = (function()
				return v56(v58, v74, v28);
			end)();
		end
		return v60;
	end
	local function v29(v64, v65, v66)
		local v67 = v64[3 - 2];
		local v68 = v64[2];
		local v69 = v64[1260 - (1043 + 214)];
		return function(...)
			local v75 = v67;
			local v76 = v68;
			local v77 = v69;
			local v78 = v27;
			local v79 = 3 - 2;
			local v80 = -((2114 - (652 + 249)) - (323 + 889));
			local v81 = {};
			local v82 = {...};
			local v83 = v12("#", ...) - (581 - (361 + 219));
			local v84 = {};
			local v85 = {};
			for v119 = 320 - (53 + (2135 - (708 + 1160))), v83 do
				if ((1261 < 4896) and (v119 >= v77)) then
					v81[v119 - v77] = v82[v119 + 1 + 0];
				else
					v85[v119] = v82[v119 + (414 - (15 + 398))];
				end
			end
			local v86 = (v83 - v77) + ((2668 - 1685) - (18 + 964));
			local v87;
			local v88;
			while true do
				local v120 = 0 - 0;
				while true do
					if (v120 == (1 + 0)) then
						if ((23 < 3610) and (v88 <= (13 + 7))) then
							if (v88 <= (859 - (20 + (1513 - 683)))) then
								if ((v88 <= (4 + 0)) or (3911 < 2578)) then
									if (v88 <= (127 - (116 + 10))) then
										if ((v88 == ((27 - (10 + 17)) - 0)) or (4238 < 87)) then
											local v135 = 0 + 0;
											local v136;
											local v137;
											while true do
												if (v135 == (183 - (21 + 71 + 89))) then
													v85[v87[740 - (542 + 196)]] = v87[3];
													v79 = v79 + 1 + 0;
													v87 = v75[v79];
													v137 = v87[3 - 1];
													v135 = 1 + 2;
												end
												if ((0 + 0) == v135) then
													v136 = nil;
													v137 = nil;
													v137 = v87[1 + 1];
													v136 = v85[v87[7 - (1736 - (1400 + 332))]];
													v135 = (3 - 1) - 1;
												end
												if ((1552 - (1126 + (2333 - (242 + 1666)))) == v135) then
													v85[v137 + (406 - (118 + 287))] = v136;
													v85[v137] = v136[v87[15 - 11]];
													v79 = v79 + 1;
													v87 = v75[v79];
													v135 = 1 + 1;
												end
												if ((2538 == 2538) and ((1125 - (118 + 1003)) == v135)) then
													v79 = v79 + (2 - (1 + 0));
													v87 = v75[v79];
													v85[v87[379 - (122 + 20 + 235)]] = v66[v87[13 - 10]];
													v79 = v79 + (2 - 1);
													v135 = 2 + 3;
												end
												if (v135 == (1138 - (832 + 303))) then
													v85[v137] = v85[v137](v13(v85, v137 + (947 - (88 + 858)), v87[980 - (553 + 424)]));
													v79 = v79 + (1 - 0);
													v87 = v75[v79];
													v85[v87[2 + 0]] = v85[v87[3 + 0]];
													v135 = 3 + 1;
												end
												if ((4122 == 4122) and (v135 == (3 + (942 - (850 + 90))))) then
													v87 = v75[v79];
													v85[v87[2 - 0]] = v85[v87[2 + 1]][v87[8 - (6 - 2)]];
													break;
												end
											end
										elseif (not v85[v87[5 - 3]] or (2371 > 2654)) then
											v79 = v79 + ((1392 - (360 + 1030)) - 1);
										else
											v79 = v87[1 + 2];
										end
									elseif ((v88 <= (9 - 7)) or (3466 > 4520)) then
										v85[v87[2 + 0 + 0]] = v66[v87[756 - (239 + 514)]];
									elseif (v88 == (1483 - (641 + 839))) then
										v79 = v87[2 + 1];
									else
										local v245 = v76[v87[1332 - (797 + 532)]];
										local v246;
										local v247 = {};
										v246 = v10({}, {__index=function(v414, v415)
											local v416 = v247[v415];
											return v416[1 + 0][v416[1 + 1]];
										end,__newindex=function(v417, v418, v419)
											local v420 = 0 - 0;
											local v421;
											while true do
												if (v420 == (1202 - (373 + 829))) then
													v421 = v247[v418];
													v421[732 - (476 + 255)][v421[810 - (329 + 479)]] = v419;
													break;
												end
											end
										end});
										for v422 = 855 - (174 + (2341 - (909 + 752))), v87[13 - 9] do
											local v423 = 1130 - ((1592 - (109 + 1114)) + 761);
											local v424;
											while true do
												if ((v423 == (0 + 0)) or (951 >= 1027)) then
													v79 = v79 + (740 - (396 + 343));
													v424 = v75[v79];
													v423 = 1 - 0;
												end
												if ((v423 == (1 - 0)) or (1369 > 2250)) then
													if (v424[239 - (64 + 174)] == ((2568 - 1165) - (135 + 1254))) then
														v247[v422 - (1 + 0)] = {v85,v424[219 - (42 + 174)]};
													else
														v247[v422 - (575 - (102 + 472))] = {v65,v424[2 + 1]};
													end
													v84[#v84 + (1505 - (363 + 1141))] = v247;
													break;
												end
											end
										end
										v85[v87[1582 - (1183 + 397)]] = v29(v245, v246, v66);
									end
								elseif ((v88 <= (1551 - (320 + 1225))) or (937 > 3786)) then
									if ((v88 == 5) or (901 > 4218)) then
										local v140 = 0 - 0;
										local v141;
										local v142;
										while true do
											if (v140 == (1 + 0)) then
												for v470 = 1 + 0, #v84 do
													local v471 = 1975 - (1913 + 62);
													local v472;
													while true do
														if ((4779 > 4047) and (v471 == (0 + 0))) then
															v472 = v84[v470];
															for v543 = 1859 - (821 + 1038), #v472 do
																local v544 = v472[v543];
																local v545 = v544[2 - (243 - (6 + 236))];
																local v546 = v544[5 - 3];
																if ((v545 == v85) and (v546 >= v141)) then
																	local v548 = 0;
																	while true do
																		if ((4050 > 1373) and (v548 == 0)) then
																			v142[v546] = v545[v546];
																			v544[1934 - (565 + 1368)] = v142;
																			break;
																		end
																	end
																end
															end
															break;
														end
													end
												end
												break;
											end
											if (v140 == (0 - 0)) then
												v141 = v87[1 + 1];
												v142 = {};
												v140 = (1048 + 614) - (1477 + 184);
											end
										end
									else
										v85[v87[2 - 0]]();
									end
								elseif (v88 <= (17 - 10)) then
									local v143 = v87[1028 - (834 + 192)];
									local v144 = {v85[v143](v13(v85, v143 + 1 + 0, v80))};
									local v145 = 856 - (564 + 236 + 56);
									for v226 = v143, v87[6 - 2] do
										local v227 = 0 - 0;
										while true do
											if ((0 + 0) == v227) then
												v145 = v145 + (305 - (244 + 60));
												v85[v226] = v144[v145];
												break;
											end
										end
									end
								elseif (v88 > (7 + (2 - 1))) then
									local v249;
									local v250;
									v85[v87[478 - (41 + 435)]] = v85[v87[1004 - (938 + 63)]][v87[4 + 0]];
									v79 = v79 + (1126 - (936 + 189));
									v87 = v75[v79];
									v250 = v87[1 + 1];
									v249 = v85[v87[1616 - (1565 + 48)]];
									v85[v250 + 1 + 0] = v249;
									v85[v250] = v249[v87[4]];
									v79 = v79 + (1139 - (782 + 356));
									v87 = v75[v79];
									v85[v87[269 - (176 + 91)]] = v87[7 - 4];
									v79 = v79 + (1 - 0);
									v87 = v75[v79];
									v250 = v87[2 + 0];
									v85[v250] = v85[v250](v13(v85, v250 + (1093 - (975 + 117)), v87[6 - 3]));
									v79 = v79 + ((3276 - 1400) - (157 + 1718));
									v87 = v75[v79];
									v85[v87[2]] = v85[v87[696 - ((1760 - (1076 + 57)) + 66)]][v87[11 - 7]];
									v79 = v79 + 1;
									v87 = v75[v79];
									v85[v87[2 + 0]] = v85[v87[10 - 7]][v87[13 - 9]];
									v79 = v79 + 1;
									v87 = v75[v79];
									v85[v87[(168 + 852) - (697 + 321)]] = v66[v87[(691 - (579 + 110)) + 1]];
									v79 = v79 + 1 + 0;
									v87 = v75[v79];
									v85[v87[5 - 3]] = v85[v87[5 - 2]][v87[(1 + 7) - (4 + 0)]];
									v79 = v79 + 1 + 0 + 0;
									v87 = v75[v79];
									v85[v87[1101 - (35 + 1064)]] = v87[5 - 2];
									v79 = v79 + (2 - 1);
									v87 = v75[v79];
									v85[v87[1229 - (322 + 905)]] = v87[614 - (602 + 9)];
									v79 = v79 + 1;
									v87 = v75[v79];
									v85[v87[1238 - (298 + (1345 - (174 + 233)))]] = v87[(3525 - 2263) - (233 + 1026)];
									v79 = v79 + (1667 - (636 + (1807 - 777)));
									v87 = v75[v79];
									v250 = v87[1 + 1 + 0];
									v85[v250] = v85[v250](v13(v85, v250 + (1190 - (449 + 740)), v87[(2049 - (663 + 511)) - (826 + 46)]));
									v79 = v79 + (948 - (245 + 702));
									v87 = v75[v79];
									v85[v87[6 - 4]] = v85[v87[1 + 2]] + v85[v87[1 + 3]];
									v79 = v79 + (1899 - (260 + 1638));
									v87 = v75[v79];
									v85[v87[442 - (382 + 58)]][v87[9 - 6]] = v85[v87[4 + 0]];
									v79 = v79 + (1 - (0 + 0));
									v87 = v75[v79];
									v85[v87[5 - 3]] = v66[v87[1 + 1 + 1]];
									v79 = v79 + (1206 - (902 + 303));
									v87 = v75[v79];
									v85[v87[3 - 1]] = v85[v87[6 - 3]][v87[12 - 8]];
									v79 = v79 + 1 + 0;
									v87 = v75[v79];
									v85[v87[2]]();
									v79 = v79 + (1691 - (679 + 442 + 569));
									v87 = v75[v79];
									v79 = v87[217 - (22 + 192)];
								else
									local v284;
									local v285, v286;
									local v287;
									local v288;
									v288 = v87[685 - (483 + 200)];
									v287 = v85[v87[1466 - ((3305 - 1901) + 59)]];
									v85[v288 + (2 - 1)] = v287;
									v85[v288] = v287[v87[4 - 0]];
									v79 = v79 + ((1854 - 1088) - (224 + 244 + 297));
									v87 = v75[v79];
									v288 = v87[564 - (334 + 228)];
									v85[v288](v85[v288 + (3 - 2)]);
									v79 = v79 + (2 - 1);
									v87 = v75[v79];
									v85[v87[(3 - 1) - (0 + 0)]] = v65[v87[1 + 2]];
									v79 = v79 + (237 - (141 + 95));
									v87 = v75[v79];
									v288 = v87[2 + 0];
									v287 = v85[v87[3]];
									v85[v288 + (2 - 1)] = v287;
									v85[v288] = v287[v87[10 - 6]];
									v79 = v79 + (2 - 1);
									v87 = v75[v79];
									v85[v87[1 + 1]] = v66[v87[8 - 5]];
									v79 = v79 + 1 + 0;
									v87 = v75[v79];
									v85[v87[2 + 0]] = v85[v87[1 + 1 + 1]][v87[(727 - (478 + 244)) - 1]];
									v79 = v79 + 1 + 0;
									v87 = v75[v79];
									v288 = v87[(682 - (440 + 77)) - (92 + 71)];
									v285, v286 = v78(v85[v288]());
									v80 = (v286 + v288) - (1 + 0);
									v284 = 0 - (0 + 0);
									for v426 = v288, v80 do
										v284 = v284 + 1 + 0;
										v85[v426] = v285[v284];
									end
									v79 = v79 + (1 - 0);
									v87 = v75[v79];
									v288 = v87[767 - (574 + 191)];
									v85[v288](v13(v85, v288 + 1 + 0, v80));
									v79 = v79 + ((7 - 5) - 1);
									v87 = v75[v79];
									v79 = v87[11 - (1564 - (655 + 901))];
								end
							elseif (v88 <= (8 + 2 + 4)) then
								if (v88 <= (860 - (254 + 595))) then
									if (v88 == (8 + 2)) then
										local v146 = 229 - (73 + 156);
										local v147;
										local v148;
										while true do
											if (v146 == (1 + 5)) then
												v79 = v87[814 - (721 + 90)];
												break;
											end
											if ((v146 == (128 - (55 + 71))) or (1037 > 4390)) then
												v85[v87[2]] = v87[3 - 0];
												v79 = v79 + (1791 - (573 + 1217));
												v87 = v75[v79];
												v148 = v87[5 - 3];
												v146 = 1 + 2;
											end
											if ((1407 <= 1919) and (v146 == 0)) then
												v147 = nil;
												v148 = nil;
												v148 = v87[2 - (0 + 0)];
												v147 = v85[v87[942 - (714 + 225)]];
												v146 = 2 - 1;
											end
											if (v146 == (1 - 0)) then
												v85[v148 + (3 - 2)] = v147;
												v85[v148] = v147[v87[1 + 3]];
												v79 = v79 + (1 - 0);
												v87 = v75[v79];
												v146 = 808 - (118 + 688);
											end
											if (v146 == ((36 + 17) - (25 + 23))) then
												v87 = v75[v79];
												v85[v87[1 + 1]] = v87[1537 - ((2856 - 2147) + 825)];
												v79 = v79 + (1887 - (927 + 959));
												v87 = v75[v79];
												v146 = 8 - 2;
											end
											if (v146 == (867 - (196 + 668))) then
												v85[v148] = v85[v148](v13(v85, v148 + (3 - 2), v87[5 - 2]));
												v79 = v79 + (834 - (171 + 662));
												v87 = v75[v79];
												v85[v87[734 - (16 + 716)]] = v85[v87[5 - 2]];
												v146 = 101 - (11 + 86);
											end
											if (v146 == 4) then
												v79 = v79 + 1 + (1445 - (695 + 750));
												v87 = v75[v79];
												v85[v87[4 - 2]] = v85[v87[288 - (175 + 110)]][v87[9 - 5]];
												v79 = v79 + (4 - 3);
												v146 = 1801 - (503 + 1293);
											end
										end
									else
										local v149 = 0 - 0;
										local v150;
										local v151;
										while true do
											if (v149 == ((0 - 0) + 0)) then
												v150 = v87[2 + 0];
												v151 = v85[v87[1064 - (810 + (387 - 136))]];
												v149 = (3 - 2) + 0;
											end
											if ((2526 >= 1717) and (v149 == (1 + 0))) then
												v85[v150 + (298 - (45 + 252))] = v151;
												v85[v150] = v151[v87[4]];
												break;
											end
										end
									end
								elseif (v88 <= (11 + 1)) then
									v85[v87[2]] = {};
								elseif (v88 > ((364 - (285 + 66)) + 0)) then
									v85[v87[535 - ((100 - 57) + 490)]] = v85[v87[(2046 - (682 + 628)) - (711 + 22)]];
								else
									v85[v87[7 - 5]] = v65[v87[(139 + 723) - (240 + (918 - (176 + 123)))]];
								end
							elseif ((v88 <= (8 + 9)) or (3620 <= 2094)) then
								if (v88 <= (4 + 11)) then
									local v153;
									v153 = v87[2 - 0];
									v85[v153](v85[v153 + (1 - 0)]);
									v79 = v79 + 1 + 0;
									v87 = v75[v79];
									v85[v87[2 + 0]] = v66[v87[1747 - (1344 + 400)]];
									v79 = v79 + (406 - (255 + 150));
									v87 = v75[v79];
									v153 = v87[2 + 0];
									v85[v153] = v85[v153]();
									v79 = v79 + 1 + 0 + 0;
									v87 = v75[v79];
									v85[v87[8 - 6]] = v85[v87[(278 - (239 + 30)) - 6]][v87[1743 - (404 + 1335)]];
									v79 = v79 + (2 - 1);
									v87 = v75[v79];
									v85[v87[408 - (183 + 223)]] = v85[v87[3 - (0 + 0)]][v87[3 + 1]];
									v79 = v79 + 1 + 0;
									v87 = v75[v79];
									if v85[v87[339 - (10 + 327)]] then
										v79 = v79 + 1 + 0;
									else
										v79 = v87[341 - (118 + 220)];
									end
								elseif (v88 == (6 + 10)) then
									local v313 = 449 - (108 + 341);
									local v314;
									while true do
										if (v313 == (0 + 0)) then
											v314 = v87[8 - 6];
											v85[v314] = v85[v314](v13(v85, v314 + (1494 - (711 + 782)), v87[5 - (2 + 0)]));
											break;
										end
									end
								else
									local v315;
									v85[v87[471 - (270 + 199)]] = v66[v87[1 + 2]];
									v79 = v79 + (1820 - (580 + 1239));
									v87 = v75[v79];
									v315 = v87[6 - (6 - 2)];
									v85[v315] = v85[v315]();
									v79 = v79 + (2 - (2 - 1));
									v87 = v75[v79];
									v85[v87[2 + 0]] = {};
									v79 = v79 + 1 + 0;
									v87 = v75[v79];
									v85[v87[1 + 1]][v87[7 - (319 - (306 + 9))]] = v87[1216 - (1090 + 122)];
									v79 = v79 + 1 + 0;
									v87 = v75[v79];
									v85[v87[2 + (0 - 0)]][v87[1170 - (113 + 532 + 522)]] = v87[4];
									v79 = v79 + (3 - 2);
									v87 = v75[v79];
									v85[v87[2 + 0 + 0]][v87[1793 - (1010 + 780)]] = v87[4 + 0];
									v79 = v79 + 1 + 0;
									v87 = v75[v79];
									v85[v87[9 - 7]][v87[7 - 4]] = v87[4];
									v79 = v79 + (2 - (1 + 0));
									v87 = v75[v79];
									v85[v87[1838 - (1045 + 791)]][v87[7 - 4]] = v85[v87[5 - (2 - 1)]];
									v79 = v79 + ((1881 - (1140 + 235)) - (351 + 154));
									v87 = v75[v79];
									v85[v87[2]] = v66[v87[3]];
									v79 = v79 + (1575 - (1281 + 187 + 106));
									v87 = v75[v79];
									v85[v87[268 - (28 + 238)]] = v85[v87[6 - 3]][v87[1563 - (1381 + 178)]];
								end
							elseif ((v88 <= (17 + 1)) or (1723 >= 2447)) then
								local v164 = 0 + 0;
								local v165;
								while true do
									if ((0 + 0) == v164) then
										v165 = v87[1 + 0 + 1];
										v85[v165](v13(v85, v165 + (3 - 2), v80));
										break;
									end
								end
							elseif (v88 > (10 + 9)) then
								local v335 = v87[472 - (381 + 89)];
								v85[v335] = v85[v335](v13(v85, v335 + 1 + 0, v80));
							else
								v85[v87[2 + 0]][v87[4 - 1]] = v87[1160 - (1074 + 82)];
							end
						elseif (v88 <= (65 - 35)) then
							if (v88 <= ((116 - (33 + 19)) - 39)) then
								if (v88 <= (1806 - (214 + 1570))) then
									if (v88 > (1476 - (990 + 465))) then
										v85[v87[1 + 1]][v87[9 - 6]] = v85[v87[2 + 2]];
									else
										do
											return;
										end
									end
								elseif (v88 <= (23 + 0)) then
									local v168 = v87[7 - 5];
									local v169, v170 = v78(v85[v168]());
									v80 = (v170 + v168) - (1727 - (1668 + 58));
									local v171 = 626 - (512 + 114);
									for v228 = v168, v80 do
										v171 = v171 + (2 - 1);
										v85[v228] = v169[v171];
									end
								elseif ((v88 == (49 - 25)) or (1199 > 3543)) then
									local v339;
									local v340;
									local v339, v341;
									local v342;
									local v343;
									v85[v87[(3 + 3) - 4]] = v66[v87[2 + 1]];
									v79 = v79 + 1 + 0;
									v87 = v75[v79];
									v85[v87[2 + (0 - 0)]] = v85[v87[10 - 7]][v87[1998 - (109 + 1885)]];
									v79 = v79 + (1470 - (1269 + 200));
									v87 = v75[v79];
									v343 = v87[3 - 1];
									v342 = v85[v87[(361 + 457) - (98 + (1406 - 689))]];
									v85[v343 + 1] = v342;
									v85[v343] = v342[v87[830 - (802 + 24)]];
									v79 = v79 + (1 - 0);
									v87 = v75[v79];
									v343 = v87[(1668 + 110) - (421 + 1355)];
									v339, v341 = v78(v85[v343](v85[v343 + (1 - 0)]));
									v80 = (v341 + v343) - (1 + 0);
									v340 = 0 + (689 - (586 + 103));
									for v456 = v343, v80 do
										local v457 = (0 + 0) - 0;
										while true do
											if ((0 + 0) == v457) then
												v340 = v340 + 1 + 0;
												v85[v456] = v339[v340];
												break;
											end
										end
									end
									v79 = v79 + 1;
									v87 = v75[v79];
									v343 = v87[(15 - 10) - 3];
									v339 = {v85[v343](v13(v85, v343 + (3 - 2), v80))};
									v340 = 0 + 0;
									for v458 = v343, v87[4] do
										v340 = v340 + 1 + 0;
										v85[v458] = v339[v340];
									end
									v79 = v79 + 1 + 0;
									v87 = v75[v79];
									v79 = v87[3 + 0];
								else
									v85[v87[1 + 1]] = v87[1436 - (797 + 636)];
								end
							elseif ((1617 < 3271) and (v88 <= (131 - 104))) then
								if (v88 > (22 + 4)) then
									local v172 = v87[1621 - (1427 + 192)];
									local v173, v174 = v78(v85[v172](v85[v172 + 1 + 0]));
									v80 = (v174 + v172) - (2 - 1);
									local v175 = 0 - 0;
									for v231 = v172, v80 do
										v175 = v175 + 1 + (1488 - (1309 + 179));
										v85[v231] = v173[v175];
									end
								elseif ((3085 > 1166) and (v85[v87[1 + 1]] == v87[3 + 1])) then
									v79 = v79 + (327 - (192 + 134));
								else
									v79 = v87[1279 - ((570 - 254) + 960)];
								end
							elseif ((4493 >= 3603) and (v88 <= (16 + 12))) then
								v85[v87[2 + 0]] = v85[v87[3 + 0]][v87[15 - 11]];
							elseif (v88 > 29) then
								local v360;
								local v361;
								v85[v87[553 - (83 + 468)]] = v65[v87[(788 + 1021) - ((3227 - 2025) + 604)]];
								v79 = v79 + (4 - 3);
								v87 = v75[v79];
								v85[v87[2 - (0 + 0)]] = v85[v87[8 - 5]][v87[4]];
								v79 = v79 + (326 - (45 + 280));
								v87 = v75[v79];
								v361 = v87[2];
								v360 = v85[v87[2 + 1]];
								v85[v361 + 1 + 0] = v360;
								v85[v361] = v360[v87[4]];
								v79 = v79 + 1 + (0 - 0);
								v87 = v75[v79];
								v85[v87[1 + (1 - 0)]] = v87[5 - 2];
								v79 = v79 + 1 + 0;
								v87 = v75[v79];
								v361 = v87[6 - 4];
								v85[v361] = v85[v361](v13(v85, v361 + ((610 - (295 + 314)) - 0), v87[1 + 2]));
								v79 = v79 + ((2 - 1) - 0);
								v87 = v75[v79];
								v85[v87[(1966 - (1300 + 662)) - 2]] = v85[v87[1914 - (340 + 1571)]];
								v79 = v79 + 1 + (0 - 0);
								v87 = v75[v79];
								v85[v87[1774 - ((3488 - (1178 + 577)) + 39)]] = v87[(5 + 3) - (14 - 9)];
								v79 = v79 + (1035 - (125 + 909));
								v87 = v75[v79];
								v361 = v87[1950 - (1096 + 852)];
								v85[v361](v13(v85, v361 + 1 + 0, v87[3 - 0]));
								v79 = v79 + (1 - 0);
								v87 = v75[v79];
								v79 = v87[5 - (1407 - (851 + 554))];
							else
								local v381 = 0 + 0;
								local v382;
								while true do
									if (v381 == (0 + 0)) then
										v382 = v87[71 - (10 + 59)];
										v85[v382](v85[v382 + ((454 + 59) - (409 + (285 - 182)))]);
										break;
									end
								end
							end
						elseif ((2843 <= 2975) and (v88 <= (10 + 25))) then
							if (v88 <= (268 - (46 + 190))) then
								if (v88 > 31) then
									local v178 = 95 - (51 + 44);
									local v179;
									while true do
										if ((v178 == (0 + 0)) or (1989 <= 174)) then
											v179 = v87[1 + 1];
											v85[v179](v13(v85, v179 + (1318 - ((2419 - 1305) + 203)), v87[729 - (228 + 498)]));
											break;
										end
									end
								else
									for v234 = v87[(303 - (115 + 187)) + 1], v87[2 + 1] do
										v85[v234] = nil;
									end
								end
							elseif (v88 <= (696 - (174 + 489))) then
								local v180;
								local v181, v182;
								local v183;
								local v184;
								v85[v87[5 - 3]] = v66[v87[1908 - (830 + 1075)]];
								v79 = v79 + 1 + 0;
								v87 = v75[v79];
								v184 = v87[2];
								v183 = v85[v87[(196 + 10) - (11 + 192)]];
								v85[v184 + (525 - ((1193 - 890) + 221))] = v183;
								v85[v184] = v183[v87[(2434 - (160 + 1001)) - (231 + 1038)]];
								v79 = v79 + 1 + 0 + 0;
								v87 = v75[v79];
								v85[v87[1164 - (171 + 991)]] = v87[12 - 9];
								v79 = v79 + (2 - 1);
								v87 = v75[v79];
								v184 = v87[4 - 2];
								v181, v182 = v78(v85[v184](v13(v85, v184 + 1 + 0, v87[10 - (5 + 2)])));
								v80 = (v182 + v184) - (2 - 1);
								v180 = 0 - 0;
								for v236 = v184, v80 do
									local v237 = 0 - (0 - 0);
									while true do
										if ((v237 == (0 - 0)) or (209 > 2153)) then
											v180 = v180 + (1249 - (111 + 1137));
											v85[v236] = v181[v180];
											break;
										end
									end
								end
								v79 = v79 + (159 - (91 + 67));
								v87 = v75[v79];
								v184 = v87[5 - 3];
								v85[v184] = v85[v184](v13(v85, v184 + (2 - 1), v80));
								v79 = v79 + 1 + 0;
								v87 = v75[v79];
								v85[v87[525 - (423 + 100)]]();
								v79 = v79 + 1 + 0;
								v87 = v75[v79];
								v79 = v87[361 - (237 + 121)];
							elseif (v88 == (94 - 60)) then
								local v383 = v87[2];
								local v384 = v87[3 + 1];
								local v385 = v383 + (773 - (326 + 445));
								local v386 = {v85[v383](v85[v383 + (2 - 1)], v85[v385])};
								for v462 = 2 - 1, v384 do
									v85[v385 + v462] = v386[v462];
								end
								local v387 = v386[712 - (530 + 181)];
								if v387 then
									v85[v385] = v387;
									v79 = v87[506 - (74 + 429)];
								else
									v79 = v79 + (882 - (614 + 267));
								end
							elseif (v85[v87[34 - (19 + 13)]] or (2020 == 1974)) then
								v79 = v79 + (1 - 0);
							else
								v79 = v87[6 - (900 - (525 + 372))];
							end
						elseif (v88 <= (108 - 70)) then
							if ((v88 <= (10 + 26)) or (1347 == 1360)) then
								local v198;
								local v199;
								local v198, v200;
								local v201;
								local v202;
								v85[v87[3 - 1]] = v66[v87[(825 - 389) - (279 + 154)]];
								v79 = v79 + (1 - 0);
								v87 = v75[v79];
								v85[v87[1814 - (1293 + 519)]] = v85[v87[5 - 2]][v87[9 - 5]];
								v79 = v79 + (2 - (3 - 2));
								v87 = v75[v79];
								v202 = v87[3 - 1];
								v201 = v85[v87[2 + 1]];
								v85[v202 + ((146 - (96 + 46)) - 3)] = v201;
								v85[v202] = v201[v87[(786 - (643 + 134)) - 5]];
								v79 = v79 + 1 + 0;
								v87 = v75[v79];
								v202 = v87[1 + 1];
								v198, v200 = v78(v85[v202](v85[v202 + ((1 + 1) - 1)]));
								v80 = (v200 + v202) - 1;
								v199 = 0 + 0;
								for v238 = v202, v80 do
									local v239 = (0 - 0) + 0;
									while true do
										if ((v239 == (0 + 0)) or (4461 == 3572)) then
											v199 = v199 + (1097 - (709 + 387));
											v85[v238] = v198[v199];
											break;
										end
									end
								end
								v79 = v79 + (1859 - (673 + 1185));
								v87 = v75[v79];
								v202 = v87[5 - 3];
								v198 = {v85[v202](v13(v85, v202 + (1 - 0), v80))};
								v199 = 0 + 0;
								for v240 = v202, v87[3 + 1] do
									v199 = v199 + (1 - 0);
									v85[v240] = v198[v199];
								end
								v79 = v79 + ((3 - 2) - 0);
								v87 = v75[v79];
								v79 = v87[1 + 2];
							elseif ((v88 == (73 - 36)) or (2872 == 318)) then
								if ((568 == 568) and (v87[3 - 1] == v85[v87[1884 - (428 + 18 + 1434)]])) then
									v79 = v79 + (1284 - (1040 + 243));
								else
									v79 = v87[3];
								end
							else
								local v388 = 0 - (0 - 0);
								local v389;
								local v390;
								while true do
									if (v388 == ((3785 - 1933) - ((1278 - (316 + 403)) + 1288))) then
										v87 = v75[v79];
										v85[v87[1933 - (609 + 1322)]] = v66[v87[457 - (13 + 441)]];
										v79 = v79 + (3 - 2);
										v87 = v75[v79];
										v85[v87[2]] = v85[v87[1 + 2]][v87[10 - 6]];
										v79 = v79 + (455 - (233 + 221));
										v388 = 29 - 23;
									end
									if (v388 == (1 + 1)) then
										v79 = v79 + (3 - 2);
										v87 = v75[v79];
										v85[v87[2 + 0]] = v87[2 + 0 + 1];
										v79 = v79 + (2 - 1);
										v87 = v75[v79];
										v390 = v87[1 + 1];
										v388 = 8 - 5;
									end
									if ((4200 == 4200) and (v388 == ((21 - 13) - 4))) then
										v85[v87[2 + 0]] = v87[4 - 1];
										v79 = v79 + 1 + 0 + 0;
										v87 = v75[v79];
										v390 = v87[2];
										v85[v390](v13(v85, v390 + (2 - 1), v87[6 - 3]));
										v79 = v79 + 1 + 0;
										v388 = (9 - 5) + 1;
									end
									if (v388 == (3 + 0 + 0)) then
										v85[v390] = v85[v390](v13(v85, v390 + 1 + 0, v87[3 + 0 + 0]));
										v79 = v79 + (434 - (153 + 280));
										v87 = v75[v79];
										v85[v87[5 - 3]] = v85[v87[3 + 0]];
										v79 = v79 + 1 + 0;
										v87 = v75[v79];
										v388 = 4;
									end
									if ((1 + (0 - 0)) == v388) then
										v79 = v79 + (4 - 3) + 0;
										v87 = v75[v79];
										v390 = v87[1 + 1];
										v389 = v85[v87[3 + 0]];
										v85[v390 + (1 - 0)] = v389;
										v85[v390] = v389[v87[3 + (1 - 0)]];
										v388 = 669 - (89 + 578);
									end
									if (v388 == (0 + 0 + 0)) then
										v389 = nil;
										v390 = nil;
										v85[v87[3 - 1]] = v65[v87[1052 - (572 + 477)]];
										v79 = v79 + (1 - 0);
										v87 = v75[v79];
										v85[v87[1 + 1]] = v85[v87[3]][v87[3 + 1]];
										v388 = 1 + 0;
									end
									if (((5 + 1) == v388) or (4285 < 1369)) then
										v87 = v75[v79];
										v85[v87[88 - (84 + 2)]] = v87[4 - 1];
										v79 = v79 + 1 + (0 - 0);
										v87 = v75[v79];
										v390 = v87[844 - (497 + 345)];
										v85[v390](v85[v390 + 1 + 0]);
										v388 = 2 + 5;
									end
									if (v388 == (1340 - (605 + 728))) then
										v79 = v79 + 1 + 0;
										v87 = v75[v79];
										v85[v87[3 - 1]] = v87[5 - 2];
										break;
									end
								end
							end
						elseif (v88 <= (2 + 37)) then
							local v216 = 0 - 0;
							local v217;
							local v218;
							local v219;
							local v220;
							while true do
								if ((v216 == (0 + 0 + 0)) or (3520 > 4910)) then
									v217 = v87[4 - 2];
									v218, v219 = v78(v85[v217](v13(v85, v217 + (521 - (150 + 370)), v87[7 - 4])));
									v216 = 1 + 0;
								end
								if (v216 == (491 - ((1344 - 887) + (49 - (12 + 5))))) then
									for v483 = v217, v80 do
										local v484 = 0 + 0;
										while true do
											if ((2842 <= 4353) and (v484 == ((5445 - 4043) - ((1774 - 942) + 570)))) then
												v220 = v220 + 1 + 0;
												v85[v483] = v218[v220];
												break;
											end
										end
									end
									break;
								end
								if ((1 - (0 - 0)) == v216) then
									v80 = (v219 + v217) - (1 + 0);
									v220 = 0 - 0;
									v216 = 2 + 0;
								end
							end
						elseif (v88 > (20 + 20)) then
							local v391 = 796 - (588 + 208);
							local v392;
							while true do
								if (((0 - 0) == v391) or (3751 < 1643)) then
									v392 = v87[1802 - (884 + 916)];
									v85[v392] = v85[v392]();
									break;
								end
							end
						else
							v85[v87[3 - 1]] = v85[v87[2 + 1]] + v85[v87[(1628 - 971) - (232 + 86 + 335)]];
						end
						v79 = v79 + (1890 - (1569 + 320));
						break;
					end
					if ((v120 == (0 + 0)) or (4911 == 3534)) then
						v87 = v75[v79];
						v88 = v87[1974 - (1656 + 317)];
						v120 = 1 + 0;
					end
				end
			end
		end;
	end
	return v29(v28(), {}, v17)(...);
end
return v15("LOL!193Q0003073Q0067657467656E7603093Q0054656E65727948756203083Q004175746F4F7262732Q0103083Q004175746F4F2Q627903073Q00416E746941464B030D3Q004175746F5265636F2Q6E65637403043Q0067616D6503073Q00506C61636549640200B05C1DAC42DB42028Q00027Q0040026Q00F03F026Q00084003043Q007461736B03053Q00737061776E03053Q0049646C656403073Q00436F2Q6E656374030A3Q004765745365727669636503073Q00506C6179657273030B3Q004C6F63616C506C61796572030A3Q006C6F6164737472696E6703073Q00482Q7470476574035C3Q00682Q7470733A2Q2F7261772E67697468756275736572636F6E74656E742E636F6D2F6E6F727761796C75612F416C77692D7363726970742F726566732F68656164732F6D61696E2F4175746F2532305265636F2Q6E6563742E6C7561030B3Q005669727475616C5573657200623Q0012113Q00018Q000100024Q00013Q000400302Q00010003000400302Q00010005000400302Q00010006000400302Q00010007000400104Q0002000100124Q00083Q00206Q000900261A3Q00610001000A0004033Q006100010012193Q000B4Q001F000100033Q00261A3Q00290001000C0004033Q002900010012190004000B3Q00261A000400150001000D0004033Q001500010012193Q000E3Q0004033Q0029000100261A000400110001000B0004033Q001100010012020005000F3Q00201C00050005001000060400063Q000100012Q000E3Q00024Q000F00050002000100122Q000500016Q00050001000200202Q00050005000200202Q00050005000600062Q0005002700013Q0004033Q0027000100201C00050002001100200B00050005001200060400070001000100012Q000E3Q00034Q00200005000700010012190004000D3Q0004033Q0011000100261A3Q003A0001000B0004033Q003A00010012190004000B3Q00261A000400300001000D0004033Q003000010012193Q000D3Q0004033Q003A000100261A0004002C0001000B0004033Q002C0001001202000500083Q00200A00050005001300122Q000700146Q0005000700024Q000100053Q00202Q00020001001500122Q0004000D3Q00044Q002C000100261A3Q004A0001000E0004033Q004A0001001202000400014Q002900040001000200201C00040004000200201C0004000400070006230004006000013Q0004033Q00600001001202000400163Q001221000500083Q00202Q00050005001700122Q000700186Q000500076Q00043Q00024Q00040001000100044Q0060000100261A3Q000E0001000D0004033Q000E00010012190004000B3Q00261A0004005A0001000B0004033Q005A0001001202000500083Q00202Q00050005001300122Q000700196Q0005000700024Q000300053Q00122Q0005000F3Q00202Q00050005001000060400060002000100012Q000E3Q00024Q001D0005000200010012190004000D3Q00261A0004004D0001000D0004033Q004D00010012193Q000C3Q0004033Q000E00010004033Q004D00010004033Q000E00012Q00058Q00153Q00013Q00033Q00123Q0003043Q007461736B03043Q007761697403073Q0067657467656E7603093Q0054656E65727948756203083Q004175746F4F2Q627903053Q00706169727303093Q00776F726B7370616365030A3Q00436C61696D5061727473030B3Q004765744368696C6472656E2Q033Q0049734103083Q004261736550617274028Q0003113Q0066697265746F756368696E74657265737403093Q00436861726163746572030C3Q0057616974466F724368696C6403103Q0048756D616E6F6964522Q6F7450617274029A5Q99B93F026Q00F03F00483Q0012023Q00013Q00201C5Q00022Q00293Q000100020006233Q004700013Q0004033Q004700010012023Q00034Q00293Q0001000200201C5Q000400201C5Q00050006013Q000C000100010004033Q000C00010004033Q004700010012023Q00063Q001218000100073Q00202Q00010001000800202Q0001000100094Q000100029Q00000200044Q0044000100200B00050004000A0012190007000B4Q00100005000700020006230005004400013Q0004033Q004400010012190005000C4Q001F000600063Q000E25000C001A000100050004033Q001A00010012190006000C3Q00261A000600350001000C0004033Q003500010012190007000C3Q00261A000700300001000C0004033Q003000010012020008000D4Q002600095Q00202Q00090009000E00202Q00090009000F00122Q000B00106Q0009000B00024Q000A00043Q00122Q000B000C6Q0008000B000100122Q000800013Q00202Q00080008000200122Q000900116Q00080002000100122Q000700123Q00261A00070020000100120004033Q00200001001219000600123Q0004033Q003500010004033Q0020000100261A0006001D000100120004033Q001D00010012020007000D4Q001E00085Q00202Q00080008000E00202Q00080008000F00122Q000A00106Q0008000A00024Q000900043Q00122Q000A00126Q0007000A000100044Q004400010004033Q001D00010004033Q004400010004033Q001A00010006223Q0013000100020004033Q001300010004035Q00012Q00153Q00017Q00053Q00028Q0003113Q0043617074757265436F6E74726F2Q6C6572030C3Q00436C69636B42752Q746F6E3203073Q00566563746F72322Q033Q006E6577000F3Q0012193Q00013Q000E250001000100013Q0004033Q000100012Q000D00015Q0020080001000100024Q0001000200014Q00015Q00202Q00010001000300122Q000300043Q00202Q0003000300054Q000300016Q00013Q000100044Q000E00010004033Q000100012Q00153Q00017Q00133Q0003043Q007461736B03043Q007761697403073Q0067657467656E7603093Q0054656E65727948756203083Q004175746F4F72627303053Q00706169727303093Q00776F726B737061636503083Q004D6167694F726273030B3Q004765744368696C6472656E2Q033Q0049734103053Q004D6F64656C030B3Q005072696D61727950617274028Q0003093Q00436861726163746572030C3Q0057616974466F724368696C6403103Q0048756D616E6F6964522Q6F745061727403063Q00434672616D6503073Q00566563746F72332Q033Q006E6577003C3Q0012023Q00013Q00201C5Q00022Q00293Q000100020006233Q003B00013Q0004033Q003B00010012023Q00034Q00293Q0001000200201C5Q000400201C5Q00050006013Q000C000100010004033Q000C00010004033Q003B00010012023Q00063Q001218000100073Q00202Q00010001000800202Q0001000100094Q000100029Q00000200044Q0038000100200B00050004000A0012190007000B4Q00100005000700020006230005003800013Q0004033Q0038000100201C00050004000C0006230005003800013Q0004033Q003800010012190005000D4Q001F000600063Q00261A0005001D0001000D0004033Q001D00010012190006000D3Q00261A000600200001000D0004033Q002000012Q000D00075Q00200900070007000E00202Q00070007000F00122Q000900106Q00070009000200202Q00080004000C00202Q00080008001100122Q000900123Q00202Q00090009001300122Q000A000D3Q00122Q000B000D3Q00122Q000C000D6Q0009000C00024Q00080008000900102Q00070011000800122Q000700013Q00202Q0007000700024Q00070001000100044Q003800010004033Q002000010004033Q003800010004033Q001D00010006223Q0013000100020004033Q001300010004035Q00012Q00153Q00017Q00", v9(), ...);
