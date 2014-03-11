//Maya ASCII 2011 scene
//Name: keso_anims_01.ma
//Last modified: Sat, Jan 04, 2014 09:35:12 PM
//Codeset: 1252
requires maya "2011";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2011";
fileInfo "version" "2011 x64";
fileInfo "cutIdentifier" "201003190311-771506";
fileInfo "osv" "Microsoft Windows 7 Home Premium Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".t" -type "double3" 59.378243111623064 38.332583510599193 93.728798930776151 ;
	setAttr ".r" -type "double3" -15.938352802835237 -2486.2000000000821 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 110.02363106506948;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -5.7137262441394432 9.9579879643830544 0.64930062270029332 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".t" -type "double3" -3.4928751364927297 5.14207054786971 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 36.220763785000379;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Keso";
createNode transform -n "master" -p "Keso";
	setAttr ".rp" -type "double3" 0 -3.1740705207922175e-032 5.7178971258750047e-016 ;
	setAttr ".sp" -type "double3" 0 -3.1740705207922175e-032 5.7178971258750047e-016 ;
createNode nurbsCurve -n "masterShape" -p "master";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.0357752977430463 2.4711996502294852e-016 -4.0357752977430401
		-6.5115159095950656e-016 3.4948040606861888e-016 -5.7074481607585268
		-4.0357752977430419 2.4711996502294867e-016 -4.0357752977430419
		-5.7074481607585268 1.0127067836926028e-031 -1.6538756879088541e-015
		-4.0357752977430437 -2.4711996502294857e-016 4.035775297743041
		-1.7197655180703042e-015 -3.4948040606861897e-016 5.7074481607585277
		4.0357752977430401 -2.4711996502294867e-016 4.0357752977430428
		5.7074481607585268 -1.8770660784292858e-031 3.0654815408592454e-015
		4.0357752977430463 2.4711996502294852e-016 -4.0357752977430401
		-6.5115159095950656e-016 3.4948040606861888e-016 -5.7074481607585268
		-4.0357752977430419 2.4711996502294867e-016 -4.0357752977430419
		;
createNode transform -n "L_foot" -p "master";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".rp" -type "double3" 1.0000000000000004 1.4044183546926503 -0.36201027382568973 ;
	setAttr ".sp" -type "double3" 1.0000000000000004 1.4044183546926503 -0.36201027382568973 ;
createNode nurbsCurve -n "L_footShape" -p "|Keso|master|L_foot";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.9135810928455543 -0.051855284807878287 -1.5195469445624341
		0.85964983343583323 -0.051855284807878259 -1.9572694100701913
		0.10010325957953814 -0.051855284807878287 -1.3122677908170737
		0.019903075749350577 -0.051855284807878377 -0.21740582788723792
		0.0074338271232203823 -0.051855284807878467 1.9067949170179039
		0.90640425499026533 -0.051855284807878502 2.786667674760646
		2.5122319482501321 -0.051855284807878467 1.906794917017905
		2.0340028073328087 -0.051855284807878377 -0.21740582788723545
		1.9135810928455543 -0.051855284807878287 -1.5195469445624341
		0.85964983343583323 -0.051855284807878259 -1.9572694100701913
		0.10010325957953814 -0.051855284807878287 -1.3122677908170737
		;
createNode ikHandle -n "ikHandle1" -p "|Keso|master|L_foot";
	setAttr ".t" -type "double3" 0.99999998384518629 1.4044183547127731 -0.36201027444121242 ;
	setAttr ".roc" yes;
createNode ikHandle -n "ikHandle2" -p "ikHandle1";
	setAttr ".t" -type "double3" 1.8482563368671382e-008 -1.0000000000534466 0.58907206613731677 ;
	setAttr ".pv" -type "double3" -1.8863230915679772e-008 -0.66612613887447314 -1.1322565239415423 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle1_poleVectorConstraint1" -p "ikHandle1";
	addAttr -ci true -k true -sn "w0" -ln "L_kneeW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.0092251392093323226 -3.5857522870591207 0.12488319943341396 ;
	setAttr -k on ".w0";
createNode transform -n "L_knee" -p "|Keso|master|L_foot";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".rp" -type "double3" 0.99077486079066768 5.0920493440822021 0.00067745187638124094 ;
	setAttr ".sp" -type "double3" 0.99077486079066768 5.0920493440822021 0.00067745187638834636 ;
createNode nurbsCurve -n "L_kneeShape" -p "|Keso|master|L_foot|L_knee";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4753682106718986 5.5766426939633806 16.858582007046202
		0.99077486079062127 5.7773678317200163 16.858582007046202
		0.5061815109093446 5.5766426939633815 16.858582007046202
		0.30545637315270879 5.0920493440821053 17.315387655579165
		0.50618151090934438 4.6074559942008282 16.858582007046202
		0.99077486079062116 4.4067308564441916 16.858582007046202
		1.4753682106718979 4.6074559942008273 16.858582007046202
		1.6760933484285334 5.0920493440821053 17.315387655579165
		1.4753682106718986 5.5766426939633806 16.858582007046202
		0.99077486079062127 5.7773678317200163 16.858582007046202
		0.5061815109093446 5.5766426939633815 16.858582007046202
		;
createNode transform -n "R_foot" -p "master";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".rp" -type "double3" -1.0000000000000011 1.4044200000000009 -0.36200999999999994 ;
	setAttr ".sp" -type "double3" -1.0000000000000011 1.4044200000000009 -0.36200999999999994 ;
createNode nurbsCurve -n "R_footShape" -p "|Keso|master|R_foot";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.9135810928455543 -0.051855284807878287 -1.5195469445624343
		-0.85964983343583312 -0.051855284807878259 -1.9572694100701913
		-0.10010325957953792 -0.051855284807878287 -1.3122677908170737
		-0.019903075749350498 -0.051855284807878377 -0.21740582788723783
		-0.0074338271232205645 -0.051855284807878467 1.9067949170179039
		-0.90640425499026556 -0.051855284807878502 2.786667674760646
		-2.5122319482501325 -0.051855284807878467 1.9067949170179048
		-2.0340028073328087 -0.051855284807878377 -0.21740582788723564
		-1.9135810928455543 -0.051855284807878287 -1.5195469445624343
		-0.85964983343583312 -0.051855284807878259 -1.9572694100701913
		-0.10010325957953792 -0.051855284807878287 -1.3122677908170737
		;
createNode ikHandle -n "ikHandle3" -p "|Keso|master|R_foot";
	setAttr ".t" -type "double3" -1.0000000161548133 1.404419999979877 -0.36200999938448603 ;
	setAttr ".roc" yes;
createNode ikHandle -n "ikHandle4" -p "ikHandle3";
	setAttr ".t" -type "double3" 1.8904140586251117e-008 -1.0000019999405163 0.58907200031151741 ;
	setAttr ".pv" -type "double3" -1.3136699999998604 6.837886773485385e-008 1.1607919629364392e-007 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle3_poleVectorConstraint1" -p "ikHandle3";
	addAttr -ci true -k true -sn "w0" -ln "L_knee1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.0092251392093322115 -3.5857506559177956 0.12488345187638124 ;
	setAttr -k on ".w0";
createNode transform -n "L_knee1" -p "|Keso|master|R_foot";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".rp" -type "double3" -0.99077486079066779 5.0920493440822039 0.00067745187638479365 ;
	setAttr ".sp" -type "double3" -0.99077486079066779 5.0920493440822039 0.00067745187638124094 ;
createNode nurbsCurve -n "L_knee1Shape" -p "L_knee1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.4753682106718988 5.5766426939633824 16.858582007046195
		-0.99077486079062149 5.7773678317200181 16.858582007046195
		-0.5061815109093446 5.5766426939633833 16.858582007046195
		-0.3054563731527089 5.0920493440821071 17.315387655579158
		-0.5061815109093446 4.6074559942008291 16.858582007046195
		-0.99077486079062149 4.4067308564441934 16.858582007046195
		-1.4753682106718982 4.6074559942008291 16.858582007046195
		-1.6760933484285334 5.0920493440821071 17.315387655579158
		-1.4753682106718988 5.5766426939633824 16.858582007046195
		-0.99077486079062149 5.7773678317200181 16.858582007046195
		-0.5061815109093446 5.5766426939633833 16.858582007046195
		;
createNode transform -n "root1" -p "master";
	addAttr -ci true -sn "KnifeAttach" -ln "KnifeAttach" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".rp" -type "double3" 4.4408899999999997e-016 9 0 ;
	setAttr ".sp" -type "double3" 4.4408899999999997e-016 9 0 ;
	setAttr -k on ".KnifeAttach";
createNode nurbsCurve -n "root1Shape" -p "root1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.6181772448692029 9 -2.6181772448691989
		2.1659565099607367e-017 9 -3.7026617683906471
		-2.6181772448691993 9 -2.6181772448691998
		-3.7026617683906462 9 -1.4438827923673132e-015
		-2.6181772448691998 9 2.6181772448691985
		-6.7159525240136978e-016 9 3.7026617683906462
		2.6181772448691989 9 2.6181772448691998
		3.7026617683906471 9 1.6177628135413234e-015
		2.6181772448692029 9 -2.6181772448691989
		2.1659565099607367e-017 9 -3.7026617683906471
		-2.6181772448691993 9 -2.6181772448691998
		;
createNode joint -n "root" -p "root1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 4.4408899999999997e-016 9 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 90.000000000000014 ;
	setAttr ".bps" -type "matrix" -2.2204460492503131e-016 1 0 0 -1 -2.2204460492503131e-016 0 0
		 0 0 1 0 4.4408899999999997e-016 9 0 1;
	setAttr ".radi" 0.60344827586206906;
createNode joint -n "chest" -p "root";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -2.2204460492503131e-016 1 0 0 -1 -2.2204460492503131e-016 0 0
		 0 0 1 0 -2.9582283945787978e-031 13 0 1;
	setAttr ".radi" 0.60344827586206906;
createNode joint -n "neck" -p "|Keso|master|root1|root|chest";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -180 ;
	setAttr ".bps" -type "matrix" 3.4450928483976665e-016 -1 0 0 1 3.4450928483976665e-016 0 0
		 0 0 1 0 -3.6739385451929995e-016 16 0 1;
	setAttr ".radi" 0.60344827586206895;
createNode joint -n "jaw" -p "|Keso|master|root1|root|chest|neck";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -1.2891352279616439 8.1151290996611519e-016 2.1972857727399679 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 1.2246467991473544e-016 0 0 -1.2246467991473544e-016 1.0000000000000002 0 0
		 0 0 1 0 -3.9443045261050652e-031 17.289135227961644 2.1972857727399679 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_eye" -p "|Keso|master|root1|root|chest|neck";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -2.8604533864478014 1.1559550142453561 2.2080665791472054 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 1.2246467991473544e-016 0 0 -1.2246467991473544e-016 1.0000000000000002 0 0
		 0 0 1 0 1.1559550142453547 18.860453386447801 2.2080665791472054 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_eye" -p "|Keso|master|root1|root|chest|neck";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -2.8604999999999983 -1.1559599999999988 2.20807 ;
	setAttr ".r" -type "double3" -6.3054923636448495e-014 4.4145250277466734e-020 -4.4978913555608935e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 1.2246467991473544e-016 0 0 -1.2246467991473544e-016 1.0000000000000002 0 0
		 0 0 1 0 -1.1559600000000001 18.860499999999998 2.2080700000000002 1;
	setAttr ".radi" 0.5;
createNode joint -n "feather1" -p "|Keso|master|root1|root|chest|neck";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 10.965724194279179 179.99999999999997 ;
	setAttr ".bps" -type "matrix" 2.0301478142564143e-016 0.98174115462934508 -0.19022172669556001 0
		 -2.8757775594990424e-016 0.19022172669556001 0.98174115462934508 0 1 -1.6896886404936835e-016 1.1102230246251563e-016 0
		 -4.9303806576313282e-031 20.633564520004292 -2.4509958175407394 1;
	setAttr ".radi" 0.59394752026124598;
createNode joint -n "feather2" -p "|Keso|master|root1|root|chest|neck|feather1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 16.343269107123131 2.5047173532808369 2.4893156682230688 ;
	setAttr ".bps" -type "matrix" -0.043701642201027617 0.98813170263488692 -0.147261348346445 0
		 0.28112262878190553 0.1536090435094225 0.94729843731469932 0 0.95867629263254672 -9.7383703091432687e-016 -0.2844991492857506 0
		 2.5711717914918367e-016 23.377511842416805 -2.9826618225459298 1;
	setAttr ".radi" 0.61135742792272796;
createNode joint -n "feather3" -p "|Keso|master|root1|root|chest|neck|feather1|feather2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.99999999999969 -73.471087335084903 98.836134247883578 ;
	setAttr ".bps" -type "matrix" 1 9.7460134914925419e-016 -5.5511151231257827e-016 0
		 -9.3726470479664537e-016 1.0000000000000002 -1.2389269038062665e-015 0 5.5511151231257827e-016 1.2762565290007276e-015 1 0
		 -0.075306364780185819 25.080253494714217 -3.2364215500542564 1;
	setAttr ".radi" 0.61135742792272796;
createNode parentConstraint -n "feather3_parentConstraint1" -p "|Keso|master|root1|root|chest|neck|feather1|feather2|feather3";
	addAttr -ci true -k true -sn "w0" -ln "feather3W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.038376328980444067 -0.051141845251599705 
		-0.11984750105828557 ;
	setAttr ".tg[0].tor" -type "double3" -7.4165837394773095e-014 3.4986101496098681e-014 
		5.5677676530151565e-014 ;
	setAttr ".lr" -type "double3" 6.3611093629270361e-014 -3.498610149609865e-014 -5.7249984266343321e-014 ;
	setAttr ".rst" -type "double3" 1.7231930194699672 1.1102230246251563e-015 -1.4432899320127035e-015 ;
	setAttr ".rsrr" -type "double3" 6.3611093629270361e-014 -3.498610149609865e-014 
		-5.7249984266343321e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "feather2_parentConstraint1" -p "|Keso|master|root1|root|chest|neck|feather1|feather2";
	addAttr -ci true -k true -sn "w0" -ln "feather2W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -5.4234187233944632e-031 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 106.71642318193604 8.4682508775181855 92.532343632106233 ;
	setAttr ".lr" -type "double3" 9.3180312933501462e-017 -5.466578358765418e-016 -3.578124016646456e-015 ;
	setAttr ".rst" -type "double3" 2.794980438044778 6.6613381477509392e-016 -3.1030516356941987e-016 ;
	setAttr ".rsrr" -type "double3" -2.9134377843874786e-015 1.9679682091555507e-014 
		7.45442503468011e-016 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "feather1_parentConstraint1" -p "|Keso|master|root1|root|chest|neck|feather1";
	addAttr -ci true -k true -sn "w0" -ln "feather1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.9582283945788017e-031 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 90 10.965724194279179 89.999999999999986 ;
	setAttr ".lr" -type "double3" 1.6552148617688087e-032 -7.9513867036587899e-016 -2.3854160110976372e-015 ;
	setAttr ".rst" -type "double3" -4.6335645200042919 1.9636998535648947e-015 -2.4509958175407394 ;
	setAttr ".rsrr" -type "double3" 1.6552148617688087e-032 -7.9513867036587899e-016 
		-2.3854160110976372e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "neck_parentConstraint1" -p "|Keso|master|root1|root|chest|neck";
	addAttr -ci true -k true -sn "w0" -ln "neckW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.9303806576313238e-032 0 4.6188973725792187e-017 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -89.999999999999986 ;
	setAttr ".lr" -type "double3" 0 0 5.7055094273191911e-015 ;
	setAttr ".rst" -type "double3" 3 -2.9873996025579392e-016 0 ;
	setAttr ".rsrr" -type "double3" 0 0 5.7055094273191919e-015 ;
	setAttr -k on ".w0";
createNode joint -n "L_shoulder" -p "|Keso|master|root1|root|chest";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -91.950467536173619 ;
	setAttr ".bps" -type "matrix" 0.99942062433366718 -0.034035505821170098 0 0 0.034035505821170098 0.99942062433366718 0 0
		 0 0 1 0 1.9999999999999991 14.60890621900726 -0.39520589310364101 1;
	setAttr ".radi" 0.65517241379310343;
createNode joint -n "L_elbow" -p "|Keso|master|root1|root|chest|L_shoulder";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.5545298617996184e-018 3.1024861364351687e-015 0.27902901272499508 ;
	setAttr ".bps" -type "matrix" 0.99957452430598348 -0.029167968020874631 0 0 0.029167968020874631 0.99957452430598348 0 0
		 0 0 1 0 5.751219121818778 14.481157564288152 -0.39520589310364101 1;
	setAttr ".radi" 0.60344827586206895;
createNode joint -n "L_wrist" -p "|Keso|master|root1|root|chest|L_shoulder|L_elbow";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.5307209104987926e-016 1.1249178007461539e-014 1.5591972178726836 ;
	setAttr ".bps" -type "matrix" 0.99999808119862932 -0.0019589790860719686 0 0 0.0019589790860719686 0.99999808119862932 0 0
		 0 0 1 0 8.8254002394234803 14.391451780128708 -0.39520589310364129 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_fingers1" -p "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.02580795833999797 0.36954259147712865 -3.8826985024034681 ;
	setAttr ".bps" -type "matrix" 0.99754945812272355 -0.069666922531362141 -0.006449690230546935 0
		 0.069665466429175898 0.99757030825150828 -0.00045042446223481634 0 0.0064653991575301896 -7.1910691648319897e-015 0.99997909908844285 0
		 9.956344589846438 14.389236279547616 -0.39520589310364129 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_fingers2" -p "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -0.37044266546064314 3.9948565804438534 ;
	setAttr ".bps" -type "matrix" 1 -3.404917782011145e-015 -4.3368086899420177e-018 0
		 3.4000578376695466e-015 1 7.1692597610726064e-015 0 3.4694469519536142e-018 -7.1691806113730394e-015 1 0
		 10.668184521143328 14.339522757130675 -0.39980831859063554 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "L_fingers2_parentConstraint1" -p "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2";
	addAttr -ci true -k true -sn "w0" -ln "L_fingers2W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-015 -5.3290705182007514e-015 
		5.5511151231257827e-017 ;
	setAttr ".tg[0].tor" -type "double3" 4.1114104779416341e-013 1.0933156717530838e-015 
		-1.8077462914455677e-013 ;
	setAttr ".lr" -type "double3" 1.265699250680061e-015 -2.9846818986512399e-016 1.956020685242342e-013 ;
	setAttr ".rst" -type "double3" 0.71358861006901364 0 -2.55351295663786e-015 ;
	setAttr ".rsrr" -type "double3" 1.265699250680061e-015 -2.9846818986512399e-016 
		1.956020685242342e-013 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_fingers1_parentConstraint1" -p "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1";
	addAttr -ci true -k true -sn "w0" -ln "L_fingers1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-015 -7.1054273576010019e-015 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -0.025807958339997637 0.36954259147712953 -3.9949398079793697 ;
	setAttr ".lr" -type "double3" 2.3139777711819539e-016 8.0377726187742241e-016 1.669901010090227e-014 ;
	setAttr ".rst" -type "double3" 1.1309465204846916 5.3290705182007514e-015 -5.5511151231257827e-017 ;
	setAttr ".rsrr" -type "double3" 2.3139777711819539e-016 8.0377726187742241e-016 
		1.669901010090227e-014 ;
	setAttr -k on ".w0";
createNode joint -n "L_thumb" -p "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 0.11224130557572513 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 -3.3757718842508666e-015 0 0 3.3757718842508666e-015 1.0000000000000002 0 0
		 0 0 1 0 9.845789134542656 14.25960243768332 0.10202780747438156 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "L_thumb_parentConstraint1" -p "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb";
	addAttr -ci true -k true -sn "w0" -ln "L_thumbW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -7.1054273576010019e-015 -1.2490009027033011e-016 ;
	setAttr ".tg[0].tor" -type "double3" 3.9929736199362844e-016 8.8171469039512527e-016 
		-1.7666987332191877e-013 ;
	setAttr ".lr" -type "double3" 0 0 1.9341748156650014e-013 ;
	setAttr ".rst" -type "double3" 1.0206452272999282 -0.12985016894749002 0.4972337005780228 ;
	setAttr ".rsrr" -type "double3" 0 0 1.9341748156650017e-013 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_wrist_parentConstraint1" -p "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist";
	addAttr -ci true -k true -sn "w0" -ln "L_wristW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-015 -7.1054273576010019e-015 
		-1.6653345369377348e-016 ;
	setAttr ".tg[0].tor" -type "double3" 5.5779120189752553e-018 2.0492078756068945e-016 
		-0.11224130557591971 ;
	setAttr ".lr" -type "double3" 0 0 -9.939233379573486e-016 ;
	setAttr ".rst" -type "double3" 3.0754896637038076 0 -1.6653345369377348e-016 ;
	setAttr ".rsrr" -type "double3" 0 0 -9.939233379573486e-016 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_elbow_parentConstraint1" -p "|Keso|master|root1|root|chest|L_shoulder|L_elbow";
	addAttr -ci true -k true -sn "w0" -ln "L_elbowW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -3.5527136788005009e-015 -1.1102230246251563e-016 ;
	setAttr ".tg[0].tor" -type "double3" 1.1405104507267572e-017 2.3419040937203151e-015 
		-1.6714385234486595 ;
	setAttr ".lr" -type "double3" 0 0 -5.7150591932547567e-014 ;
	setAttr ".rst" -type "double3" 3.7533937468218528 -8.8817841970012523e-015 0 ;
	setAttr ".rsrr" -type "double3" 0 0 -5.7349376600139049e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_shoulder_parentConstraint1" -p "|Keso|master|root1|root|chest|L_shoulder";
	addAttr -ci true -k true -sn "w0" -ln "L_shoulderW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 5.5511151231257827e-017 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -1.9504675361735975 ;
	setAttr ".lr" -type "double3" 0 0 6.3611093629270335e-015 ;
	setAttr ".rst" -type "double3" 1.6089062190072596 -2 -0.39520589310364101 ;
	setAttr ".rsrr" -type "double3" 0 0 6.3611093629270335e-015 ;
	setAttr -k on ".w0";
createNode joint -n "R_shoulder" -p "|Keso|master|root1|root|chest";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999914622634 0 91.949724792878911 ;
	setAttr ".bps" -type "matrix" -0.99942106546270892 -0.03402255001295118 -8.2718061255302804e-025 0
		 -0.034022550012951069 0.99942106546270892 1.4901161316312338e-008 0 -5.0697550613529017e-010 1.4892534519380576e-008 -1 0
		 -2 14.6089 -0.39520599999999995 1;
	setAttr ".radi" 0.65517241379310343;
createNode joint -n "R_elbow" -p "|Keso|master|root1|root|chest|R_shoulder";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 0.27839337410230725 ;
	setAttr ".bps" -type "matrix" -0.99957457882877054 -0.029166099487007213 7.2402684615741256e-011 0
		 -0.029166099487007106 0.99957457882877054 1.4900985417952184e-008 0 -5.0697550613529017e-010 1.4892534519380576e-008 -1 0
		 -5.75122 14.481200000000008 -0.395206 1;
	setAttr ".radi" 0.60344827586206895;
createNode joint -n "R_wrist" -p "|Keso|master|root1|root|chest|R_shoulder|R_elbow";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 1.5548087816773672 ;
	setAttr ".bps" -type "matrix" -0.99999793202540321 -0.002033702268605532 4.7668747648547054e-010 0
		 -0.0020337022686054244 0.99999793202540321 1.489353475923446e-008 0 -5.0697550613529017e-010 1.4892534519380576e-008 -1 0
		 -8.8254000000000019 14.391500000000008 -0.39520599711133014 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_fingers1" -p "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.025797987388757625 -0.36949848923794099 -3.877221812374303 ;
	setAttr ".bps" -type "matrix" -0.99755091631800052 -0.069646110949750484 -0.0064489210487468866 0
		 -0.069644655633968114 0.9975717614435442 -0.00045023555049857115 0 0.0064646186851123229 -3.0816284557042298e-013 -0.99997910413430957 0
		 -9.9563400000000009 14.389200000000008 -0.39520599650511989 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_fingers2" -p "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 180.3703979774661 3.9936612612641502 ;
	setAttr ".bps" -type "matrix" 1 -2.6166559060824786e-015 -5.360877948154541e-010 0
		 2.7061686225238191e-015 1.0000000000000002 -3.0815259198513356e-013 0 5.3608779741753931e-010 3.081523946918849e-013 1 0
		 -10.668200000002468 14.339500000000148 -0.39980799612507045 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "R_fingers2_parentConstraint1" -p "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2";
	addAttr -ci true -k true -sn "w0" -ln "R_fingers2W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.5478859131334843e-005 -2.2757130535566716e-005 
		3.224655639733065e-007 ;
	setAttr ".tg[0].tor" -type "double3" -1.7656215688016767e-011 3.071556824048928e-008 
		-1.3958580938309638e-013 ;
	setAttr ".lr" -type "double3" -9.9392337909185876e-016 -3.0715583428297906e-008 
		1.5346176338088113e-013 ;
	setAttr ".rst" -type "double3" 0.71360768493900117 -3.5527136788005009e-015 -5.5511151231257827e-017 ;
	setAttr ".rsrr" -type "double3" -9.9392337909185876e-016 -3.0715583428297906e-008 
		1.5346176338088111e-013 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_fingers1_parentConstraint1" -p "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1";
	addAttr -ci true -k true -sn "w0" -ln "R_fingers1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.5898464424709573e-006 -3.6279547618534025e-005 
		-1.0340147960086199e-007 ;
	setAttr ".tg[0].tor" -type "double3" 0.025797134140600815 179.6305014803103 3.9937444439710088 ;
	setAttr ".lr" -type "double3" -2.0230543726189938e-009 2.8977076449811797e-008 1.3774711658372497e-015 ;
	setAttr ".rst" -type "double3" 1.1309423387600257 -1.7763568394002505e-015 -6.7104211076696174e-011 ;
	setAttr ".rsrr" -type "double3" -2.0230543788310152e-009 2.8977025502408021e-008 
		1.3889488459063647e-015 ;
	setAttr -k on ".w0";
createNode joint -n "R_thumb" -p "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999914853075 0 -179.8834773628993 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 -2.5696892530513441e-014 -5.0697550613567191e-010 0
		 2.5797778614203892e-014 1 3.1592586447503339e-011 0 5.0697550613567367e-010 -3.1592586447518228e-011 1.0000000000000002 0
		 -9.8457899997334408 14.259599999984298 0.1020280034315213 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "R_thumb_parentConstraint1" -p "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_thumb";
	addAttr -ci true -k true -sn "w0" -ln "R_thumbW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.6519078301705576e-007 -2.4376990328534021e-006 
		1.9595713866837896e-007 ;
	setAttr ".tg[0].tor" -type "double3" 1.8101214924813489e-009 2.90475571139608e-008 
		-1.4586818907862053e-012 ;
	setAttr ".lr" -type "double3" -1.8101172803147059e-009 -2.1931569022548914e-020 
		1.4757773721990714e-012 ;
	setAttr ".rst" -type "double3" 1.0206561351591257 -0.12982455038696905 -0.49723400198986389 ;
	setAttr ".rsrr" -type "double3" -1.8101172803147063e-009 -2.1931569022548914e-020 
		1.4757773721990714e-012 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_wrist_parentConstraint1" -p "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist";
	addAttr -ci true -k true -sn "w0" -ln "R_wristW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.3942347482375226e-007 4.8219871290555716e-005 
		-1.0400768990503906e-007 ;
	setAttr ".tg[0].tor" -type "double3" 179.9999991466633 -2.7312179606406442e-008 
		-179.88347736290078 ;
	setAttr ".lr" -type "double3" -5.9090877639104746e-011 1.7353161897633884e-009 9.1440938143654671e-015 ;
	setAttr ".rst" -type "double3" 3.0754883778678161 2.6645352591003757e-014 -2.6659962570896312e-009 ;
	setAttr ".rsrr" -type "double3" -5.9090877639104746e-011 1.7353161897633884e-009 
		9.1440938143654671e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_elbow_parentConstraint1" -p "|Keso|master|root1|root|chest|R_shoulder|R_elbow";
	addAttr -ci true -k true -sn "w0" -ln "R_elbowW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.781812219638141e-007 4.2435711854693636e-005 
		-1.0689635943084139e-007 ;
	setAttr ".tg[0].tor" -type "double3" 179.99999914623643 -4.1483653048675865e-009 
		-178.32866858122355 ;
	setAttr ".lr" -type "double3" -8.4721075351843946e-010 2.4886830984731217e-008 1.4744834318995232e-013 ;
	setAttr ".rst" -type "double3" 3.7533929688216761 3.5527136788005009e-015 5.5511151231257827e-017 ;
	setAttr ".rsrr" -type "double3" -8.4721075351843956e-010 2.4886830984731217e-008 
		1.4744834318995232e-013 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_shoulder_parentConstraint1" -p "|Keso|master|root1|root|chest|R_shoulder";
	addAttr -ci true -k true -sn "w0" -ln "R_shoulderW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.4408920985006262e-016 -6.2190072593892864e-006 
		-1.068963587647076e-007 ;
	setAttr ".tg[0].tor" -type "double3" 179.99999914622634 4.7393957994334673e-023 
		-178.0502752071211 ;
	setAttr ".lr" -type "double3" 1.8957583197733848e-022 -4.2654562194901189e-022 3.1805546814635168e-014 ;
	setAttr ".rst" -type "double3" 1.6089000000000002 1.9999999999999996 -0.39520599999999995 ;
	setAttr ".rsrr" -type "double3" 9.4787915988669346e-023 1.4218187398300397e-022 
		-6.3611093629270335e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "chest_parentConstraint1" -p "|Keso|master|root1|root|chest";
	addAttr -ci true -k true -sn "w0" -ln "chestW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.972152263052533e-031 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 90.000000000000014 ;
	setAttr ".rst" -type "double3" 4 -4.4408941970012536e-016 0 ;
	setAttr -k on ".w0";
createNode joint -n "L_Leg" -p "root";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.32219836885867714 -0.99999999999999956 -0.12420574755703272 ;
	setAttr ".r" -type "double3" -2.1524866975883268 0.14538810369933342 -0.0079255055896073658 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 94.227339836792723 -1.9946625170984995 179.85259428604039 ;
	setAttr ".bps" -type "matrix" -0.0025711533330504792 -0.99939076637861157 0.034806396649318221 0
		 -0.073624530315926209 0.034901233175515842 0.99667513887855541 0 -0.99728271703980587 2.6428132636984048e-016 -0.073669412198705597 0
		 1 8.6778016311413229 -0.12420574755703272 1;
	setAttr ".radi" 0.60344827586206895;
createNode joint -n "L_knee" -p "L_Leg";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 3.5879381796296146 -9.7144514654701197e-017 2.3765711620882257e-016 ;
	setAttr ".r" -type "double3" -1.5282329536514404e-027 1.7549996161527202e-014 -1.3835767309312503e-012 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 177.24553635461686 -0.27088961268119399 -7.6125097294148114 ;
	setAttr ".bps" -type "matrix" 0.0024896236972503085 -0.99519511733852972 -0.097879927459085955 0
		 0.025305088812414007 0.097911584736178378 -0.99487334573534869 0 0.99967667485744738 6.116286370422459e-016 0.02542726383152679 0
		 0.99077486079066612 5.0920493440822021 0.00067745187638830473 1;
	setAttr ".radi" 0.65517241379310331;
createNode joint -n "L_ankle" -p "|Keso|master|root1|root|L_Leg|L_knee";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 3.7054351705939399 -2.5993476034796847e-015 -4.1251724258728473e-015 ;
	setAttr ".r" -type "double3" 1.8223238348826989 -1.1549615299300193 -0.018369304936743547 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 178.74452393343006 -0.73946563935886667 -36.111971384026653 ;
	setAttr ".bps" -type "matrix" -4.2500725161431774e-016 -0.86161896802042204 0.50755566586082279 0
		 2.2080743348334986e-008 0.50755566586082246 0.86161896802042226 0 -1.0000000000000004 1.1207206758602648e-008 1.9025187085464079e-008 0
		 0.99999999999999734 1.4044183546926503 -0.36201027382568984 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_foot" -p "L_ankle";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.1606058328747213 7.800155424131204e-016 2.026568343120263e-018 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -59.498849401738767 89.999999999999972 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 -1.1207207113063335e-008 -1.9025186812234623e-008 0
		 1.1207207203149636e-008 0.99999999999999989 1.1102230161762762e-015 0 1.9025186859156728e-008 -1.3877787782929461e-015 1.0000000000000004 0
		 0.99999999999999678 0.40441835469265119 0.22706179248099481 1;
	setAttr ".radi" 0.5;
createNode ikEffector -n "effector2" -p "L_ankle";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector1" -p "|Keso|master|root1|root|L_Leg|L_knee";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "R_Leg" -p "root";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.32220000000000049 1.0000000000000004 -0.124206 ;
	setAttr ".r" -type "double3" 2.1524536994432335 -0.14538595528362777 -0.0079252461658251405 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 85.772732228583195 -1.994667819288948 -179.8525964163982 ;
	setAttr ".bps" -type "matrix" 0.0025711550541978653 -0.99939076325320864 0.034806486261273521 0
		 0.073623852240308527 0.034901322670761271 0.99667518583394499 0 -0.99728276709415997 -1.883994621360748e-008 0.073668734596266439 0
		 -1 8.6777999999999995 -0.124206 1;
	setAttr ".radi" 0.60344827586206895;
createNode joint -n "R_knee" -p "R_Leg";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 3.5879359023968664 -3.0357660829594124e-018 -5.2041704279304213e-017 ;
	setAttr ".r" -type "double3" -2.1284760405062703e-028 -1.1695847661477574e-014 -9.2260234253439777e-013 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -177.24558725360905 0.27088447666291721 -7.612512337088801 ;
	setAttr ".bps" -type "matrix" -0.0024896246647118257 -0.99519512197796478 -0.097879880262966193 0
		 -0.025305303082809996 0.097911537579916413 -0.99487334492618917 0 0.99967666943112987 1.8817970916821432e-008 -0.025427477167105215 0
		 -0.99077486047041441 5.0920500000000057 0.00067744169310654523 1;
	setAttr ".radi" 0.65517241379310331;
createNode joint -n "R_ankle" -p "R_knee";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 3.7054341588217783 -1.492621130860794e-015 -8.2919782151691379e-016 ;
	setAttr ".r" -type "double3" -1.8223041367313859 1.1549422976034363 -0.018368658109232945 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -178.74454124261374 0.73945388517939825 -36.111915924051225 ;
	setAttr ".bps" -type "matrix" 3.0945457271669419e-007 -0.86161943763641835 0.50755486864673705 0
		 1.0231369671626078e-007 0.50755486864678589 0.861619437636439 0 -0.99999999999994715 -2.1470226002381235e-007 2.4522064477269789e-007 0
		 -1.0000000007456835 1.4044200003300489 -0.36201001009467249 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_foot" -p "R_ankle";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.1606075224588197 -2.5539991535495954e-016 4.1099663435587839e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -59.498902335193478 89.999999999999545 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999994715 2.1470225320385024e-007 -2.4522064081968375e-007 0
		 -2.1470225274135002e-007 0.99999999999997713 1.3879796756360501e-009 0 2.4522064113573059e-007 -1.387927162089545e-009 0.99999999999997014 0
		 -0.99999964159037902 0.40441799951248369 0.22706198851732839 1;
	setAttr ".radi" 0.5;
createNode ikEffector -n "effector4" -p "R_ankle";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector3" -p "R_knee";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "chest" -p "root1";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".rp" -type "double3" 0 13 0 ;
	setAttr ".sp" -type "double3" 0 13 0 ;
createNode nurbsCurve -n "chestShape" -p "|Keso|master|root1|chest";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.6181772448692024 13.000000000000002 -2.6181772448691989
		-4.2242943490039255e-016 13.000000000000002 -3.7026617683906462
		-2.6181772448691998 13.000000000000002 -2.6181772448691998
		-3.7026617683906462 13.000000000000002 -1.4438827923673132e-015
		-2.6181772448692007 13.000000000000002 2.6181772448691985
		-1.1156842524013697e-015 13.000000000000002 3.7026617683906462
		2.6181772448691985 13.000000000000002 2.6181772448691998
		3.7026617683906462 13.000000000000002 1.6177628135413234e-015
		2.6181772448692024 13.000000000000002 -2.6181772448691989
		-4.2242943490039255e-016 13.000000000000002 -3.7026617683906462
		-2.6181772448691998 13.000000000000002 -2.6181772448691998
		;
createNode transform -n "R_shoulder" -p "|Keso|master|root1|chest";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" -1.9999999999999996 14.60890621900726 -0.39520589310364118 ;
	setAttr ".sp" -type "double3" -1.9999999999999996 14.60890621900726 -0.39520589310364118 ;
createNode nurbsCurve -n "R_shoulderShape" -p "|Keso|master|root1|chest|R_shoulder";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2 13.622407586666132 -1.3817045254447673
		-2 14.60890621900726 -1.7903256382229715
		-1.9999999999999996 15.595404851348386 -1.3817045254447675
		-1.9999999999999991 16.004025964126591 -0.39520589310364174
		-1.9999999999999991 15.595404851348386 0.59129273923748449
		-1.9999999999999991 14.60890621900726 0.99991385201568939
		-1.9999999999999996 13.622407586666132 0.59129273923748493
		-2 13.213786473887929 -0.39520589310364063
		-2 13.622407586666132 -1.3817045254447673
		-2 14.60890621900726 -1.7903256382229715
		-1.9999999999999996 15.595404851348386 -1.3817045254447675
		;
createNode transform -n "R_elbow" -p "|Keso|master|root1|chest|R_shoulder";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" -5.751219121818778 14.481157564288155 -0.39520589310364057 ;
	setAttr ".sp" -type "double3" -5.751219121818778 14.481157564288155 -0.39520589310364057 ;
createNode nurbsCurve -n "R_elbowShape" -p "|Keso|master|root1|chest|R_shoulder|R_elbow";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-5.751219121818778 13.766906351687522 -1.1094571057042746
		-5.751219121818778 14.481157564288155 -1.4053096449048863
		-5.751219121818778 15.195408776888792 -1.1094571057042748
		-5.751219121818778 15.491261316089403 -0.39520589310364096
		-5.751219121818778 15.195408776888792 0.31904531949699327
		-5.751219121818778 14.481157564288155 0.61489785869760527
		-5.751219121818778 13.766906351687524 0.31904531949699361
		-5.751219121818778 13.471053812486913 -0.39520589310364018
		-5.751219121818778 13.766906351687522 -1.1094571057042746
		-5.751219121818778 14.481157564288155 -1.4053096449048863
		-5.751219121818778 15.195408776888792 -1.1094571057042748
		;
createNode transform -n "R_wrist" -p "|Keso|master|root1|chest|R_shoulder|R_elbow";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" -8.8254002394234785 14.391451780128715 -0.39520589310364029 ;
	setAttr ".sp" -type "double3" -8.8254002394234785 14.391451780128715 -0.39520589310364029 ;
createNode nurbsCurve -n "R_wristShape" -p "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-8.8254002394234785 13.860508019754496 -0.92614965347785883
		-8.8254002394234785 14.391451780128715 -1.1460737598822313
		-8.8254002394234785 14.922395540502936 -0.92614965347785905
		-8.8254002394234785 15.142319646907309 -0.39520589310364057
		-8.8254002394234785 14.922395540502936 0.13573786727057827
		-8.8254002394234785 14.391451780128715 0.35566197367495073
		-8.8254002394234785 13.860508019754496 0.13573786727057852
		-8.8254002394234785 13.640583913350124 -0.39520589310364002
		-8.8254002394234785 13.860508019754496 -0.92614965347785883
		-8.8254002394234785 14.391451780128715 -1.1460737598822313
		-8.8254002394234785 14.922395540502936 -0.92614965347785905
		;
createNode transform -n "R_fingers1" -p "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" -9.9563445898464416 14.389236279547625 -0.39520589310364024 ;
	setAttr ".sp" -type "double3" -9.9563445898464416 14.389236279547625 -0.39520589310364024 ;
createNode nurbsCurve -n "R_fingers1Shape" -p "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-9.9563445898464416 13.9689884008605 -0.92614965347785883
		-9.9563445898464416 14.389236279547625 -1.1460737598822313
		-9.9563445898464416 14.809484158234747 -0.92614965347785905
		-9.9563445898464416 14.98355652914548 -0.39520589310364046
		-9.9563445898464416 14.809484158234747 0.13573786727057835
		-9.9563445898464416 14.389236279547625 0.35566197367495078
		-9.9563445898464416 13.9689884008605 0.13573786727057857
		-9.9563445898464416 13.79491602994977 -0.3952058931036399
		-9.9563445898464416 13.9689884008605 -0.92614965347785883
		-9.9563445898464416 14.389236279547625 -1.1460737598822313
		-9.9563445898464416 14.809484158234747 -0.92614965347785905
		;
createNode transform -n "R_fingers2" -p "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" -10.668184521143337 14.339522757130684 -0.39980831859063448 ;
	setAttr ".sp" -type "double3" -10.668184521143337 14.339522757130684 -0.39980831859063448 ;
createNode nurbsCurve -n "R_fingers2Shape" -p "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-10.668184521143337 14.01233573436469 -0.93075207896485312
		-10.668184521143337 14.339522757130684 -1.1506761853692256
		-10.668184521143337 14.666709779896678 -0.93075207896485324
		-10.668184521143337 14.802235082158829 -0.3998083185906347
		-10.668184521143337 14.666709779896678 0.13113544178358413
		-10.668184521143337 14.339522757130684 0.35105954818795654
		-10.668184521143337 14.01233573436469 0.13113544178358433
		-10.668184521143337 13.876810432102539 -0.39980831859063415
		-10.668184521143337 14.01233573436469 -0.93075207896485312
		-10.668184521143337 14.339522757130684 -1.1506761853692256
		-10.668184521143337 14.666709779896678 -0.93075207896485324
		;
createNode transform -n "R_thumb" -p "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" -9.845789134542656 14.259602437683329 0.10202780747438268 ;
	setAttr ".sp" -type "double3" -9.845789134542656 14.259602437683329 0.10202780747438268 ;
createNode nurbsCurve -n "R_thumbShape" -p "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-10.180769170832916 14.01411856771238 0.044864139883036371
		-10.319522444988577 14.259602437683329 0.021186173491713325
		-10.180769170832916 14.505086307654274 0.04486413988303635
		-9.845789134542656 14.606769055940074 0.10202780747438264
		-9.5108090982523947 14.505086307654274 0.15919147506572898
		-9.3720558240967371 14.259602437683329 0.18286944145705203
		-9.5108090982523947 14.01411856771238 0.159191475065729
		-9.845789134542656 13.91243581942658 0.10202780747438273
		-10.180769170832916 14.01411856771238 0.044864139883036371
		-10.319522444988577 14.259602437683329 0.021186173491713325
		-10.180769170832916 14.505086307654274 0.04486413988303635
		;
createNode transform -n "L_shoulder" -p "|Keso|master|root1|chest";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" 1.9999999999999996 14.60890621900726 -0.39520589310364113 ;
	setAttr ".sp" -type "double3" 1.9999999999999996 14.60890621900726 -0.39520589310364113 ;
createNode nurbsCurve -n "L_shoulderShape" -p "|Keso|master|root1|chest|L_shoulder";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2 13.622407586666132 -1.3817045254447669
		1.9999999999999996 14.60890621900726 -1.7903256382229715
		1.9999999999999991 15.595404851348386 -1.3817045254447673
		1.9999999999999991 16.004025964126591 -0.39520589310364168
		1.9999999999999991 15.595404851348386 0.5912927392374846
		1.9999999999999996 14.60890621900726 0.99991385201568939
		2 13.622407586666132 0.59129273923748504
		2 13.213786473887929 -0.39520589310364057
		2 13.622407586666132 -1.3817045254447669
		1.9999999999999996 14.60890621900726 -1.7903256382229715
		1.9999999999999991 15.595404851348386 -1.3817045254447673
		;
createNode transform -n "L_elbow" -p "|Keso|master|root1|chest|L_shoulder";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" 5.751219121818778 14.481157564288155 -0.39520589310364096 ;
	setAttr ".sp" -type "double3" 5.751219121818778 14.481157564288155 -0.39520589310364096 ;
createNode nurbsCurve -n "L_elbowShape" -p "|Keso|master|root1|chest|L_shoulder|L_elbow";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.751219121818778 13.766906351687522 -1.109457105704275
		5.751219121818778 14.481157564288155 -1.405309644904887
		5.751219121818778 15.195408776888792 -1.109457105704275
		5.751219121818778 15.491261316089403 -0.39520589310364135
		5.751219121818778 15.195408776888792 0.31904531949699289
		5.751219121818778 14.481157564288155 0.61489785869760483
		5.751219121818778 13.766906351687524 0.31904531949699322
		5.751219121818778 13.471053812486913 -0.39520589310364046
		5.751219121818778 13.766906351687522 -1.109457105704275
		5.751219121818778 14.481157564288155 -1.405309644904887
		5.751219121818778 15.195408776888792 -1.109457105704275
		;
createNode transform -n "L_wrist" -p "|Keso|master|root1|chest|L_shoulder|L_elbow";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" 8.8254002394234785 14.391451780128715 -0.39520589310364101 ;
	setAttr ".sp" -type "double3" 8.8254002394234785 14.391451780128715 -0.39520589310364101 ;
createNode nurbsCurve -n "L_wristShape" -p "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		8.8254002394234785 13.860508019754496 -0.92614965347785971
		8.8254002394234785 14.391451780128715 -1.1460737598822319
		8.8254002394234785 14.922395540502936 -0.92614965347786005
		8.8254002394234785 15.142319646907309 -0.39520589310364135
		8.8254002394234785 14.922395540502936 0.13573786727057752
		8.8254002394234785 14.391451780128715 0.35566197367494995
		8.8254002394234785 13.860508019754496 0.13573786727057774
		8.8254002394234785 13.640583913350124 -0.39520589310364074
		8.8254002394234785 13.860508019754496 -0.92614965347785971
		8.8254002394234785 14.391451780128715 -1.1460737598822319
		8.8254002394234785 14.922395540502936 -0.92614965347786005
		;
createNode transform -n "L_fingers1" -p "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" 9.9563445898464416 14.389236279547625 -0.39520589310364118 ;
	setAttr ".sp" -type "double3" 9.9563445898464416 14.389236279547625 -0.39520589310364118 ;
createNode nurbsCurve -n "L_fingers1Shape" -p "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		9.9563445898464416 13.9689884008605 -0.92614965347785971
		9.9563445898464416 14.389236279547625 -1.1460737598822319
		9.9563445898464416 14.809484158234747 -0.92614965347786005
		9.9563445898464416 14.98355652914548 -0.39520589310364146
		9.9563445898464416 14.809484158234747 0.13573786727057741
		9.9563445898464416 14.389236279547625 0.35566197367494984
		9.9563445898464416 13.9689884008605 0.13573786727057763
		9.9563445898464416 13.79491602994977 -0.3952058931036409
		9.9563445898464416 13.9689884008605 -0.92614965347785971
		9.9563445898464416 14.389236279547625 -1.1460737598822319
		9.9563445898464416 14.809484158234747 -0.92614965347786005
		;
createNode transform -n "L_fingers2" -p "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" 10.668184521143337 14.339522757130684 -0.39980831859063554 ;
	setAttr ".sp" -type "double3" 10.668184521143337 14.339522757130684 -0.39980831859063554 ;
createNode nurbsCurve -n "L_fingers2Shape" -p "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		10.668184521143337 14.01233573436469 -0.93075207896485412
		10.668184521143337 14.339522757130684 -1.1506761853692264
		10.668184521143337 14.666709779896678 -0.93075207896485435
		10.668184521143337 14.802235082158829 -0.39980831859063581
		10.668184521143337 14.666709779896678 0.13113544178358305
		10.668184521143337 14.339522757130684 0.35105954818795548
		10.668184521143337 14.01233573436469 0.13113544178358327
		10.668184521143337 13.876810432102539 -0.3998083185906352
		10.668184521143337 14.01233573436469 -0.93075207896485412
		10.668184521143337 14.339522757130684 -1.1506761853692264
		10.668184521143337 14.666709779896678 -0.93075207896485435
		;
createNode transform -n "L_thumb" -p "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" 9.845789134542656 14.259602437683329 0.1020278074743818 ;
	setAttr ".sp" -type "double3" 9.845789134542656 14.259602437683329 0.1020278074743818 ;
createNode nurbsCurve -n "L_thumbShape" -p "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		10.180769170832916 14.01411856771238 0.044864139883035413
		10.319522444988577 14.259602437683329 0.02118617349171234
		10.180769170832916 14.505086307654274 0.044864139883035392
		9.845789134542656 14.606769055940074 0.10202780747438175
		9.5108090982523947 14.505086307654274 0.15919147506572817
		9.3720558240967371 14.259602437683329 0.18286944145705125
		9.5108090982523947 14.01411856771238 0.15919147506572817
		9.845789134542656 13.91243581942658 0.10202780747438182
		10.180769170832916 14.01411856771238 0.044864139883035413
		10.319522444988577 14.259602437683329 0.02118617349171234
		10.180769170832916 14.505086307654274 0.044864139883035392
		;
createNode transform -n "neck" -p "|Keso|master|root1|chest";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".rp" -type "double3" -3.6739385451929995e-016 16 -4.6188973725792187e-017 ;
	setAttr ".sp" -type "double3" -3.6739385451929995e-016 16 -4.6188973725792187e-017 ;
createNode nurbsCurve -n "neckShape" -p "|Keso|master|root1|chest|neck";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4874552024345742 16.28584932334639 -1.4597305037547466
		-6.0738710243077856e-016 16.404251989871636 -2.0643706758196738
		-1.4874552024345735 16.28584932334639 -1.4597305037547472
		-2.103579320705391 16 -8.0501797958695715e-016
		-1.4874552024345742 15.71415067665361 1.4597305037547463
		-1.0012433575508078e-015 15.595748010128364 2.0643706758196743
		1.487455202434572 15.71415067665361 1.459730503754747
		2.1035793207053906 16 9.0196251281083517e-016
		1.4874552024345742 16.28584932334639 -1.4597305037547466
		-6.0738710243077856e-016 16.404251989871636 -2.0643706758196738
		-1.4874552024345735 16.28584932334639 -1.4597305037547472
		;
createNode transform -n "feather1" -p "|Keso|master|root1|chest|neck";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".rp" -type "double3" -4.9303806576313282e-031 20.633564520004292 -2.4509958175407394 ;
	setAttr ".sp" -type "double3" -4.9303806576313282e-031 20.633564520004292 -2.4509958175407394 ;
createNode nurbsCurve -n "feather1Shape" -p "|Keso|master|root1|chest|neck|feather1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.3984373554530287 20.005239793225417 -3.6749571615269025
		-8.4115646170654782e-016 19.473780901602385 -3.9053568147356126
		-1.3984373554530285 20.005239793225417 -3.6749571615269025
		-1.9776890742108373 20.633564520004292 -2.4509958175407398
		-1.3984373554530292 22.571350321225609 -2.5624892264418464
		-1.2114421005191989e-015 23.102809212848641 -2.3320895732331355
		1.3984373554530267 22.571350321225609 -2.562489226441846
		1.9776890742108373 20.633564520004292 -2.4509958175407389
		1.3984373554530287 20.005239793225417 -3.6749571615269025
		-8.4115646170654782e-016 19.473780901602385 -3.9053568147356126
		-1.3984373554530285 20.005239793225417 -3.6749571615269025
		;
createNode transform -n "feather2" -p "|Keso|master|root1|chest|neck|feather1";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".rp" -type "double3" 2.5711717914918348e-016 23.377511842416805 -2.9826618225459298 ;
	setAttr ".sp" -type "double3" 2.5711717914918348e-016 23.377511842416805 -2.9826618225459298 ;
createNode nurbsCurve -n "feather2Shape" -p "|Keso|master|root1|chest|neck|feather1|feather2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.2369605878666277 23.191751859652207 -3.6298280716886646
		5.7539949169606188e-017 23.114807555444916 -3.8978931091937112
		-1.2369605878666261 23.191751859652207 -3.6298280716886646
		-1.7493264394819792 23.377511842416805 -2.9826618225459298
		-1.2369605878666263 23.563271825181403 -2.3354955734031941
		-2.6998901712855592e-016 23.640216129388698 -2.0674305358981471
		1.2369605878666257 23.563271825181403 -2.3354955734031937
		1.7493264394819796 23.377511842416805 -2.9826618225459289
		1.2369605878666277 23.191751859652207 -3.6298280716886646
		5.7539949169606188e-017 23.114807555444916 -3.8978931091937112
		-1.2369605878666261 23.191751859652207 -3.6298280716886646
		;
createNode transform -n "feather3" -p "|Keso|master|root1|chest|neck|feather1|feather2";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".rp" -type "double3" -0.036930035799741745 25.13139533996582 -3.1165740489959717 ;
	setAttr ".sp" -type "double3" -0.036930035799741745 25.13139533996582 -3.1165740489959717 ;
createNode nurbsCurve -n "feather3Shape" -p "|Keso|master|root1|chest|neck|feather1|feather2|feather3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.2000305520668857 24.945635357201223 -3.7637402981387074
		-0.036930035799741946 24.868691052993931 -4.031805335643754
		-1.2738906236663678 24.945635357201223 -3.7637402981387074
		-1.7862564752817212 25.13139533996582 -3.1165740489959721
		-1.2738906236663683 25.317155322730414 -2.4694077998532364
		-0.036930035799742272 25.39409962693771 -2.2013427623481898
		1.2000305520668837 25.317155322730414 -2.469407799853236
		1.7123964036822377 25.13139533996582 -3.1165740489959712
		1.2000305520668857 24.945635357201223 -3.7637402981387074
		-0.036930035799741946 24.868691052993931 -4.031805335643754
		-1.2738906236663678 24.945635357201223 -3.7637402981387074
		;
createNode joint -n "joint1" -p "master";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode transform -n "knife" -p "joint1";
	setAttr ".rp" -type "double3" 0.045268268275878043 0.33960767481285181 2.7755575615628914e-017 ;
	setAttr ".sp" -type "double3" 0.045268268275878043 0.33960767481285181 2.7755575615628914e-017 ;
createNode mesh -n "knifeShape" -p "knife";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.33939383318657901 0.050957226739501094 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 59 ".uvst[0].uvsp[0:58]" -type "float2" 0.40141907 0.46149921 
		0.37188861 0.46141064 0.3719002 0.45754796 0.40143067 0.45763659 0.31527409 0.055912554 
		0.31527042 0.064323828 0.31208953 0.062506564 0.31632805 0.040384226 0.40149251 0.43701184 
		0.37196204 0.43692303 0.37182665 0.48203546 0.40135717 0.48212415 0.36669937 0.066691436 
		0.36669874 0.053157449 0.36654323 0.025768528 0.36654261 0.039508555 0.33226812 0.066500165 
		0.33227053 0.053684916 0.33292097 0.026151316 0.33292317 0.039963201 0.32943162 0.069878228 
		0.33292025 0.021689439 0.31208828 0.062625848 0.31526917 0.06703338 0.71878052 0.47629139 
		0.69200683 0.47662351 0.71643931 0.47642228 0.69435573 0.47670445 0.67375195 0.44049644 
		0.69371033 0.4423753 0.7150299 0.44195324 0.69500929 0.44242144 0.69654691 0.38186875 
		0.68039083 0.40462762 0.39223555 0.45285225 0.39226884 0.44174075 0.38115734 0.44170731 
		0.38112378 0.45281887 0.33031318 0.078454815 0.31632337 0.021840196 0.31632459 0.026322247 
		0.33292097 0.078223661 0.3665432 0.080225013 0.31586593 0.07862439 0.32889521 0.078675136 
		0.31209308 0.059736282 0.371815 0.48589796 0.36796421 0.48202389 0.40521961 0.48213565 
		0.40134555 0.48598653 0.36802611 0.4613989 0.4052816 0.46151072 0.39568609 0.47275674 
		0.3956919 0.47083223 0.37755969 0.47077799 0.37755382 0.47270238 0.71633852 0.44183117 
		0.66999519 0.47482482 0.7110188 0.40573415;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".pt[0:33]" -type "float3"  7.1268277 -6.2723918 0 7.1268277 
		-6.2723918 0 7.1268277 -6.2723918 0 7.1268277 -6.2723918 0 7.1268277 -6.2723918 0 
		7.1268277 -6.2723918 0 7.1268277 -6.2723918 0 7.1268277 -6.2723918 0 7.1268277 -6.2723918 
		0 7.1268277 -6.2723918 0 7.1268277 -6.2723918 0 7.1268277 -6.2723918 0 7.1268277 
		-6.2723918 0 7.1268277 -6.2723918 0 7.1268277 -6.2723918 0 7.1268277 -6.2723918 0 
		7.1268277 -6.2723918 0 7.1268277 -6.2723918 0 7.1268277 -6.2723918 0 7.1268277 -6.2723918 
		0 7.1268277 -6.2723918 0 7.1268277 -6.2723918 0 7.1268277 -6.2723918 0 7.1268277 
		-6.2723918 0 7.1268277 -6.2723918 2.7755576e-017 7.1268277 -6.2723918 2.7755576e-017 
		7.1268277 -6.2723918 2.7755576e-017 7.1268277 -6.2723918 2.7755576e-017 7.1268277 
		-6.2723918 2.7755576e-017 7.1268277 -6.2723918 2.7755576e-017 7.1268277 -6.2723918 
		2.7755576e-017 7.1268277 -6.2723918 2.7755576e-017 7.1268277 -6.2723918 2.7755576e-017 
		7.1268277 -6.2723918 2.7755576e-017;
	setAttr -s 34 ".vt[0:33]"  -7.7974482 5.5881181 0.5 -6.3656702 5.5881181 
		0.5 -7.7974482 5.7753892 0.5 -6.3656702 5.7753892 0.5 -7.7974482 5.7753892 -0.5 -6.3656702 
		5.7753892 -0.5 -7.7974482 5.5881181 -0.5 -6.3656702 5.5881181 -0.5 -7.350934 5.7753892 
		0.26937455 -6.8121843 5.7753892 0.26937455 -6.8121843 5.7753892 -0.26937455 -7.350934 
		5.7753892 -0.26937455 -7.350934 7.7318006 0.26937455 -6.8121843 7.7318006 0.26937455 
		-6.8121843 7.7318006 -0.26937455 -7.350934 7.7318006 -0.26937455 -6.8121843 7.0873895 
		0.26937455 -7.350934 7.0873895 0.26937455 -7.350934 7.0873895 -0.26937455 -6.8121843 
		7.0873895 -0.26937455 -6.6385574 7.0873895 -0.26937455 -6.6385574 7.0873895 0.26937455 
		-6.6385574 7.7318006 -0.26937455 -6.6385574 7.7318006 0.26937455 -7.5211287 5.5881181 
		-0.046652626 -6.6419897 5.5881181 -0.046652626 -6.6419897 5.5881181 0.046652626 -7.5211287 
		5.5881181 0.046652626 -7.3333855 1.790031 0 -6.7910328 2.7663121 0 -7.4834661 4.2140975 
		0.026205514 -6.6796522 4.2140975 0.026205514 -6.6796522 4.2140975 -0.026205514 -7.4834661 
		4.2140975 -0.026205514;
	setAttr -s 65 ".ed[0:64]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0 2 8 0 3 9 0 
		8 9 0 5 10 0 9 10 0 4 11 0 
		11 10 0 8 11 0 8 17 0 9 16 0 
		12 13 0 10 19 0 13 14 0 11 18 0 
		15 14 0 12 15 0 16 13 0 17 12 0 
		16 17 0 18 15 0 17 18 0 19 14 0 
		18 19 0 19 16 0 19 20 0 16 21 0 
		20 21 0 14 22 0 20 22 0 13 23 0 
		23 22 0 21 23 0 6 24 0 7 25 0 
		24 25 0 1 26 0 25 26 0 0 27 0 
		27 26 0 24 27 0 24 33 0 25 32 0 
		28 29 0 26 31 0 27 30 0 30 28 0 
		31 29 0 30 31 0 32 29 0 31 32 0 
		33 28 0 32 33 0 33 30 0;
	setAttr -s 130 ".n[0:129]" -type "float3"  -0.70710677 0 0.70710677 0.70710677 
		0 0.70710677 0.70710677 0 0.70710677 -0.70710677 0 0.70710677 0 1 0 0 1 0 0 1 0 0 
		1 0 -0.70710677 0 -0.70710677 0.70710677 0 -0.70710677 0.70710677 0 -0.70710677 -0.70710677 
		0 -0.70710677 0.70710677 0 0.70710677 0.70710677 0 -0.70710677 0.70710677 0 -0.70710677 
		0.70710677 0 0.70710677 -0.70710677 0 -0.70710677 -0.70710677 0 0.70710677 -0.70710677 
		0 0.70710677 -0.70710677 0 -0.70710677 0 1 -2.098506e-006 0 1 -2.098506e-006 0 1 
		-2.098506e-006 0 1 -2.098506e-006 0 1 -2.098506e-006 0 1 2.098506e-006 0 1 2.098506e-006 
		0 1 -2.098506e-006 0 1 2.098506e-006 0 1 2.098506e-006 0 1 2.098506e-006 0 1 2.098506e-006 
		0 1 2.098506e-006 0 1 -2.098506e-006 0 1 -2.098506e-006 0 1 2.098506e-006 -0.70710677 
		0 0.70710677 0.70710677 0 0.70710677 0.70710677 0 0.70710677 -0.70710677 0 0.70710677 
		0.70710677 0 0.70710677 0.70710677 0 -0.70710677 0.70710677 0 -0.70710677 0.70710677 
		0 0.70710677 0.70710677 0 -0.70710677 -0.70710677 0 -0.70710677 -0.70710677 0 -0.70710677 
		0.70710677 0 -0.70710677 -0.70710677 0 -0.70710677 -0.70710677 0 0.70710677 -0.70710677 
		0 0.70710677 -0.70710677 0 -0.70710677 -0.70710677 0 0.70710677 0 0 1 0 0 1 -0.70710677 
		0 0.70710677 -0.70710677 0 -0.70710677 -0.70710677 0 0.70710677 -0.70710677 0 0.70710677 
		-0.70710677 0 -0.70710677 0 0 -1 -0.70710677 0 -0.70710677 -0.70710677 0 -0.70710677 
		0 0 -1 0.70710677 0 0.70710677 0.70710677 0 -0.70710677 0.70710677 0 -0.70710677 
		0.70710677 0 0.70710677 0.70710677 0 0.70710677 0.70710677 0 -0.70710677 -0.70710677 
		0 -0.70710677 -0.70710677 0 0.70710677 0 0 -1 0 0 -1 0.70710677 0 -0.70710677 0.70710677 
		0 -0.70710677 0 1 0 0 1 0 0 1 0 0 1 0 0 0 1 0 0 1 0.70710677 0 0.70710677 0.70710677 
		0 0.70710677 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 
		0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -0.014879578 -0.99988931 0 -0.014879578 
		-0.99988931 0.0048725773 -0.014158537 -0.99988794 0.0048725773 -0.014158537 -0.99988794 
		0.99910676 -0.04225811 0 0.99910676 -0.04225811 0 0.99782914 -0.065855779 0 0.99782914 
		-0.065855779 0 0 -0.014879578 0.99988931 0 -0.014879578 0.99988931 0.0048725768 -0.014158537 
		0.99988794 0.0048725768 -0.014158537 0.99988794 -0.99910676 -0.042258259 0 -0.99910676 
		-0.042258259 0 -0.99825752 -0.059008576 0 -0.99825752 -0.059008576 0 0.0048725768 
		-0.014158537 0.99988794 0.0048725768 -0.014158537 0.99988794 0.0097450353 -0.013437151 
		0.99986225 0.0097450353 -0.013437151 0.99986225 0.99782914 -0.065855779 0 0.99782914 
		-0.065855779 0 0.99484897 -0.10136863 0 0.0048725773 -0.014158537 -0.99988794 0.0048725773 
		-0.014158537 -0.99988794 0.0097450363 -0.013437152 -0.99986225 0.0097450363 -0.013437152 
		-0.99986225 -0.99825752 -0.059008576 0 -0.99825752 -0.059008576 0 -0.99592018 -0.090238392 
		0;
	setAttr -s 33 ".fc[0:32]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 2 3 
		f 4 22 24 -27 -28 
		mu 0 4 4 5 6 45 
		f 4 2 9 -4 -9 
		mu 0 4 49 46 10 11 
		f 4 -12 -10 -8 -6 
		mu 0 4 1 10 47 50 
		f 4 10 4 6 8 
		mu 0 4 11 0 51 48 
		f 4 1 13 -15 -13 
		mu 0 4 3 2 37 34 
		f 4 7 15 -17 -14 
		mu 0 4 2 9 36 37 
		f 4 -3 17 18 -16 
		mu 0 4 9 8 35 36 
		f 4 -7 12 19 -18 
		mu 0 4 8 3 34 35 
		f 4 14 21 30 -21 
		mu 0 4 13 12 16 17 
		f 4 16 23 35 -22 
		mu 0 4 12 42 41 16 
		f 4 -19 25 34 -24 
		mu 0 4 14 15 19 18 
		f 4 -20 20 32 -26 
		mu 0 4 15 13 17 19 
		f 4 -31 28 -23 -30 
		mu 0 4 17 16 5 4 
		f 4 -33 29 27 -32 
		mu 0 4 19 17 4 7 
		f 4 -35 31 26 -34 
		mu 0 4 18 19 7 40 
		f 4 -39 40 -43 -44 
		mu 0 4 20 44 43 23 
		f 4 -36 36 38 -38 
		mu 0 4 16 41 38 20 
		f 4 33 39 -41 -37 
		mu 0 4 18 40 39 21 
		f 4 -25 41 42 -40 
		mu 0 4 6 5 23 22 
		f 4 -29 37 43 -42 
		mu 0 4 5 16 20 23 
		f 4 3 45 -47 -45 
		mu 0 4 11 10 55 52 
		f 4 11 47 -49 -46 
		mu 0 4 10 1 54 55 
		f 4 -1 49 50 -48 
		mu 0 4 1 0 53 54 
		f 4 -11 44 51 -50 
		mu 0 4 0 11 52 53 
		f 4 46 53 63 -53 
		mu 0 4 25 57 28 29 
		f 4 48 55 61 -54 
		mu 0 4 24 26 30 56 
		f 4 -51 56 59 -56 
		mu 0 4 26 27 31 30 
		f 4 -52 52 64 -57 
		mu 0 4 27 25 29 31 
		f 4 -60 57 54 -59 
		mu 0 4 30 31 32 58 
		f 3 -62 58 -61 
		mu 0 3 56 30 58 
		f 4 -64 60 -55 -63 
		mu 0 4 29 28 33 32 
		f 3 -65 62 -58 
		mu 0 3 31 29 32 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bw" 3;
	setAttr ".dr" 1;
createNode parentConstraint -n "joint1_parentConstraint1" -p "joint1";
	addAttr -ci true -k true -sn "w0" -ln "root1W0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "R_wristW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" -4.4127001197117393 11.695725890064358 -0.19760294655182015 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "Mesh" -p "Keso";
createNode transform -n "kesoMesh" -p "Mesh";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.042823314666748047 11.366443634033203 0.094038009643554688 ;
	setAttr ".sp" -type "double3" 0.042823314666748047 11.366443634033203 0.094038009643554688 ;
createNode mesh -n "kesoMeshShape" -p "kesoMesh";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.12386121821103038 0.36646438181000274 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 3;
	setAttr ".dr" 1;
createNode mesh -n "kesoMeshShapeOrig" -p "kesoMesh";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 739 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.89230704 0.592758 0.92801708 
		0.58065695 0.92999858 0.60390753 0.89682949 0.62158084 0.71113491 0.58656871 0.77184516 
		0.57813621 0.77025145 0.6561327 0.70975453 0.66376889 0.30415457 0.53715533 0.22505298 
		0.63244128 0.29841489 0.50087297 0.31326634 0.51142466 0.24885802 0.13835019 0.22509536 
		0.18295348 0.19033238 0.16018796 0.88865852 0.47907272 0.55121768 0.7846095 0.69169348 
		0.58370769 0.67754954 0.66786659 0.54733098 0.7640714 0.27976936 0.19024366 0.29759014 
		0.27728754 0.26668978 0.27830678 0.1632489 0.041874729 0.03278992 0.090788916 0.34636021 
		0.20100784 0.12219243 0.050621614 0.10366561 0.056808673 0.098321542 0.042095512 
		0.13678361 0.03141728 0.14243087 0.045992792 0.91427779 0.39471552 0.17036869 0.062353551 
		0.039023947 0.10985364 0.83804822 0.39469984 0.13015935 0.071189389 0.44446048 0.41031238 
		0.52985317 0.41100597 0.52982986 0.4372758 0.15010822 0.066297457 0.93114895 0.4305619 
		0.13284722 0.11171473 0.80742896 0.59528959 0.80999559 0.65071166 0.11736087 0.19365877 
		0.25151575 0.98532426 0.84980959 0.60472453 0.86979347 0.59670305 0.87639838 0.6259619 
		0.85560298 0.63038051 0.78802907 0.54089153 0.82966238 0.51978874 0.85026509 0.54187644 
		0.83387625 0.55312836 0.54424483 0.5180645 0.54999036 0.52549928 0.53334969 0.54357666 
		0.52630121 0.54052377 0.59397715 0.52969205 0.29689682 0.590065 0.29967687 0.61499983 
		0.30569351 0.64924306 0.31388301 0.67819726 0.69654435 0.52261806 0.72094607 0.56398857 
		0.57442504 0.52764714 0.56654602 0.51546741 0.81249005 0.46552873 0.54797667 0.55368698 
		0.75742233 0.50143683 0.53353709 0.55900472 0.2232319 0.25074825 0.23441276 0.27919951 
		0.19300184 0.23974746 0.21614784 0.28008479 0.19563147 0.2625894 0.19988322 0.28057349 
		0.18769214 0.28088808 0.13015088 0.28194144 0.93803716 0.51544189 0.84140766 0.63466299 
		0.83729613 0.64611095 0.32184446 0.83548617 0.32720947 0.80677092 0.38063818 0.80743998 
		0.40487909 0.82957 0.44751379 0.37503052 0.52989358 0.35790902 0.30348516 0.78926945 
		0.41369832 0.78602117 0.83812732 0.34697032 0.91518116 0.36257809 0.83810115 0.27949286 
		0.91134381 0.28798798 0.39806545 0.35998327 0.40317422 0.29133272 0.45470831 0.29816192 
		0.52995986 0.28854451 0.96481866 0.90518594 0.96732897 0.92809999 0.95746666 0.92906284 
		0.95584625 0.91009045 0.96398443 0.87359416 0.96513742 0.89051855 0.95577246 0.88940418 
		0.95458931 0.87326777 0.96911877 0.95006573 0.95803684 0.94844854 0.96467799 0.84980142 
		0.95476109 0.85379517 0.45912266 0.21147941 0.40567645 0.21712326 0.38452536 0.14540341 
		0.44951239 0.13640516 0.53006065 0.21186285 0.53016526 0.13808335 0.90110177 0.19470738 
		0.90616107 0.11501311 0.83791763 0.19455852 0.83751506 0.11520125 0.44363078 0.049855188 
		0.37814358 0.068073064 0.11119462 0.98357201 0.15377782 0.98156273 0.63364816 0.75776267 
		0.68679422 0.75414526 0.18072988 0.98374087 0.22457854 0.98204744 0.9213863 0.036748752 
		0.077179506 0.97944772 0.58254761 0.75469178 0.050108321 0.9772743 0.11342037 0.96696341 
		0.1544773 0.96540797 0.17791642 0.96519554 0.012713371 0.95777839 0.07641679 0.96232295 
		0.05102735 0.96083564 0.33826518 0.55604702 0.3497138 0.520688 0.35114026 0.66459018 
		0.34393275 0.64052552 0.3381443 0.60858035 0.3359794 0.5863952 0.037789024 0.82958913 
		0.16320138 0.84056044 0.1622052 0.8270852 0.1930908 0.81723869 0.066638887 0.83455455 
		0.068853512 0.82068968 0.089607589 0.83797526 0.090308927 0.823309 0.11559811 0.83996761 
		0.11521319 0.82558537 0.14500813 0.84236771 0.14430806 0.82866746 0.16543826 0.76447672 
		0.13744959 0.76448834 0.13725384 0.74363452 0.58973444 0.66030097 0.051496401 0.77443165 
		0.6343739 0.67147839 0.066269711 0.76484013 0.66789591 0.65242052 0.093405291 0.7610327 
		0.65957952 0.60393709 0.11317503 0.76300824 0.62705708 0.59162056 0.60568416 0.64799386 
		0.60578275 0.61947018 0.34705102 0.55716038 0.35697159 0.52484441 0.63044739 0.65380782 
		0.3585636 0.6623624 0.6476568 0.64415938 0.35134023 0.63879389 0.64267707 0.6159392 
		0.34563094 0.60734487 0.62623739 0.60995233 0.34364802 0.58546746 0.16048178 0.77229667 
		0.14005357 0.77284861 0.054278582 0.77755982 0.071845092 0.77144748 0.091375478 0.76946348 
		0.11328921 0.76968807 0.052917428 0.79048187 0.073265001 0.79042339 0.092165127 0.79046071 
		0.11418843 0.79157817 0.14150487 0.79495251 0.16012157 0.79363739 0.95545226 0.55036485 
		0.97376341 0.58224094 0.87223238 0.49139276 0.89385337 0.52889168 0.83362955 0.61356473 
		0.9634645 0.54782474 0.032142252 0.18777817 0.020963371 0.28522754 0.9827829 0.62251621 
		0.30461478 0.80785012 0.41068119 0.80783671 0.42359638 0.85219163 0.28595567 0.86468399 
		0.28774977 0.86154652 0.28910756 0.86171138 0.26467454 0.78831768 0.26555502 0.77816296 
		0.81330848 0.89378786 0.22676051 0.84056485 0.26077986 0.850438 0.45615512 0.83593673 
		0.43693084 0.83232385 0.2831763 0.84496737 0.27538574 0.86063945 0.44279391 0.85007709 
		0.28351891 0.8539573 0.28640962 0.85481203 0.81362134 0.91149282 0.74288946 0.91014087 
		0.74355203 0.89551306 0.81196511 0.87584722 0.74311393 0.87886488 0.81174397 0.85840547 
		0.74255472 0.86233735 0.81237644 0.94919527 0.74166191 0.94557798 0.81363291 0.93045771 
		0.74253941 0.92777252 0.82586086 0.89471257 0.82635683 0.9104203 0.8242119 0.87665105 
		0.82385808 0.85824049 0.82630736 0.92959595 0.68998414 0.86269224 0.69093895 0.87926793 
		0.67804402 0.87978947 0.67704624 0.8634249 0.68865854 0.92655134 0.67553312 0.92588818 
		0.68964124 0.90869462 0.67655236 0.90839148 0.69097126 0.89596879 0.67801899 0.89622056 
		0.88656229 0.91101277 0.88612586 0.89157593 0.8848266 0.87315249 0.88502973 0.8529222 
		0.88740271 0.95184278;
	setAttr ".uvst[0].uvsp[250:499]" 0.14944716 0.90553707 0.16995198 0.90346885 
		0.022599963 0.89435756 0.057518072 0.89993697 0.082687594 0.90341341 0.11401236 0.90493137 
		0.25174868 0.81794488 0.27571237 0.8155241 0.24486125 0.79349053 0.47211045 0.79127592 
		0.46369618 0.8103537 0.43930817 0.80887812 0.9080292 0.21039975 0.83797002 0.20986521 
		0.4084115 0.22774555 0.46277323 0.22388934 0.53004545 0.22201233 0.83719122 0.073109761 
		0.91306007 0.076182976 0.38064128 0.10640001 0.44482374 0.091689169 0.53030944 0.08288534 
		0.93860275 0.63251001 0.90413815 0.63777435 0.87872946 0.6412034 0.85681623 0.64355069 
		0.90760666 0.68443108 0.90277642 0.65535438 0.94126689 0.66284132 0.94698316 0.68866855 
		0.7303465 0.73886538 0.79253012 0.73196024 0.49806076 0.53855366 0.48933482 0.51271826 
		0.50440383 0.50241566 0.27520904 0.74271816 0.25667536 0.41829413 0.92775357 0.79765576 
		0.19686696 0.40036207 0.23037854 0.37552279 0.55122876 0.74360758 0.71264702 0.7464782 
		0.28453392 0.36490417 0.049016595 0.083081819 0.3501789 0.35031402 0.085524328 0.063878842 
		0.067219689 0.073163055 0.062245309 0.058609627 0.76202464 0.39441824 0.056299955 
		0.10282731 0.092402786 0.08466056 0.61526269 0.41049114 0.63709033 0.44884607 0.074055679 
		0.093352705 0.14792679 0.44745079 0.82012516 0.71311176 0.12386122 0.36646441 0.23019767 
		0.95842648 0.86039317 0.68391591 0.85962003 0.65642637 0.88140786 0.65703738 0.88349164 
		0.68707252 0.81030536 0.76235747 0.84480298 0.73754448 0.87824219 0.74877828 0.86334282 
		0.77301395 0.64995664 0.51881194 0.67251366 0.49634185 0.66350299 0.54568678 0.64453906 
		0.52652633 0.29610389 0.4851239 0.50432819 0.59159803 0.455625 0.47100693 0.49450916 
		0.65058082 0.50107425 0.616485 0.72998708 0.80263478 0.62835425 0.51623619 0.62021393 
		0.52796376 0.64582413 0.55590045 0.86105222 0.82867891 0.65953618 0.56343901 0.79881054 
		0.81144077 0.22242515 0.3089273 0.19521755 0.32135016 0.19661117 0.29867184 0.96686894 
		0.75538188 0.844037 0.65533882 0.28065169 0.97623968 0.28520882 0.97827733 0.48237091 
		0.77764142 0.2528789 0.98136103 0.61223662 0.37519062 0.48610416 0.73841333 0.23568165 
		0.95817447 0.7612375 0.36241108 0.76506436 0.28815302 0.71503484 0.34439474 0.65668797 
		0.29165739 0.6051423 0.29834047 0.65812463 0.91506636 0.65642828 0.89514315 0.65805095 
		0.95226061 0.65979534 0.93386495 0.65757734 0.87446713 0.65808839 0.85437071 0.64729053 
		0.91452754 0.64735776 0.89528549 0.64820939 0.95258224 0.6489597 0.93570387 0.64703602 
		0.87634504 0.64788502 0.85573006 0.6009376 0.21168165 0.61085969 0.13663115 0.67585701 
		0.14594972 0.71063542 0.20493011 0.76902032 0.11585622 0.77486527 0.1952353 0.61730611 
		0.050892755 0.081525177 0.72652686 0.12338404 0.7304256 0.68835247 0.046462223 0.22166781 
		0.72364044 0.056691244 0.72184616 0.15705439 0.72557002 0.75252217 0.038553521 0.18375108 
		0.724325 0.080429256 0.71131563 0.12149 0.71360111 0.22123168 0.70579863 0.057877764 
		0.70944917 0.15837455 0.70876622 0.1833196 0.70804191 0.46358895 0.55686247 0.45274094 
		0.521299 0.43504748 0.49768367 0.45637098 0.64118689 0.46268907 0.6093694 0.46527502 
		0.5872426 0.039660417 0.57794261 0.19217145 0.56340605 0.072985277 0.57354236 0.072094187 
		0.58720613 0.16883543 0.58097148 0.16683708 0.56715649 0.14599088 0.58448154 0.14532447 
		0.57005107 0.12013881 0.58655781 0.12027425 0.57244807 0.090646975 0.58900511 0.091436796 
		0.57525283 0.069225729 0.51153648 0.58328867 0.65980107 0.58293116 0.60930222 0.097217456 
		0.51072979 0.046927415 0.51700354 0.53891599 0.67165667 0.16966011 0.5107559 0.50521779 
		0.65290725 0.14198549 0.50675523 0.51280522 0.60429156 0.12180707 0.50884074 0.54521012 
		0.5916205 0.56717467 0.6480906 0.4454284 0.52532119 0.45477343 0.55782503 0.56685805 
		0.61948568 0.54259181 0.65427899 0.44134828 0.66275322 0.52531672 0.64481592 0.44901657 
		0.63929069 0.52983344 0.61648142 0.45528153 0.60798299 0.54625726 0.61025769 0.45771125 
		0.5861845 0.074380077 0.51922166 0.094734274 0.5192492 0.049390033 0.5207653 0.16422255 
		0.51740611 0.14404401 0.51535165 0.12182122 0.51560432 0.16302134 0.53667486 0.18309213 
		0.53707206 0.14330812 0.53688216 0.1210077 0.53820205 0.093694434 0.5416556 0.075086467 
		0.54069048 0.98233443 0.66420192 0.97088891 0.70128989 0.90946412 0.78921801 0.92173034 
		0.74958611 0.84224075 0.67916596 0.74555379 0.75782925 0.01472795 0.38238209 0.01522851 
		0.44575423 0.25432503 0.95916092 0.4681707 0.75117409 0.31088912 0.94015646 0.42991954 
		0.75802743 0.30592239 0.94092846 0.30870342 0.93923914 0.23390186 0.9190625 0.47037244 
		0.70590603 0.36858159 0.92882526 0.4222309 0.72397661 0.29601538 0.91546929 0.367405 
		0.91668427 0.29033267 0.93736565 0.43433851 0.73930824 0.41593188 0.74235964 0.30532014 
		0.92987072 0.29893756 0.93742394 0.299909 0.93997157 0.50411266 0.93377042 0.43451375 
		0.93102109 0.43411452 0.916448 0.50451738 0.91608322 0.50261098 0.95176542 0.43376034 
		0.94762564 0.50216311 0.96931589 0.43355495 0.86670661 0.50345588 0.87866175 0.43349195 
		0.88127291 0.50461668 0.89722216 0.43405777 0.89893031 0.51671737 0.93290532 0.51723319 
		0.9171834 0.51501262 0.95107949 0.51458842 0.96974468 0.51598269 0.87815356 0.51717144 
		0.89809394 0.37965435 0.96249759 0.23131096 0.87025321 0.4284963 0.68361425 0.38100886 
		0.9460032 0.37970001 0.88128722 0.24576688 0.87514997 0.37986058 0.89898467 0.26688087 
		0.87834382 0.38040966 0.91671813 0.38143665 0.92938805 0.57760769 0.93565524 0.57761008 
		0.91606009 0.57660276 0.95439053 0.57694286 0.85547245 0.57750517 0.87536323 0.57856518 
		0.89586365 0.065700278 0.65004426 0.086120136 0.652152 0.029220155 0.64221215 0.17784505 
		0.64674151;
	setAttr ".uvst[0].uvsp[500:738]" 0.15270308 0.65004426 0.12120749 0.65147537 
		0.2613343 0.93005431 0.26376808 0.90587103 0.23876345 0.89875317 0.45431045 0.68911827 
		0.45398313 0.72631097 0.44134444 0.70543516 0.76808 0.21087563 0.71380579 0.21496485 
		0.59725773 0.22408013 0.76149917 0.077169791 0.67954284 0.10719742 0.61571836 0.092060417 
		0.93374133 0.37216711 0.39662209 0.37766448 0.93138433 0.39963466 0.94013584 0.42633784 
		0.42462942 0.41569006 0.42166555 0.38747695 0.74275297 0.3719258 0.71461999 0.36121652 
		0.74499726 0.39922661 0.64653957 0.44379351 0.63510078 0.41590706 0.63807559 0.38767907 
		0.21737301 0.78638899 0.48901451 0.81157535 0.22198522 0.80017889 0.22465813 0.82055128 
		0.88799399 0.93115723 0.48766881 0.82776874 0.36818737 0.94513965 0.30055928 0.87807286 
		0.36686224 0.89931166 0.2872504 0.88125038 0.36680442 0.88182592 0.36763418 0.86952972 
		0.97007507 0.9707222 0.95955163 0.9695195 0.81118584 0.96629667 0.74148202 0.96031749 
		0.82388341 0.96672654 0.68873179 0.95715976 0.67562985 0.95605624 0.6750707 0.94358981 
		0.88727111 0.97204387 0.82514888 0.94975889 0.68808031 0.94443774 0.43288678 0.96413565 
		0.3806302 0.86872852 0.57707602 0.97503507 0.51465076 0.86149788 0.64877278 0.97266543 
		0.36674625 0.96138251 0.5024243 0.86180961 0.65904123 0.97663951 0.80372542 0.43216327 
		0.78013527 0.45812321 0.56411189 0.43956032 0.11107459 0.077421896 0.83795995 0.43046594 
		0.49555397 0.43947297 0.87223494 0.43238899 0.46846494 0.46277109 0.043242831 0.069234036 
		0.37191749 0.41254228 0.080384284 0.048917584 0.35194188 0.27566242 0.17887416 0.023240177 
		0.11648086 0.03577172 0.15864015 0.027139777 0.57142669 0.79458421 0.18125784 0.037274025 
		0.18881388 0.056640379 0.025871608 0.078956969 0.54784936 0.57759291 0.58190203 0.50701225 
		0.28454089 0.068546891 0.57797229 0.56000054 0.63858169 0.47656164 0.61371499 0.50771809 
		0.61516064 0.55997837 0.6008181 0.52910292 0.65785354 0.4876636 0.66704053 0.54658693 
		0.6437481 0.57988274 0.53612083 0.48506948 0.52228421 0.49824151 0.55647582 0.47372469 
		0.55745345 0.84117979 0.36482334 0.13730752 0.69284141 0.80084783 0.57142264 0.73360032 
		0.9785108 0.70224887 0.96937281 0.77316701 0.99046332 0.66871423 0.98837942 0.62171257 
		0.2025651 0.47684744 0.25364333 0.52093083 0.5039826 0.70617217 0.55746233 0.68699521 
		0.49797255 0.76408637 0.98085421 0.57626951 0.050599158 0.12876332 0.19114417 0.083789945 
		0.23933026 0.035080791 0.94008285 0.50583279 0.50397801 0.82199198 0.67068124 0.51817679 
		0.74506032 0.43000084 0.73614299 0.42573786 0.59117156 0.46293691 0.42259604 0.44859293 
		0.41316366 0.44352433 0.89574951 0.45859867 0.69255352 0.086650118 0.71579397 0.27787167 
		0.65164763 0.22812895 0.69907027 0.12803219 0.65441197 0.21752279 0.66168654 0.360239 
		0.663118 0.37790021 0.98317146 0.084660187 0.96081913 0.27756545 0.96256721 0.21421085 
		0.97666228 0.12655737 0.96566993 0.20408063 0.96161735 0.34447914 0.96203828 0.36140141 
		0.59153485 0.69954884 0.83952618 0.035080776 0.63018131 0.68699515 0.68213803 0.069754839 
		0.67198932 0.70059758 0.52963853 0.035080776 0.59139061 0.80660754 0.63021278 0.82025063 
		0.98713624 0.043307081 0.67171705 0.80641484 0.60846889 0.77597338 0.63274616 0.76495105 
		0.60844409 0.79717857 0.62956661 0.80162704 0.6503644 0.79038262 0.65071213 0.77734286 
		0.60849679 0.72879428 0.63306212 0.73911482 0.60777724 0.70817637 0.62930048 0.70488369 
		0.65104532 0.71610075 0.65432107 0.72877121 0.12154475 0.48575529 0.097051613 0.48942155 
		0.14364713 0.48231286 0.17823406 0.48853037 0.19832407 0.50358576 0.06476596 0.49112773 
		0.11320607 0.74011576 0.58964157 0.6098364 0.091080591 0.73708034 0.057596266 0.74361074 
		0.19903274 0.75137967 0.16960038 0.7437982 0.37935346 0.58327526 0.38213831 0.56207824 
		0.3815496 0.60197538 0.38732427 0.62999582 0.39436972 0.65149456 0.38811821 0.53676009 
		0.42204395 0.58329463 0.41961667 0.56210393 0.41946483 0.60192549 0.41316873 0.62990528 
		0.40714109 0.51626414 0.41405112 0.53666413 0.011163292 0.97609341 0.63274616 0.76495105 
		0.39546591 0.51650596 0.038559921 0.75838053 0.048822239 0.53436971 0.18242584 0.52378857 
		0.1864676 0.78721285 0.18530841 0.77320117 0.21292298 0.6417681 0.19791088 0.5762251 
		0.20639582 0.89569551 0.19613869 0.83106965 0.43186721 0.50154018 0.44871876 0.66513497 
		0.017904667 0.70756096 0.042628318 0.56353784 0.185095 0.52088094 0.40582862 0.65131897 
		0.03563986 0.49873257 0.011800317 0.72762275 0.37096202 0.50130701 0.36784881 0.4974035 
		0.21773116 0.96071768 0.043609701 0.81657469 0.18774118 0.76961249 0.23054466 0.68185955 
		0.48577791 0.67942572 0.23532853 0.74559361 0.27939281 0.68542689 0.51751912 0.53681719 
		0.24041662 0.65454584 0.27388272 0.66078192 0.2846995 0.5350678 0.26493338 0.63531709 
		0.26971701 0.57158291 0.34777504 0.47037369 0.22086909 0.57515061 0.25984529 0.5442692 
		0.22637871 0.55050564 0.23857248 0.78208113 0.44978106 0.78486508 0.432648 0.83853441 
		0.42238951 0.84497589 0.2746135 0.86607897 0.28694999 0.86725187 0.28790784 0.85393369 
		0.32399511 0.84001851 0.30361462 0.78379798 0.25770223 0.86327672 0.33129597 0.80542493 
		0.48964226 0.79536146 0.22300339 0.85369623 0.44253963 0.67551792 0.22683954 0.89242435 
		0.43085438 0.74595869 0.30610693 0.94213605 0.31040919 0.92937768 0.42298168 0.76031399 
		0.22368133 0.92015231 0.29928172 0.94193804 0.30875576 0.91289306 0.45160371 0.76635742 
		0.41480631 0.69233108;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 515 ".vt";
	setAttr ".vt[0:165]"  -1.9065448 17.127796 2.33564 -1.9133664 17.496447 
		-2.0522361 -0.65249676 16.611683 -0.72876626 -0.63027787 16.611683 0.68438464 -0.63304973 
		15.398608 -0.90179372 -0.61147273 15.398608 0.47174168 -1.5376496 14.930655 -1.5327621 
		-1.5376496 14.930655 0.65455389 0.034470003 17.496447 -2.2927115 0.034170296 16.611683 
		-0.88355607 0.033759363 15.398608 -1.0522442 0.033597063 14.919493 -1.7059765 0.033597063 
		14.919493 0.89110035 0.033759363 15.398608 0.65338188 0.034170296 16.611683 0.87126362 
		0.03416314 16.590584 2.5314553 0.03461187 17.915251 3.130929 -2.1687462 17.915251 
		2.41943 -2.22386 18.538557 -0.18206464 -2.2958245 17.433634 -0.17659663 -0.88706034 
		16.611683 -0.0061462503 -0.86083341 15.398608 -0.19943136 -1.6462195 15.243176 -0.44636235 
		-2.286937 17.527584 -0.92772871 -3.3672049 17.960796 -1.3759601 -3.3552442 18.04566 
		-1.0879658 -3.4456902 18.88615 -1.3446831 -3.4456902 18.804131 -1.6162268 0.034706425 
		18.707863 2.7092671 -0.56148762 17.296247 2.9429326 0.034356352 17.160952 3.0744915 
		-0.67831522 17.916452 2.8349407 0.034706425 18.480331 3.4288406 0.0346926 18.153566 
		3.4408791 -0.35647959 18.153566 3.2893693 -2.2685673 19.079643 2.1667097 -2.9144435 
		18.965303 -0.88742757 -2.8413279 17.653452 -0.4940981 -2.8543448 17.542868 -1.0529922 
		-2.9144435 18.871546 -1.4234073 -1.6040256 10.948595 -0.12546283 -1.3424473 10.948595 
		0.95282274 0.032788783 10.948594 1.3393949 -1.1812328 10.948595 -1.3370366 0.032788783 
		10.948595 -1.4917923 0.033234444 13.849025 1.0861406 0.033234444 13.849025 -1.6223911 
		-1.4605396 14.021803 -1.509501 -1.8865409 13.552225 -0.31839198 -1.4605396 14.021803 
		0.87244904 -1.9075974 15.161459 -0.44562632 -1.92337 14.942727 0.28502017 -1.8780994 
		14.002576 -0.35512084 -1.8607527 14.253846 0.29019904 -1.92337 14.942727 -1.1920714 
		-1.8635229 14.21372 -1.1625623 -8.9017448 14.589708 -0.42536762 -8.8900967 14.509174 
		-0.032896414 -8.8390131 14.151487 -0.42936859 -8.8504105 14.232022 -0.062723935 -8.8900967 
		14.509174 -0.81927508 -8.8504105 14.232022 -0.79450828 -2.1009679 7.8595943 -0.25726452 
		-1.7226932 7.5815854 1.0483409 -0.15420029 8.4090996 -0.061396196 0.01641685 7.2718782 
		1.3734007 -1.5747775 7.7605019 -1.3780318 -0.022862028 7.7886147 -1.5584708 -1.6136559 
		8.2385445 -0.21792485 -1.2559713 8.1984158 0.55038863 -0.40765134 8.4121723 -0.087582938 
		-0.78402215 8.295517 0.64270461 -1.3998537 8.1569948 -0.94002271 -0.71803141 8.2681799 
		-0.92556393 -1.7066913 -0.013448715 -0.36244678 -0.055799823 -0.013448715 -0.36244678 
		-1.4609644 -0.013448715 -1.1774102 -0.32060835 -0.013448715 -1.3048962 -1.7066913 
		-0.013448715 1.5737916 -1.4609644 0.56732798 1.328606 -0.3730799 -0.013448715 1.7683641 
		-0.50730789 0.56732798 1.475706 -0.38731271 1.4271054 0.57106912 -0.12328215 1.2797027 
		-0.43118712 -0.36312479 1.2797027 -1.2182882 -1.4224576 1.2797027 -1.1118171 -1.650725 
		1.2797027 -0.43118712 -1.4567245 1.4271054 0.44479167 -0.74189281 5.2896981 0.57282531 
		-0.39909902 5.2302361 -0.13859583 -0.63371778 5.2302361 -0.76186645 -1.1569641 5.2302361 
		-0.70973945 -1.4400694 5.2302361 -0.18708551 -1.1483598 5.2896981 0.43942833 -1.2301844 
		3.5192468 0.35637826 -0.62944192 3.5192468 0.46042606 -0.30082795 3.4162037 -0.35680959 
		-0.60241282 3.4162037 -1.0236404 -1.2336994 3.4162037 -0.93343759 -1.540086 3.4162037 
		-0.35680959 -1.4037681 2.8678761 0.38814804 -0.40161341 2.8678761 0.50018358 -0.23703021 
		2.7488921 -0.38353574 -0.43062961 2.7488921 -1.0935836 -1.3761084 2.7488921 -0.99753505 
		-1.5798422 2.7488921 -0.38353574 -1.5066724 3.3973644 0.5423668 -0.31091475 3.3973644 
		0.67604619 -1.6888598 2.4734507 0.78231692 -0.10990821 2.4734507 0.95883536 -0.12778874 
		3.2649765 -0.37392801 0.14940211 2.2859864 -0.43351465 -0.34320015 3.2649765 -1.2306635 
		-0.15562497 2.2859864 -1.5522356 -1.4758962 3.2649765 -1.1147728 -1.64528 2.2859864 
		-1.4009054 -1.7199724 3.2649765 -0.37392801 -1.9662745 2.2859864 -0.43351465 -0.35911518 
		4.898839 -0.17972101 -0.60472953 4.898839 -0.81037617 -1.1451865 4.898839 -0.75036585 
		-1.4320012 4.898839 -0.21820866 -1.1387949 4.9660568 0.42441344 -0.7101419 4.9660568 
		0.55217409 0.034706425 20.204393 2.6296041 -1.6934605 19.912243 2.4237833 -2.4929404 
		18.664761 1.0399491 -2.1894317 17.216391 1.224906 -1.3357552 16.770159 1.4934485 
		0.034176528 16.45764 1.8008264 -2.22386 18.74338 -1.3097591 -1.0743601 20.047213 
		2.5671995 -1.9965829 21.136473 2.2680192 -2.1708419 21.815407 1.1155353 0.034706429 
		21.779985 2.604353 0.034706429 22.444887 1.2798027 -2.7176447 18.869587 -2.4555211 
		-2.0803485 17.107483 -2.2817852 0.034706429 19.106508 -3.2528031 0.034260131 16.876896 
		-3.0726814 -2.5421462 19.895569 -2.2957895 0.034706425 20.335243 -2.7487001 -2.3372025 
		21.9571 0.015297636 -2.1522033 21.847157 -1.0998883 0.034706429 22.639572 0.015297636 
		0.034706429 22.519445 -1.2680353 -3.3466787 19.076378 -0.19658834 -3.3674908 18.985086 
		-1.4125574 -2.9578342 19.706984 0.02572063 -2.8696375 19.776407 -1.0758413 -2.6404588 
		17.343102 -1.9445903 -2.4352059 19.124607 2.1891742 -2.8670526 19.643766 1.2265757 
		-1.9965829 21.701956 -2.037976 0.034706429 22.345192 -2.3733728 0.034706425 20.236727 
		2.8083487 -1.0527864 20.033482 2.8109369 -1.7864448 19.913027 2.4327478 -2.8197014 
		18.695351 0.79739499 -11.105754 14.45076 -0.40112111 -10.689901 14.344555 0.033869937 
		-11.020962 14.28735 -0.4021391 -10.637292 14.241198 0.0011951774 -10.557663 14.352303 
		-0.84885693 -10.50536 14.248947 -0.81772101 -9.5472021 14.401511 0.21860069;
	setAttr ".vt[166:331]" -9.9947243 14.390791 0.10774912 -10.274203 14.030148 
		0.52934998 -10.260354 13.924984 0.45506153 -10.312681 14.091533 0.37662807 -10.302345 
		14.042349 0.34374356 -5.7706771 14.660019 -0.0047204946 -5.7637715 14.264739 -0.036717977 
		-5.774189 14.124871 -0.42410767 -5.7637715 14.264739 -0.80711168 -5.7706771 14.660019 
		-0.8260563 -5.7607622 14.797979 -0.41325846 -5.4735365 14.672821 0.092049047 -5.4695368 
		14.266682 0.057340339 -5.4816575 14.125094 -0.37954494 -5.4695368 14.266682 -0.81220013 
		-5.4735365 14.672821 -0.83413398 -5.4616847 14.814434 -0.36895826 -8.544651 14.151642 
		-0.43303552 -8.5548744 14.233573 -0.8022573 -8.5933218 14.519339 -0.8267656 -8.6037903 
		14.60124 -0.42855024 -8.5933218 14.519339 -0.031924974 -8.5548744 14.233573 -0.062154233 
		-2.2566257 14.931042 0.14663771 -2.2008526 14.252072 0.1312312 -2.2157583 14.053639 
		-0.37515798 -2.2008526 14.252072 -1.0034225 -2.2566257 14.931042 -1.0353425 -2.2410984 
		15.129476 -0.44649267 -1.2111872 7.8918529 0.55126679 -0.7788341 7.9398427 0.64132518 
		-0.40246722 7.9881606 -0.045619879 -0.71642566 7.9046931 -0.82144856 -1.2354313 7.8395905 
		-0.8448391 -1.5531126 7.9080524 -0.17654285 -1.4457808 1.6722445 0.43308568 -0.40269566 
		1.6722445 0.55641997 -0.14678928 1.5307145 -0.42133951 -0.37707531 1.5307145 -1.1925169 
		-1.4128792 1.5307145 -1.0881994 -1.6360767 1.5307145 -0.42133951 -9.939147 14.555267 
		-0.41408774 -9.7587585 14.403764 -0.97283787 -9.7737894 14.201546 -0.94107527 -9.948988 
		14.189939 -0.4153868 -9.9829044 14.196257 0.084399037 -10.574355 14.497677 -0.40712881 
		-10.538544 14.244341 -0.4080126 -9.8631706 14.245308 0.49891609 -9.8482981 14.07254 
		0.47265896 -10.080637 14.164742 0.22629781 -10.094848 14.294481 0.25290167 0.032816209 
		11.145266 -1.271026 -1.2104214 11.163034 -1.1102924 -1.4753588 11.145266 -0.12273038 
		-1.2104214 11.163034 0.91109782 0.032816127 11.145266 1.293123 0.03258061 9.377039 
		-1.885132 -1.4569091 9.38204 -1.7229531 -1.9277442 9.4388676 -0.30613446 -1.627872 
		9.3968058 1.0479683 0.0325807 9.4289837 1.5127363 -1.2001836 21.647348 2.4084523 
		-0.92146897 22.554493 1.194608 -0.89628011 22.746336 0.015297636 -0.79529268 22.64006 
		-1.1929855 -0.77009034 22.470257 -2.2170384 0.032999109 12.456787 -1.4731487 -1.4000497 
		12.593044 -1.1876509 -1.6884218 12.410202 -0.22504598 -1.4000497 12.593044 0.75494301 
		0.032999109 12.456787 1.2261103 -9.4463625 14.571616 -0.41947535 -9.3494434 14.453495 
		-0.901299 -9.2629042 14.218401 -0.86089224 -9.415679 14.171481 -0.42206866 -9.552618 
		14.120617 0.15334266 0.034000423 16.110229 -0.86722571 -0.57445812 16.110229 -0.73001236 
		-0.78230733 16.110229 -0.089447491 -0.55476952 16.110229 0.5226723 0.034000423 16.110229 
		0.68833095 -3.9093556 14.874352 0.44545406 -3.892832 14.142453 0.39082548 -3.919426 
		13.91083 -0.26313484 -3.892832 14.142453 -0.97890753 -3.9093556 14.874352 -1.006525 
		-3.8818729 15.105997 -0.27626091 -6.6019878 14.781472 0.053730641 -6.5730667 14.068653 
		0.018903073 -6.572052 13.835092 -0.40638772 -6.5730667 14.068653 -0.82870573 -6.6019878 
		14.781472 -0.85403705 -6.6034002 15.012934 -0.39871654 0.033001691 8.5228987 -1.7133148 
		-1.5375061 8.5345726 -1.6129133 -2.0307922 8.6404743 -0.28739113 -1.6972101 8.4454002 
		1.0144206 0.03309232 8.2597885 1.4628475 -1.1413273 18.897263 2.5553653 2.2402549 
		21.815407 1.1155353 2.0659957 21.136473 2.2680192 1.2695963 21.647348 2.4084523 0.99088174 
		22.554493 1.194608 2.149025 17.107483 -2.2817852 2.7870576 18.869587 -2.4555211 1.5303771 
		0.56732798 1.328606 1.7761042 -0.013448715 1.5737916 0.44249278 -0.013448715 1.7683641 
		0.57672071 0.56732798 1.475706 2.258182 17.216391 1.224906 1.975235 17.127796 2.33564 
		2.2379699 17.915251 2.41943 2.5623534 18.664761 1.0399491 0.72083735 16.611683 -0.72876626 
		1.9823064 17.496447 -2.0522361 1.4042032 16.770159 1.4934485 0.64245898 16.110229 
		-0.73001236 0.69861853 16.611683 0.68438464 0.62277037 16.110229 0.5226723 0.95540082 
		16.611683 -0.0061462503 0.85030812 16.110229 -0.089447491 1.6256652 14.930655 -1.5327359 
		0.70056844 15.398608 -0.90179372 0.67899138 15.398608 0.47174168 1.6256652 14.930655 
		0.65488213 0.92835212 15.398608 -0.19943136 1.7344465 15.243176 -0.44630414 2.3379803 
		18.936434 2.0893986 2.6115592 19.895569 -2.2957895 1.2107401 18.897263 2.5553653 
		2.2216163 21.847157 -1.0998883 2.4066155 21.9571 0.015297636 0.96569312 22.746336 
		0.015297636 0.86470544 22.64006 -1.1929855 3.4369037 18.83279 -1.6087006 3.4160919 
		19.076378 -0.19658834 3.0272474 19.706984 0.02572063 2.9390504 19.776407 -1.0758413 
		3.4364595 17.960796 -1.3759601 3.4245565 18.04566 -1.0879658 3.5151029 18.88615 -1.3446831 
		3.5151029 18.959827 -1.4280485 2.364722 17.433634 -0.17659663 1.7761042 -0.013448715 
		-0.36244678 1.5303771 -0.013448715 -1.1774102 0.3900212 -0.013448715 -1.3048962 0.12521267 
		-0.013448715 -0.36244678 2.3558981 17.527584 -0.92772871 2.709295 17.343102 -1.9445903 
		2.9103744 17.653452 -0.4940981 2.9233162 17.542868 -1.0529922 2.293273 18.538557 
		-0.18206464 2.9838564 18.965303 -0.88742757 2.293273 18.74338 -1.3097591 2.9838564 
		18.871546 -1.4234073 0.63029194 17.296247 2.9429326 0.74753976 17.916452 2.8349407 
		0.42586476 18.153566 3.2893693 2.5046189 19.124607 2.1891742 0.83950329 22.470257 
		-2.2170384 10.775954 14.344481 0.033636868 11.191401 14.45058 -0.40094042 11.106725 
		14.287333 -0.40195665 10.723402 14.241232 0.00099309417 1.5479391 14.021803 0.87350005;
	setAttr ".vt[332:497]" 10.643844 14.352214 -0.8482455 10.591592 14.248962 
		-0.81713784 1.5479391 14.021803 -1.5094147 1.4660858 12.593044 -1.1874564 1.9736223 
		13.552225 -0.31762388 1.754407 12.410202 -0.22384346 1.4660858 12.593044 0.75698835 
		1.995769 15.161459 -0.44553703 2.0113935 14.942727 0.28529084 1.9483098 14.253846 
		0.29088128 1.9654863 14.002576 -0.3545554 2.0113935 14.942727 -1.1919999 1.9510528 
		14.21372 -1.1623658 2.3292487 15.129476 -0.44639125 2.3446412 14.931042 0.14689672 
		2.2884083 14.252072 0.13186346 2.3031793 14.053639 -0.37461829 2.3446412 14.931042 
		-1.0352473 2.2884083 14.252072 -1.0031772 1.4080248 10.948595 0.95599717 1.6696031 
		10.948595 -0.12364039 1.995435 9.4405479 -0.30410352 1.695563 9.395772 1.051333 1.2468103 
		10.948595 -1.3368005 1.5245999 9.3807507 -1.7223814 1.7896789 7.594254 1.0390934 
		2.1569219 7.8854141 -0.25464815 1.6998527 8.2440081 -0.21802352 1.3425155 8.1680622 
		0.54901588 0.87186921 8.1317959 0.64114529 0.49580711 8.3983603 -0.087895125 1.6386006 
		7.7657113 -1.3505105 1.4863979 8.1448526 -0.93892455 0.80590081 8.2689238 -0.92444891 
		1.6347239 7.9041586 -0.1761675 1.2866143 7.8819361 0.54033482 0.86663198 7.8983197 
		0.62862068 0.49329305 7.9956141 -0.04730425 1.3173523 7.8262076 -0.84364849 0.80430031 
		7.9060154 -0.81050855 1.5261374 1.4271054 0.44479167 0.4567256 1.4271054 0.57106912 
		0.19269499 1.2797027 -0.43118712 0.43253767 1.2797027 -1.2182882 1.4918704 1.2797027 
		-1.1118171 1.720138 1.2797027 -0.43118712 0.47368604 5.230155 -0.13806561 0.81635129 
		5.2895837 0.57305378 0.7848227 4.9661331 0.5522806 0.43393245 4.8989534 -0.17929293 
		0.70824611 5.230155 -0.7610479 0.67948306 4.8989534 -0.80964774 1.2310431 5.230155 
		-0.70894217 1.2194901 4.8989534 -0.74966854 1.5140522 5.230155 -0.18652469 1.5062072 
		4.8989534 -0.21776281 1.2223896 5.2895837 0.4397288 1.2130423 4.9661331 0.42458385 
		0.38032761 3.3973644 0.67604619 1.5760852 3.3973644 0.5423668 1.773982 2.4734507 
		0.78231692 0.19503036 2.4734507 0.95883536 0.19720158 3.2649765 -0.37392801 -0.064279936 
		2.2859864 -0.43351465 0.412613 3.2649765 -1.2306635 0.24074705 2.2859864 -1.5522356 
		1.5453091 3.2649765 -1.1147728 1.7304021 2.2859864 -1.4009054 1.7893851 3.2649765 
		-0.37392801 2.0513966 2.2859864 -0.43351465 0.47102627 2.8678761 0.50018358 1.473181 
		2.8678761 0.38814804 1.5151935 1.6722445 0.43308568 0.47210848 1.6722445 0.55641997 
		0.30644307 2.7488921 -0.38353574 0.21620214 1.5307145 -0.42133951 0.50004244 2.7488921 
		-1.0935836 0.44648817 1.5307145 -1.1925169 1.4455212 2.7488921 -0.99753505 1.4822921 
		1.5307145 -1.0881994 1.6492552 2.7488921 -0.38353574 1.7054894 1.5307145 -0.42133951 
		0.69885474 3.5192468 0.46042606 1.2995973 3.5192468 0.35637826 0.37024081 3.4162037 
		-0.35680959 0.67182565 3.4162037 -1.0236404 1.3031124 3.4162037 -0.93343759 1.6094987 
		3.4162037 -0.35680959 1.1221992 20.296606 2.8109369 1.8558576 20.404522 2.4327478 
		2.8891144 18.695351 0.79739499 2.9364655 19.643766 1.2265757 2.0659957 21.701956 
		-2.037976 1.7628733 20.403738 2.4237833 1.143773 20.310337 2.5671995 10.660523 14.497465 
		-0.4069404 10.624731 14.244354 -0.40782279 10.346728 13.925304 0.45441842 10.360577 
		14.030375 0.52863598 10.399021 14.0917 0.37606153 10.38868 14.042567 0.34320909 9.8456125 
		14.403626 -0.97209615 9.8606348 14.201589 -0.94036323 8.9381285 14.232038 -0.062871695 
		8.9777918 14.508947 -0.033073291 9.6342611 14.401372 0.21818087 9.6396732 14.120735 
		0.15298541 10.069551 14.196336 0.084112674 10.081362 14.390684 0.10744064 9.9499311 
		14.245318 0.49822551 9.9350653 14.07271 0.47199249 10.181386 14.294454 0.25245321 
		10.167193 14.164818 0.22587465 5.8345146 14.264739 -0.036759324 5.8412871 14.660019 
		-0.00474873 6.6842532 14.781472 0.053694002 6.6554627 14.068653 0.018851694 5.8449807 
		14.124871 -0.42427948 6.6544909 13.835092 -0.40658665 5.8345146 14.264739 -0.80740213 
		6.6554627 14.068653 -0.82904142 5.8412871 14.660019 -0.82632649 6.6842532 14.781472 
		-0.85435474 5.8313246 14.797979 -0.41340187 6.6856222 15.012934 -0.39888838 5.5402799 
		14.266682 0.057329483 5.5441422 14.672821 0.092049316 5.5524483 14.125094 -0.37970087 
		5.5402799 14.266682 -0.81249028 5.5441422 14.672821 -0.83440411 5.5322423 14.814434 
		-0.36908779 8.6428728 14.233589 -0.80166596 8.6326542 14.151764 -0.43281269 8.9267445 
		14.151596 -0.42915073 8.9381285 14.232038 -0.79392827 8.6812992 14.519106 -0.82615519 
		8.9777918 14.508947 -0.81867564 8.6917639 14.600921 -0.42833662 8.9894257 14.58939 
		-0.42515796 8.6812992 14.519106 -0.032104075 8.6428728 14.233589 -0.062303673 4.00699 
		14.874352 0.44545406 3.9899702 14.142453 0.39082548 4.0164075 13.91083 -0.26313484 
		3.9899702 14.142453 -0.97890753 4.00699 14.874352 -1.006525 3.9796646 15.105997 -0.27626091 
		9.5335255 14.571344 -0.41927263 10.025849 14.554993 -0.41389164 9.4366951 14.453314 
		-0.9006232 9.3502245 14.218451 -0.86025041 9.5028553 14.171556 -0.42186087 10.035662 
		14.190003 -0.41518795 1.2760588 11.163034 -1.1098434 1.5409914 11.145266 -0.12095509 
		1.2760588 11.163034 0.9141922 1.6011529 8.5277224 -1.5995315 2.0809674 8.6464176 
		-0.28332239 1.7649583 8.4454994 1.0173134 -0.76001418 6.6752591 0.65099943 -0.39913905 
		6.6399736 -0.060053952 -0.671049 6.6399736 -0.76224679 -1.2069929 6.6399736 -0.75402361 
		-1.5086651 6.6399736 -0.16037524 -1.1912855 6.6752591 0.52286363 0.83885312 6.6752391 
		0.65099651;
	setAttr ".vt[498:514]" 1.2693417 6.6752391 0.52299708 1.5865582 6.6399937 
		-0.15965657 1.2850752 6.6399937 -0.75279242 0.74993849 6.6399937 -0.76100552 0.47817031 
		6.6399937 -0.0594371 -0.66981381 4.1115398 0.45992455 -0.33700198 4.0291138 -0.29737788 
		-0.60753953 4.0293474 -0.92264318 -1.1686702 4.0295143 -0.84370619 -1.4600173 4.0293474 
		-0.30626294 -1.1614555 4.111659 0.35367703 0.40738714 4.0290542 -0.29726753 0.74030668 
		4.1114635 0.46015584 1.2294081 4.1166849 0.35141346 1.5272026 4.0345712 -0.30534688 
		1.2367299 4.0346785 -0.84023303 0.6779834 4.0295 -0.92242527;
	setAttr -s 1055 ".ed";
	setAttr ".ed[0:165]"  0 17 0 1 19 0 1 2 
		0 0 128 0 2 20 0 2 244 0 3 246 
		0 4 21 0 4 6 0 5 7 0 6 22 
		0 8 9 0 9 243 0 10 11 0 12 13 
		0 13 247 0 14 129 0 17 35 0 16 31 
		1 17 126 0 17 265 0 18 130 0 19 127 
		0 18 19 0 20 3 0 19 20 0 21 5 
		0 20 245 0 22 7 0 21 22 0 1 23 
		0 23 19 0 130 23 0 23 38 0 19 37 
		0 24 25 0 18 36 0 26 25 0 130 39 
		0 26 27 0 27 24 0 0 29 1 15 30 
		1 16 30 1 17 29 0 31 17 0 31 29 
		1 31 28 0 28 32 0 16 33 0 33 32 
		0 31 34 0 34 32 0 28 124 0 1 8 
		0 2 9 0 4 10 0 6 11 0 7 12 
		0 5 13 0 3 14 0 0 15 1 29 30 
		1 33 34 0 36 26 0 37 25 0 36 37 
		0 38 24 0 37 38 0 39 27 0 38 39 
		0 39 36 0 7 49 0 40 41 0 12 45 
		0 41 42 0 6 47 0 43 40 0 11 46 
		0 43 44 0 45 237 0 46 233 0 47 234 
		0 46 47 0 48 235 0 47 48 0 49 236 
		0 48 49 0 49 45 0 22 50 0 7 51 
		0 50 51 0 48 52 0 49 53 0 52 53 
		0 51 53 0 6 54 0 54 50 0 47 55 
		0 54 55 0 55 52 0 50 194 0 51 189 
		0 56 57 0 52 191 0 53 190 0 58 59 
		0 57 59 0 54 193 0 60 56 0 55 192 
		0 60 61 0 61 58 0 40 225 0 41 226 
		0 62 63 0 42 227 0 64 65 0 63 65 
		0 43 224 0 66 62 0 44 223 0 66 67 
		0 67 64 0 62 68 0 63 69 0 68 69 
		0 64 70 0 65 71 0 70 71 0 69 71 
		0 66 72 0 72 68 0 67 73 0 72 73 
		0 73 70 0 68 200 0 69 195 0 74 87 
		0 70 197 0 74 75 0 71 196 0 75 82 
		0 72 199 0 76 74 0 73 198 0 76 77 
		0 77 75 0 74 78 0 87 79 0 78 79 
		0 75 80 0 78 80 0 82 81 0 80 81 
		0 79 81 0 83 75 0 82 83 0 84 77 
		0 83 84 0 85 76 0 84 85 0 86 74 
		0 85 86 0 86 87 0 87 82 0;
	setAttr ".ed[166:331]" 88 123 0 89 118 0 88 89 
		0 90 119 0 89 90 0 91 120 0 90 91 
		0 92 121 0 91 92 0 93 122 0 92 93 
		0 93 88 0 94 95 0 95 96 0 96 97 
		0 97 98 0 98 99 0 99 94 0 100 201 
		0 101 202 0 100 101 0 102 203 0 101 102 
		0 103 204 0 102 103 0 104 205 0 103 104 
		0 105 206 0 104 105 0 105 100 0 94 106 
		0 95 107 0 106 107 0 100 108 0 106 108 
		0 101 109 0 108 109 0 107 109 0 96 110 
		0 107 110 0 102 111 0 109 111 0 110 111 
		0 97 112 0 110 112 0 103 113 0 111 113 
		0 112 113 0 98 114 0 112 114 0 104 115 
		0 113 115 0 114 115 0 99 116 0 114 116 
		0 105 117 0 115 117 0 116 117 0 116 106 
		0 117 108 0 118 504 0 119 505 0 118 119 
		0 120 506 0 119 120 0 121 507 0 120 121 
		0 122 508 0 121 122 0 123 503 0 122 123 
		0 123 118 0 124 131 0 125 265 0 125 35 
		0 35 126 0 126 18 0 127 0 0 126 127 
		0 128 3 0 127 128 0 129 15 0 128 129 
		0 131 125 0 31 265 0 132 133 0 132 228 
		0 134 135 0 135 229 0 1 137 0 136 137 
		0 136 138 0 8 139 0 138 139 0 137 139 
		0 140 136 0 140 141 0 141 138 0 142 143 
		0 144 230 0 144 145 0 145 231 0 18 146 
		0 130 147 0 146 147 0 148 146 0 148 149 
		0 149 147 0 23 150 0 137 150 0 147 150 
		0 147 136 0 35 151 0 151 152 0 151 132 
		0 133 152 0 142 148 0 143 149 0 153 140 
		0 153 232 0 154 141 0 124 155 0 155 156 
		0 155 134 0 125 157 0 132 157 0 131 156 
		0 156 157 0 157 151 0 126 158 0 151 158 
		0 152 158 0 133 142 0 135 144 0 152 148 
		0 158 146 0 143 153 0 145 154 0 149 140 
		0 56 238 0 159 160 0 58 241 0 159 161 
		0 59 242 0 161 162 0 160 162 0 60 239 
		0 163 159 0 61 240 0 163 164 0 164 161 
		0 165 242 0 166 211 0 242 215 0 167 168 
		0 166 217 0 167 169 0 211 216 0 169 170 
		0 168 170 0 171 254 0 171 172 0 172 173 
		0 173 174 0 174 175 0 175 176 0;
	setAttr ".ed[332:497]" 176 171 0 177 171 0 178 172 
		0 177 178 0 179 173 0 178 179 0 180 174 
		0 179 180 0 181 175 0 180 181 0 182 176 
		0 181 182 0 182 177 0 183 58 0 184 61 
		0 183 184 0 185 60 0 184 185 0 186 56 
		0 185 186 0 187 57 0 186 187 0 188 59 
		0 187 188 0 188 183 0 189 248 0 190 249 
		0 189 190 0 191 250 0 190 191 0 192 251 
		0 191 192 0 193 252 0 192 193 0 194 253 
		0 193 194 0 194 189 0 195 496 0 196 491 
		0 195 196 0 197 492 0 196 197 0 198 493 
		0 197 198 0 199 494 0 198 199 0 200 495 
		0 199 200 0 200 195 0 201 87 0 202 82 
		0 201 202 0 203 83 0 202 203 0 204 84 
		0 203 204 0 205 85 0 204 205 0 206 86 
		0 205 206 0 206 201 0 57 165 0 166 160 
		0 207 212 0 166 207 0 208 163 0 207 208 
		0 209 164 0 208 209 0 210 213 0 209 210 
		0 211 162 0 210 211 0 212 159 0 160 212 
		0 212 163 0 213 161 0 164 213 0 213 162 
		0 165 214 0 214 167 0 215 168 0 214 215 
		0 216 170 0 215 216 0 217 169 0 216 217 
		0 217 214 0 172 255 0 173 256 0 174 257 
		0 175 258 0 176 259 0 218 44 0 219 43 
		0 218 219 0 220 40 0 219 220 0 221 41 
		0 220 221 0 222 42 0 221 222 0 223 260 
		0 224 261 0 223 224 0 225 262 0 224 225 
		0 226 263 0 225 226 0 227 264 0 226 227 
		0 228 134 0 156 228 0 229 133 0 228 229 
		0 230 142 0 229 230 0 231 143 0 230 231 
		0 232 154 0 231 232 0 141 232 0 133 151 
		0 136 149 0 148 158 0 233 218 0 234 219 
		0 233 234 0 235 220 0 234 235 0 236 221 
		0 235 236 0 237 222 0 236 237 0 165 166 
		0 238 207 0 165 238 0 239 208 0 238 239 
		0 240 209 0 239 240 0 241 210 0 240 241 
		0 242 211 0 241 242 0 243 10 0 244 4 
		0 243 244 0 245 21 0 244 245 0 246 5 
		0 245 246 0 247 14 0 246 247 0 248 177 
		0 249 178 0 248 249 0 250 179 0 249 250 
		0 251 180 0 250 251 0 252 181 0 251 252 
		0 253 182 0 252 253 0 253 248 0;
	setAttr ".ed[498:663]" 254 187 0 255 188 0 254 255 
		0 256 183 0 255 256 0 257 184 0 256 257 
		0 258 185 0 257 258 0 259 186 0 258 259 
		0 259 254 0 260 67 0 261 66 0 260 261 
		0 262 62 0 261 262 0 263 63 0 262 263 
		0 264 65 0 263 264 0 265 28 0 265 131 
		0 265 35 0 267 266 0 267 268 0 268 269 
		0 269 266 0 271 270 0 271 138 0 270 139 
		0 273 272 0 273 274 0 274 275 0 272 275 
		0 276 277 0 277 278 0 278 279 0 279 276 
		0 281 280 0 281 8 0 280 9 0 277 282 
		0 282 129 0 277 15 1 276 282 0 280 283 
		0 243 283 0 284 285 0 285 247 0 284 14 
		0 286 284 0 286 287 0 287 285 0 289 288 
		0 289 10 0 288 11 0 290 291 0 291 12 
		0 290 13 0 292 290 0 292 293 0 293 291 
		0 278 294 0 294 279 0 295 271 0 295 141 
		0 298 297 0 299 298 0 299 300 0 300 297 
		0 302 301 0 303 302 0 303 304 0 304 301 
		0 305 306 0 307 306 0 307 308 0 308 305 
		0 309 286 0 281 309 0 280 286 0 283 287 
		0 289 292 0 288 293 0 311 310 0 311 312 
		0 312 313 0 310 313 0 314 309 0 281 314 
		0 301 315 0 301 271 0 309 316 0 316 317 
		0 314 317 0 318 309 0 318 319 0 319 316 
		0 318 320 0 320 321 0 321 319 0 320 314 
		0 317 321 0 277 322 1 322 30 1 323 322 
		1 16 323 1 278 322 0 323 278 0 33 324 
		0 324 32 0 323 324 0 323 28 0 266 325 
		0 325 267 0 298 303 0 297 304 0 141 326 
		0 326 154 0 319 307 0 316 306 0 317 305 
		0 321 308 0 328 327 0 328 329 0 329 330 
		0 327 330 0 291 331 0 331 45 0 332 328 
		0 332 333 0 333 329 0 46 334 0 288 334 
		0 233 335 0 334 335 0 334 336 0 335 337 
		0 336 337 0 336 331 0 337 338 0 331 338 
		0 338 237 0 293 339 0 339 340 0 291 340 
		0 331 341 0 342 341 0 336 342 0 340 341 
		0 288 343 0 343 339 0 334 344 0 343 344 
		0 344 342 0 339 345 0 345 346 0 340 346 
		0 341 347 0 347 348 0 342 348 0 346 347 
		0 343 349 0 349 345 0 344 350 0;
	setAttr ".ed[664:829]" 350 349 0 348 350 0 352 351 
		0 352 353 0 353 354 0 351 354 0 351 42 
		0 354 227 0 355 352 0 355 356 0 356 353 
		0 355 44 0 223 356 0 358 357 0 358 359 
		0 359 360 0 357 360 0 65 361 0 362 361 
		0 64 362 0 357 65 0 360 361 0 363 358 
		0 363 364 0 364 359 0 363 67 0 67 365 
		0 364 365 0 365 362 0 359 366 0 366 367 
		0 360 367 0 361 368 0 368 369 0 362 369 
		0 367 368 0 364 370 0 370 366 0 365 371 
		0 371 370 0 369 371 0 310 372 0 310 273 
		0 372 272 0 313 274 0 313 373 0 373 275 
		0 372 373 0 373 374 0 374 313 0 374 375 
		0 375 312 0 375 376 0 376 311 0 376 377 
		0 377 310 0 377 372 0 379 378 0 379 380 
		0 380 381 0 378 381 0 378 382 0 381 383 
		0 382 383 0 382 384 0 383 385 0 384 385 
		0 384 386 0 385 387 0 386 387 0 386 388 
		0 387 389 0 388 389 0 388 379 0 389 380 
		0 391 390 0 391 392 0 392 393 0 390 393 
		0 390 394 0 393 395 0 394 395 0 394 396 
		0 395 397 0 396 397 0 396 398 0 397 399 
		0 398 399 0 398 400 0 399 401 0 400 401 
		0 400 391 0 401 392 0 403 402 0 403 404 
		0 404 405 0 402 405 0 402 406 0 405 407 
		0 406 407 0 406 408 0 407 409 0 408 409 
		0 408 410 0 409 411 0 410 411 0 410 412 
		0 411 413 0 412 413 0 412 403 0 413 404 
		0 415 414 0 415 391 0 414 390 0 402 393 
		0 403 392 0 414 416 0 416 394 0 406 395 
		0 416 417 0 417 396 0 408 397 0 417 418 
		0 418 398 0 410 399 0 418 419 0 419 400 
		0 412 401 0 419 415 0 381 509 0 383 514 
		0 385 513 0 387 512 0 389 511 0 380 510 
		0 155 420 0 420 421 0 420 268 0 421 325 
		0 267 421 0 325 422 0 325 423 0 423 422 
		0 266 298 0 269 299 0 423 303 0 266 423 
		0 303 422 0 309 276 0 279 318 0 282 284 
		0 297 424 0 300 326 0 424 326 0 304 295 
		0 424 295 0 271 304 0 281 270 0 318 302 
		0 320 301 0 314 315 0 270 315 0 124 426 
		0 426 425 0 426 420 0 425 421 0;
	setAttr ".ed[830:995]" 425 294 0 294 325 0 279 422 
		0 422 302 0 327 427 0 427 328 0 428 330 
		0 428 329 0 430 429 0 430 431 0 431 432 
		0 429 432 0 427 332 0 433 434 0 434 333 
		0 433 332 0 333 428 0 436 435 0 436 437 
		0 437 438 0 435 438 0 439 330 0 440 439 
		0 440 327 0 437 441 0 441 442 0 438 442 
		0 437 440 0 440 443 0 443 441 0 439 444 
		0 444 443 0 438 439 0 442 444 0 446 445 
		0 446 447 0 447 448 0 445 448 0 445 449 
		0 448 450 0 449 450 0 449 451 0 450 452 
		0 451 452 0 451 453 0 452 454 0 453 454 
		0 453 455 0 454 456 0 455 456 0 456 447 
		0 455 446 0 458 457 0 458 446 0 457 445 
		0 457 459 0 459 449 0 459 460 0 460 451 
		0 460 461 0 461 453 0 461 462 0 462 455 
		0 462 458 0 464 463 0 464 465 0 466 465 
		0 463 466 0 463 467 0 468 466 0 467 468 
		0 467 469 0 468 470 0 469 470 0 469 471 
		0 470 436 0 471 436 0 471 472 0 472 435 
		0 472 464 0 465 435 0 346 473 0 473 474 
		0 347 474 0 474 475 0 348 475 0 475 476 
		0 350 476 0 476 477 0 349 477 0 477 478 
		0 345 478 0 478 473 0 367 498 0 368 497 
		0 369 502 0 371 501 0 370 500 0 366 499 
		0 404 372 0 405 373 0 407 374 0 409 375 
		0 411 376 0 413 377 0 437 479 0 479 480 
		0 440 480 0 479 481 0 481 433 0 480 433 
		0 481 482 0 482 434 0 482 483 0 483 484 
		0 434 484 0 483 438 0 484 439 0 480 427 
		0 484 428 0 441 430 0 442 429 0 444 432 
		0 443 431 0 218 485 0 485 355 0 485 486 
		0 486 352 0 486 487 0 487 351 0 487 222 
		0 260 488 0 356 488 0 488 489 0 353 489 
		0 489 490 0 354 490 0 490 264 0 268 134 
		0 135 269 0 144 299 0 145 300 0 335 485 
		0 337 486 0 338 487 0 470 479 0 468 481 
		0 466 482 0 465 483 0 283 289 0 287 292 
		0 285 290 0 473 458 0 474 457 0 475 459 
		0 476 460 0 477 461 0 478 462 0 447 471 
		0 448 472 0 450 464 0 452 463 0 454 467 
		0 456 469 0 488 363 0 489 358 0;
	setAttr ".ed[996:1054]" 490 357 0 278 296 0 296 323 
		0 296 28 0 296 426 0 425 296 0 296 294 
		0 265 124 0 296 124 0 158 18 0 422 318 
		0 491 88 0 492 89 0 491 492 0 493 90 
		0 492 493 0 494 91 0 493 494 0 495 92 
		0 494 495 0 496 93 0 495 496 0 496 491 
		0 497 379 0 498 388 0 497 498 0 499 386 
		0 498 499 0 500 384 0 499 500 0 501 382 
		0 500 501 0 502 378 0 501 502 0 502 497 
		0 503 95 0 504 96 0 503 504 0 505 97 
		0 504 505 0 506 98 0 505 506 0 507 99 
		0 506 507 0 508 94 0 507 508 0 508 503 
		0 509 416 0 510 414 0 509 510 0 511 415 
		0 510 511 0 512 419 0 511 512 0 513 418 
		0 512 513 0 514 417 0 513 514 0 514 509 
		0;
	setAttr -s 2087 ".n";
	setAttr ".n[0:165]" -type "float3"  -0.79576534 0.50786388 0.32989642 -0.62207115 
		0.31340045 0.71750104 -0.29040521 0.52694499 0.79874504 -0.25328133 0.90438032 0.34343082 
		-0.31654286 -0.91619533 -0.24573728 -0.66723228 0.16525023 -0.7262876 -3.8058708e-006 
		0.084790029 -0.99639887 -1.2910237e-005 -0.95788848 -0.28714046 -0.48878664 0.55752099 
		0.67101276 -0.7344231 -0.23401919 0.63706964 0.585868 -0.28681758 0.75795406 0.31957611 
		0.56487912 0.76077759 -0.80561292 -0.5917902 0.027788322 -0.57537746 -0.67851824 
		0.45667684 -0.66946012 -0.020056272 0.74257725 -0.79419369 -0.57570881 0.19446273 
		-0.53560346 -0.59180439 -0.60240901 -0.14175253 -0.98830235 0.056255147 -3.8948456e-006 
		-0.99396902 0.10966175 -1.4092673e-006 -0.51012528 -0.86010009 -0.57537746 -0.67851824 
		0.45667684 -0.33407712 -0.94188958 0.035164677 -1.1508198e-005 -0.99732447 0.073101394 
		-1.9617039e-005 -0.89681935 0.44239709 -0.57537746 -0.67851824 0.45667684 -0.80561292 
		-0.5917902 0.027788322 -0.33407712 -0.94188958 0.035164677 -0.67345285 0.063824229 
		-0.73646969 -0.53560346 -0.59180439 -0.60240901 -1.4092673e-006 -0.51012528 -0.86010009 
		1.5691782e-006 0.11073168 -0.99385035 -0.53786057 -0.76548117 0.35319188 -0.67106909 
		-0.16267149 0.72332859 -4.3741297e-006 -0.19849603 0.98010159 -7.0165743e-006 -0.83952719 
		0.54331774 -0.53786057 -0.76548117 0.35319188 -0.78664446 -0.61579525 -0.044573214 
		-0.99848557 -0.051181342 0.020175697 -0.67106909 -0.16267149 0.72332859 -0.33096859 
		0.63953704 -0.6938675 -0.44425827 0.65639627 -0.6097365 -0.00020263788 0.581545 -0.81351417 
		-0.00057742832 0.44505942 -0.89550096 -0.5226469 0.44135416 0.7294153 -0.38838893 
		0.60541224 0.69471586 -0.00099801028 0.37092504 0.92866224 -0.00045872526 0.25651914 
		0.96653897 -0.5226469 0.44135416 0.7294153 -0.76620495 0.64230746 0.01926484 -0.28153121 
		0.95953983 0.0048543378 -0.38838893 0.60541224 0.69471586 -0.79419369 -0.57570881 
		0.19446273 -0.66946012 -0.020056272 0.74257725 -0.31989455 -0.40848905 0.85487086 
		-0.66723228 0.16525023 -0.7262876 -0.68021983 0.28501117 -0.67532933 1.1713171e-007 
		0.22234504 -0.97496802 -3.8058708e-006 0.084790029 -0.99639887 -0.77015924 0.61341655 
		-0.17485651 -0.78191912 0.62334371 0.0067052245 -0.19994776 0.97953415 0.023105502 
		-0.20208848 0.96795154 -0.1490979 -0.99112087 -0.069994979 -0.11304924 -0.91340387 
		-0.38504311 0.1320422 -0.95191795 0.28059027 0.12296896 -0.88898718 0.40163895 -0.21997288 
		-0.90333116 -0.41168728 0.12044211 -0.90333116 -0.41168728 0.12044211 -0.74087989 
		0.6603086 -0.12283926 -0.74087989 0.6603086 -0.12283926 -0.78664446 -0.61579525 -0.044573214 
		-0.65307534 -0.75175095 0.091450013 -0.14175253 -0.98830235 0.056255147 -0.53560346 
		-0.59180439 -0.60240901 -0.99848557 -0.051181342 0.020175697 -0.78664446 -0.61579525 
		-0.044573214 -0.53560346 -0.59180439 -0.60240901 -0.67345285 0.063824229 -0.73646969 
		-0.28153121 0.95953983 0.0048543378 -0.76620495 0.64230746 0.01926484 -0.44425827 
		0.65639627 -0.6097365 -0.33096859 0.63953704 -0.6938675 1.6266362e-010 -1 -4.2530569e-011 
		0 -1 0 0 -1 0 1.6266362e-010 -1 -4.2530569e-011 -0.14175253 -0.98830235 0.056255147 
		-0.65307534 -0.75175095 0.091450013 -0.25133681 -0.96777058 0.015806356 -0.61484361 
		-0.73842102 0.27695087 -0.99112087 -0.069994979 -0.11304924 -0.66723228 0.16525023 
		-0.7262876 -0.31654286 -0.91619533 -0.24573728 -0.21164726 -0.97725862 0.013077503 
		-0.21164726 -0.97725862 0.013077503 -0.47901723 -0.87199289 0.10085069 -0.47901723 
		-0.87199289 0.10085069 -0.65307534 -0.75175095 0.091450013 -0.73327595 -0.63559252 
		0.24151301 -0.33650759 0.80128521 0.49467635 -0.70555478 -0.44289508 0.55320561 -0.73327595 
		-0.63559252 0.24151301 -0.65951997 -0.71826804 -0.22164018 0.32895678 0.54296404 
		-0.77264321 -0.33650759 0.80128521 0.49467635 -0.65951997 -0.71826804 -0.22164018 
		-0.25133681 -0.96777058 0.015806356 -0.14428923 -0.7872771 -0.59947908 0.32895678 
		0.54296404 -0.77264321 -0.28048283 -0.28367725 0.91698235 -1.0949386e-005 -0.51148891 
		0.85928982 -0.40688196 0.092896938 0.90874487 -3.590588e-006 -0.41942465 0.90779012 
		-0.66946012 -0.020056272 0.74257725 -0.66946012 -0.020056272 0.74257725 -0.53931195 
		0.0072954027 0.84207451 -2.623357e-006 -0.38438421 0.92317319 3.225874e-005 0.52463508 
		0.85132724 -2.623357e-006 -0.38438421 0.92317319 -0.53931195 0.0072954027 0.84207451 
		1.9373458e-005 0.48481524 0.87461656 -0.40688196 0.092896938 0.90874487 -0.53931195 
		0.0072954027 0.84207451 3.225874e-005 0.52463508 0.85132724 -0.79576534 0.50786388 
		0.32989642 -0.63473904 -0.29185379 0.71549124 -0.62207115 0.31340045 0.71750104 -0.88898718 
		0.40163895 -0.21997288 -0.95191795 0.28059027 0.12296896 -0.78191912 0.62334371 0.0067052245 
		-0.77015924 0.61341655 -0.17485651 1.1713171e-007 0.22234504 -0.97496802 -0.23924044 
		0.67140698 -0.70141047 2.9930919e-007 0.71746349 -0.69659615 -0.70555478 -0.44289508 
		0.55320561 -0.33650759 0.80128521 0.49467635 -0.81420726 0.51425987 0.26945022 -0.90361488 
		-0.23152347 0.36038464 -0.47901723 -0.87199289 0.10085069 -0.47901723 -0.87199289 
		0.10085069 -0.90333116 -0.41168728 0.12044211 -0.90333116 -0.41168728 0.12044211 
		0.32895678 0.54296404 -0.77264321 -0.14428923 -0.7872771 -0.59947908 -0.73994493 
		-0.55832344 -0.37517515 -0.44969764 0.47058257 -0.75916016 -0.0046565235 0.97710705 
		-0.21269742 -0.0046565235 0.97710705 -0.21269742 -0.74087989 0.6603086 -0.12283926 
		-0.74087989 0.6603086 -0.12283926 -0.36279878 0.47025102 0.80451298 -0.80588329 0.58873737 
		-0.062772334 -0.4649632 -0.8839767 -0.048933964 -0.30513844 -0.82501459 0.47564858 
		-0.00099801028 0.37092504 0.92866224 -0.38838893 0.60541224 0.69471586 -0.67696911 
		-0.026123196 0.7355476 -0.0011644734 0.10226788 0.99475622 -0.80588329 0.58873737 
		-0.062772334 -0.34285313 0.46306503 -0.81732649 -0.28764543 -0.80072027 -0.52545899 
		-0.4649632 -0.8839767 -0.048933964 -0.33096859 0.63953704 -0.6938675 -0.00057742832 
		0.44505942 -0.89550096 -0.00053144636 -0.11304359 -0.99358982 -0.61350161 -0.18853538 
		-0.76685739;
	setAttr ".n[166:331]" -type "float3"  -0.61350161 -0.18853538 -0.76685739 
		-0.00053144636 -0.11304359 -0.99358982 -0.00015982181 -0.1409557 -0.99001586 -0.63599372 
		-0.17068966 -0.75258023 -0.97291857 -0.23109293 -0.0050423313 -0.61350161 -0.18853538 
		-0.76685739 -0.63599372 -0.17068966 -0.75258023 -0.99041712 -0.13794853 -0.0066409656 
		-0.67696911 -0.026123196 0.7355476 -0.97291857 -0.23109293 -0.0050423313 -0.99041712 
		-0.13794853 -0.0066409656 -0.68935585 -0.043915473 0.72309059 -0.0011644734 0.10226788 
		0.99475622 -0.67696911 -0.026123196 0.7355476 -0.68935585 -0.043915473 0.72309059 
		-0.0010559189 0.030715484 0.99952757 -0.38838893 0.60541224 0.69471586 -0.28153121 
		0.95953983 0.0048543378 -0.19939175 0.97991967 0.00068073667 -0.48234361 0.57455373 
		0.66123569 -0.97291857 -0.23109293 -0.0050423313 -0.67696911 -0.026123196 0.7355476 
		-0.66559428 -0.34809279 0.66016328 -0.65116447 -0.75848985 0.026037989 -0.67696911 
		-0.026123196 0.7355476 -0.38838893 0.60541224 0.69471586 -0.48234361 0.57455373 0.66123569 
		-0.66559428 -0.34809279 0.66016328 -0.28153121 0.95953983 0.0048543378 -0.33096859 
		0.63953704 -0.6938675 -0.46480054 0.54289567 -0.69944602 -0.19939175 0.97991967 0.00068073667 
		-0.33096859 0.63953704 -0.6938675 -0.61350161 -0.18853538 -0.76685739 -0.6247021 
		-0.43049964 -0.65147322 -0.46480054 0.54289567 -0.69944602 -0.61350161 -0.18853538 
		-0.76685739 -0.97291857 -0.23109293 -0.0050423313 -0.65116447 -0.75848985 0.026037989 
		-0.6247021 -0.43049964 -0.65147322 -0.48234361 0.57455373 0.66123569 -0.19939175 
		0.97991967 0.00068073667 -0.072229423 0.99738693 0.0014963766 -0.10887542 0.58305055 
		0.80510753 -0.65116447 -0.75848985 0.026037989 -0.66559428 -0.34809279 0.66016328 
		-0.089701794 -0.59360671 0.79974037 -0.047583252 -0.99827421 0.034417555 -0.66559428 
		-0.34809279 0.66016328 -0.48234361 0.57455373 0.66123569 -0.10887542 0.58305055 0.80510753 
		-0.089701794 -0.59360671 0.79974037 -0.19939175 0.97991967 0.00068073667 -0.46480054 
		0.54289567 -0.69944602 -0.19593239 0.56861472 -0.79892915 -0.072229423 0.99738693 
		0.0014963766 -0.46480054 0.54289567 -0.69944602 -0.6247021 -0.43049964 -0.65147322 
		-0.17406392 -0.62127781 -0.76401293 -0.19593239 0.56861472 -0.79892915 -0.6247021 
		-0.43049964 -0.65147322 -0.65116447 -0.75848985 0.026037989 -0.047583252 -0.99827421 
		0.034417555 -0.17406392 -0.62127781 -0.76401293 -0.67096967 0.3231498 0.66736346 
		-0.93673444 0.34726003 -0.044033788 -0.98670661 0.15483324 -0.049362577 -0.713346 
		0.1036416 0.69310606 -0.001063953 0.20420569 0.97892749 -0.67096967 0.3231498 0.66736346 
		-0.713346 0.1036416 0.69310606 -0.0010496675 0.041137163 0.99915302 -0.93673444 0.34726003 
		-0.044033788 -0.59000593 0.46771827 -0.65812814 -0.61576945 0.12160181 -0.77848637 
		-0.98670661 0.15483324 -0.049362577 -0.59000593 0.46771827 -0.65812814 0.0001221915 
		0.51319706 -0.8582707 0.001090544 0.044430923 -0.99901181 -0.61576945 0.12160181 
		-0.77848637 0.37421766 -0.7022208 -0.60567915 0.64360243 -0.76534843 -0.0041811536 
		0.64360243 -0.76534843 -0.0041811536 0.37421766 -0.7022208 -0.60567915 -0.096710771 
		-0.98840928 -0.11702146 -0.047348842 -0.72941071 -0.68243545 -0.16239849 -0.71474469 
		-0.68026954 -0.3652699 -0.92629057 -0.092539996 -0.047348842 -0.72941071 -0.68243545 
		0.37421766 -0.7022208 -0.60567915 0.37421766 -0.7022208 -0.60567915 -0.16239849 -0.71474469 
		-0.68026954 0.64360243 -0.76534843 -0.0041811536 0.37398821 -0.77252233 0.51316875 
		0.37398821 -0.77252233 0.51316875 0.64360243 -0.76534843 -0.0041811536 0.37398821 
		-0.77252233 0.51316875 -0.027401445 -0.85936832 0.51062232 -0.085254155 -0.85873437 
		0.50527906 0.37398821 -0.77252233 0.51316875 -0.027401445 -0.85936832 0.51062232 
		-0.096710771 -0.98840928 -0.11702146 -0.3652699 -0.92629057 -0.092539996 -0.085254155 
		-0.85873437 0.50527906 -0.2602011 -0.94972759 0.17410612 -0.2784664 -0.95885313 0.055292081 
		-0.9875707 -0.15448879 0.028937316 -0.62630194 -0.048366487 0.77807873 0.55854774 
		-0.82912356 -0.024051894 0.26947007 -0.95619851 0.11432513 0.41707534 0.0051363041 
		0.90885741 0.99822599 -0.00096878281 0.059531543 0.26947007 -0.95619851 0.11432513 
		-0.2602011 -0.94972759 0.17410612 -0.62630194 -0.048366487 0.77807873 0.41707534 
		0.0051363041 0.90885741 -0.2784664 -0.95885313 0.055292081 -0.047494747 -0.98991525 
		-0.13346188 -0.5178166 -0.22619861 -0.82504547 -0.9875707 -0.15448879 0.028937316 
		-0.047494747 -0.98991525 -0.13346188 0.38496578 -0.90970832 -0.15566656 0.58448243 
		-0.1112819 -0.80373913 -0.5178166 -0.22619861 -0.82504547 0.38496578 -0.90970832 
		-0.15566656 0.55854774 -0.82912356 -0.024051894 0.99822599 -0.00096878281 0.059531543 
		0.58448243 -0.1112819 -0.80373913 -0.79138213 0.27703494 0.54494584 -0.86392361 -0.5035497 
		-0.0085860649 -0.7344231 -0.23401919 0.63706964 -0.48878664 0.55752099 0.67101276 
		1.6266362e-010 -1 -4.2530569e-011 1.6266362e-010 -1 -4.2530569e-011 3.2532724e-010 
		-1 -8.5061139e-011 3.2532724e-010 -1 -8.5061139e-011 0.857611 -0.51233172 0.044937409 
		0.72099972 0.2889019 0.62983733 0.31957611 0.56487912 0.76077759 0.585868 -0.28681758 
		0.75795406 0.72099972 0.2889019 0.62983733 -0.79138213 0.27703494 0.54494584 -0.48878664 
		0.55752099 0.67101276 0.31957611 0.56487912 0.76077759 0.99722546 0.071533211 -0.020600729 
		0.72099972 0.2889019 0.62983733 0.857611 -0.51233172 0.044937409 0.55380428 0.093774356 
		-0.8273496 0.99722546 0.071533211 -0.020600729 0.857611 -0.51233172 0.044937409 0.48043412 
		-0.50605047 -0.71630704 -0.62694442 0.076292686 -0.7753194 0.55380428 0.093774356 
		-0.8273496 0.48043412 -0.50605047 -0.71630704 -0.55627918 -0.47691929 -0.68051565 
		-0.99719572 0.053241067 -0.052594781 -0.62694442 0.076292686 -0.7753194 -0.55627918 
		-0.47691929 -0.68051565 -0.86392361 -0.5035497 -0.0085860649 -0.79138213 0.27703494 
		0.54494584 -0.99719572 0.053241067 -0.052594781 -0.86392361 -0.5035497 -0.0085860649 
		0.99744803 0.056092016 0.044171587 0.39705819 -0.031147327 0.91726482 0.41625285 
		-0.041327998 0.90830916 0.99728888 0.066728756 0.03101857;
	setAttr ".n[332:497]" -type "float3"  0.53082001 0.086014517 -0.84310824 0.99744803 
		0.056092016 0.044171587 0.99728888 0.066728756 0.03101857 0.50845295 0.14102569 -0.84946293 
		-0.54983008 0.02675055 -0.83484799 0.53082001 0.086014517 -0.84310824 0.50845295 
		0.14102569 -0.84946293 -0.5593828 0.097280666 -0.82318115 -0.99908602 -0.034085222 
		-0.025790943 -0.54983008 0.02675055 -0.83484799 -0.5593828 0.097280666 -0.82318115 
		-0.99945837 0.0097931894 -0.031419225 -0.65654647 -0.065673403 0.75142109 -0.99908602 
		-0.034085222 -0.025790943 -0.99945837 0.0097931894 -0.031419225 -0.64903235 -0.06374637 
		0.75808537 0.39705819 -0.031147327 0.91726482 -0.65654647 -0.065673403 0.75142109 
		-0.64903235 -0.06374637 0.75808537 0.41625285 -0.041327998 0.90830916 0.57250363 
		0.35477862 0.7391696 -0.64819145 0.30654743 0.69704849 -0.64819145 0.30654743 0.69704849 
		0.57250363 0.35477862 0.7391696 0.96196169 0.26781631 -0.05388917 0.57250363 0.35477862 
		0.7391696 0.57250363 0.35477862 0.7391696 0.96196169 0.26781631 -0.05388917 0.53376681 
		0.36014408 -0.76510733 0.96196169 0.26781631 -0.05388917 0.96196169 0.26781631 -0.05388917 
		0.53376681 0.36014408 -0.76510733 -0.59654015 0.31876954 -0.73656362 0.53376681 0.36014408 
		-0.76510733 0.53376681 0.36014408 -0.76510733 -0.59654015 0.31876954 -0.73656362 
		-0.9667232 0.24831612 -0.061525382 -0.59654015 0.31876954 -0.73656362 -0.59654015 
		0.31876954 -0.73656362 -0.9667232 0.24831612 -0.061525382 -0.64819145 0.30654743 
		0.69704849 -0.9667232 0.24831612 -0.061525382 -0.9667232 0.24831612 -0.061525382 
		-0.64819145 0.30654743 0.69704849 0.12164577 -0.93166482 0.34234932 -0.17762376 -0.92833316 
		0.32656908 -0.67103332 0.05770205 0.7391783 0.57249218 0.070959739 0.81683373 0.34096098 
		-0.93758541 0.068403907 0.12164577 -0.93166482 0.34234932 0.57249218 0.070959739 
		0.81683373 0.99702126 0.072251156 -0.026989171 0.15552723 -0.94989496 -0.27112865 
		0.34096098 -0.93758541 0.068403907 0.99702126 0.072251156 -0.026989171 0.55498821 
		0.10909908 -0.824673 -0.19244593 -0.94443172 -0.26648337 0.15552723 -0.94989496 -0.27112865 
		0.55498821 0.10909908 -0.824673 -0.62256593 0.087038122 -0.77771199 -0.3371551 -0.94012052 
		0.049998038 -0.19244593 -0.94443172 -0.26648337 -0.62256593 0.087038122 -0.77771199 
		-0.9970035 0.054725572 -0.054673076 -0.17762376 -0.92833316 0.32656908 -0.3371551 
		-0.94012052 0.049998038 -0.9970035 0.054725572 -0.054673076 -0.67103332 0.05770205 
		0.7391783 0.22083995 0.93031508 0.29281986 -0.30267096 0.90596354 0.29600728 -0.30267096 
		0.90596354 0.29600728 0.22083995 0.93031508 0.29281986 0.47623378 -0.76948982 -0.42554286 
		-0.40789482 -0.80425137 -0.43220541 -0.40789482 -0.80425137 -0.43220541 0.47623378 
		-0.76948982 -0.42554286 0.49386072 0.86625695 -0.075500518 0.22083995 0.93031508 
		0.29281986 0.22083995 0.93031508 0.29281986 0.49386072 0.86625695 -0.075500518 -0.40789482 
		-0.80425137 -0.43220541 -0.76174915 -0.64376712 0.072814763 -0.76174915 -0.64376712 
		0.072814763 -0.40789482 -0.80425137 -0.43220541 0.23197339 0.87643665 -0.42195648 
		0.49386072 0.86625695 -0.075500518 0.49386072 0.86625695 -0.075500518 0.23197339 
		0.87643665 -0.42195648 -0.76174915 -0.64376712 0.072814763 -0.38150245 -0.7550267 
		0.53328282 -0.38150245 -0.7550267 0.53328282 -0.76174915 -0.64376712 0.072814763 
		-0.30063894 0.85038972 -0.43180257 0.23197339 0.87643665 -0.42195648 0.23197339 0.87643665 
		-0.42195648 -0.30063894 0.85038972 -0.43180257 -0.38150245 -0.7550267 0.53328282 
		0.44168663 -0.72149861 0.53324735 0.44168663 -0.72149861 0.53324735 -0.38150245 -0.7550267 
		0.53328282 -0.50664234 0.8577323 -0.087228701 -0.30063894 0.85038972 -0.43180257 
		-0.30063894 0.85038972 -0.43180257 -0.50664234 0.8577323 -0.087228701 0.44168663 
		-0.72149861 0.53324735 0.76052588 -0.64390713 0.083570763 0.76052588 -0.64390713 
		0.083570763 0.44168663 -0.72149861 0.53324735 -0.30267096 0.90596354 0.29600728 -0.50664234 
		0.8577323 -0.087228701 -0.50664234 0.8577323 -0.087228701 -0.30267096 0.90596354 
		0.29600728 0.76052588 -0.64390713 0.083570763 0.47623378 -0.76948982 -0.42554286 
		0.47623378 -0.76948982 -0.42554286 0.76052588 -0.64390713 0.083570763 0.50845295 
		0.14102569 -0.84946293 0.99728888 0.066728756 0.03101857 0.99896669 0.045157015 0.0051394575 
		0.49243075 0.13193198 -0.86029404 -0.5593828 0.097280666 -0.82318115 0.50845295 0.14102569 
		-0.84946293 0.49243075 0.13193198 -0.86029404 -0.56341165 0.14263853 -0.81377 -0.99945837 
		0.0097931894 -0.031419225 -0.5593828 0.097280666 -0.82318115 -0.56341165 0.14263853 
		-0.81377 -0.9953714 0.088527761 -0.03739915 -0.64903235 -0.06374637 0.75808537 -0.99945837 
		0.0097931894 -0.031419225 -0.9953714 0.088527761 -0.03739915 -0.63424736 -0.00041833601 
		0.77312994 0.41625285 -0.041327998 0.90830916 -0.64903235 -0.06374637 0.75808537 
		-0.63424736 -0.00041833601 0.77312994 0.45286345 -0.021268561 0.89132619 0.99728888 
		0.066728756 0.03101857 0.41625285 -0.041327998 0.90830916 0.45286345 -0.021268561 
		0.89132619 0.99896669 0.045157015 0.0051394575 -0.0074822642 -0.50837815 0.86110145 
		-0.051518988 -0.64759356 0.76024228 -0.29040521 0.52694499 0.79874504 -0.62207115 
		0.31340045 0.71750104 -0.62207115 0.31340045 0.71750104 -0.63473904 -0.29185379 0.71549124 
		-0.0074822642 -0.50837815 0.86110145 -0.7408098 -0.61285532 0.27497143 -0.63473904 
		-0.29185379 0.71549124 -0.95978153 0.078428239 0.2695708 -0.78191912 0.62334371 0.0067052245 
		-0.79576534 0.50786388 0.32989642 -0.25328133 0.90438032 0.34343082 -0.19994776 0.97953415 
		0.023105502 -0.95191795 0.28059027 0.12296896 -0.95978153 0.078428239 0.2695708 -0.79576534 
		0.50786388 0.32989642 -0.78191912 0.62334371 0.0067052245 -0.95191795 0.28059027 
		0.12296896 -0.7408098 -0.61285532 0.27497143 -0.95978153 0.078428239 0.2695708 -0.65307534 
		-0.75175095 0.091450013 -0.80561292 -0.5917902 0.027788322 -0.79419369 -0.57570881 
		0.19446273 -0.73327595 -0.63559252 0.24151301 -0.33407712 -0.94188958 0.035164677;
	setAttr ".n[498:663]" -type "float3"  -0.80561292 -0.5917902 0.027788322 -0.65307534 
		-0.75175095 0.091450013 -0.78664446 -0.61579525 -0.044573214 -0.53786057 -0.76548117 
		0.35319188 -1.1508198e-005 -0.99732447 0.073101394 -0.33407712 -0.94188958 0.035164677 
		-0.53786057 -0.76548117 0.35319188 -7.0165743e-006 -0.83952719 0.54331774 -0.66009605 
		0.52566659 -0.53660768 -0.77015924 0.61341655 -0.17485651 -0.20208848 0.96795154 
		-0.1490979 -0.23924044 0.67140698 -0.70141047 -0.68021983 0.28501117 -0.67532933 
		-0.88898718 0.40163895 -0.21997288 -0.77015924 0.61341655 -0.17485651 -0.66009605 
		0.52566659 -0.53660768 -0.66723228 0.16525023 -0.7262876 -0.88898718 0.40163895 -0.21997288 
		-0.68021983 0.28501117 -0.67532933 -4.4361705e-006 -0.71858859 0.69543546 0.19219498 
		-0.83392072 0.51733673 0.19219498 -0.83392072 0.51733673 -4.4361705e-006 -0.71858859 
		0.69543546 -0.56253678 -0.69018507 0.45518896 -0.30158412 -0.95296186 -0.030178677 
		-0.37626922 -0.92304665 -0.080040634 -0.56253678 -0.69018507 0.45518896 0.19219498 
		-0.83392072 0.51733673 -0.2211712 -0.68632984 0.69284517 -0.2211712 -0.68632984 0.69284517 
		0.19219498 -0.83392072 0.51733673 -0.2211712 -0.68632984 0.69284517 -0.56253678 -0.69018507 
		0.45518896 -0.56253678 -0.69018507 0.45518896 -0.2211712 -0.68632984 0.69284517 0.40812793 
		-0.86326504 0.2969932 0.17250982 -0.98481303 0.019591438 0.17250982 -0.98481303 0.019591438 
		0.40812793 -0.86326504 0.2969932 0.26706347 -0.82663804 0.49532476 0.40812793 -0.86326504 
		0.2969932 0.40812793 -0.86326504 0.2969932 0.26706347 -0.82663804 0.49532476 -0.10995591 
		-0.96819216 0.22475246 0.26706347 -0.82663804 0.49532476 0.26706347 -0.82663804 0.49532476 
		-0.22241397 -0.96840781 0.11277603 -0.30158412 -0.95296186 -0.030178677 -0.10995591 
		-0.96819216 0.22475246 -0.22241397 -0.96840781 0.11277603 0.17250982 -0.98481303 
		0.019591438 0.17250982 -0.98481303 0.019591438 0.11894971 -0.99189371 0.04469578 
		0.11894971 -0.99189371 0.04469578 -0.36279878 0.47025102 0.80451298 -0.093462259 
		0.99561965 -0.0025258865 -0.80588329 0.58873737 -0.062772334 -0.084375225 -0.99617565 
		-0.02269483 -0.30513844 -0.82501459 0.47564858 -0.4649632 -0.8839767 -0.048933964 
		-0.3848137 -0.87377954 0.29736811 -0.6098426 0.10917673 0.78496659 -0.91142303 -0.024497505 
		-0.41074061 -0.91142303 -0.024497505 -0.41074061 -0.093462259 0.99561965 -0.0025258865 
		-0.34285313 0.46306503 -0.81732649 -0.80588329 0.58873737 -0.062772334 -0.045838796 
		0.52847952 -0.84770769 -0.02000612 -0.75512946 -0.65527034 -0.28764543 -0.80072027 
		-0.52545899 -0.34285313 0.46306503 -0.81732649 -0.28764543 -0.80072027 -0.52545899 
		-0.084375225 -0.99617565 -0.02269483 -0.4649632 -0.8839767 -0.048933964 0.13512075 
		-0.70586294 0.69534165 0.087084234 0.58402556 0.80705047 0.21558803 0.70017529 0.68064404 
		0.25738576 -0.89163017 0.37248912 -0.36279878 0.47025102 0.80451298 -0.30513844 -0.82501459 
		0.47564858 -0.36494485 -0.93071318 0.024254758 -0.38576877 0.81882411 0.42509946 
		0.25738576 -0.89163017 0.37248912 0.21558803 0.70017529 0.68064404 0.11414973 0.44222599 
		0.88960999 0.39461172 -0.86898011 0.29858863 0.21558803 0.70017529 0.68064404 -0.38576877 
		0.81882411 0.42509946 -0.70718741 0.6850518 -0.17489994 0.11414973 0.44222599 0.88960999 
		-0.38576877 0.81882411 0.42509946 -0.36494485 -0.93071318 0.024254758 -0.43242994 
		-0.50357282 -0.74794298 -0.70718741 0.6850518 -0.17489994 -0.36494485 -0.93071318 
		0.024254758 0.25738576 -0.89163017 0.37248912 0.39461172 -0.86898011 0.29858863 -0.43242994 
		-0.50357282 -0.74794298 -0.0070418664 -0.59164256 0.80616969 -0.048441488 0.54284376 
		0.83843541 0.019781739 0.52909547 0.84833175 0.056902796 -0.57121468 0.81882584 0.13621752 
		-0.99067736 -0.0017729573 -0.0070418664 -0.59164256 0.80616969 0.056902796 -0.57121468 
		0.81882584 0.086733028 -0.99622941 -0.0020807779 0.09038242 -0.57174104 -0.8154406 
		0.13621752 -0.99067736 -0.0017729573 0.086733028 -0.99622941 -0.0020807779 0.051564865 
		-0.56307179 -0.82479763 0.051981751 0.54865795 -0.83442938 0.09038242 -0.57174104 
		-0.8154406 0.051564865 -0.56307179 -0.82479763 0.014904762 0.53810638 -0.84274518 
		0.0637279 0.99796736 0.00011641454 0.051981751 0.54865795 -0.83442938 0.014904762 
		0.53810638 -0.84274518 0.016515752 0.99986327 0.0008083448 0.016515752 0.99986327 
		0.0008083448 0.019781739 0.52909547 0.84833175 -0.048441488 0.54284376 0.83843541 
		0.0637279 0.99796736 0.00011641454 -0.21861844 -0.60653079 0.76441246 -0.26023608 
		0.54541475 0.79674327 -0.048441488 0.54284376 0.83843541 -0.0070418664 -0.59164256 
		0.80616969 -0.079864241 -0.99679989 0.0034151569 -0.21861844 -0.60653079 0.76441246 
		-0.0070418664 -0.59164256 0.80616969 0.13621752 -0.99067736 -0.0017729573 -0.06318102 
		-0.60175949 -0.79617441 -0.079864241 -0.99679989 0.0034151569 0.13621752 -0.99067736 
		-0.0017729573 0.09038242 -0.57174104 -0.8154406 -0.098232202 0.56893665 -0.81649339 
		-0.06318102 -0.60175949 -0.79617441 0.09038242 -0.57174104 -0.8154406 0.051981751 
		0.54865795 -0.83442938 -0.12845728 0.99171495 -0.00032868647 -0.098232202 0.56893665 
		-0.81649339 0.051981751 0.54865795 -0.83442938 0.0637279 0.99796736 0.00011641454 
		-0.26023608 0.54541475 0.79674327 -0.12845728 0.99171495 -0.00032868647 0.0637279 
		0.99796736 0.00011641454 -0.048441488 0.54284376 0.83843541 -0.04554737 -0.6202783 
		-0.78305829 -0.060986366 -0.99813831 -0.00082275935 0.02142298 -0.99935865 -0.028693225 
		0.047610503 -0.6721136 -0.7389158 -0.074712403 0.56907761 -0.81888258 -0.04554737 
		-0.6202783 -0.78305829 0.047610503 -0.6721136 -0.7389158 0.018787388 0.59428704 -0.80403364 
		-0.10353994 0.99462521 0.00047206998 -0.074712403 0.56907761 -0.81888258 0.018787388 
		0.59428704 -0.80403364 -0.04621999 0.99893045 0.0013098569 -0.078440681 0.56145763 
		0.8237794 -0.10353994 0.99462521 0.00047206998 -0.04621999 0.99893045 0.0013098569 
		0.087084234 0.58402556 0.80705047 -0.048098467 -0.62712759 0.77743006 -0.078440681 
		0.56145763 0.8237794 0.087084234 0.58402556 0.80705047 0.13512075 -0.70586294 0.69534165;
	setAttr ".n[664:829]" -type "float3"  -0.060986366 -0.99813831 -0.00082275935 
		-0.048098467 -0.62712759 0.77743006 0.13512075 -0.70586294 0.69534165 0.02142298 
		-0.99935865 -0.028693225 -0.089701794 -0.59360671 0.79974037 -0.10887542 0.58305055 
		0.80510753 -0.067861363 0.56679952 0.82105613 -0.025804458 -0.60340893 0.7970143 
		-0.047583252 -0.99827421 0.034417555 -0.089701794 -0.59360671 0.79974037 -0.025804458 
		-0.60340893 0.7970143 -0.023568574 -0.99961978 0.014312156 -0.17406392 -0.62127781 
		-0.76401293 -0.047583252 -0.99827421 0.034417555 -0.023568574 -0.99961978 0.014312156 
		-0.051296815 -0.60500968 -0.79456401 -0.19593239 0.56861472 -0.79892915 -0.17406392 
		-0.62127781 -0.76401293 -0.051296815 -0.60500968 -0.79456401 -0.099918999 0.56917435 
		-0.81612301 -0.072229423 0.99738693 0.0014963766 -0.19593239 0.56861472 -0.79892915 
		-0.099918999 0.56917435 -0.81612301 -0.095854901 0.99539506 0.00081254361 -0.10887542 
		0.58305055 0.80510753 -0.072229423 0.99738693 0.0014963766 -0.095854901 0.99539506 
		0.00081254361 -0.067861363 0.56679952 0.82105613 0.41707534 0.0051363041 0.90885741 
		-0.62630194 -0.048366487 0.77807873 -0.64657992 -0.041678235 0.76170683 0.4003526 
		-0.027703075 0.91594237 0.99822599 -0.00096878281 0.059531543 0.41707534 0.0051363041 
		0.90885741 0.4003526 -0.027703075 0.91594237 0.99869782 0.0057094283 0.050696008 
		0.58448243 -0.1112819 -0.80373913 0.99822599 -0.00096878281 0.059531543 0.99869782 
		0.0057094283 0.050696008 0.55669016 -0.013583341 -0.83060908 -0.5178166 -0.22619861 
		-0.82504547 0.58448243 -0.1112819 -0.80373913 0.55669016 -0.013583341 -0.83060908 
		-0.531573 -0.047689661 -0.84566879 -0.9875707 -0.15448879 0.028937316 -0.5178166 
		-0.22619861 -0.82504547 -0.531573 -0.047689661 -0.84566879 -0.99884701 -0.045588017 
		-0.015047688 -0.62630194 -0.048366487 0.77807873 -0.9875707 -0.15448879 0.028937316 
		-0.99884701 -0.045588017 -0.015047688 -0.64657992 -0.041678235 0.76170683 0.57249218 
		0.070959739 0.81683373 -0.67103332 0.05770205 0.7391783 -0.79138213 0.27703494 0.54494584 
		0.72099972 0.2889019 0.62983733 0.99702126 0.072251156 -0.026989171 0.57249218 0.070959739 
		0.81683373 0.72099972 0.2889019 0.62983733 0.99722546 0.071533211 -0.020600729 0.55498821 
		0.10909908 -0.824673 0.99702126 0.072251156 -0.026989171 0.99722546 0.071533211 -0.020600729 
		0.55380428 0.093774356 -0.8273496 -0.62256593 0.087038122 -0.77771199 0.55498821 
		0.10909908 -0.824673 0.55380428 0.093774356 -0.8273496 -0.62694442 0.076292686 -0.7753194 
		-0.9970035 0.054725572 -0.054673076 -0.62256593 0.087038122 -0.77771199 -0.62694442 
		0.076292686 -0.7753194 -0.99719572 0.053241067 -0.052594781 -0.67103332 0.05770205 
		0.7391783 -0.9970035 0.054725572 -0.054673076 -0.99719572 0.053241067 -0.052594781 
		-0.79138213 0.27703494 0.54494584 0.21558803 0.70017529 0.68064404 -0.055592161 0.99844974 
		0.0027502254 -0.077680774 0.99697793 0.00073959114 -0.38576877 0.81882411 0.42509946 
		-0.055592161 0.99844974 0.0027502254 0.079526879 0.57311863 -0.81560445 -0.045838796 
		0.52847952 -0.84770769 -0.077680774 0.99697793 0.00073959114 0.079526879 0.57311863 
		-0.81560445 0.11236832 -0.70708644 -0.69814199 -0.02000612 -0.75512946 -0.65527034 
		-0.045838796 0.52847952 -0.84770769 0.11236832 -0.70708644 -0.69814199 -0.0022572561 
		-0.99835747 -0.057248317 -0.062593304 -0.99724662 -0.039764926 -0.02000612 -0.75512946 
		-0.65527034 -0.0022572561 -0.99835747 -0.057248317 0.25738576 -0.89163017 0.37248912 
		-0.36494485 -0.93071318 0.024254758 -0.062593304 -0.99724662 -0.039764926 -0.38576877 
		0.81882411 0.42509946 -0.077680774 0.99697793 0.00073959114 -0.093462259 0.99561965 
		-0.0025258865 -0.36279878 0.47025102 0.80451298 -0.077680774 0.99697793 0.00073959114 
		-0.045838796 0.52847952 -0.84770769 -0.34285313 0.46306503 -0.81732649 -0.093462259 
		0.99561965 -0.0025258865 -0.02000612 -0.75512946 -0.65527034 -0.062593304 -0.99724662 
		-0.039764926 -0.084375225 -0.99617565 -0.02269483 -0.28764543 -0.80072027 -0.52545899 
		-0.062593304 -0.99724662 -0.039764926 -0.36494485 -0.93071318 0.024254758 -0.30513844 
		-0.82501459 0.47564858 -0.084375225 -0.99617565 -0.02269483 0.39461172 -0.86898011 
		0.29858863 0.11414973 0.44222599 0.88960999 -0.6098426 0.10917673 0.78496659 -0.3848137 
		-0.87377954 0.29736811 -0.43242994 -0.50357282 -0.74794298 0.39461172 -0.86898011 
		0.29858863 -0.3848137 -0.87377954 0.29736811 -0.91142303 -0.024497505 -0.41074061 
		-0.70718741 0.6850518 -0.17489994 -0.43242994 -0.50357282 -0.74794298 -0.91142303 
		-0.024497505 -0.41074061 -0.91142303 -0.024497505 -0.41074061 0.11414973 0.44222599 
		0.88960999 -0.70718741 0.6850518 -0.17489994 -0.91142303 -0.024497505 -0.41074061 
		-0.6098426 0.10917673 0.78496659 -0.55478865 0.62902755 -0.54454917 8.34276e-005 
		0.73382986 -0.67933321 8.34276e-005 0.73382986 -0.67933321 -0.55478865 0.62902755 
		-0.54454917 -0.88253021 0.46864671 -0.038869161 -0.55478865 0.62902755 -0.54454917 
		-0.55478865 0.62902755 -0.54454917 -0.88253021 0.46864671 -0.038869161 -0.61630011 
		0.46566054 0.63508618 -0.88253021 0.46864671 -0.038869161 -0.88253021 0.46864671 
		-0.038869161 -0.61630011 0.46566054 0.63508618 -0.0010365843 0.29377335 0.9558745 
		-0.61630011 0.46566054 0.63508618 -0.61630011 0.46566054 0.63508618 -0.0010365843 
		0.29377335 0.9558745 -0.61576945 0.12160181 -0.77848637 0.001090544 0.044430923 -0.99901181 
		0.0031708179 -0.20834789 -0.97804964 -0.60311234 -0.096822001 -0.79175818 -0.98670661 
		0.15483324 -0.049362577 -0.61576945 0.12160181 -0.77848637 -0.60311234 -0.096822001 
		-0.79175818 -0.99658298 0.062219471 -0.054322917 -0.713346 0.1036416 0.69310606 -0.98670661 
		0.15483324 -0.049362577 -0.99658298 0.062219471 -0.054322917 -0.70024353 0.03081904 
		0.7132386 -0.0010496675 0.041137163 0.99915302 -0.713346 0.1036416 0.69310606 -0.70024353 
		0.03081904 0.7132386 -0.00023832079 -0.030463826 0.9995358 -0.0055588195 0.5719468 
		0.82027185 -0.29040521 0.52694499 0.79874504 -0.051518988 -0.64759356 0.76024228 
		0.083521031 -0.61436284 0.78459072 -0.25328133 0.90438032 0.34343082 -0.29040521 
		0.52694499 0.79874504;
	setAttr ".n[830:995]" -type "float3"  -0.0055588195 0.5719468 0.82027185 0 
		0.93835521 0.34567267 -0.19994776 0.97953415 0.023105502 -0.25328133 0.90438032 0.34343082 
		0 0.93835521 0.34567267 1.8891066e-009 0.99934042 0.036311734 -0.20208848 0.96795154 
		-0.1490979 -0.19994776 0.97953415 0.023105502 1.8891066e-009 0.99934042 0.036311734 
		1.1271096e-008 0.9925499 -0.12183855 -0.23924044 0.67140698 -0.70141047 -0.20208848 
		0.96795154 -0.1490979 1.1271096e-008 0.9925499 -0.12183855 2.9930919e-007 0.71746349 
		-0.69659615 1.1713171e-007 0.22234504 -0.97496802 -0.68021983 0.28501117 -0.67532933 
		-0.66009605 0.52566659 -0.53660768 -0.23924044 0.67140698 -0.70141047 -0.95978153 
		0.078428239 0.2695708 -0.63473904 -0.29185379 0.71549124 -0.79576534 0.50786388 0.32989642 
		-0.66723228 0.16525023 -0.7262876 -0.99112087 -0.069994979 -0.11304924 -0.88898718 
		0.40163895 -0.21997288 -0.91340387 -0.38504311 0.1320422 -0.7408098 -0.61285532 0.27497143 
		-0.95191795 0.28059027 0.12296896 -0.63599372 -0.17068966 -0.75258023 -0.00015982181 
		-0.1409557 -0.99001586 0.00011253663 0.35046965 -0.93657404 -0.66119301 0.26257026 
		-0.70276648 -0.99041712 -0.13794853 -0.0066409656 -0.63599372 -0.17068966 -0.75258023 
		-0.66119301 0.26257026 -0.70276648 -0.98482031 0.17198418 -0.023460614 -0.68935585 
		-0.043915473 0.72309059 -0.99041712 -0.13794853 -0.0066409656 -0.98482031 0.17198418 
		-0.023460614 -0.68852365 0.22395429 0.68976784 -0.0010559189 0.030715484 0.99952757 
		-0.68935585 -0.043915473 0.72309059 -0.68852365 0.22395429 0.68976784 -0.00097042893 
		0.17859203 0.98392278 0.087084234 0.58402556 0.80705047 -0.04621999 0.99893045 0.0013098569 
		-0.055592161 0.99844974 0.0027502254 0.21558803 0.70017529 0.68064404 -0.04621999 
		0.99893045 0.0013098569 0.018787388 0.59428704 -0.80403364 0.079526879 0.57311863 
		-0.81560445 -0.055592161 0.99844974 0.0027502254 0.018787388 0.59428704 -0.80403364 
		0.047610503 -0.6721136 -0.7389158 0.11236832 -0.70708644 -0.69814199 0.079526879 
		0.57311863 -0.81560445 0.047610503 -0.6721136 -0.7389158 0.02142298 -0.99935865 -0.028693225 
		-0.0022572561 -0.99835747 -0.057248317 0.11236832 -0.70708644 -0.69814199 0.02142298 
		-0.99935865 -0.028693225 0.13512075 -0.70586294 0.69534165 0.25738576 -0.89163017 
		0.37248912 -0.0022572561 -0.99835747 -0.057248317 -0.44425827 0.65639627 -0.6097365 
		-0.67345285 0.063824229 -0.73646969 1.5691782e-006 0.11073168 -0.99385035 -0.00020263788 
		0.581545 -0.81351417 -0.76620495 0.64230746 0.01926484 -0.99848557 -0.051181342 0.020175697 
		-0.67345285 0.063824229 -0.73646969 -0.44425827 0.65639627 -0.6097365 -0.67106909 
		-0.16267149 0.72332859 -0.99848557 -0.051181342 0.020175697 -0.76620495 0.64230746 
		0.01926484 -0.5226469 0.44135416 0.7294153 -4.3741297e-006 -0.19849603 0.98010159 
		-0.67106909 -0.16267149 0.72332859 -0.5226469 0.44135416 0.7294153 -0.00045872526 
		0.25651914 0.96653897 -0.025804458 -0.60340893 0.7970143 -0.067861363 0.56679952 
		0.82105613 -0.26023608 0.54541475 0.79674327 -0.21861844 -0.60653079 0.76441246 -0.023568574 
		-0.99961978 0.014312156 -0.025804458 -0.60340893 0.7970143 -0.21861844 -0.60653079 
		0.76441246 -0.079864241 -0.99679989 0.0034151569 -0.051296815 -0.60500968 -0.79456401 
		-0.023568574 -0.99961978 0.014312156 -0.079864241 -0.99679989 0.0034151569 -0.06318102 
		-0.60175949 -0.79617441 -0.099918999 0.56917435 -0.81612301 -0.051296815 -0.60500968 
		-0.79456401 -0.06318102 -0.60175949 -0.79617441 -0.098232202 0.56893665 -0.81649339 
		-0.095854901 0.99539506 0.00081254361 -0.099918999 0.56917435 -0.81612301 -0.098232202 
		0.56893665 -0.81649339 -0.12845728 0.99171495 -0.00032868647 -0.067861363 0.56679952 
		0.82105613 -0.095854901 0.99539506 0.00081254361 -0.12845728 0.99171495 -0.00032868647 
		-0.26023608 0.54541475 0.79674327 0.056902796 -0.57121468 0.81882584 0.019781739 
		0.52909547 0.84833175 -0.078440681 0.56145763 0.8237794 -0.048098467 -0.62712759 
		0.77743006 0.086733028 -0.99622941 -0.0020807779 0.056902796 -0.57121468 0.81882584 
		-0.048098467 -0.62712759 0.77743006 -0.060986366 -0.99813831 -0.00082275935 0.051564865 
		-0.56307179 -0.82479763 0.086733028 -0.99622941 -0.0020807779 -0.060986366 -0.99813831 
		-0.00082275935 -0.04554737 -0.6202783 -0.78305829 0.014904762 0.53810638 -0.84274518 
		0.051564865 -0.56307179 -0.82479763 -0.04554737 -0.6202783 -0.78305829 -0.074712403 
		0.56907761 -0.81888258 0.016515752 0.99986327 0.0008083448 0.014904762 0.53810638 
		-0.84274518 -0.074712403 0.56907761 -0.81888258 -0.10353994 0.99462521 0.00047206998 
		-0.078440681 0.56145763 0.8237794 0.019781739 0.52909547 0.84833175 0.016515752 0.99986327 
		0.0008083448 -0.10353994 0.99462521 0.00047206998 -0.60311234 -0.096822001 -0.79175818 
		0.0031708179 -0.20834789 -0.97804964 -0.02540718 -0.99959648 0.012705698 -0.16727643 
		-0.96314406 -0.21064688 -0.99658298 0.062219471 -0.054322917 -0.60311234 -0.096822001 
		-0.79175818 -0.16727643 -0.96314406 -0.21064688 -0.4310554 -0.89904016 -0.076929279 
		-0.70024353 0.03081904 0.7132386 -0.99658298 0.062219471 -0.054322917 -0.4310554 
		-0.89904016 -0.076929279 -0.35293007 -0.93168402 0.086053848 -0.00023832079 -0.030463826 
		0.9995358 -0.70024353 0.03081904 0.7132386 -0.35293007 -0.93168402 0.086053848 -0.061411403 
		-0.97145498 -0.22913708 -0.28172901 0.12429307 0.95140946 -0.66946012 -0.020056272 
		0.74257725 -0.40688196 0.092896938 0.90874487 -0.28172901 0.12429307 0.95140946 -0.40688196 
		0.092896938 0.90874487 1.9373458e-005 0.48481524 0.87461656 -0.28172901 0.12429307 
		0.95140946 0.054363519 -0.41126505 0.90989327 -0.049927887 -0.70969683 0.7027359 
		0.011401037 -0.54150265 0.84062177 -0.28172901 0.12429307 0.95140946 -0.049927887 
		-0.70969683 0.7027359 0.011401037 -0.54150265 0.84062177 -0.31989455 -0.40848905 
		0.85487086 -0.28172901 0.12429307 0.95140946 -0.31989455 -0.40848905 0.85487086 -0.66946012 
		-0.020056272 0.74257725 -0.28172901 0.12429307 0.95140946 0.79576546 0.507864 0.32989591 
		0.25328138 0.90438044 0.34343052 0.28052685 0.54222709 0.79201913 0.63055933 0.32872534 
		0.70308936 0.28595155 -0.91846889 -0.27321526;
	setAttr ".n[996:1161]" -type "float3"  -1.2910237e-005 -0.95788848 -0.28714046 
		-3.8058708e-006 0.084790029 -0.99639887 0.65255111 0.160827 -0.74048066 0.48878655 
		0.55752105 0.6710127 -0.31957611 0.56487912 0.76077759 -0.585868 -0.28681752 0.757954 
		0.7344231 -0.23401895 0.63706976 0.80543023 -0.5920397 0.027768742 0.79405332 -0.57591045 
		0.19443916 0.66945052 -0.020311346 0.74257904 0.57525182 -0.67869049 0.45657924 0.53547668 
		-0.592013 -0.60231662 -1.4092673e-006 -0.51012528 -0.86010009 -3.8948456e-006 -0.99396902 
		0.10966175 0.14168249 -0.98831004 0.05629563 0.57525182 -0.67869049 0.45657924 -1.1508198e-005 
		-0.99732447 0.073101394 0.33400014 -0.94191718 0.035157442 0.57525182 -0.67869049 
		0.45657924 0.33400014 -0.94191718 0.035157442 0.80543023 -0.5920397 0.027768742 0.67346931 
		0.06338001 -0.73649317 1.5691782e-006 0.11073168 -0.99385035 -1.4092673e-006 -0.51012528 
		-0.86010009 0.53547668 -0.592013 -0.60231662 0.53770554 -0.7656253 0.35311562 -7.0165743e-006 
		-0.83952719 0.54331774 -4.3741297e-006 -0.19849603 0.98010159 0.67101562 -0.16310547 
		0.72328055 0.53770554 -0.7656253 0.35311562 0.67101562 -0.16310547 0.72328055 0.99845183 
		-0.051839631 0.020164911 0.78640866 -0.61609727 -0.044559263 0.32947057 0.64016455 
		-0.69400173 -0.00057742832 0.44505942 -0.89550096 -0.00020263788 0.581545 -0.81351417 
		0.44291121 0.65716583 -0.60988748 0.52061975 0.44302848 0.72984987 -0.00045872526 
		0.25651914 0.96653897 -0.00099801028 0.37092504 0.92866224 0.38605613 0.60686582 
		0.69474792 0.52061975 0.44302848 0.72984987 0.38605613 0.60686582 0.69474792 0.27841091 
		0.96045023 0.0047694007 0.76421946 0.64466983 0.019218409 0.79405332 -0.57591045 
		0.19443916 0.30572471 -0.35427201 0.88375545 0.66945052 -0.020311346 0.74257904 0.65255111 
		0.160827 -0.74048066 -3.8058708e-006 0.084790029 -0.99639887 1.1713171e-007 0.22234504 
		-0.97496802 0.68021971 0.28501099 -0.67532951 0.7701593 0.61341667 -0.17485638 0.20208846 
		0.96795142 -0.14909819 0.19994776 0.97953403 0.023105485 0.78191918 0.62334377 0.0067049414 
		0.98737496 -0.08027909 -0.13655029 0.89037853 0.39545912 -0.22547334 0.95435148 0.27489027 
		0.11682691 0.90322775 -0.40402699 0.14471295 0.90405375 -0.41196951 0.11387689 0.72908866 
		0.68441749 0.0015750779 0.72908866 0.68441749 0.0015750779 0.90405375 -0.41196951 
		0.11387689 0.78640866 -0.61609727 -0.044559263 0.53547668 -0.592013 -0.60231662 0.14168249 
		-0.98831004 0.05629563 0.65293944 -0.751867 0.091466933 0.99845183 -0.051839631 0.020164911 
		0.67346931 0.06338001 -0.73649317 0.53547668 -0.592013 -0.60231662 0.78640866 -0.61609727 
		-0.044559263 0.27841091 0.96045023 0.0047694007 0.32947057 0.64016455 -0.69400173 
		0.44291121 0.65716583 -0.60988748 0.76421946 0.64466983 0.019218409 -1.6266359e-010 
		-1 2.1047356e-010 -1.6266359e-010 -1 2.1047356e-010 0 -1 -1.897635e-010 0 -1 -1.897635e-010 
		0.14168249 -0.98831004 0.05629563 0.26885203 -0.9631694 0.004834766 0.65293944 -0.751867 
		0.091466933 0.21161763 -0.97726512 0.013073993 0.47885716 -0.87208503 0.10081491 
		0.47885716 -0.87208503 0.10081491 0.21161763 -0.97726512 0.013073993 0.65293944 -0.751867 
		0.091466933 0.70544791 -0.44307438 0.55319834 0.31500518 0.78042448 0.54010129 0.71779609 
		-0.64460373 0.26316321 0.71779609 -0.64460373 0.26316321 0.31500518 0.78042448 0.54010129 
		-0.29226717 0.5955714 -0.7482478 0.67571104 -0.71198398 -0.19103259 0.67571104 -0.71198398 
		-0.19103259 -0.29226717 0.5955714 -0.7482478 0.19588186 -0.76019603 -0.6194613 0.26885203 
		-0.9631694 0.004834766 0.28046367 -0.2838344 0.91693962 0.40691021 0.092774525 0.90874469 
		0.66945052 -0.020311346 0.74257904 0.66945052 -0.020311346 0.74257904 0.53936547 
		0.0072361506 0.84204066 3.225874e-005 0.52463508 0.85132724 -2.623357e-006 -0.38438421 
		0.92317319 -2.623357e-006 -0.38438421 0.92317319 0.53936547 0.0072361506 0.84204066 
		1.9373458e-005 0.48481524 0.87461656 3.225874e-005 0.52463508 0.85132724 0.53936547 
		0.0072361506 0.84204066 0.40691021 0.092774525 0.90874469 0.79576546 0.507864 0.32989591 
		0.63055933 0.32872534 0.70308936 0.63420123 -0.23915707 0.73525006 0.89037853 0.39545912 
		-0.22547334 0.7701593 0.61341667 -0.17485638 0.78191918 0.62334377 0.0067049414 0.95435148 
		0.27489027 0.11682691 1.1713171e-007 0.22234504 -0.97496802 2.9930919e-007 0.71746349 
		-0.69659615 0.23924059 0.67140657 -0.70141095 0.70544791 -0.44307438 0.55319834 0.90515 
		-0.2319558 0.35623047 0.78527713 0.51465774 0.34419087 0.31500518 0.78042448 0.54010129 
		0.47885716 -0.87208503 0.10081491 0.90405375 -0.41196951 0.11387689 0.90405375 -0.41196951 
		0.11387689 0.47885716 -0.87208503 0.10081491 -0.29226717 0.5955714 -0.7482478 0.52380639 
		0.52569699 -0.67027575 0.77649319 -0.49225059 -0.39337969 0.19588186 -0.76019603 
		-0.6194613 -0.022668751 0.99921799 -0.032397106 0.72908866 0.68441749 0.0015750779 
		0.72908866 0.68441749 0.0015750779 -0.022668751 0.99921799 -0.032397106 0.36279219 
		0.4702639 0.80450839 0.30513933 -0.82499003 0.47569054 0.46499622 -0.88396001 -0.04892087 
		0.80586666 0.58876055 -0.062769271 -0.00099801028 0.37092504 0.92866224 -0.0011644734 
		0.10226788 0.99475622 0.6755653 -0.029874571 0.73669469 0.38605613 0.60686582 0.69474792 
		0.80586666 0.58876055 -0.062769271 0.46499622 -0.88396001 -0.04892087 0.28764796 
		-0.80070853 -0.52547556 0.34283784 0.46306658 -0.81733197 0.32947057 0.64016455 -0.69400173 
		0.61189455 -0.19248122 -0.76716107 -0.00053144636 -0.11304359 -0.99358982 -0.00057742832 
		0.44505942 -0.89550096 0.61189455 -0.19248122 -0.76716107 0.63434434 -0.17552914 
		-0.75285906 -0.00015982181 -0.1409557 -0.99001586 -0.00053144636 -0.11304359 -0.99358982 
		0.97090101 -0.23942998 -0.0049596201 0.98924106 -0.14614642 -0.0065689534 0.63434434 
		-0.17552914 -0.75285906 0.61189455 -0.19248122 -0.76716107 0.6755653 -0.029874571 
		0.73669469 0.6876148 -0.048494797 0.72445428 0.98924106 -0.14614642 -0.0065689534 
		0.97090101 -0.23942998 -0.0049596201;
	setAttr ".n[1162:1327]" -type "float3"  -0.0011644734 0.10226788 0.99475622 
		-0.0010559189 0.030715484 0.99952757 0.6876148 -0.048494797 0.72445428 0.6755653 
		-0.029874571 0.73669469 0.38605613 0.60686582 0.69474792 0.48239323 0.57459563 0.66116309 
		0.19942063 0.97991377 0.00064991368 0.27841091 0.96045023 0.0047694007 0.97090101 
		-0.23942998 -0.0049596201 0.65094042 -0.7586813 0.026065046 0.66563845 -0.34819683 
		0.66006398 0.6755653 -0.029874571 0.73669469 0.6755653 -0.029874571 0.73669469 0.66563845 
		-0.34819683 0.66006398 0.48239323 0.57459563 0.66116309 0.38605613 0.60686582 0.69474792 
		0.27841091 0.96045023 0.0047694007 0.19942063 0.97991377 0.00064991368 0.46495417 
		0.54266143 -0.69952565 0.32947057 0.64016455 -0.69400173 0.32947057 0.64016455 -0.69400173 
		0.46495417 0.54266143 -0.69952565 0.62461948 -0.43094623 -0.6512571 0.61189455 -0.19248122 
		-0.76716107 0.61189455 -0.19248122 -0.76716107 0.62461948 -0.43094623 -0.6512571 
		0.65094042 -0.7586813 0.026065046 0.97090101 -0.23942998 -0.0049596201 0.48239323 
		0.57459563 0.66116309 0.10931629 0.58312839 0.80499148 0.072209448 0.99738842 0.001464073 
		0.19942063 0.97991377 0.00064991368 0.65094042 -0.7586813 0.026065046 0.047831107 
		-0.99826115 0.034452476 0.090312496 -0.5934642 0.79977745 0.66563845 -0.34819683 
		0.66006398 0.66563845 -0.34819683 0.66006398 0.090312496 -0.5934642 0.79977745 0.10931629 
		0.58312839 0.80499148 0.48239323 0.57459563 0.66116309 0.19942063 0.97991377 0.00064991368 
		0.072209448 0.99738842 0.001464073 0.1958476 0.56850761 -0.79902619 0.46495417 0.54266143 
		-0.69952565 0.46495417 0.54266143 -0.69952565 0.1958476 0.56850761 -0.79902619 0.17408577 
		-0.62143493 -0.76388007 0.62461948 -0.43094623 -0.6512571 0.62461948 -0.43094623 
		-0.6512571 0.17408577 -0.62143493 -0.76388007 0.047831107 -0.99826115 0.034452476 
		0.65094042 -0.7586813 0.026065046 0.67011625 0.32357973 0.66801232 0.71400815 0.1015697 
		0.69273078 0.98752981 0.14924391 -0.050112244 0.93654919 0.34776554 -0.043984801 
		-0.001063953 0.20420569 0.97892749 -0.0010496675 0.041137163 0.99915302 0.71400815 
		0.1015697 0.69273078 0.67011625 0.32357973 0.66801232 0.93654919 0.34776554 -0.043984801 
		0.98752981 0.14924391 -0.050112244 0.61810613 0.11556971 -0.77755278 0.59008396 0.46795246 
		-0.65789163 0.59008396 0.46795246 -0.65789163 0.61810613 0.11556971 -0.77755278 0.001090544 
		0.044430923 -0.99901181 0.0001221915 0.51319706 -0.8582707 -0.33702707 -0.73429441 
		-0.58925748 -0.33702707 -0.73429441 -0.58925748 -0.63988608 -0.76846761 -0.0018200584 
		-0.63988608 -0.76846761 -0.0018200584 -0.096710771 -0.98840928 -0.11702146 0.18488346 
		-0.97375226 -0.13275754 0.064147569 -0.73425829 -0.67583281 -0.047348842 -0.72941071 
		-0.68243545 -0.047348842 -0.72941071 -0.68243545 0.064147569 -0.73425829 -0.67583281 
		-0.33702707 -0.73429441 -0.58925748 -0.33702707 -0.73429441 -0.58925748 -0.63988608 
		-0.76846761 -0.0018200584 -0.63988608 -0.76846761 -0.0018200584 -0.37750426 -0.76086038 
		0.52780885 -0.37750426 -0.76086038 0.52780885 -0.37750426 -0.76086038 0.52780885 
		-0.37750426 -0.76086038 0.52780885 0.030190567 -0.85712367 0.51422495 -0.027401445 
		-0.85936832 0.51062232 -0.027401445 -0.85936832 0.51062232 0.030190567 -0.85712367 
		0.51422495 0.18488346 -0.97375226 -0.13275754 -0.096710771 -0.98840928 -0.11702146 
		0.27619374 -0.94549954 0.17247483 0.62514293 -0.067178659 0.77761394 0.98580998 -0.16464396 
		0.032726277 0.2783632 -0.9585954 0.060073271 -0.64078659 -0.76615417 -0.048991818 
		-0.99813926 0.00036979289 0.060973942 -0.4141171 -0.0055542039 0.91020668 -0.34882453 
		-0.93400937 0.077123284 -0.34882453 -0.93400937 0.077123284 -0.4141171 -0.0055542039 
		0.91020668 0.62514293 -0.067178659 0.77761394 0.27619374 -0.94549954 0.17247483 0.2783632 
		-0.9585954 0.060073271 0.98580998 -0.16464396 0.032726277 0.51320601 -0.23142235 
		-0.8264764 0.037009671 -0.99264574 -0.11525932 0.037009671 -0.99264574 -0.11525932 
		0.51320601 -0.23142235 -0.8264764 -0.58940387 -0.11223342 -0.80000412 -0.42741823 
		-0.89329624 -0.13905215 -0.42741823 -0.89329624 -0.13905215 -0.58940387 -0.11223342 
		-0.80000412 -0.99813926 0.00036979289 0.060973942 -0.64078659 -0.76615417 -0.048991818 
		0.79138201 0.27703524 0.54494584 0.48878655 0.55752105 0.6710127 0.7344231 -0.23401895 
		0.63706976 0.86392361 -0.5035497 -0.0085860649 -1.6266359e-010 -1 2.1047356e-010 
		-3.2532718e-010 -1 6.1071059e-010 -3.2532718e-010 -1 6.1071059e-010 -1.6266359e-010 
		-1 2.1047356e-010 -0.857611 -0.51233172 0.044937436 -0.585868 -0.28681752 0.757954 
		-0.31957611 0.56487912 0.76077759 -0.72099966 0.28890178 0.62983739 -0.72099966 0.28890178 
		0.62983739 -0.31957611 0.56487912 0.76077759 0.48878655 0.55752105 0.6710127 0.79138201 
		0.27703524 0.54494584 -0.99722546 0.071533106 -0.020600663 -0.857611 -0.51233172 
		0.044937436 -0.72099966 0.28890178 0.62983739 -0.55380428 0.093774274 -0.8273496 
		-0.48043412 -0.50605047 -0.71630704 -0.857611 -0.51233172 0.044937436 -0.99722546 
		0.071533106 -0.020600663 0.6269443 0.076292679 -0.77531934 0.55627906 -0.47691926 
		-0.68051571 -0.48043412 -0.50605047 -0.71630704 -0.55380428 0.093774274 -0.8273496 
		0.9971956 0.053241316 -0.052594822 0.86392361 -0.5035497 -0.0085860649 0.55627906 
		-0.47691926 -0.68051571 0.6269443 0.076292679 -0.77531934 0.79138201 0.27703524 0.54494584 
		0.86392361 -0.5035497 -0.0085860649 0.9971956 0.053241316 -0.052594822 -0.99737763 
		0.057359055 0.044133715 -0.99714041 0.068948776 0.030935304 -0.41549453 -0.041182581 
		0.90866292 -0.39702159 -0.03077407 0.91729313 -0.53073055 0.086976595 -0.84306598 
		-0.50770605 0.14205387 -0.84973836 -0.99714041 0.068948776 0.030935304 -0.99737763 
		0.057359055 0.044133715 0.54981619 0.026449274 -0.83486688 0.56000561 0.095101774 
		-0.82301247 -0.50770605 0.14205387 -0.84973836 -0.53073055 0.086976595 -0.84306598 
		0.99905109 -0.035137661 -0.025734747 0.99949324 0.0059715617 -0.031265587 0.56000561 
		0.095101774 -0.82301247 0.54981619 0.026449274 -0.83486688;
	setAttr ".n[1328:1493]" -type "float3"  0.65650195 -0.066519521 0.75138563 0.64940774 
		-0.066604346 0.75751793 0.99949324 0.0059715617 -0.031265587 0.99905109 -0.035137661 
		-0.025734747 -0.39702159 -0.03077407 0.91729313 -0.41549453 -0.041182581 0.90866292 
		0.64940774 -0.066604346 0.75751793 0.65650195 -0.066519521 0.75138563 -0.57525414 
		0.34625426 0.74107397 -0.57525414 0.34625426 0.74107397 0.64597416 0.31643617 0.69468373 
		0.64597416 0.31643617 0.69468373 -0.96592492 0.25331661 -0.053101327 -0.96592492 
		0.25331661 -0.053101327 -0.57525414 0.34625426 0.74107397 -0.57525414 0.34625426 
		0.74107397 -0.53684944 0.35259897 -0.7664637 -0.53684944 0.35259897 -0.7664637 -0.96592492 
		0.25331661 -0.053101327 -0.96592492 0.25331661 -0.053101327 0.5939067 0.32736167 
		-0.73492122 0.5939067 0.32736167 -0.73492122 -0.53684944 0.35259897 -0.7664637 -0.53684944 
		0.35259897 -0.7664637 0.96280992 0.26287171 -0.062414959 0.96280992 0.26287171 -0.062414959 
		0.5939067 0.32736167 -0.73492122 0.5939067 0.32736167 -0.73492122 0.64597416 0.31643617 
		0.69468373 0.64597416 0.31643617 0.69468373 0.96280992 0.26287171 -0.062414959 0.96280992 
		0.26287171 -0.062414959 -0.11357275 -0.93199468 0.34421954 -0.57249212 0.07095965 
		0.81683385 0.67103332 0.057702318 0.7391783 0.18420102 -0.92701447 0.32667133 -0.33112696 
		-0.94102579 0.069464102 -0.99702126 0.072251052 -0.026989104 -0.57249212 0.07095965 
		0.81683385 -0.11357275 -0.93199468 0.34421954 -0.14756575 -0.95064884 -0.27293071 
		-0.55498827 0.10909901 -0.82467294 -0.99702126 0.072251052 -0.026989104 -0.33112696 
		-0.94102579 0.069464102 0.19878553 -0.9430871 -0.26659191 0.62256587 0.087038144 
		-0.77771205 -0.55498827 0.10909901 -0.82467294 -0.14756575 -0.95064884 -0.27293071 
		0.34634754 -0.93678713 0.049731843 0.9970035 0.054725863 -0.054673083 0.62256587 
		0.087038144 -0.77771205 0.19878553 -0.9430871 -0.26659191 0.18420102 -0.92701447 
		0.32667133 0.67103332 0.057702318 0.7391783 0.9970035 0.054725863 -0.054673083 0.34634754 
		-0.93678713 0.049731843 -0.2208399 0.93031526 0.2928195 -0.2208399 0.93031526 0.2928195 
		0.30267081 0.90596378 0.29600695 0.30267081 0.90596378 0.29600695 -0.46787646 -0.77724195 
		-0.42069781 -0.46787646 -0.77724195 -0.42069781 0.4168334 -0.79793787 -0.43536785 
		0.4168334 -0.79793787 -0.43536785 -0.49386084 0.86625689 -0.075500987 -0.49386084 
		0.86625689 -0.075500987 -0.2208399 0.93031526 0.2928195 -0.2208399 0.93031526 0.2928195 
		0.4168334 -0.79793787 -0.43536785 0.4168334 -0.79793787 -0.43536785 0.77468765 -0.62821025 
		0.072186179 0.77468765 -0.62821025 0.072186179 -0.23197347 0.87643635 -0.42195711 
		-0.23197347 0.87643635 -0.42195711 -0.49386084 0.86625689 -0.075500987 -0.49386084 
		0.86625689 -0.075500987 0.77468765 -0.62821025 0.072186179 0.77468765 -0.62821025 
		0.072186179 0.38947007 -0.7491048 0.53586853 0.38947007 -0.7491048 0.53586853 0.30063909 
		0.85038978 -0.4318026 0.30063909 0.85038978 -0.4318026 -0.23197347 0.87643635 -0.42195711 
		-0.23197347 0.87643635 -0.42195711 0.38947007 -0.7491048 0.53586853 0.38947007 -0.7491048 
		0.53586853 -0.43443796 -0.72868651 0.52941436 -0.43443796 -0.72868651 0.52941436 
		0.50664216 0.85773242 -0.087228537 0.50664216 0.85773242 -0.087228537 0.30063909 
		0.85038978 -0.4318026 0.30063909 0.85038978 -0.4318026 -0.43443796 -0.72868651 0.52941436 
		-0.43443796 -0.72868651 0.52941436 -0.74771017 -0.65865743 0.084260099 -0.74771017 
		-0.65865743 0.084260099 0.30267081 0.90596378 0.29600695 0.30267081 0.90596378 0.29600695 
		0.50664216 0.85773242 -0.087228537 0.50664216 0.85773242 -0.087228537 -0.74771017 
		-0.65865743 0.084260099 -0.74771017 -0.65865743 0.084260099 -0.46787646 -0.77724195 
		-0.42069781 -0.46787646 -0.77724195 -0.42069781 -0.50770605 0.14205387 -0.84973836 
		-0.49114087 0.13422127 -0.86067724 -0.99880886 0.048534747 0.005021757 -0.99714041 
		0.068948776 0.030935304 0.56000561 0.095101774 -0.82301247 0.56437838 0.14152145 
		-0.81329495 -0.49114087 0.13422127 -0.86067724 -0.50770605 0.14205387 -0.84973836 
		0.99949324 0.0059715617 -0.031265587 0.99560678 0.085880168 -0.037302975 0.56437838 
		0.14152145 -0.81329495 0.56000561 0.095101774 -0.82301247 0.64940774 -0.066604346 
		0.75751793 0.63520777 -0.0022778986 0.77233791 0.99560678 0.085880168 -0.037302975 
		0.99949324 0.0059715617 -0.031265587 -0.41549453 -0.041182581 0.90866292 -0.45163792 
		-0.019755103 0.89198267 0.63520777 -0.0022778986 0.77233791 0.64940774 -0.066604346 
		0.75751793 -0.99714041 0.068948776 0.030935304 -0.99880886 0.048534747 0.005021757 
		-0.45163792 -0.019755103 0.89198267 -0.41549453 -0.041182581 0.90866292 -0.0055588195 
		0.5719468 0.82027185 0.083521031 -0.61436284 0.78459072 0.25269821 -0.62577426 0.73793644 
		0.28052685 0.54222709 0.79201913 0.63055933 0.32872534 0.70308936 0.12134696 -0.42798039 
		0.89560461 0.63420123 -0.23915707 0.73525006 0.74080944 -0.6128552 0.27497235 0.95978147 
		0.078428246 0.26957083 0.63420123 -0.23915707 0.73525006 0.78191918 0.62334377 0.0067049414 
		0.19994776 0.97953403 0.023105485 0.25328138 0.90438044 0.34343052 0.79576546 0.507864 
		0.32989591 0.95435148 0.27489027 0.11682691 0.78191918 0.62334377 0.0067049414 0.79576546 
		0.507864 0.32989591 0.95978147 0.078428246 0.26957083 0.95435148 0.27489027 0.11682691 
		0.95978147 0.078428246 0.26957083 0.74080944 -0.6128552 0.27497235 0.65293944 -0.751867 
		0.091466933 0.71779609 -0.64460373 0.26316321 0.79405332 -0.57591045 0.19443916 0.80543023 
		-0.5920397 0.027768742 0.33400014 -0.94191718 0.035157442 0.53770554 -0.7656253 0.35311562 
		0.78640866 -0.61609727 -0.044559263 0.65293944 -0.751867 0.091466933 0.80543023 -0.5920397 
		0.027768742 -1.1508198e-005 -0.99732447 0.073101394 -7.0165743e-006 -0.83952719 0.54331774 
		0.53770554 -0.7656253 0.35311562 0.33400014 -0.94191718 0.035157442 0.66009605 0.52566659 
		-0.53660786 0.23924059 0.67140657 -0.70141095 0.20208846 0.96795142 -0.14909819 0.7701593 
		0.61341667 -0.17485638;
	setAttr ".n[1494:1659]" -type "float3"  0.68021971 0.28501099 -0.67532951 0.66009605 
		0.52566659 -0.53660786 0.7701593 0.61341667 -0.17485638 0.89037853 0.39545912 -0.22547334 
		0.65255111 0.160827 -0.74048066 0.68021971 0.28501099 -0.67532951 0.89037853 0.39545912 
		-0.22547334 -4.4361705e-006 -0.71858859 0.69543546 -4.4361705e-006 -0.71858859 0.69543546 
		-0.1922182 -0.83388603 0.51738393 -0.1922182 -0.83388603 0.51738393 0.56248719 -0.6808303 
		0.46912503 0.56248719 -0.6808303 0.46912503 0.35042113 -0.93524402 -0.05023485 0.28337815 
		-0.95895588 -0.01002194 -0.1922182 -0.83388603 0.51738393 -0.1922182 -0.83388603 
		0.51738393 0.26078838 -0.68067753 0.68459296 0.26078838 -0.68067753 0.68459296 0.26078838 
		-0.68067753 0.68459296 0.26078838 -0.68067753 0.68459296 0.56248719 -0.6808303 0.46912503 
		0.56248719 -0.6808303 0.46912503 0.099721104 -0.99501318 -0.0020765488 0.11894971 
		-0.99189371 0.04469578 0.11894971 -0.99189371 0.04469578 0.099721104 -0.99501318 
		-0.0020765488 -0.30701822 -0.8722586 0.38066354 -0.30701822 -0.8722586 0.38066354 
		0.099721104 -0.99501318 -0.0020765488 0.099721104 -0.99501318 -0.0020765488 -0.30495596 
		-0.75153947 0.5849703 -0.30495596 -0.75153947 0.5849703 -0.30701822 -0.8722586 0.38066354 
		-0.30701822 -0.8722586 0.38066354 0.1099558 -0.96819192 0.22475323 0.22241382 -0.96840769 
		0.11277714 -0.30495596 -0.75153947 0.5849703 -0.30495596 -0.75153947 0.5849703 0.28337815 
		-0.95895588 -0.01002194 0.35042113 -0.93524402 -0.05023485 0.22241382 -0.96840769 
		0.11277714 0.36279219 0.4702639 0.80450839 0.80586666 0.58876055 -0.062769271 0.093469337 
		0.99561888 -0.0025368244 0.084381007 -0.99617565 -0.022674173 0.46499622 -0.88396001 
		-0.04892087 0.30513933 -0.82499003 0.47569054 0.38481286 -0.87380135 0.29730505 0.91139698 
		-0.024585588 -0.41079319 0.91139698 -0.024585588 -0.41079319 0.60984445 0.10913647 
		0.7849707 0.093469337 0.99561888 -0.0025368244 0.80586666 0.58876055 -0.062769271 
		0.34283784 0.46306658 -0.81733197 0.045824733 0.52846658 -0.84771651 0.34283784 0.46306658 
		-0.81733197 0.28764796 -0.80070853 -0.52547556 0.019988764 -0.75512898 -0.65527141 
		0.28764796 -0.80070853 -0.52547556 0.46499622 -0.88396001 -0.04892087 0.084381007 
		-0.99617565 -0.022674173 -0.13513574 -0.70586902 0.69533253 -0.25737926 -0.89163673 
		0.37247819 -0.21559386 0.70016098 0.68065709 -0.087082103 0.58403122 0.80704659 0.36279219 
		0.4702639 0.80450839 0.38575092 0.81882048 0.42512241 0.36495033 -0.93071115 0.024251763 
		0.30513933 -0.82499003 0.47569054 -0.25737926 -0.89163673 0.37247819 -0.39459813 
		-0.86899018 0.29857743 -0.11416309 0.44221789 0.88961238 -0.21559386 0.70016098 0.68065709 
		-0.21559386 0.70016098 0.68065709 -0.11416309 0.44221789 0.88961238 0.70718324 0.6850574 
		-0.17489469 0.38575092 0.81882048 0.42512241 0.38575092 0.81882048 0.42512241 0.70718324 
		0.6850574 -0.17489469 0.43242273 -0.50356901 -0.74794972 0.36495033 -0.93071115 0.024251763 
		0.36495033 -0.93071115 0.024251763 0.43242273 -0.50356901 -0.74794972 -0.39459813 
		-0.86899018 0.29857743 -0.25737926 -0.89163673 0.37247819 0.00849583 -0.59180152 
		0.80603898 -0.055602483 -0.57142615 0.81876773 -0.018779609 0.52919352 0.84829342 
		0.04961513 0.54292572 0.8383137 -0.13421278 -0.990951 -0.0017601972 -0.084835187 
		-0.99639285 -0.0020659165 -0.055602483 -0.57142615 0.81876773 0.00849583 -0.59180152 
		0.80603898 -0.089207761 -0.57194495 -0.81542689 -0.050313819 -0.56325209 -0.82475179 
		-0.084835187 -0.99639285 -0.0020659165 -0.13421278 -0.990951 -0.0017601972 -0.051103611 
		0.54880452 -0.83438724 -0.013961847 0.53821319 -0.84269297 -0.050313819 -0.56325209 
		-0.82475179 -0.089207761 -0.57194495 -0.81542689 -0.062356487 0.99805403 0.0001259165 
		-0.015284402 0.99988288 0.00082105835 -0.013961847 0.53821319 -0.84269297 -0.051103611 
		0.54880452 -0.83438724 -0.015284402 0.99988288 0.00082105835 -0.062356487 0.99805403 
		0.0001259165 0.04961513 0.54292572 0.8383137 -0.018779609 0.52919352 0.84829342 0.22039044 
		-0.60636449 0.76403552 0.00849583 -0.59180152 0.80603898 0.04961513 0.54292572 0.8383137 
		0.26233235 0.54515225 0.79623532 0.080986455 -0.99670935 0.0034037242 -0.13421278 
		-0.990951 -0.0017601972 0.00849583 -0.59180152 0.80603898 0.22039044 -0.60636449 
		0.76403552 0.064210057 -0.60173243 -0.7961126 -0.089207761 -0.57194495 -0.81542689 
		-0.13421278 -0.990951 -0.0017601972 0.080986455 -0.99670935 0.0034037242 0.099583641 
		0.56886256 -0.81638134 -0.051103611 0.54880452 -0.83438724 -0.089207761 -0.57194495 
		-0.81542689 0.064210057 -0.60173243 -0.7961126 0.12998568 0.99151582 -0.00034863371 
		-0.062356487 0.99805403 0.0001259165 -0.051103611 0.54880452 -0.83438724 0.099583641 
		0.56886256 -0.81638134 0.26233235 0.54515225 0.79623532 0.04961513 0.54292572 0.8383137 
		-0.062356487 0.99805403 0.0001259165 0.12998568 0.99151582 -0.00034863371 0.045616236 
		-0.62029201 -0.78304332 -0.047624025 -0.67212325 -0.73890609 -0.021438006 -0.99935812 
		-0.028700514 0.060841266 -0.99814713 -0.00082029833 0.074787259 0.56908399 -0.81887132 
		-0.018794138 0.59428757 -0.80403298 -0.047624025 -0.67212325 -0.73890609 0.045616236 
		-0.62029201 -0.78304332 0.10340433 0.99463934 0.00047431391 0.046221748 0.99893034 
		0.0013131909 -0.018794138 0.59428757 -0.80403298 0.074787259 0.56908399 -0.81887132 
		0.07831154 0.56148237 0.8237747 -0.087082103 0.58403122 0.80704659 0.046221748 0.99893034 
		0.0013131909 0.10340433 0.99463934 0.00047431391 0.047970355 -0.62714309 0.77742559 
		-0.13513574 -0.70586902 0.69533253 -0.087082103 0.58403122 0.80704659 0.07831154 
		0.56148237 0.8237747 0.060841266 -0.99814713 -0.00082029833 -0.021438006 -0.99935812 
		-0.028700514 -0.13513574 -0.70586902 0.69533253 0.047970355 -0.62714309 0.77742559 
		0.090312496 -0.5934642 0.79977745 0.028192904 -0.60335732 0.79697245 0.070442535 
		0.56676269 0.82086402 0.10931629 0.58312839 0.80499148 0.047831107 -0.99826115 0.034452476 
		0.024949286 -0.99958611 0.014323706 0.028192904 -0.60335732 0.79697245 0.090312496 
		-0.5934642 0.79977745;
	setAttr ".n[1660:1825]" -type "float3"  0.17408577 -0.62143493 -0.76388007 0.052352585 
		-0.6050126 -0.7944929 0.024949286 -0.99958611 0.014323706 0.047831107 -0.99826115 
		0.034452476 0.1958476 0.56850761 -0.79902619 0.10112891 0.56905323 -0.81605846 0.052352585 
		-0.6050126 -0.7944929 0.17408577 -0.62143493 -0.76388007 0.072209448 0.99738842 0.001464073 
		0.09736868 0.99524808 0.00077741349 0.10112891 0.56905323 -0.81605846 0.1958476 0.56850761 
		-0.79902619 0.10931629 0.58312839 0.80499148 0.070442535 0.56676269 0.82086402 0.09736868 
		0.99524808 0.00077741349 0.072209448 0.99738842 0.001464073 -0.4141171 -0.0055542039 
		0.91020668 -0.39936888 -0.021054391 0.91654855 0.64572889 -0.039786179 0.76252943 
		0.62514293 -0.067178659 0.77761394 -0.99813926 0.00036979289 0.060973942 -0.99863446 
		0.012313473 0.050770029 -0.39936888 -0.021054391 0.91654855 -0.4141171 -0.0055542039 
		0.91020668 -0.58940387 -0.11223342 -0.80000412 -0.55837637 -0.0088308612 -0.82954073 
		-0.99863446 0.012313473 0.050770029 -0.99813926 0.00036979289 0.060973942 0.51320601 
		-0.23142235 -0.8264764 0.52951729 -0.048149336 -0.84693158 -0.55837637 -0.0088308612 
		-0.82954073 -0.58940387 -0.11223342 -0.80000412 0.98580998 -0.16464396 0.032726277 
		0.99878573 -0.047459915 -0.013216142 0.52951729 -0.048149336 -0.84693158 0.51320601 
		-0.23142235 -0.8264764 0.62514293 -0.067178659 0.77761394 0.64572889 -0.039786179 
		0.76252943 0.99878573 -0.047459915 -0.013216142 0.98580998 -0.16464396 0.032726277 
		-0.57249212 0.07095965 0.81683385 -0.72099966 0.28890178 0.62983739 0.79138201 0.27703524 
		0.54494584 0.67103332 0.057702318 0.7391783 -0.99702126 0.072251052 -0.026989104 
		-0.99722546 0.071533106 -0.020600663 -0.72099966 0.28890178 0.62983739 -0.57249212 
		0.07095965 0.81683385 -0.55498827 0.10909901 -0.82467294 -0.55380428 0.093774274 
		-0.8273496 -0.99722546 0.071533106 -0.020600663 -0.99702126 0.072251052 -0.026989104 
		0.62256587 0.087038144 -0.77771205 0.6269443 0.076292679 -0.77531934 -0.55380428 
		0.093774274 -0.8273496 -0.55498827 0.10909901 -0.82467294 0.9970035 0.054725863 -0.054673083 
		0.9971956 0.053241316 -0.052594822 0.6269443 0.076292679 -0.77531934 0.62256587 0.087038144 
		-0.77771205 0.67103332 0.057702318 0.7391783 0.79138201 0.27703524 0.54494584 0.9971956 
		0.053241316 -0.052594822 0.9970035 0.054725863 -0.054673083 -0.21559386 0.70016098 
		0.68065709 0.38575092 0.81882048 0.42512241 0.077678338 0.99697816 0.00072926021 
		0.055586476 0.99845016 0.0027489958 0.055586476 0.99845016 0.0027489958 0.077678338 
		0.99697816 0.00072926021 0.045824733 0.52846658 -0.84771651 -0.079532951 0.57310706 
		-0.81561196 -0.079532951 0.57310706 -0.81561196 0.045824733 0.52846658 -0.84771651 
		0.019988764 -0.75512898 -0.65527141 -0.1123762 -0.70708549 -0.69814169 -0.1123762 
		-0.70708549 -0.69814169 0.019988764 -0.75512898 -0.65527141 0.062598027 -0.99724686 
		-0.039751619 0.0022624249 -0.99835694 -0.057256233 0.0022624249 -0.99835694 -0.057256233 
		0.062598027 -0.99724686 -0.039751619 0.36495033 -0.93071115 0.024251763 -0.25737926 
		-0.89163673 0.37247819 0.38575092 0.81882048 0.42512241 0.36279219 0.4702639 0.80450839 
		0.093469337 0.99561888 -0.0025368244 0.077678338 0.99697816 0.00072926021 0.077678338 
		0.99697816 0.00072926021 0.093469337 0.99561888 -0.0025368244 0.34283784 0.46306658 
		-0.81733197 0.045824733 0.52846658 -0.84771651 0.019988764 -0.75512898 -0.65527141 
		0.28764796 -0.80070853 -0.52547556 0.084381007 -0.99617565 -0.022674173 0.062598027 
		-0.99724686 -0.039751619 0.062598027 -0.99724686 -0.039751619 0.084381007 -0.99617565 
		-0.022674173 0.30513933 -0.82499003 0.47569054 0.36495033 -0.93071115 0.024251763 
		-0.39459813 -0.86899018 0.29857743 0.38481286 -0.87380135 0.29730505 0.60984445 0.10913647 
		0.7849707 -0.11416309 0.44221789 0.88961238 0.43242273 -0.50356901 -0.74794972 0.91139698 
		-0.024585588 -0.41079319 0.38481286 -0.87380135 0.29730505 -0.39459813 -0.86899018 
		0.29857743 0.70718324 0.6850574 -0.17489469 0.91139698 -0.024585588 -0.41079319 0.91139698 
		-0.024585588 -0.41079319 0.43242273 -0.50356901 -0.74794972 -0.11416309 0.44221789 
		0.88961238 0.60984445 0.10913647 0.7849707 0.91139698 -0.024585588 -0.41079319 0.70718324 
		0.6850574 -0.17489469 0.55503863 0.6290037 -0.54432195 0.55503863 0.6290037 -0.54432195 
		8.34276e-005 0.73382986 -0.67933321 8.34276e-005 0.73382986 -0.67933321 0.88264704 
		0.4684301 -0.038826473 0.88264704 0.4684301 -0.038826473 0.55503863 0.6290037 -0.54432195 
		0.55503863 0.6290037 -0.54432195 0.61561608 0.4656654 0.63574564 0.61561608 0.4656654 
		0.63574564 0.88264704 0.4684301 -0.038826473 0.88264704 0.4684301 -0.038826473 -0.0010365843 
		0.29377335 0.9558745 -0.0010365843 0.29377335 0.9558745 0.61561608 0.4656654 0.63574564 
		0.61561608 0.4656654 0.63574564 0.61810613 0.11556971 -0.77755278 0.6071403 -0.10762164 
		-0.78727275 0.0031708179 -0.20834789 -0.97804964 0.001090544 0.044430923 -0.99901181 
		0.98752981 0.14924391 -0.050112244 0.99679911 0.056589205 -0.056471903 0.6071403 
		-0.10762164 -0.78727275 0.61810613 0.11556971 -0.77755278 0.71400815 0.1015697 0.69273078 
		0.70293534 0.025683466 0.71078986 0.99679911 0.056589205 -0.056471903 0.98752981 
		0.14924391 -0.050112244 -0.0010496675 0.041137163 0.99915302 -0.00023832079 -0.030463826 
		0.9995358 0.70293534 0.025683466 0.71078986 0.71400815 0.1015697 0.69273078 0.25328138 
		0.90438044 0.34343052 0 0.93835521 0.34567267 -0.0055588195 0.5719468 0.82027185 
		0.28052685 0.54222709 0.79201913 0.19994776 0.97953403 0.023105485 1.8891066e-009 
		0.99934042 0.036311734 0 0.93835521 0.34567267 0.25328138 0.90438044 0.34343052 0.20208846 
		0.96795142 -0.14909819 1.1271096e-008 0.9925499 -0.12183855 1.8891066e-009 0.99934042 
		0.036311734 0.19994776 0.97953403 0.023105485 0.23924059 0.67140657 -0.70141095 2.9930919e-007 
		0.71746349 -0.69659615 1.1271096e-008 0.9925499 -0.12183855 0.20208846 0.96795142 
		-0.14909819 1.1713171e-007 0.22234504 -0.97496802 0.23924059 0.67140657 -0.70141095;
	setAttr ".n[1826:1991]" -type "float3"  0.66009605 0.52566659 -0.53660786 0.68021971 
		0.28501099 -0.67532951 0.12134696 -0.42798039 0.89560461 0.63055933 0.32872534 0.70308936 
		0.28052685 0.54222709 0.79201913 0.25269821 -0.62577426 0.73793644 0.95978147 0.078428246 
		0.26957083 0.79576546 0.507864 0.32989591 0.63420123 -0.23915707 0.73525006 0.65255111 
		0.160827 -0.74048066 0.89037853 0.39545912 -0.22547334 0.98737496 -0.08027909 -0.13655029 
		0.62441045 -0.74763042 0.22618666 0.28595155 -0.91846889 -0.27321526 0.65255111 0.160827 
		-0.74048066 0.98737496 -0.08027909 -0.13655029 0.90322775 -0.40402699 0.14471295 
		0.95435148 0.27489027 0.11682691 0.74080944 -0.6128552 0.27497235 0.63434434 -0.17552914 
		-0.75285906 0.66146475 0.26240563 -0.70257205 0.00011253663 0.35046965 -0.93657404 
		-0.00015982181 -0.1409557 -0.99001586 0.98924106 -0.14614642 -0.0065689534 0.98486346 
		0.17174163 -0.023428408 0.66146475 0.26240563 -0.70257205 0.63434434 -0.17552914 
		-0.75285906 0.6876148 -0.048494797 0.72445428 0.68789291 0.22402738 0.69037324 0.98486346 
		0.17174163 -0.023428408 0.98924106 -0.14614642 -0.0065689534 -0.0010559189 0.030715484 
		0.99952757 -0.00097042893 0.17859203 0.98392278 0.68789291 0.22402738 0.69037324 
		0.6876148 -0.048494797 0.72445428 -0.087082103 0.58403122 0.80704659 -0.21559386 
		0.70016098 0.68065709 0.055586476 0.99845016 0.0027489958 0.046221748 0.99893034 
		0.0013131909 0.046221748 0.99893034 0.0013131909 0.055586476 0.99845016 0.0027489958 
		-0.079532951 0.57310706 -0.81561196 -0.018794138 0.59428757 -0.80403298 -0.018794138 
		0.59428757 -0.80403298 -0.079532951 0.57310706 -0.81561196 -0.1123762 -0.70708549 
		-0.69814169 -0.047624025 -0.67212325 -0.73890609 -0.047624025 -0.67212325 -0.73890609 
		-0.1123762 -0.70708549 -0.69814169 0.0022624249 -0.99835694 -0.057256233 -0.021438006 
		-0.99935812 -0.028700514 -0.021438006 -0.99935812 -0.028700514 0.0022624249 -0.99835694 
		-0.057256233 -0.25737926 -0.89163673 0.37247819 -0.13513574 -0.70586902 0.69533253 
		0.44291121 0.65716583 -0.60988748 -0.00020263788 0.581545 -0.81351417 1.5691782e-006 
		0.11073168 -0.99385035 0.67346931 0.06338001 -0.73649317 0.76421946 0.64466983 0.019218409 
		0.44291121 0.65716583 -0.60988748 0.67346931 0.06338001 -0.73649317 0.99845183 -0.051839631 
		0.020164911 0.67101562 -0.16310547 0.72328055 0.52061975 0.44302848 0.72984987 0.76421946 
		0.64466983 0.019218409 0.99845183 -0.051839631 0.020164911 -4.3741297e-006 -0.19849603 
		0.98010159 -0.00045872526 0.25651914 0.96653897 0.52061975 0.44302848 0.72984987 
		0.67101562 -0.16310547 0.72328055 0.028192904 -0.60335732 0.79697245 0.22039044 -0.60636449 
		0.76403552 0.26233235 0.54515225 0.79623532 0.070442535 0.56676269 0.82086402 0.024949286 
		-0.99958611 0.014323706 0.080986455 -0.99670935 0.0034037242 0.22039044 -0.60636449 
		0.76403552 0.028192904 -0.60335732 0.79697245 0.052352585 -0.6050126 -0.7944929 0.064210057 
		-0.60173243 -0.7961126 0.080986455 -0.99670935 0.0034037242 0.024949286 -0.99958611 
		0.014323706 0.10112891 0.56905323 -0.81605846 0.099583641 0.56886256 -0.81638134 
		0.064210057 -0.60173243 -0.7961126 0.052352585 -0.6050126 -0.7944929 0.09736868 0.99524808 
		0.00077741349 0.12998568 0.99151582 -0.00034863371 0.099583641 0.56886256 -0.81638134 
		0.10112891 0.56905323 -0.81605846 0.070442535 0.56676269 0.82086402 0.26233235 0.54515225 
		0.79623532 0.12998568 0.99151582 -0.00034863371 0.09736868 0.99524808 0.00077741349 
		-0.055602483 -0.57142615 0.81876773 0.047970355 -0.62714309 0.77742559 0.07831154 
		0.56148237 0.8237747 -0.018779609 0.52919352 0.84829342 -0.084835187 -0.99639285 
		-0.0020659165 0.060841266 -0.99814713 -0.00082029833 0.047970355 -0.62714309 0.77742559 
		-0.055602483 -0.57142615 0.81876773 -0.050313819 -0.56325209 -0.82475179 0.045616236 
		-0.62029201 -0.78304332 0.060841266 -0.99814713 -0.00082029833 -0.084835187 -0.99639285 
		-0.0020659165 -0.013961847 0.53821319 -0.84269297 0.074787259 0.56908399 -0.81887132 
		0.045616236 -0.62029201 -0.78304332 -0.050313819 -0.56325209 -0.82475179 -0.015284402 
		0.99988288 0.00082105835 0.10340433 0.99463934 0.00047431391 0.074787259 0.56908399 
		-0.81887132 -0.013961847 0.53821319 -0.84269297 0.07831154 0.56148237 0.8237747 0.10340433 
		0.99463934 0.00047431391 -0.015284402 0.99988288 0.00082105835 -0.018779609 0.52919352 
		0.84829342 0.6071403 -0.10762164 -0.78727275 0.1696375 -0.96670336 -0.19159284 -0.02540718 
		-0.99959648 0.012705698 0.0031708179 -0.20834789 -0.97804964 0.99679911 0.056589205 
		-0.056471903 0.44092783 -0.89419371 -0.077460863 0.1696375 -0.96670336 -0.19159284 
		0.6071403 -0.10762164 -0.78727275 0.70293534 0.025683466 0.71078986 0.3785986 -0.92080498 
		0.093709543 0.44092783 -0.89419371 -0.077460863 0.99679911 0.056589205 -0.056471903 
		-0.00023832079 -0.030463826 0.9995358 -0.061411403 -0.97145498 -0.22913708 0.3785986 
		-0.92080498 0.093709543 0.70293534 0.025683466 0.71078986 0.28237534 0.12259217 0.95143843 
		0.40691021 0.092774525 0.90874469 0.66945052 -0.020311346 0.74257904 0.28237534 0.12259217 
		0.95143843 1.9373458e-005 0.48481524 0.87461656 0.40691021 0.092774525 0.90874469 
		0.28237534 0.12259217 0.95143843 0.054363519 -0.41126505 0.90989327 1.9373458e-005 
		0.48481524 0.87461656 0.28237534 0.12259217 0.95143843 0.24039488 -0.70001459 0.67245072 
		0.054363519 -0.41126505 0.90989327 0.080258437 -0.48473269 0.87097228 0.24039488 
		-0.70001459 0.67245072 0.28237534 0.12259217 0.95143843 0.080258437 -0.48473269 0.87097228 
		0.28237534 0.12259217 0.95143843 0.30572471 -0.35427201 0.88375545 0.30572471 -0.35427201 
		0.88375545 0.28237534 0.12259217 0.95143843 0.66945052 -0.020311346 0.74257904 -0.28172901 
		0.12429307 0.95140946 1.9373458e-005 0.48481524 0.87461656 0.054363519 -0.41126505 
		0.90989327 -0.30158412 -0.95296186 -0.030178677 -0.22241397 -0.96840781 0.11277603 
		-0.37626922 -0.92304665 -0.080040634 0.28337815 -0.95895588 -0.01002194 0.22241382 
		-0.96840769 0.11277714 0.1099558 -0.96819192 0.22475323 0.99869782 0.0057094283 0.050696008;
	setAttr ".n[1992:2086]" -type "float3"  0.4003526 -0.027703075 0.91594237 0.39705819 
		-0.031147327 0.91726482 0.99744803 0.056092016 0.044171587 0.55669016 -0.013583341 
		-0.83060908 0.99869782 0.0057094283 0.050696008 0.99744803 0.056092016 0.044171587 
		0.53082001 0.086014517 -0.84310824 -0.531573 -0.047689661 -0.84566879 0.55669016 
		-0.013583341 -0.83060908 0.53082001 0.086014517 -0.84310824 -0.54983008 0.02675055 
		-0.83484799 -0.99884701 -0.045588017 -0.015047688 -0.531573 -0.047689661 -0.84566879 
		-0.54983008 0.02675055 -0.83484799 -0.99908602 -0.034085222 -0.025790943 -0.64657992 
		-0.041678235 0.76170683 -0.99884701 -0.045588017 -0.015047688 -0.99908602 -0.034085222 
		-0.025790943 -0.65654647 -0.065673403 0.75142109 0.4003526 -0.027703075 0.91594237 
		-0.64657992 -0.041678235 0.76170683 -0.65654647 -0.065673403 0.75142109 0.39705819 
		-0.031147327 0.91726482 -0.39936888 -0.021054391 0.91654855 -0.39702159 -0.03077407 
		0.91729313 0.65650195 -0.066519521 0.75138563 0.64572889 -0.039786179 0.76252943 
		0.99878573 -0.047459915 -0.013216142 0.64572889 -0.039786179 0.76252943 0.65650195 
		-0.066519521 0.75138563 0.99905109 -0.035137661 -0.025734747 0.52951729 -0.048149336 
		-0.84693158 0.99878573 -0.047459915 -0.013216142 0.99905109 -0.035137661 -0.025734747 
		0.54981619 0.026449274 -0.83486688 -0.55837637 -0.0088308612 -0.82954073 0.52951729 
		-0.048149336 -0.84693158 0.54981619 0.026449274 -0.83486688 -0.53073055 0.086976595 
		-0.84306598 -0.99863446 0.012313473 0.050770029 -0.55837637 -0.0088308612 -0.82954073 
		-0.53073055 0.086976595 -0.84306598 -0.99737763 0.057359055 0.044133715 -0.39936888 
		-0.021054391 0.91654855 -0.99863446 0.012313473 0.050770029 -0.99737763 0.057359055 
		0.044133715 -0.39702159 -0.03077407 0.91729313 0.99896669 0.045157015 0.0051394575 
		0.45286345 -0.021268561 0.89132619 0.40194228 0.62342715 0.6706571 0.83512855 0.54772109 
		-0.050615404 0.49243075 0.13193198 -0.86029404 0.99896669 0.045157015 0.0051394575 
		0.83512855 0.54772109 -0.050615404 0.38757169 0.60310483 -0.69717479 -0.56341165 
		0.14263853 -0.81377 0.49243075 0.13193198 -0.86029404 0.38757169 0.60310483 -0.69717479 
		-0.46855453 0.57396382 -0.67158192 -0.9953714 0.088527761 -0.03739915 -0.56341165 
		0.14263853 -0.81377 -0.46855453 0.57396382 -0.67158192 -0.81672007 0.57245594 -0.072543755 
		-0.63424736 -0.00041833601 0.77312994 -0.9953714 0.088527761 -0.03739915 -0.81672007 
		0.57245594 -0.072543755 -0.53397197 0.57904673 0.61609966 0.45286345 -0.021268561 
		0.89132619 -0.63424736 -0.00041833601 0.77312994 -0.53397197 0.57904673 0.61609966 
		0.40194228 0.62342715 0.6706571 -0.99880886 0.048534747 0.005021757 -0.83469838 0.54837465 
		-0.050633185 -0.40096593 0.62444317 0.67029625 -0.45163792 -0.019755103 0.89198267 
		0.63520777 -0.0022778986 0.77233791 -0.45163792 -0.019755103 0.89198267 -0.40096593 
		0.62444317 0.67029625 0.53414392 0.5797525 0.61528641 0.99560678 0.085880168 -0.037302975 
		0.63520777 -0.0022778986 0.77233791 0.53414392 0.5797525 0.61528641 0.81593221 0.57358021 
		-0.072527617 0.56437838 0.14152145 -0.81329495 0.99560678 0.085880168 -0.037302975 
		0.81593221 0.57358021 -0.072527617 0.46857667 0.57491016 -0.6707564 -0.49114087 0.13422127 
		-0.86067724 0.56437838 0.14152145 -0.81329495 0.46857667 0.57491016 -0.6707564 -0.38670671 
		0.60416198 -0.69673967 -0.99880886 0.048534747 0.005021757 -0.49114087 0.13422127 
		-0.86067724 -0.38670671 0.60416198 -0.69673967 -0.83469838 0.54837465 -0.050633185;
	setAttr -s 542 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 -252 252 446 445 
		mu 0 4 0 1 2 3 
		f 4 -257 257 259 -261 
		mu 0 4 4 5 6 7 
		f 4 -151 152 154 -156 
		mu 0 4 8 708 10 11 
		f 4 243 0 19 244 
		mu 0 4 12 13 14 605 
		f 4 -3 54 11 -56 
		mu 0 4 16 608 602 19 
		f 4 3 248 247 -62 
		mu 0 4 13 20 21 22 
		f 3 -244 246 -4 
		mu 0 3 13 12 20 
		f 4 -6 55 12 479 
		mu 0 4 23 571 569 573 
		f 4 6 485 484 -61 
		mu 0 4 570 26 27 28 
		f 4 -25 27 483 -7 
		mu 0 4 570 29 30 26 
		f 4 -9 56 13 -58 
		mu 0 4 31 563 561 34 
		f 4 9 58 14 -60 
		mu 0 4 562 36 37 38 
		f 4 -27 29 28 -10 
		mu 0 4 562 564 613 36 
		f 3 -20 17 241 
		mu 0 3 605 14 41 
		f 4 -262 262 263 -258 
		mu 0 4 5 42 43 6 
		f 4 -265 -448 450 449 
		mu 0 4 46 47 48 49 
		f 4 -271 -272 272 273 
		mu 0 4 50 51 52 53 
		f 4 35 -38 39 40 
		mu 0 4 54 55 56 57 
		f 4 -26 -2 2 4 
		mu 0 4 572 590 608 16 
		f 4 -28 -5 5 481 
		mu 0 4 30 29 571 23 
		f 4 -30 -8 8 10 
		mu 0 4 40 615 563 31 
		f 4 -145 146 147 -141 
		mu 0 4 712 714 713 710 
		f 3 1 -32 -31 
		mu 0 3 17 609 63 
		f 4 -277 277 256 275 
		mu 0 4 64 50 5 4 
		f 4 31 34 68 -34 
		mu 0 4 577 58 65 66 
		f 4 -24 36 66 -35 
		mu 0 4 58 579 68 65 
		f 4 21 38 71 -37 
		mu 0 4 579 576 70 68 
		f 4 32 33 70 -39 
		mu 0 4 589 577 66 587 
		f 4 -42 61 42 -63 
		mu 0 4 71 13 22 72 
		f 4 46 62 -44 18 
		mu 0 4 73 71 72 74 
		f 3 -1 41 -45 
		mu 0 3 14 13 71 
		f 3 -47 45 44 
		mu 0 3 71 73 14 
		f 3 -64 50 -53 
		mu 0 3 75 76 77 
		f 4 63 -52 -19 49 
		mu 0 4 76 75 73 74 
		f 4 -48 51 52 -49 
		mu 0 4 78 73 75 77 
		f 3 454 280 251 
		mu 0 3 0 79 1 
		f 4 -273 -283 264 283 
		mu 0 4 53 52 47 46 
		f 3 453 451 286 
		mu 0 3 43 80 81 
		f 4 -67 64 37 -66 
		mu 0 4 65 68 56 55 
		f 4 -69 65 -36 -68 
		mu 0 4 66 65 55 54 
		f 4 -71 67 -41 -70 
		mu 0 4 587 66 54 588 
		f 4 -72 69 -40 -65 
		mu 0 4 68 70 57 56 
		f 4 -307 308 310 -312 
		mu 0 4 82 83 725 722 
		f 4 -59 72 88 -75 
		mu 0 4 37 36 86 87 
		f 4 -314 315 316 -309 
		mu 0 4 83 88 723 725 
		f 4 57 78 83 -77 
		mu 0 4 31 34 90 91 
		f 4 -84 81 459 -83 
		mu 0 4 91 90 92 93 
		f 4 -86 82 461 -85 
		mu 0 4 628 91 93 624 
		f 4 -88 84 463 -87 
		mu 0 4 86 94 95 96 
		f 4 -89 86 465 -81 
		mu 0 4 87 86 96 97 
		f 4 -29 89 91 -91 
		mu 0 4 36 613 614 518 
		f 4 87 93 -95 -93 
		mu 0 4 94 86 519 515 
		f 4 -73 90 95 -94 
		mu 0 4 86 36 518 519 
		f 4 -11 96 97 -90 
		mu 0 4 40 31 516 517 
		f 4 76 98 -100 -97 
		mu 0 4 31 91 514 516 
		f 4 85 92 -101 -99 
		mu 0 4 91 628 629 514 
		f 4 -92 101 368 -103 
		mu 0 4 98 99 100 101 
		f 4 94 105 361 -105 
		mu 0 4 102 103 104 105 
		f 4 -96 102 359 -106 
		mu 0 4 103 98 101 104 
		f 4 -98 108 367 -102 
		mu 0 4 99 106 107 100 
		f 4 99 110 365 -109 
		mu 0 4 106 538 539 107 
		f 4 100 104 363 -111 
		mu 0 4 108 102 105 109 
		f 4 -74 113 440 -115 
		mu 0 4 110 111 112 113 
		f 4 -76 114 442 -117 
		mu 0 4 114 110 113 115 
		f 4 -78 119 438 -114 
		mu 0 4 627 116 117 626 
		f 4 79 121 436 -120 
		mu 0 4 116 118 119 117 
		f 4 -116 124 126 -126 
		mu 0 4 639 637 643 644 
		f 4 117 128 -130 -128 
		mu 0 4 124 125 645 641 
		f 4 -119 125 130 -129 
		mu 0 4 125 639 644 645 
		f 4 -121 131 132 -125 
		mu 0 4 637 636 642 643 
		f 4 122 133 -135 -132 
		mu 0 4 636 130 640 642 
		f 4 123 127 -136 -134 
		mu 0 4 130 124 677 640 
		f 4 -127 136 380 -138 
		mu 0 4 123 122 132 133 
		f 4 129 141 373 -140 
		mu 0 4 127 126 134 698 
		f 4 -131 137 371 -142 
		mu 0 4 126 123 133 134 
		f 4 -133 143 379 -137 
		mu 0 4 122 129 136 132 
		f 4 134 145 377 -144 
		mu 0 4 129 131 137 136 
		f 4 135 139 375 -146 
		mu 0 4 131 676 135 137 
		f 4 -139 148 150 -150 
		mu 0 4 138 59 708 8 
		f 4 140 151 -153 -149 
		mu 0 4 712 710 709 9 
		f 4 142 153 -155 -152 
		mu 0 4 711 139 11 10 
		f 4 -166 149 155 -154 
		mu 0 4 139 138 8 11 
		f 3 -158 -143 -157 
		mu 0 3 697 139 711 
		f 4 -160 156 -148 -159 
		mu 0 4 141 140 62 61 
		f 4 -162 158 -147 -161 
		mu 0 4 142 141 61 60 
		f 4 -164 160 144 -163 
		mu 0 4 143 142 60 59 
		f 3 -165 162 138 
		mu 0 3 138 143 59 
		f 4 -169 166 237 -168 
		mu 0 4 687 145 146 147 
		f 4 -171 167 228 -170 
		mu 0 4 148 144 699 149 
		f 4 -173 169 230 -172 
		mu 0 4 150 148 149 151 
		f 4 -175 171 232 -174 
		mu 0 4 152 150 151 153 
		f 4 -177 173 234 -176 
		mu 0 4 154 152 153 155 
		f 4 -178 175 236 -167 
		mu 0 4 145 154 155 146 
		f 4 -199 200 202 -204 
		mu 0 4 156 157 158 663 
		f 4 -206 203 207 -209 
		mu 0 4 700 156 663 662 
		f 4 -211 208 212 -214 
		mu 0 4 162 160 679 661 
		f 4 -216 213 217 -219 
		mu 0 4 164 162 661 660 
		f 4 -221 218 222 -224 
		mu 0 4 166 164 660 658 
		f 4 -225 223 225 -201 
		mu 0 4 157 166 658 158 
		f 4 -187 184 383 -186 
		mu 0 4 669 665 170 171 
		f 4 -189 185 385 -188 
		mu 0 4 678 669 171 696 
		f 4 -191 187 387 -190 
		mu 0 4 667 668 173 175 
		f 4 -193 189 389 -192 
		mu 0 4 666 667 175 177 
		f 4 -195 191 391 -194 
		mu 0 4 664 666 177 179 
		f 4 -196 193 392 -185 
		mu 0 4 665 664 179 170 
		f 4 -179 196 198 -198 
		mu 0 4 180 181 157 156 
		f 4 186 201 -203 -200 
		mu 0 4 169 168 159 659 
		f 4 -180 197 205 -205 
		mu 0 4 683 180 156 700 
		f 4 188 206 -208 -202 
		mu 0 4 168 172 161 159 
		f 4 -181 204 210 -210 
		mu 0 4 183 182 160 162 
		f 4 190 211 -213 -207 
		mu 0 4 172 174 163 161 
		f 4 -182 209 215 -215 
		mu 0 4 184 183 162 164 
		f 4 192 216 -218 -212 
		mu 0 4 174 176 165 163 
		f 4 -183 214 220 -220 
		mu 0 4 185 184 164 166 
		f 4 194 221 -223 -217 
		mu 0 4 176 178 167 165 
		f 4 -184 219 224 -197 
		mu 0 4 181 185 166 157 
		f 4 195 199 -226 -222 
		mu 0 4 178 169 659 167 
		f 4 -229 226 1035 -228 
		mu 0 4 149 699 186 187 
		f 4 -231 227 1037 -230 
		mu 0 4 151 149 187 188 
		f 4 -233 229 1039 -232 
		mu 0 4 153 151 188 189 
		f 4 -235 231 1041 -234 
		mu 0 4 155 153 189 190 
		f 4 -237 233 1042 -236 
		mu 0 4 146 155 190 191 
		f 4 -238 235 1033 -227 
		mu 0 4 147 146 191 682 
		f 4 -294 444 -253 291 
		mu 0 4 192 193 2 1 
		f 3 -281 -295 -292 
		mu 0 3 1 79 192 
		f 3 -297 279 297 
		mu 0 3 194 79 195 
		f 4 -299 -446 448 447 
		mu 0 4 47 0 3 48 
		f 4 -301 -282 298 282 
		mu 0 4 52 195 0 47 
		f 3 456 -298 300 
		mu 0 3 52 194 195 
		f 4 22 -245 242 23 
		mu 0 4 578 12 605 606 
		f 5 -247 -23 25 24 -246 
		mu 0 5 20 12 578 591 25 
		f 4 -249 245 60 16 
		mu 0 4 21 20 25 568 
		f 4 -303 -450 452 -286 
		mu 0 4 196 46 49 80 
		f 4 -305 -284 302 284 
		mu 0 4 42 53 46 196 
		f 3 455 304 261 
		mu 0 3 5 53 42 
		f 4 -55 255 260 -259 
		mu 0 4 18 17 4 7 
		f 4 -22 268 270 -270 
		mu 0 4 69 67 51 50 
		f 4 30 274 -276 -256 
		mu 0 4 17 63 64 4 
		f 4 -33 269 276 -275 
		mu 0 4 63 69 50 64 
		f 4 -250 292 293 -291 
		mu 0 4 197 603 193 192 
		f 4 -241 290 294 -279 
		mu 0 4 607 197 192 79 
		f 4 -242 278 296 -296 
		mu 0 4 15 607 79 194 
		f 3 -243 295 1005 
		mu 0 3 67 15 194 
		f 4 -293 -239 287 288 
		mu 0 4 193 603 597 200 
		f 3 406 405 306 
		mu 0 3 82 201 83 
		f 3 410 -311 -409 
		mu 0 3 202 85 84 
		f 4 -321 322 324 -326 
		mu 0 4 720 204 205 206 
		f 3 407 313 -406 
		mu 0 3 201 88 83 
		f 4 400 399 -316 -398 
		mu 0 4 207 208 723 88 
		f 3 409 408 -317 
		mu 0 3 89 202 84 
		f 4 -108 393 317 -310 
		mu 0 4 727 210 211 724 
		f 4 311 -404 -319 394 
		mu 0 4 82 722 721 214 
		f 4 -318 411 414 -320 
		mu 0 4 724 211 215 719 
		f 4 466 321 419 -412 
		mu 0 4 211 214 217 215 
		f 4 318 323 418 -322 
		mu 0 4 214 721 218 217 
		f 4 -476 319 416 -324 
		mu 0 4 213 212 216 717 
		f 4 -328 326 500 -421 
		mu 0 4 209 219 220 221 
		f 4 -329 420 502 -422 
		mu 0 4 222 209 221 223 
		f 4 -330 421 504 -423 
		mu 0 4 224 222 223 225 
		f 4 -331 422 506 -424 
		mu 0 4 226 540 541 227 
		f 4 -332 423 508 -425 
		mu 0 4 228 226 227 229 
		f 4 509 -327 -333 424 
		mu 0 4 229 220 219 228 
		f 4 -336 333 327 -335 
		mu 0 4 230 231 219 209 
		f 4 -338 334 328 -337 
		mu 0 4 232 230 209 222 
		f 4 -340 336 329 -339 
		mu 0 4 233 232 222 224 
		f 4 -342 338 330 -341 
		mu 0 4 547 542 540 226 
		f 4 -344 340 331 -343 
		mu 0 4 234 547 226 228 
		f 4 -345 342 332 -334 
		mu 0 4 231 234 228 219 
		f 4 -348 345 -113 -347 
		mu 0 4 235 236 237 238 
		f 4 -350 346 -112 -349 
		mu 0 4 548 543 544 545 
		f 4 -352 348 109 -351 
		mu 0 4 239 548 545 240 
		f 4 -354 350 103 -353 
		mu 0 4 241 239 240 242 
		f 4 -356 352 107 -355 
		mu 0 4 243 241 242 244 
		f 4 -357 354 -107 -346 
		mu 0 4 236 243 244 237 
		f 4 -360 357 488 -359 
		mu 0 4 104 101 245 246 
		f 4 -362 358 490 -361 
		mu 0 4 105 104 246 247 
		f 4 -364 360 492 -363 
		mu 0 4 109 105 247 248 
		f 4 -366 362 494 -365 
		mu 0 4 107 539 546 249 
		f 4 -368 364 496 -367 
		mu 0 4 100 107 249 530 
		f 4 -369 366 497 -358 
		mu 0 4 101 100 530 245 
		f 4 -372 369 1018 -371 
		mu 0 4 134 133 250 251 
		f 4 -374 370 1009 -373 
		mu 0 4 698 134 251 686 
		f 4 -376 372 1011 -375 
		mu 0 4 137 135 252 253 
		f 4 -378 374 1013 -377 
		mu 0 4 136 137 253 254 
		f 4 -380 376 1015 -379 
		mu 0 4 132 136 254 255 
		f 4 -381 378 1017 -370 
		mu 0 4 133 132 255 250 
		f 4 -384 381 165 -383 
		mu 0 4 171 170 138 139 
		f 4 -386 382 157 -385 
		mu 0 4 696 171 139 697 
		f 4 -388 384 159 -387 
		mu 0 4 175 173 140 141 
		f 4 -390 386 161 -389 
		mu 0 4 177 175 141 142 
		f 4 -392 388 163 -391 
		mu 0 4 179 177 142 143 
		f 4 -393 390 164 -382 
		mu 0 4 170 179 143 138 
		f 4 468 467 -397 -467 
		mu 0 4 211 256 257 214 
		f 4 470 469 -399 -468 
		mu 0 4 256 258 207 257 
		f 4 472 471 -401 -470 
		mu 0 4 258 715 208 207 
		f 4 474 473 -403 -472 
		mu 0 4 259 260 261 716 
		f 4 476 475 -405 -474 
		mu 0 4 260 212 213 261 
		f 4 396 395 -407 -395 
		mu 0 4 214 257 201 82 
		f 4 398 397 -408 -396 
		mu 0 4 257 207 88 201 
		f 4 402 401 -410 -400 
		mu 0 4 716 261 202 89 
		f 4 404 403 -411 -402 
		mu 0 4 261 213 85 202 
		f 4 -415 412 320 -414 
		mu 0 4 719 215 204 720 
		f 4 -417 413 325 -416 
		mu 0 4 717 216 203 718 
		f 4 -419 415 -325 -418 
		mu 0 4 217 218 206 205 
		f 4 -420 417 -323 -413 
		mu 0 4 215 217 205 204 
		f 4 -428 425 -80 -427 
		mu 0 4 262 263 118 116 
		f 4 -430 426 77 -429 
		mu 0 4 625 262 116 627 
		f 4 -432 428 73 -431 
		mu 0 4 265 264 111 110 
		f 4 -434 430 75 -433 
		mu 0 4 266 265 110 114 
		f 4 -437 434 512 -436 
		mu 0 4 117 119 267 268 
		f 4 -439 435 514 -438 
		mu 0 4 626 117 268 623 
		f 4 -441 437 516 -440 
		mu 0 4 113 112 269 270 
		f 4 -443 439 518 -442 
		mu 0 4 115 113 270 271 
		f 4 -444 -445 -289 289 
		mu 0 4 272 2 193 200 
		f 4 -447 443 253 254 
		mu 0 4 3 2 272 273 
		f 4 -449 -255 299 265 
		mu 0 4 48 3 273 274 
		f 4 -451 -266 266 267 
		mu 0 4 49 48 274 275 
		f 4 -453 -268 303 -452 
		mu 0 4 80 49 275 81 
		f 4 -263 -285 285 -454 
		mu 0 4 43 42 196 80 
		f 3 -280 -455 281 
		mu 0 3 195 79 0 
		f 3 -278 -274 -456 
		mu 0 3 5 50 53 
		f 3 -302 -457 271 
		mu 0 3 51 194 52 
		f 4 -460 457 427 -459 
		mu 0 4 93 92 263 262 
		f 4 -462 458 429 -461 
		mu 0 4 624 93 262 625 
		f 4 -464 460 431 -463 
		mu 0 4 96 95 264 265 
		f 4 -466 462 433 -465 
		mu 0 4 97 96 265 266 
		f 4 -104 305 -469 -394 
		mu 0 4 210 529 256 211 
		f 4 -110 312 -471 -306 
		mu 0 4 529 528 258 256 
		f 4 111 314 -473 -313 
		mu 0 4 528 526 715 258 
		f 4 112 307 -475 -315 
		mu 0 4 726 527 260 259 
		f 4 106 309 -477 -308 
		mu 0 4 527 531 212 260 
		f 4 -479 -480 477 -57 
		mu 0 4 32 23 573 574 
		f 4 -481 -482 478 7 
		mu 0 4 39 30 23 32 
		f 4 -484 480 26 -483 
		mu 0 4 26 30 39 35 
		f 4 -486 482 59 15 
		mu 0 4 27 26 35 560 
		f 4 -489 486 335 -488 
		mu 0 4 246 245 231 230 
		f 4 -491 487 337 -490 
		mu 0 4 247 246 230 232 
		f 4 -493 489 339 -492 
		mu 0 4 248 247 232 233 
		f 4 -495 491 341 -494 
		mu 0 4 249 546 542 547 
		f 4 -497 493 343 -496 
		mu 0 4 530 249 547 234 
		f 4 -498 495 344 -487 
		mu 0 4 245 530 234 231 
		f 4 -501 498 355 -500 
		mu 0 4 221 220 241 243 
		f 4 -503 499 356 -502 
		mu 0 4 223 221 243 236 
		f 4 -505 501 347 -504 
		mu 0 4 225 223 236 235 
		f 4 -507 503 349 -506 
		mu 0 4 227 541 543 548 
		f 4 -509 505 351 -508 
		mu 0 4 229 227 548 239 
		f 4 -499 -510 507 353 
		mu 0 4 241 220 229 239 
		f 4 -513 510 -123 -512 
		mu 0 4 268 267 631 128 
		f 4 -515 511 120 -514 
		mu 0 4 623 268 128 638 
		f 4 -517 513 115 -516 
		mu 0 4 270 269 121 120 
		f 4 -519 515 118 -518 
		mu 0 4 271 270 120 635 
		f 3 -21 -46 250 
		mu 0 3 44 14 73 
		f 3 -251 47 -520 
		mu 0 3 44 73 78 
		f 3 1003 238 -521 
		mu 0 3 44 199 198 
		f 3 239 520 249 
		mu 0 3 604 44 198 
		f 3 240 -522 -240 
		mu 0 3 604 41 44 
		f 3 -18 20 521 
		mu 0 3 41 14 44 
		f 4 -526 -525 -524 522 
		mu 0 4 276 277 278 279 
		f 4 528 -260 -528 526 
		mu 0 4 280 7 6 281 
		f 4 532 -532 -531 529 
		mu 0 4 282 283 284 705 
		f 4 -537 -536 -535 -534 
		mu 0 4 286 598 288 289 
		f 4 539 -12 -539 537 
		mu 0 4 290 19 602 600 
		f 4 542 -248 -542 -541 
		mu 0 4 289 22 21 292 
		f 3 540 -544 533 
		mu 0 3 289 292 286 
		f 4 -546 -13 -540 544 
		mu 0 4 293 24 575 565 
		f 4 548 -485 -548 -547 
		mu 0 4 567 28 27 295 
		f 4 546 -552 -551 549 
		mu 0 4 567 295 296 297 
		f 4 554 -14 -554 552 
		mu 0 4 298 34 561 557 
		f 4 557 -15 -557 -556 
		mu 0 4 559 38 37 301 
		f 4 555 -561 -560 558 
		mu 0 4 559 301 302 612 
		f 3 -563 -562 535 
		mu 0 3 598 304 288 
		f 4 527 -264 -565 563 
		mu 0 4 281 6 43 305 
		f 4 -569 -568 566 565 
		mu 0 4 308 309 310 311 
		f 4 -573 -572 570 569 
		mu 0 4 312 313 314 315 
		f 4 -577 -576 574 -574 
		mu 0 4 316 585 318 319 
		f 4 -580 -538 578 577 
		mu 0 4 593 290 600 601 
		f 4 -581 -545 579 550 
		mu 0 4 296 293 565 297 
		f 4 -583 -553 581 559 
		mu 0 4 610 298 557 558 
		f 4 586 -586 -585 583 
		mu 0 4 704 701 706 707 
		f 3 588 587 -579 
		mu 0 3 291 325 592 
		f 4 593 -593 -592 -588 
		mu 0 4 581 326 327 583 
		f 4 591 -597 -596 594 
		mu 0 4 583 327 328 582 
		f 4 595 -600 -599 -598 
		mu 0 4 582 328 330 586 
		f 4 598 -602 -594 -601 
		mu 0 4 580 584 326 581 
		f 4 603 -43 -543 602 
		mu 0 4 332 72 22 289 
		f 4 -606 43 -604 -605 
		mu 0 4 333 74 72 332 
		f 3 606 -603 534 
		mu 0 3 288 332 289 
		f 3 -607 -608 604 
		mu 0 3 332 288 333 
		f 3 609 -51 608 
		mu 0 3 334 77 76 
		f 4 -50 605 610 -609 
		mu 0 4 76 74 333 334 
		f 4 48 -610 -611 611 
		mu 0 4 78 77 334 333 
		f 3 -523 -614 -613 
		mu 0 3 276 279 335 
		f 4 -616 -566 614 571 
		mu 0 4 313 308 311 314 
		f 3 -287 -618 -617 
		mu 0 3 43 81 336 
		f 4 619 -575 -619 596 
		mu 0 4 327 319 318 328 
		f 4 620 573 -620 592 
		mu 0 4 326 316 319 327 
		f 4 621 576 -621 601 
		mu 0 4 584 317 316 326 
		f 4 618 575 -622 599 
		mu 0 4 328 318 585 330 
		f 4 625 -625 -624 622 
		mu 0 4 337 338 45 340 
		f 4 74 -628 -627 556 
		mu 0 4 37 87 341 301 
		f 4 623 -631 -630 628 
		mu 0 4 340 45 307 343 
		f 4 632 -632 -79 -555 
		mu 0 4 298 344 90 34 
		f 4 634 -634 -82 631 
		mu 0 4 344 345 92 90 
		f 4 637 -637 -635 635 
		mu 0 4 346 617 345 344 
		f 4 640 -640 -638 638 
		mu 0 4 341 348 347 621 
		f 4 80 -642 -641 627 
		mu 0 4 87 97 348 341 
		f 4 644 -644 -643 560 
		mu 0 4 301 524 523 302 
		f 4 647 646 -646 -639 
		mu 0 4 621 622 525 341 
		f 4 645 -649 -645 626 
		mu 0 4 341 525 524 301 
		f 4 642 -651 -650 582 
		mu 0 4 610 611 522 298 
		f 4 649 652 -652 -633 
		mu 0 4 298 522 520 344 
		f 4 651 653 -648 -636 
		mu 0 4 344 520 521 346 
		f 4 656 -656 -655 643 
		mu 0 4 349 355 356 350 
		f 4 659 -659 -658 -647 
		mu 0 4 351 357 358 352 
		f 4 657 -661 -657 648 
		mu 0 4 352 358 355 349 
		f 4 654 -663 -662 650 
		mu 0 4 350 356 359 353 
		f 4 661 -665 -664 -653 
		mu 0 4 353 359 360 354 
		f 4 663 -666 -660 -654 
		mu 0 4 556 553 357 351 
		f 4 669 -669 -668 666 
		mu 0 4 361 362 363 620 
		f 4 116 -672 -670 670 
		mu 0 4 114 115 362 361 
		f 4 667 -675 -674 672 
		mu 0 4 364 619 365 366 
		f 4 673 -677 -122 -676 
		mu 0 4 366 365 119 118 
		f 4 680 -680 -679 677 
		mu 0 4 634 650 649 632 
		f 4 683 682 -682 -118 
		mu 0 4 124 647 651 125 
		f 4 681 -686 -681 684 
		mu 0 4 125 651 650 634 
		f 4 678 -689 -688 686 
		mu 0 4 632 649 648 630 
		f 4 687 691 -691 -690 
		mu 0 4 630 648 646 130 
		f 4 690 692 -684 -124 
		mu 0 4 130 646 647 124 
		f 4 695 -695 -694 679 
		mu 0 4 368 376 377 369 
		f 4 698 -698 -697 -683 
		mu 0 4 695 690 379 372 
		f 4 696 -700 -696 685 
		mu 0 4 372 379 376 368 
		f 4 693 -702 -701 688 
		mu 0 4 369 377 380 373 
		f 4 700 -704 -703 -692 
		mu 0 4 373 380 381 375 
		f 4 702 -705 -699 -693 
		mu 0 4 375 381 378 371 
		f 4 707 -530 -707 705 
		mu 0 4 382 282 705 321 
		f 4 706 530 -709 -587 
		mu 0 4 704 285 703 701 
		f 4 708 531 -711 -710 
		mu 0 4 322 284 283 383 
		f 4 710 -533 -708 711 
		mu 0 4 383 283 282 382 
		f 3 713 709 712 
		mu 0 3 384 322 383 
		f 4 715 585 -714 714 
		mu 0 4 385 323 702 689 
		f 4 717 584 -716 716 
		mu 0 4 386 324 323 385 
		f 4 719 -584 -718 718 
		mu 0 4 387 321 324 386 
		f 3 -706 -720 720 
		mu 0 3 382 321 387 
		f 4 724 -724 -723 721 
		mu 0 4 388 691 390 391 
		f 4 727 -727 -725 725 
		mu 0 4 392 393 389 685 
		f 4 730 -730 -728 728 
		mu 0 4 394 395 393 392 
		f 4 733 -733 -731 731 
		mu 0 4 396 397 395 394 
		f 4 736 -736 -734 734 
		mu 0 4 398 399 397 396 
		f 4 722 -739 -737 737 
		mu 0 4 391 390 399 398 
		f 4 742 -742 -741 739 
		mu 0 4 400 657 653 403 
		f 4 745 -745 -743 743 
		mu 0 4 404 694 657 400 
		f 4 748 -748 -746 746 
		mu 0 4 406 655 656 692 
		f 4 751 -751 -749 749 
		mu 0 4 408 654 655 406 
		f 4 754 -754 -752 752 
		mu 0 4 410 652 654 408 
		f 4 740 -757 -755 755 
		mu 0 4 403 653 652 410 
		f 4 760 -760 -759 757 
		mu 0 4 675 413 414 671 
		f 4 763 -763 -761 761 
		mu 0 4 674 688 413 675 
		f 4 766 -766 -764 764 
		mu 0 4 673 419 417 693 
		f 4 769 -769 -767 767 
		mu 0 4 672 421 419 673 
		f 4 772 -772 -770 770 
		mu 0 4 670 423 421 672 
		f 4 758 -775 -773 773 
		mu 0 4 671 414 423 670 
		f 4 777 -740 -777 775 
		mu 0 4 424 400 403 425 
		f 4 779 741 -779 -758 
		mu 0 4 415 402 401 412 
		f 4 781 -744 -778 780 
		mu 0 4 426 404 400 424 
		f 4 778 744 -783 -762 
		mu 0 4 412 401 405 416 
		f 4 784 -747 -782 783 
		mu 0 4 427 406 692 681 
		f 4 782 747 -786 -765 
		mu 0 4 416 405 407 418 
		f 4 787 -750 -785 786 
		mu 0 4 428 408 406 427 
		f 4 785 750 -789 -768 
		mu 0 4 418 407 409 420 
		f 4 790 -753 -788 789 
		mu 0 4 429 410 408 428 
		f 4 788 753 -792 -771 
		mu 0 4 420 409 411 422 
		f 4 776 -756 -791 792 
		mu 0 4 425 403 410 429 
		f 4 791 756 -780 -774 
		mu 0 4 422 411 402 415 
		f 4 794 1054 -794 726 
		mu 0 4 393 430 431 389 
		f 4 795 1053 -795 729 
		mu 0 4 395 432 430 393 
		f 4 796 1051 -796 732 
		mu 0 4 397 433 432 395 
		f 4 797 1049 -797 735 
		mu 0 4 399 434 433 397 
		f 4 798 1047 -798 738 
		mu 0 4 390 435 434 399 
		f 4 793 1045 -799 723 
		mu 0 4 691 680 435 390 
		f 4 -290 799 801 968 
		mu 0 4 272 200 436 278 
		f 3 803 802 613 
		mu 0 3 279 437 335 
		f 3 -807 -806 804 
		mu 0 3 438 439 335 
		f 4 -567 -809 525 807 
		mu 0 4 311 310 277 276 
		f 4 -615 -808 810 809 
		mu 0 4 314 311 276 439 
		f 3 -810 806 -812 
		mu 0 3 314 439 438 
		f 4 -595 -814 536 -813 
		mu 0 4 320 599 598 286 
		f 5 814 -550 -578 812 543 
		mu 0 5 292 294 566 320 286 
		f 4 -17 -549 -815 541 
		mu 0 4 21 568 294 292 
		f 4 817 -817 568 815 
		mu 0 4 440 336 309 308 
		f 4 -820 -816 615 818 
		mu 0 4 305 440 308 313 
		f 3 -564 -819 -821 
		mu 0 3 281 305 313 
		f 4 258 -529 -822 538 
		mu 0 4 18 7 280 291 
		f 4 823 -570 -823 597 
		mu 0 4 331 312 315 329 
		f 4 821 825 -825 -589 
		mu 0 4 291 280 441 325 
		f 4 824 -590 -824 600 
		mu 0 4 325 441 312 331 
		f 4 -800 -288 826 828 
		mu 0 4 436 200 597 596 
		f 4 829 -801 -829 827 
		mu 0 4 594 437 436 596 
		f 4 831 -803 -830 830 
		mu 0 4 595 335 437 594 
		f 4 832 -805 -832 562 
		mu 0 4 287 438 335 595 
		f 3 822 -834 1006 
		mu 0 3 329 315 438 
		f 3 -623 -836 -835 
		mu 0 3 337 340 444 
		f 3 837 624 -837 
		mu 0 3 445 339 737 
		f 4 841 -841 -840 838 
		mu 0 4 446 731 448 449 
		f 3 835 -629 -843 
		mu 0 3 444 340 343 
		f 4 845 629 -845 -844 
		mu 0 4 450 343 307 734 
		f 3 630 -838 -847 
		mu 0 3 342 339 445 
		f 4 850 -850 -849 847 
		mu 0 4 533 736 454 535 
		f 4 -854 852 851 -626 
		mu 0 4 337 456 735 338 
		f 4 856 -856 -855 849 
		mu 0 4 736 732 459 454 
		f 4 854 -860 -859 -858 
		mu 0 4 454 459 460 456 
		f 4 858 -862 -861 -853 
		mu 0 4 456 460 461 735 
		f 4 860 -864 -857 862 
		mu 0 4 457 730 458 453 
		f 4 867 -867 -866 864 
		mu 0 4 462 463 464 465 
		f 4 870 -870 -868 868 
		mu 0 4 466 467 463 462 
		f 4 873 -873 -871 871 
		mu 0 4 468 549 467 466 
		f 4 876 -876 -874 874 
		mu 0 4 470 471 469 555 
		f 4 879 -879 -877 877 
		mu 0 4 472 473 471 470 
		f 4 -880 881 865 -881 
		mu 0 4 473 472 465 464 
		f 4 884 -865 -884 882 
		mu 0 4 474 462 465 475 
		f 4 886 -869 -885 885 
		mu 0 4 476 466 462 474 
		f 4 888 -872 -887 887 
		mu 0 4 477 468 466 476 
		f 4 890 -875 -889 889 
		mu 0 4 478 470 555 552 
		f 4 892 -878 -891 891 
		mu 0 4 479 472 470 478 
		f 4 883 -882 -893 893 
		mu 0 4 475 465 472 479 
		f 4 897 896 -896 894 
		mu 0 4 480 554 532 483 
		f 4 900 899 -898 898 
		mu 0 4 484 536 537 550 
		f 4 903 -903 -901 901 
		mu 0 4 486 534 536 484 
		f 4 906 -906 -904 904 
		mu 0 4 488 455 534 486 
		f 4 908 -848 -907 907 
		mu 0 4 489 452 455 488 
		f 4 895 910 -909 909 
		mu 0 4 483 532 452 489 
		f 4 913 -913 -912 660 
		mu 0 4 358 490 491 355 
		f 4 915 -915 -914 658 
		mu 0 4 357 492 490 358 
		f 4 917 -917 -916 665 
		mu 0 4 553 551 492 357 
		f 4 919 -919 -918 664 
		mu 0 4 359 494 493 360 
		f 4 921 -921 -920 662 
		mu 0 4 356 495 494 359 
		f 4 911 -923 -922 655 
		mu 0 4 355 491 495 356 
		f 4 924 1021 -924 699 
		mu 0 4 379 496 497 376 
		f 4 925 1030 -925 697 
		mu 0 4 690 498 496 379 
		f 4 926 1029 -926 704 
		mu 0 4 381 499 684 378 
		f 4 927 1027 -927 703 
		mu 0 4 380 500 499 381 
		f 4 928 1025 -928 701 
		mu 0 4 377 501 500 380 
		f 4 923 1023 -929 694 
		mu 0 4 376 497 501 377 
		f 4 930 -712 -930 759 
		mu 0 4 413 383 382 414 
		f 4 931 -713 -931 762 
		mu 0 4 688 384 383 413 
		f 4 932 -715 -932 765 
		mu 0 4 419 385 689 417 
		f 4 933 -717 -933 768 
		mu 0 4 421 386 385 419 
		f 4 934 -719 -934 771 
		mu 0 4 423 387 386 421 
		f 4 929 -721 -935 774 
		mu 0 4 414 382 387 423 
		f 4 857 937 -937 -936 
		mu 0 4 454 456 502 503 
		f 4 936 940 -940 -939 
		mu 0 4 503 502 450 504 
		f 4 939 843 -943 -942 
		mu 0 4 504 450 734 729 
		f 4 942 945 -945 -944 
		mu 0 4 505 451 506 507 
		f 4 944 947 -863 -947 
		mu 0 4 507 506 457 453 
		f 4 853 834 -949 -938 
		mu 0 4 456 337 444 502 
		f 4 948 842 -846 -941 
		mu 0 4 502 444 343 450 
		f 4 844 846 -950 -946 
		mu 0 4 451 342 445 506 
		f 4 949 836 -852 -948 
		mu 0 4 506 445 737 457 
		f 4 951 -839 -951 855 
		mu 0 4 732 446 449 459 
		f 4 952 -842 -952 863 
		mu 0 4 730 447 733 458 
		f 4 953 840 -953 861 
		mu 0 4 460 448 731 461 
		f 4 950 839 -954 859 
		mu 0 4 459 449 448 460 
		f 4 955 675 -426 954 
		mu 0 4 508 366 118 263 
		f 4 957 -673 -956 956 
		mu 0 4 509 364 366 508 
		f 4 959 -667 -958 958 
		mu 0 4 510 361 620 618 
		f 4 432 -671 -960 960 
		mu 0 4 266 114 361 510 
		f 4 962 -962 -435 676 
		mu 0 4 365 511 267 119 
		f 4 964 -964 -963 674 
		mu 0 4 619 616 511 365 
		f 4 966 -966 -965 668 
		mu 0 4 362 513 512 363 
		f 4 441 -968 -967 671 
		mu 0 4 115 271 513 362 
		f 4 -970 -254 -969 524 
		mu 0 4 277 273 272 278 
		f 4 -971 -300 969 808 
		mu 0 4 310 274 273 277 
		f 4 -972 -267 970 567 
		mu 0 4 309 275 274 310 
		f 4 617 -304 971 816 
		mu 0 4 336 81 275 309 
		f 4 616 -818 819 564 
		mu 0 4 43 336 440 305 
		f 4 -804 523 -802 800 
		mu 0 4 437 279 278 436 
		f 3 -811 612 805 
		mu 0 3 439 276 335 
		f 3 820 572 590 
		mu 0 3 281 313 312 
		f 4 -826 -527 -591 589 
		mu 0 4 441 280 281 312 
		f 3 -571 811 833 
		mu 0 3 315 314 438 
		f 4 972 -955 -458 633 
		mu 0 4 345 508 263 92 
		f 4 973 -957 -973 636 
		mu 0 4 617 509 508 345 
		f 4 974 -959 -974 639 
		mu 0 4 348 510 618 347 
		f 4 464 -961 -975 641 
		mu 0 4 97 266 510 348 
		f 4 848 935 -976 905 
		mu 0 4 535 454 503 487 
		f 4 975 938 -977 902 
		mu 0 4 487 503 504 485 
		f 4 976 941 -978 -900 
		mu 0 4 485 504 729 481 
		f 4 977 943 -979 -897 
		mu 0 4 728 505 507 482 
		f 4 978 946 -851 -911 
		mu 0 4 482 507 453 738 
		f 4 553 -478 545 979 
		mu 0 4 299 33 24 293 
		f 4 -582 -980 580 980 
		mu 0 4 303 299 293 296 
		f 4 981 -559 -981 551 
		mu 0 4 295 300 303 296 
		f 4 -16 -558 -982 547 
		mu 0 4 27 560 300 295 
		f 4 983 -883 -983 912 
		mu 0 4 490 474 475 491 
		f 4 984 -886 -984 914 
		mu 0 4 492 476 474 490 
		f 4 985 -888 -985 916 
		mu 0 4 551 477 476 492 
		f 4 986 -890 -986 918 
		mu 0 4 494 478 552 493 
		f 4 987 -892 -987 920 
		mu 0 4 495 479 478 494 
		f 4 982 -894 -988 922 
		mu 0 4 491 475 479 495 
		f 4 989 -908 -989 866 
		mu 0 4 463 489 488 464 
		f 4 990 -910 -990 869 
		mu 0 4 467 483 489 463 ;
	setAttr ".fc[500:541]"
		f 4 991 -895 -991 872 
		mu 0 4 549 480 483 467 
		f 4 992 -899 -992 875 
		mu 0 4 471 484 550 469 
		f 4 993 -902 -993 878 
		mu 0 4 473 486 484 471 
		f 4 -905 -994 880 988 
		mu 0 4 488 486 473 464 
		f 4 994 689 -511 961 
		mu 0 4 511 374 631 267 
		f 4 995 -687 -995 963 
		mu 0 4 616 370 374 511 
		f 4 996 -678 -996 965 
		mu 0 4 513 367 633 512 
		f 4 517 -685 -997 967 
		mu 0 4 271 635 367 513 
		f 3 998 607 997 
		mu 0 3 306 333 288 
		f 3 999 -612 -999 
		mu 0 3 306 78 333 
		f 3 1004 -54 -1000 
		mu 0 3 306 199 78 
		f 3 1000 -827 -1005 
		mu 0 3 306 442 199 
		f 3 -828 -1001 -1002 
		mu 0 3 443 442 306 
		f 3 1001 1002 -831 
		mu 0 3 443 306 304 
		f 3 -1003 -998 561 
		mu 0 3 304 306 288 
		f 3 519 53 -1004 
		mu 0 3 44 78 199 
		f 3 -1006 301 -269 
		mu 0 3 67 194 51 
		f 3 -1007 -833 813 
		mu 0 3 329 438 287 
		f 4 -1010 1007 168 -1009 
		mu 0 4 686 251 145 687 
		f 4 -1012 1008 170 -1011 
		mu 0 4 253 252 144 148 
		f 4 -1014 1010 172 -1013 
		mu 0 4 254 253 148 150 
		f 4 -1016 1012 174 -1015 
		mu 0 4 255 254 150 152 
		f 4 -1018 1014 176 -1017 
		mu 0 4 250 255 152 154 
		f 4 -1019 1016 177 -1008 
		mu 0 4 251 250 154 145 
		f 4 1019 -738 -1021 -1022 
		mu 0 4 496 391 398 497 
		f 4 -1024 1020 -735 -1023 
		mu 0 4 501 497 398 396 
		f 4 -1026 1022 -732 -1025 
		mu 0 4 500 501 396 394 
		f 4 -1028 1024 -729 -1027 
		mu 0 4 499 500 394 392 
		f 4 -1030 1026 -726 -1029 
		mu 0 4 684 499 392 685 
		f 4 -1031 1028 -722 -1020 
		mu 0 4 496 498 388 391 
		f 4 -1034 1031 179 -1033 
		mu 0 4 682 191 180 683 
		f 4 -1036 1032 180 -1035 
		mu 0 4 187 186 182 183 
		f 4 -1038 1034 181 -1037 
		mu 0 4 188 187 183 184 
		f 4 -1040 1036 182 -1039 
		mu 0 4 189 188 184 185 
		f 4 -1042 1038 183 -1041 
		mu 0 4 190 189 185 181 
		f 4 -1043 1040 178 -1032 
		mu 0 4 191 190 181 180 
		f 4 1043 -781 -1045 -1046 
		mu 0 4 680 426 424 435 
		f 4 -1048 1044 -776 -1047 
		mu 0 4 434 435 424 425 
		f 4 -1050 1046 -793 -1049 
		mu 0 4 433 434 425 429 
		f 4 -1052 1048 -790 -1051 
		mu 0 4 432 433 429 428 
		f 4 -1054 1050 -787 -1053 
		mu 0 4 430 432 428 427 
		f 4 -1055 1052 -784 -1044 
		mu 0 4 431 430 427 681 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bw" 3;
createNode transform -n "KesoFeather" -p "Mesh";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -0.1112065091729164 20.443429946899418 -2.4056289554795907 ;
	setAttr ".sp" -type "double3" -0.1112065091729164 20.443429946899418 -2.4056289554795907 ;
createNode mesh -n "KesoFeatherShape" -p "KesoFeather";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -0.095995604991912842 0.17768663167953491 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "KesoFeatherShapeOrig" -p "KesoFeather";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.67848444 0.23201676 
		0.37681451 0.22856383 0.37641802 0.26054662 0.67113054 0.26375538 0.68850785 0.26404643 
		0.68888831 0.23236778 0.39375147 0.26083845 0.38720238 0.22901034 0.68711019 0.36699092 
		0.37571597 0.31954262 0.38750225 0.31947365 0.67597067 0.32260656 0.6877774 0.32248193 
		0.68904519 0.20949206 0.68767178 0.20942491 0.37721139 0.20615539 0.37858471 0.20620149 
		0.68442285 0.19321835 0.37602881 0.29290763 0.67329311 0.29601306 0.68811148 0.29607871 
		0.39081573 0.29297277 0.7026239 0.29623488 0.69931048 0.32273573 0.36148486 0.29275098 
		0.3641625 0.31934449 0.70555961 0.26410049 0.35932234 0.26049337 0.69039297 0.20946354 
		0.37261471 0.18995631 0.3758637 0.20616287 0.69901061 0.23227239 0.36667621 0.22875473 
		0.37530205 0.36372882;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".pt[0:21]" -type "float3"  0 0 -0.00074414024 0 0 -0.00074414024 
		0 0 -0.00074414024 0 0 -0.00074414024 0 0 -0.00074414024 0 0 -0.00074414024 0 0 -0.00074414024 
		0 0 -0.00074414024 0 0 -0.00074414024 0 0 -0.00074414024 0 0 -0.00074414024 0 0 -0.00074414024 
		0 0 -0.00074414024 0 0 -0.00074414024 0 0 -0.00074414024 0 0 -0.00074414024 0 0 -0.00074414024 
		0 0 -0.00074414024 0 0 -0.00074414024 0 0 -0.00074414024 0 0 -0.00074414024 0 0 -0.00074414024;
	setAttr -s 22 ".vt[0:21]"  -0.59627342 21.669497 -2.6322865 0.52241337 
		21.669497 -2.6322865 -0.036930036 28.868435 -3.9674926 -0.036930036 21.638544 -2.785181 
		-0.036930036 21.695433 -2.4784603 0.59479189 26.518139 -3.5315766 -0.036930036 26.542484 
		-3.3918092 -0.668652 26.518139 -3.5315766 -0.036930036 26.490746 -3.670779 -0.11120651 
		20.44343 -2.4048848 -0.036930036 20.441223 -2.4199665 -0.036930036 20.446777 -2.3900144 
		0.037346441 20.44343 -2.4048848 -0.29485276 19.597397 -2.1621754 -0.036930036 23.408888 
		-2.789479 -0.97289813 23.379229 -2.9493952 -0.036930036 23.349567 -3.1093111 0.89903808 
		23.379229 -2.9493952 -0.036930036 25.131395 -3.1158299 -0.8323825 25.102974 -3.2691028 
		-0.036930036 25.074539 -3.4223728 0.75852245 25.102974 -3.2691028;
	setAttr -s 44 ".ed[0:43]"  0 4 1 0 3 1 
		0 15 1 1 17 1 3 1 1 2 8 1 
		4 1 1 4 14 1 5 2 1 6 2 1 
		5 6 1 7 2 1 6 7 1 8 20 1 
		7 8 1 8 5 1 0 9 1 3 10 1 
		9 10 1 4 11 1 9 11 1 1 12 1 
		10 12 1 11 12 1 9 13 1 10 13 1 
		11 13 1 12 13 1 14 18 1 15 19 1 
		14 15 1 16 3 1 15 16 1 17 21 1 
		16 17 1 17 14 1 18 6 1 19 7 1 
		18 19 1 20 16 1 19 20 1 21 5 1 
		20 21 1 21 18 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 7 30 -3 
		mu 0 4 32 1 2 27 
		f 4 32 31 -2 2 
		mu 0 4 3 4 5 0 
		f 4 -32 34 -4 -5 
		mu 0 4 5 4 26 31 
		f 4 35 -8 6 3 
		mu 0 4 6 2 1 7 
		f 3 -10 -11 8 
		mu 0 3 33 9 10 
		f 3 -13 9 -12 
		mu 0 3 25 9 33 
		f 3 5 -15 11 
		mu 0 3 8 12 11 
		f 3 -16 -6 -9 
		mu 0 3 23 12 8 
		f 4 1 17 -19 -17 
		mu 0 4 0 5 13 14 
		f 4 -1 16 20 -20 
		mu 0 4 1 32 30 15 
		f 4 4 21 -23 -18 
		mu 0 4 5 31 28 13 
		f 4 -7 19 23 -22 
		mu 0 4 7 1 15 16 
		f 3 18 25 -25 
		mu 0 3 14 13 17 
		f 3 -21 24 -27 
		mu 0 3 15 30 29 
		f 3 22 27 -26 
		mu 0 3 13 28 17 
		f 3 -24 26 -28 
		mu 0 3 16 15 29 
		f 4 -31 28 38 -30 
		mu 0 4 27 2 18 24 
		f 4 40 39 -33 29 
		mu 0 4 19 20 4 3 
		f 4 -35 -40 42 -34 
		mu 0 4 26 4 20 22 
		f 4 43 -29 -36 33 
		mu 0 4 21 18 2 6 
		f 4 -39 36 12 -38 
		mu 0 4 24 18 9 25 
		f 4 14 13 -41 37 
		mu 0 4 11 12 20 19 
		f 4 -43 -14 15 -42 
		mu 0 4 22 20 12 23 
		f 4 -37 -44 41 10 
		mu 0 4 9 18 21 10 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr -s 2 ".dli";
	setAttr ".dli[2]" 1;
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n"
		+ "                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n"
		+ "                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n"
		+ "                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n"
		+ "                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n"
		+ "                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View1\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View1\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View1\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n"
		+ "            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n"
		+ "                -lights 1\n                -cameras 0\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 0\n                -ikHandles 0\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 0\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 0\n            -ikHandles 0\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n"
		+ "            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Perspective\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Perspective\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n"
		+ "                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Perspective\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n"
		+ "            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n"
		+ "            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n"
		+ "                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 1\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n"
		+ "                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n"
		+ "            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 95 -ast 0 -aet 95 ";
	setAttr ".st" 6;
createNode ikRPsolver -n "ikRPsolver";
createNode hyperGraphInfo -n "nodeEditorPanel1Info";
createNode hyperView -n "hyperView1";
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr ".anf" yes;
createNode skinCluster -n "skinCluster1";
	setAttr -s 32 ".bw";
	setAttr ".bw[35]" 1;
	setAttr ".bw[151]" 1;
	setAttr ".bw[154]" 1;
	setAttr ".bw[158]" 1;
	setAttr ".bw[160]" 1;
	setAttr ".bw[170:174]" 1 1 1 1 1;
	setAttr ".bw[176]" 1;
	setAttr ".bw[178:179]" 1 1;
	setAttr ".bw[331]" 1;
	setAttr ".bw[336]" 1;
	setAttr ".bw[339]" 1;
	setAttr ".bw[343]" 1;
	setAttr ".bw[346]" 1;
	setAttr ".bw[351]" 1;
	setAttr ".bw[357:358]" 1 1;
	setAttr ".bw[378:379]" 1 1;
	setAttr ".bw[385]" 1;
	setAttr ".bw[390]" 1;
	setAttr ".bw[393:399]" 6.2685374208097506e-005 4.661379325522783e-005 0.99988783235489509 
		4.6642747980191418e-009 3.1114084779867918e-006 7.1717135063849568e-005 5.7921840212962055e-005;
	setAttr -s 563 ".wl";
	setAttr -s 2 ".wl[0].w[2:3]"  0.054989049515894006 0.94501095048410588;
	setAttr -s 2 ".wl[1].w[1:2]"  7.5259942116239379e-009 0.99999999247400573;
	setAttr -s 2 ".wl[2].w[1:2]"  0.00040491213737111243 0.99959508786262941;
	setAttr -s 3 ".wl[3].w[1:3]"  0.0021357431965733772 0.99781824131519925 
		4.6015487535806931e-005;
	setAttr -s 2 ".wl[4].w[1:2]"  0.61903468445969623 0.38096531554248886;
	setAttr -s 3 ".wl[5].w[1:3]"  0.70042772480503968 0.29957211710721737 
		1.6040444708899041e-007;
	setAttr -s 4 ".wl[6].w";
	setAttr ".wl[6].w[1:2]" 0.9611284515976396 0.0048831938203059274;
	setAttr ".wl[6].w[9]" 1.2370435458165577e-010;
	setAttr ".wl[6].w[15]" 0.033988354461221601;
	setAttr -s 5 ".wl[7].w";
	setAttr ".wl[7].w[1:3]" 0.97771902447856385 0.0021785270358680238 1.2276854539084791e-012;
	setAttr ".wl[7].w[9]" 6.7437934153732665e-011;
	setAttr ".wl[7].w[15]" 0.020102448416920413;
	setAttr ".wl[8].w[2]"  1.0000000000000215;
	setAttr ".wl[9].w[2]"  1.0000000000057243;
	setAttr -s 3 ".wl[10].w";
	setAttr ".wl[10].w[1:2]" 0.62240315371981803 0.37759689153848458;
	setAttr ".wl[10].w[9]" 3.5316740201838655e-009;
	setAttr -s 4 ".wl[11].w";
	setAttr ".wl[11].w[0:2]" 1.1311524419182599e-008 0.99999576206869423 8.7730838620897651e-008;
	setAttr ".wl[11].w[9]" 4.1740584048187182e-006;
	setAttr -s 4 ".wl[12].w";
	setAttr ".wl[12].w[0:2]" 1.0655072985243587e-007 0.99999729423406269 7.8239423044314318e-008;
	setAttr ".wl[12].w[9]" 2.5209762392130889e-006;
	setAttr -s 3 ".wl[13].w";
	setAttr ".wl[13].w[1:2]" 0.74019668695097107 0.25980331284476338;
	setAttr ".wl[13].w[9]" 2.0608501171184933e-010;
	setAttr -s 2 ".wl[14].w[2:3]"  0.99998155109101605 1.8448913698791063e-005;
	setAttr -s 2 ".wl[15].w[2:3]"  0.027454736289480055 0.97254525708576067;
	setAttr -s 2 ".wl[16].w[2:3]"  1.0000000055076113 1.5289474620584448e-010;
	setAttr -s 2 ".wl[17].w[2:3]"  0.99999786298522286 2.1689303451728896e-006;
	setAttr -s 3 ".wl[18].w[1:3]"  3.1380995370533182e-011 0.99999996775280398 
		2.2770576415555448e-009;
	setAttr -s 3 ".wl[19].w[1:3]"  1.0879104315951046e-006 0.99999894079989915 
		3.7780695156246546e-010;
	setAttr -s 3 ".wl[20].w[1:3]"  0.013289213475202824 0.98670606035132991 
		4.7011038873922626e-006;
	setAttr -s 3 ".wl[21].w[1:3]"  0.66254523520656816 0.3374541400358646 
		6.4140512704316975e-007;
	setAttr -s 4 ".wl[22].w";
	setAttr ".wl[22].w[1:3]" 0.6696274513732916 0.06486273533539913 7.5503682784519239e-008;
	setAttr ".wl[22].w[15]" 0.2655097299883889;
	setAttr -s 3 ".wl[23].w[1:3]"  1.9049982338747169e-010 1.0000000530007511 
		6.5472479916295679e-014;
	setAttr ".wl[24].w[2]"  1.0000000487954128;
	setAttr ".wl[25].w[2]"  0.99999997556591025;
	setAttr ".wl[26].w[2]"  0.99999993824291422;
	setAttr ".wl[27].w[2]"  1.0000000152876316;
	setAttr -s 2 ".wl[28].w[2:3]"  1.0000000120856265 2.9821141412337728e-011;
	setAttr -s 2 ".wl[29].w[2:3]"  0.64110082442506555 0.35889914577261206;
	setAttr -s 2 ".wl[30].w[2:3]"  0.79889438809047164 0.20110561190984921;
	setAttr ".wl[31].w[2]"  1.0000000127000015;
	setAttr ".wl[32].w[2]"  1.0000000000006346;
	setAttr ".wl[33].w[2]"  1.0000000088251444;
	setAttr ".wl[34].w[2]"  0.99999999999923039;
	setAttr -s 2 ".wl[35].w[2:3]"  1.0000000287208612 4.8957884454040088e-010;
	setAttr -s 2 ".wl[36].w[2:3]"  0.99999997249839601 4.3138189575730206e-014;
	setAttr -s 3 ".wl[37].w[1:3]"  5.877356496403781e-011 0.99999995663925045 
		2.0292306979011336e-014;
	setAttr ".wl[38].w[2]"  1.000000015689865;
	setAttr ".wl[39].w[2]"  0.99999990256701476;
	setAttr -s 4 ".wl[40].w";
	setAttr ".wl[40].w[0:1]" 0.71690841873296085 0.11580743173012628;
	setAttr ".wl[40].w[21]" 7.1515153743716222e-012;
	setAttr ".wl[40].w[25]" 0.16728409185914073;
	setAttr -s 4 ".wl[41].w";
	setAttr ".wl[41].w[0:1]" 0.73970897420838699 0.12043587181640238;
	setAttr ".wl[41].w[21]" 4.5054325851445784e-006;
	setAttr ".wl[41].w[25]" 0.13985071008715275;
	setAttr -s 4 ".wl[42].w";
	setAttr ".wl[42].w[0:1]" 0.87953691280831037 0.078644609066392826;
	setAttr ".wl[42].w[21]" 0.041817162043858075;
	setAttr ".wl[42].w[25]" 1.3160828030965492e-006;
	setAttr -s 4 ".wl[43].w";
	setAttr ".wl[43].w[0:1]" 0.70031141072571301 0.13391719379423284;
	setAttr ".wl[43].w[21]" 8.6901531462471806e-006;
	setAttr ".wl[43].w[25]" 0.16576270533116266;
	setAttr -s 4 ".wl[44].w";
	setAttr ".wl[44].w[0:1]" 0.83475380831308621 0.09994924505829908;
	setAttr ".wl[44].w[21]" 0.065294782496876078;
	setAttr ".wl[44].w[25]" 2.1863467266802886e-006;
	setAttr -s 2 ".wl[45].w[0:1]"  1.0064191799796649e-005 0.99998993580543483;
	setAttr -s 2 ".wl[46].w[0:1]"  5.74484989679423e-006 0.99999427801862051;
	setAttr -s 5 ".wl[47].w";
	setAttr ".wl[47].w[0:2]" 0.001455682555997456 0.99809961835336181 9.1543297475866044e-006;
	setAttr ".wl[47].w[9]" 1.8954735887510329e-011;
	setAttr ".wl[47].w[15]" 0.00043554474072221116;
	setAttr -s 5 ".wl[48].w";
	setAttr ".wl[48].w[0:2]" 0.060651969494816008 0.93918464849120242 1.1356859776824088e-007;
	setAttr ".wl[48].w[15]" 5.4033674759046969e-006;
	setAttr ".wl[48].w[25]" 0.00015786507745311698;
	setAttr -s 5 ".wl[49].w";
	setAttr ".wl[49].w[0:2]" 0.015793531934559953 0.98383642400725091 1.1138772373781515e-005;
	setAttr ".wl[49].w[9]" 1.3532227572908708e-011;
	setAttr ".wl[49].w[15]" 0.00035890575795335353;
	setAttr -s 4 ".wl[50].w";
	setAttr ".wl[50].w[1:3]" 0.57396678153671843 0.0057557108790900384 2.7117379336926278e-011;
	setAttr ".wl[50].w[15]" 0.42027755066419553;
	setAttr -s 4 ".wl[51].w";
	setAttr ".wl[51].w[1:3]" 0.70475082405872935 0.0025275679140360162 4.8817087232055184e-012;
	setAttr ".wl[51].w[15]" 0.29272164985183335;
	setAttr -s 5 ".wl[52].w";
	setAttr ".wl[52].w[0:2]" 0.0017787466952790773 0.89446371495452914 6.8597544865785826e-007;
	setAttr ".wl[52].w[15]" 0.10375682227026822;
	setAttr ".wl[52].w[25]" 3.7548689057342553e-008;
	setAttr -s 5 ".wl[53].w";
	setAttr ".wl[53].w[0:2]" 0.00055487399468928959 0.86799031834806484 0.00012795726570689748;
	setAttr ".wl[53].w[15]" 0.13132682571299378;
	setAttr ".wl[53].w[25]" 2.8225939951239128e-010;
	setAttr -s 4 ".wl[54].w";
	setAttr ".wl[54].w[1:3]" 0.71605533368994934 0.0034205680742208761 4.4667390769864596e-012;
	setAttr ".wl[54].w[15]" 0.28052412631655932;
	setAttr -s 5 ".wl[55].w";
	setAttr ".wl[55].w[0:2]" 0.00044205699111666928 0.87751179527837453 0.00038418458409849443;
	setAttr ".wl[55].w[15]" 0.12166200647584234;
	setAttr ".wl[55].w[25]" 1.7238180106275695e-010;
	setAttr -s 3 ".wl[56].w[16:18]"  0.00030186253425199542 0.99969807946087996 
		5.4866883891455302e-008;
	setAttr -s 3 ".wl[57].w";
	setAttr ".wl[57].w[16:17]" 0.00030215967271942647 0.99969735740405252;
	setAttr ".wl[57].w[20]" 4.5280622053884497e-007;
	setAttr -s 4 ".wl[58].w";
	setAttr ".wl[58].w[15:17]" 7.2287674606052049e-009 0.00030624600562987323 
		0.99969373280896223;
	setAttr ".wl[58].w[20]" 4.3792064375447423e-009;
	setAttr -s 3 ".wl[59].w";
	setAttr ".wl[59].w[16:17]" 0.00030466929310932759 0.99969492917582048;
	setAttr ".wl[59].w[20]" 4.3743985372192176e-007;
	setAttr -s 3 ".wl[60].w[16:18]"  0.00030318161007016899 0.99969628240325326 
		4.91601061433701e-007;
	setAttr -s 3 ".wl[61].w[16:18]"  0.00030470795463770627 0.99969487347253727 
		4.5439190965386107e-007;
	setAttr -s 4 ".wl[62].w";
	setAttr ".wl[62].w[0]" 0.31920041737459692;
	setAttr ".wl[62].w[21]" 0.00068273801519440033;
	setAttr ".wl[62].w[25:26]" 0.66628703882177187 0.0138298057493733;
	setAttr -s 5 ".wl[63].w";
	setAttr ".wl[63].w[0]" 0.25192886140365928;
	setAttr ".wl[63].w[21:22]" 0.015047308805267752 7.3584676056598713e-011;
	setAttr ".wl[63].w[25:26]" 0.69484426379088671 0.038179591507886031;
	setAttr -s 4 ".wl[64].w";
	setAttr ".wl[64].w[0]" 0.66419096386068888;
	setAttr ".wl[64].w[21:22]" 0.11796565113111632 5.8732047446711223e-012;
	setAttr ".wl[64].w[25]" 0.21784331985733857;
	setAttr -s 4 ".wl[65].w";
	setAttr ".wl[65].w[0]" 0.17583662629707658;
	setAttr ".wl[65].w[21:22]" 0.42084574064775165 4.5115691664612081e-006;
	setAttr ".wl[65].w[25]" 0.40331312148600512;
	setAttr -s 3 ".wl[66].w";
	setAttr ".wl[66].w[0]" 0.33151187180515002;
	setAttr ".wl[66].w[21]" 0.047188857077734819;
	setAttr ".wl[66].w[25]" 0.62129923556066291;
	setAttr -s 3 ".wl[67].w";
	setAttr ".wl[67].w[0]" 0.29249045428038278;
	setAttr ".wl[67].w[21]" 0.3446932138810947;
	setAttr ".wl[67].w[25]" 0.36281631217089166;
	setAttr -s 4 ".wl[68].w";
	setAttr ".wl[68].w[0]" 0.33884420112293695;
	setAttr ".wl[68].w[21]" 0.0031978050213241059;
	setAttr ".wl[68].w[25:26]" 0.65795799360231022 2.3217259730870859e-010;
	setAttr -s 4 ".wl[69].w";
	setAttr ".wl[69].w[0]" 0.2979982162238668;
	setAttr ".wl[69].w[21]" 0.0073256776598568992;
	setAttr ".wl[69].w[25:26]" 0.69467610582200534 2.5569618250246511e-010;
	setAttr -s 3 ".wl[70].w";
	setAttr ".wl[70].w[0]" 0.66941759368412856;
	setAttr ".wl[70].w[21]" 0.033439993378008119;
	setAttr ".wl[70].w[25]" 0.29714234425584141;
	setAttr -s 4 ".wl[71].w";
	setAttr ".wl[71].w[0]" 0.33072162808958672;
	setAttr ".wl[71].w[21:22]" 0.02783865070315162 1.6731235986816768e-010;
	setAttr ".wl[71].w[25]" 0.64143973154258205;
	setAttr -s 3 ".wl[72].w";
	setAttr ".wl[72].w[0]" 0.38013586299756785;
	setAttr ".wl[72].w[21]" 0.012608020964381596;
	setAttr ".wl[72].w[25]" 0.60725613041966742;
	setAttr -s 3 ".wl[73].w";
	setAttr ".wl[73].w[0]" 0.40888107886135966;
	setAttr ".wl[73].w[21]" 0.042508034678893858;
	setAttr ".wl[73].w[25]" 0.5486108880132603;
	setAttr -s 3 ".wl[74].w[26:28]"  0.081192614117132716 0.45940371896523929 
		0.45940371705427863;
	setAttr -s 3 ".wl[75].w[26:28]"  6.3033765500739367e-005 0.50000001714235909 
		0.49993693406982209;
	setAttr -s 3 ".wl[76].w[26:28]"  0.24224582381281329 0.39877396194178294 
		0.35898020560912275;
	setAttr -s 3 ".wl[77].w[26:28]"  0.26326916431228814 0.39065788142767383 
		0.34607295425964535;
	setAttr -s 3 ".wl[78].w[26:28]"  0.072651457051934334 0.46367431192517494 
		0.4636743118283505;
	setAttr -s 3 ".wl[79].w[26:28]"  0.069282889810263454 0.46639201343569803 
		0.46432508054775562;
	setAttr -s 3 ".wl[80].w[26:28]"  3.1581115153826004e-006 0.49999971257342701 
		0.49999712930561863;
	setAttr -s 3 ".wl[81].w[26:28]"  0.009905610508024576 0.49909801571392942 
		0.49099635138352177;
	setAttr -s 3 ".wl[82].w[26:28]"  0.32824206675809575 0.47085962230455658 
		0.20089836952091605;
	setAttr -s 3 ".wl[83].w[26:28]"  0.49470247407814638 0.50389793452968035 
		0.0013995913922009592;
	setAttr -s 3 ".wl[84].w[26:28]"  0.499276002576655 0.49981195718297694 
		0.00091204024036816139;
	setAttr -s 3 ".wl[85].w[26:28]"  0.4808199411031332 0.48081079717992253 
		0.038369261711607733;
	setAttr -s 4 ".wl[86].w[25:28]"  3.3155912963124401e-010 0.47281697328992189 
		0.48123155745952334 0.045951483288862817;
	setAttr -s 3 ".wl[87].w[26:28]"  0.34971230447915436 0.48977789606476008 
		0.16050983622534115;
	setAttr -s 2 ".wl[88].w[25:26]"  0.54197641366938532 0.4580236342790347;
	setAttr -s 2 ".wl[89].w[25:26]"  0.53135871624143494 0.46864128375856479;
	setAttr -s 2 ".wl[90].w[25:26]"  0.99992312462526667 7.6879529305090135e-005;
	setAttr ".wl[91].w[25]"  1.0000000000036948;
	setAttr -s 2 ".wl[92].w[25:26]"  0.53289681898889596 0.46710318101110399;
	setAttr -s 2 ".wl[93].w[25:26]"  0.55819758300009259 0.44180241699285938;
	setAttr -s 3 ".wl[94].w[25:27]"  0.017786341767670605 0.97806549252037356 
		0.004148163316885182;
	setAttr -s 3 ".wl[95].w[25:27]"  0.034042462810091524 0.96578908429268318 
		0.00016843757569235079;
	setAttr -s 3 ".wl[96].w[25:27]"  0.012581574599195736 0.98146086777005281 
		0.0059575576452096041;
	setAttr -s 3 ".wl[97].w[25:27]"  0.034557306061304673 0.95127838977663171 
		0.014164304142960986;
	setAttr -s 3 ".wl[98].w[25:27]"  0.032209088975679173 0.94818671260661269 
		0.019604193230370947;
	setAttr -s 3 ".wl[99].w[25:27]"  0.016502393876878511 0.97439047791816469 
		0.0091071055677487689;
	setAttr -s 4 ".wl[100].w[25:28]"  0.01089313662205476 0.94894725187799822 
		0.040137351392180526 2.2221190299006678e-005;
	setAttr -s 3 ".wl[101].w[25:27]"  1.0463104996883213e-009 0.92805634079802291 
		0.071943658174079356;
	setAttr -s 2 ".wl[102].w[26:27]"  0.95570863341310608 0.044291366590400769;
	setAttr -s 2 ".wl[103].w[26:27]"  0.86127835163218869 0.13872167012514519;
	setAttr -s 3 ".wl[104].w[26:28]"  0.90121091857733115 0.098749670601178646 
		3.9410880798996785e-005;
	setAttr -s 4 ".wl[105].w[25:28]"  0.0050531646618503174 0.95381971821136757 
		0.0410966006595474 3.0550764135264948e-005;
	setAttr -s 3 ".wl[106].w[25:27]"  0.052714842461825465 0.92453762826040653 
		0.022747486576811249;
	setAttr -s 3 ".wl[107].w[25:27]"  0.076255995459764969 0.91944190597729503 
		0.0043020985643301268;
	setAttr -s 4 ".wl[108].w[25:28]"  0.00013515361795514647 0.71617476993778795 
		0.21433898663165624 0.069351113643694187;
	setAttr -s 3 ".wl[109].w[25:27]"  1.1731360810796481e-005 0.74051140813726479 
		0.25947689651466538;
	setAttr -s 3 ".wl[110].w[25:27]"  4.4095878905855874e-011 0.97365854701714682 
		0.026341452938480683;
	setAttr -s 2 ".wl[111].w[26:27]"  0.99998041862800613 1.9599238100275854e-005;
	setAttr -s 2 ".wl[112].w[26:27]"  0.90642707970216252 0.093572853897682148;
	setAttr -s 2 ".wl[113].w[26:27]"  0.62273860402630077 0.3772614488150427;
	setAttr -s 3 ".wl[114].w[25:27]"  0.047360876969464311 0.88748732430803523 
		0.065151798720409965;
	setAttr -s 3 ".wl[115].w[26:28]"  0.61552029477734549 0.34382163575998509 
		0.040658048191924062;
	setAttr -s 3 ".wl[116].w[25:27]"  0.023513516302180303 0.95381911870412484 
		0.022667372957382491;
	setAttr -s 4 ".wl[117].w[25:28]"  0.00045067258828223971 0.72851854107170688 
		0.23866398219287191 0.032366845120185922;
	setAttr -s 3 ".wl[118].w[25:27]"  0.43850514083832554 0.56149485916125141 
		3.4481335216113813e-013;
	setAttr -s 3 ".wl[119].w[25:27]"  0.44890711077243867 0.55109284718593676 
		8.5040285286887978e-013;
	setAttr -s 2 ".wl[120].w[25:26]"  0.44419657515907518 0.55580342483327971;
	setAttr -s 2 ".wl[121].w[25:26]"  0.43119063929171059 0.56880936070828947;
	setAttr -s 2 ".wl[122].w[25:26]"  0.48518519169297131 0.51481486368897256;
	setAttr -s 2 ".wl[123].w[25:26]"  0.49090959922820154 0.50909042835290863;
	setAttr ".wl[124].w[2]"  1.0000000347726588;
	setAttr ".wl[125].w[2]"  1.0000000393687516;
	setAttr -s 3 ".wl[126].w[1:3]"  1.7820194238560064e-012 0.99996611847152861 
		3.3857412573657256e-005;
	setAttr -s 3 ".wl[127].w[1:3]"  7.4042984362884298e-008 0.98265971123145013 
		0.017340268900784384;
	setAttr -s 3 ".wl[128].w[1:3]"  8.6790061947188341e-008 0.74013131019507139 
		0.25986860301263703;
	setAttr -s 2 ".wl[129].w[2:3]"  0.7220878056420369 0.27791211592266724;
	setAttr ".wl[130].w[2]"  0.99999999826062558;
	setAttr ".wl[131].w[2]"  0.99999997905527505;
	setAttr ".wl[132].w[2]"  1.0000000000015072;
	setAttr ".wl[133].w[2]"  1.0000000000001563;
	setAttr ".wl[134].w[2]"  0.99999999529249572;
	setAttr ".wl[135].w[2]"  0.99999994479598908;
	setAttr ".wl[136].w[2]"  0.99999999999972911;
	setAttr -s 2 ".wl[137].w[1:2]"  2.833010455236262e-013 1.000000042954287;
	setAttr ".wl[138].w[2]"  0.99999997714695998;
	setAttr ".wl[139].w[2]"  0.99999999999609468;
	setAttr ".wl[140].w[2]"  0.99999997262913298;
	setAttr ".wl[141].w[2]"  1.0000000000022846;
	setAttr ".wl[142].w[2]"  0.99999999999789679;
	setAttr ".wl[143].w[2]"  1.0000000000000315;
	setAttr ".wl[144].w[2]"  1.0000000184812512;
	setAttr ".wl[145].w[2]"  0.99999997939937069;
	setAttr -s 2 ".wl[146].w[2:3]"  0.99999995010015563 8.1667517458107121e-014;
	setAttr ".wl[147].w[2]"  0.99999999999997902;
	setAttr ".wl[148].w[2]"  1;
	setAttr ".wl[149].w[2]"  1.0000000575268939;
	setAttr -s 2 ".wl[150].w[1:2]"  6.006939531380183e-013 0.9999999757766872;
	setAttr -s 2 ".wl[151].w[2:3]"  1.0000000287208612 4.8957884454040088e-010;
	setAttr -s 2 ".wl[152].w[2:3]"  1.0000000000003957 6.6584291078047616e-015;
	setAttr ".wl[153].w[2]"  1.0000000112337559;
	setAttr ".wl[154].w[2]"  1.0000000090161074;
	setAttr ".wl[155].w[2]"  0.99999999998990796;
	setAttr ".wl[156].w[2]"  1.0000000653302319;
	setAttr ".wl[157].w[2]"  1.0000000393687516;
	setAttr -s 2 ".wl[158].w[2:3]"  1.0000000115293619 1.2410070209554134e-008;
	setAttr ".wl[159].w[19]"  0.99999998957184733;
	setAttr -s 5 ".wl[160].w[16:20]"  7.1802906575356115e-010 6.9799843933872357e-005 
		6.4565237352725059e-006 0.99986486605484959 5.8876857596245771e-005;
	setAttr ".wl[161].w[19]"  1.0000000090395815;
	setAttr -s 5 ".wl[162].w[16:20]"  7.6624840379811716e-010 7.7150809381467683e-005 
		4.3559434660492448e-006 0.99985355876378879 6.4913314667748787e-005;
	setAttr -s 5 ".wl[163].w[16:20]"  2.8644537584015813e-006 6.2685374208097506e-005 
		4.661379325522783e-005 0.99988783235489509 4.6642747980191418e-009;
	setAttr -s 5 ".wl[164].w[16:20]"  3.1114084779867918e-006 7.1717135063849568e-005 
		5.7921840212962055e-005 0.99986703333050819 2.2410613427038868e-007;
	setAttr -s 4 ".wl[165].w";
	setAttr ".wl[165].w[16:18]" 0.025057501343438721 0.6811581667035318 0.0075115412641147891;
	setAttr ".wl[165].w[20]" 0.28627275198416346;
	setAttr -s 4 ".wl[166].w";
	setAttr ".wl[166].w[16:18]" 5.3134618763253253e-006 0.51652339355769161 
		0.047778696374854789;
	setAttr ".wl[166].w[20]" 0.4356925828722073;
	setAttr ".wl[167].w[20]"  0.99999998990097083;
	setAttr ".wl[168].w[20]"  1.0000000011059456;
	setAttr ".wl[169].w[20]"  0.9999999989158822;
	setAttr ".wl[170].w[20]"  1.0000000119034669;
	setAttr ".wl[171].w[16]"  1;
	setAttr -s 2 ".wl[172].w[15:16]"  0.00034213755861856043 0.99965786933898926;
	setAttr -s 5 ".wl[173].w";
	setAttr ".wl[173].w[0:1]" 8.0281984626288874e-014 4.5776628208485474e-008;
	setAttr ".wl[173].w[15:17]" 0.49674066692419966 0.50315200867326371 0.00010725034072331097;
	setAttr -s 5 ".wl[174].w";
	setAttr ".wl[174].w[0:1]" 7.8931885627923138e-013 1.6776278529588884e-007;
	setAttr ".wl[174].w[15:17]" 0.50630392757810827 0.49341912718113534 0.00027682612444711714;
	setAttr -s 6 ".wl[175].w";
	setAttr ".wl[175].w[0:2]" 8.0019860652581318e-014 1.5607453574504074e-007 
		6.0142490142112151e-013;
	setAttr ".wl[175].w[15:17]" 0.50904069277383768 0.49067557429427583 0.00028349140911960373;
	setAttr -s 4 ".wl[176].w";
	setAttr ".wl[176].w[1]" 2.4866992663297251e-008;
	setAttr ".wl[176].w[15:17]" 0.5265873128114088 0.47334194386779327 7.0736389040959043e-005;
	setAttr -s 5 ".wl[177].w";
	setAttr ".wl[177].w[0:2]" 8.8416973228224745e-010 1.9071513378261351e-006 
		2.5476558986883883e-009;
	setAttr ".wl[177].w[15:16]" 0.99999772366937101 3.9152027162838598e-007;
	setAttr -s 5 ".wl[178].w";
	setAttr ".wl[178].w[0:2]" 2.6656677272038557e-009 1.9013811496436784e-006 
		6.3516684367465472e-010;
	setAttr ".wl[178].w[15:16]" 0.99999773440590078 3.8610875610644493e-007;
	setAttr -s 5 ".wl[179].w";
	setAttr ".wl[179].w[0:1]" 2.4090505005767097e-009 1.6326503449353369e-006;
	setAttr ".wl[179].w[15:17]" 0.9999914578859378 6.9301490521012115e-006 3.8407415229397762e-009;
	setAttr -s 6 ".wl[180].w";
	setAttr ".wl[180].w[0:2]" 5.9139578748170577e-009 0.00024911864150444548 
		-3.1299960399643643e-016;
	setAttr ".wl[180].w[15:17]" 0.60278885878710498 0.39673273265486919 0.00022922107183478879;
	setAttr -s 6 ".wl[181].w";
	setAttr ".wl[181].w[0:2]" 6.1829632081539295e-010 0.00023352348373776316 
		4.7472291867202949e-009;
	setAttr ".wl[181].w[15:17]" 0.60846720166783097 0.39106132272132255 0.00023798731997592065;
	setAttr -s 6 ".wl[182].w";
	setAttr ".wl[182].w[0:2]" 2.840356325066738e-012 6.0162607534544819e-005 
		2.82987059080237e-009;
	setAttr ".wl[182].w[15:17]" 0.70453866109411356 0.2953376958273371 6.3488082485691074e-005;
	setAttr -s 3 ".wl[183].w[15:17]"  2.1456629367997408e-005 0.90000505339849035 
		0.099973512738612921;
	setAttr -s 3 ".wl[184].w[16:18]"  0.90000504477284271 0.09865289378811766 
		0.0013420457775409013;
	setAttr -s 3 ".wl[185].w[16:18]"  0.9000049153608416 0.09853580697039406 
		0.0014592490997168048;
	setAttr -s 3 ".wl[186].w[16:18]"  0.90000489623134861 0.099831517519812535 
		0.000163577017922444;
	setAttr -s 3 ".wl[187].w";
	setAttr ".wl[187].w[16:17]" 0.90000494176674684 0.098646419168186963;
	setAttr ".wl[187].w[20]" 0.0013486406403109402;
	setAttr -s 3 ".wl[188].w";
	setAttr ".wl[188].w[16:17]" 0.90000505445514123 0.098702809477317979;
	setAttr ".wl[188].w[20]" 0.0012921420092695225;
	setAttr -s 5 ".wl[189].w";
	setAttr ".wl[189].w[0:2]" 3.3382770189911765e-009 0.3978764873563298 0.00090494067856634571;
	setAttr ".wl[189].w[15:16]" 0.60101259036396504 0.00020599067928349352;
	setAttr -s 5 ".wl[190].w";
	setAttr ".wl[190].w[0:2]" 0.00081352778487418732 0.51247869674376867 9.9722626563892924e-005;
	setAttr ".wl[190].w[15:16]" 0.4864451229636173 0.00016291009057130287;
	setAttr -s 5 ".wl[191].w";
	setAttr ".wl[191].w[0:2]" 0.00058635735784216261 0.51018267319303223 1.9258451904064929e-009;
	setAttr ".wl[191].w[15:16]" 0.48910474878881077 0.00012622644334675284;
	setAttr -s 5 ".wl[192].w";
	setAttr ".wl[192].w[0:2]" 0.00077167168869704539 0.4994038769284313 0.00019418312349350482;
	setAttr ".wl[192].w[15:16]" 0.49956698094460328 6.3286929149163537e-005;
	setAttr -s 5 ".wl[193].w";
	setAttr ".wl[193].w[0:2]" 4.8668354343181771e-006 0.41571950312704253 
		0.001010769639093271;
	setAttr ".wl[193].w[15:16]" 0.58312004941758266 0.00014482946177967314;
	setAttr -s 5 ".wl[194].w";
	setAttr ".wl[194].w[0:2]" 2.3302947825146176e-010 0.3701833798300147 0.00033171897411400891;
	setAttr ".wl[194].w[15:16]" 0.62941698397135037 6.792486566895222e-005;
	setAttr -s 4 ".wl[195].w";
	setAttr ".wl[195].w[0]" 0.15717349601668432;
	setAttr ".wl[195].w[21]" 0.0079071244336590771;
	setAttr ".wl[195].w[25:26]" 0.83491893846067922 4.9300132627720585e-007;
	setAttr -s 4 ".wl[196].w";
	setAttr ".wl[196].w[0]" 0.18877715011634777;
	setAttr ".wl[196].w[21]" 0.014662708076603342;
	setAttr ".wl[196].w[25:26]" 0.79655997617796048 1.2858258442891272e-007;
	setAttr -s 4 ".wl[197].w";
	setAttr ".wl[197].w[0]" 0.13369336771871382;
	setAttr ".wl[197].w[21]" 0.011367629051252676;
	setAttr ".wl[197].w[25:26]" 0.85487700228755981 6.2000942814784065e-005;
	setAttr -s 4 ".wl[198].w";
	setAttr ".wl[198].w[0]" 0.19035594058883959;
	setAttr ".wl[198].w[21]" 0.01646361858553913;
	setAttr ".wl[198].w[25:26]" 0.79305345912939507 0.00012698169234519606;
	setAttr -s 4 ".wl[199].w";
	setAttr ".wl[199].w[0]" 0.19488363756452207;
	setAttr ".wl[199].w[21]" 0.011059228443381823;
	setAttr ".wl[199].w[25:26]" 0.7940568539804842 3.4451933903504933e-007;
	setAttr -s 4 ".wl[200].w";
	setAttr ".wl[200].w[0]" 0.14373330621800756;
	setAttr ".wl[200].w[21]" 0.003152899285022492;
	setAttr ".wl[200].w[25:26]" 0.85311332206087553 5.0443009891184008e-007;
	setAttr -s 4 ".wl[201].w[25:28]"  3.3132082317335426e-006 0.49316303904213937 
		0.40670546772401095 0.10012810733145662;
	setAttr -s 3 ".wl[202].w[26:28]"  0.46187703510150346 0.40751036529450291 
		0.13061259066232656;
	setAttr -s 3 ".wl[203].w[26:28]"  0.51144089591153474 0.48855787790999922 
		1.2261785497595698e-006;
	setAttr -s 3 ".wl[204].w[26:28]"  0.50127730495659317 0.498722612189958 
		1.4983876446149604e-007;
	setAttr -s 3 ".wl[205].w[26:28]"  0.48886863353010446 0.48506414336146231 
		0.026067223107204458;
	setAttr -s 4 ".wl[206].w[25:28]"  1.4272313934581435e-005 0.50096643292501053 
		0.47256433192507685 0.026454962835978035;
	setAttr -s 4 ".wl[207].w";
	setAttr ".wl[207].w[16:18]" 1.7175293602153122e-005 0.53750474254674641 
		0.4578744149617951;
	setAttr ".wl[207].w[20]" 0.0046036454281156878;
	setAttr -s 4 ".wl[208].w[16:19]"  0.024708455633816625 0.53522220126080111 
		0.39740036988514971 0.042668975257500109;
	setAttr -s 5 ".wl[209].w[16:20]"  0.0266809248218687 0.52357264384485858 
		0.40167846761486031 0.048067943583163783 3.7105803878398181e-014;
	setAttr -s 4 ".wl[210].w";
	setAttr ".wl[210].w[16:18]" 2.3529163170674195e-005 0.485134563527433 0.50456882335883624;
	setAttr ".wl[210].w[20]" 0.010273076488928808;
	setAttr -s 4 ".wl[211].w";
	setAttr ".wl[211].w[16:18]" 5.2331925051604581e-006 0.52691142379010325 
		0.029749478871916167;
	setAttr ".wl[211].w[20]" 0.44333387204534641;
	setAttr -s 5 ".wl[212].w[16:20]"  1.3369044585966501e-009 8.4090978126560381e-005 
		7.0862431796955234e-005 0.99984347820281982 1.5942461719810634e-006;
	setAttr -s 5 ".wl[213].w[16:20]"  1.969536646880017e-009 8.1896309517576232e-005 
		8.4121645251937862e-005 0.99983131885528564 2.6378587499438039e-006;
	setAttr -s 4 ".wl[214].w";
	setAttr ".wl[214].w[16:18]" 6.1649298891257543e-006 0.00017672618488934376 
		1.2868197561738889e-006;
	setAttr ".wl[214].w[20]" 0.99981584881330754;
	setAttr -s 4 ".wl[215].w";
	setAttr ".wl[215].w[16:18]" 5.0920675418988805e-006 0.00014597111176657069 
		1.0628787724326427e-006;
	setAttr ".wl[215].w[20]" 0.99984787873067371;
	setAttr -s 4 ".wl[216].w";
	setAttr ".wl[216].w[16:18]" 2.3398426105628152e-009 0.00023559037817940984 
		1.3301459527412004e-005;
	setAttr ".wl[216].w[20]" 0.99975112985119474;
	setAttr -s 4 ".wl[217].w";
	setAttr ".wl[217].w[16:18]" 1.7985258996547453e-009 0.00017483529998215251 
		1.6172360860401013e-005;
	setAttr ".wl[217].w[20]" 0.99980898211042413;
	setAttr -s 4 ".wl[218].w";
	setAttr ".wl[218].w[0:1]" 0.87733189061777739 0.089680550843594151;
	setAttr ".wl[218].w[21]" 0.032987559325535869;
	setAttr ".wl[218].w[25]" 1.0611375744977765e-011;
	setAttr -s 4 ".wl[219].w";
	setAttr ".wl[219].w[0:1]" 0.73901731941534687 0.15059180530919117;
	setAttr ".wl[219].w[21]" 4.3097774553350133e-006;
	setAttr ".wl[219].w[25]" 0.11038656549963338;
	setAttr -s 3 ".wl[220].w";
	setAttr ".wl[220].w[0:1]" 0.76369255052279872 0.12901786002385993;
	setAttr ".wl[220].w[25]" 0.10728953656117478;
	setAttr -s 4 ".wl[221].w";
	setAttr ".wl[221].w[0:1]" 0.77892909008011324 0.13643501471580857;
	setAttr ".wl[221].w[21]" 3.4192687610603656e-006;
	setAttr ".wl[221].w[25]" 0.084632484573423497;
	setAttr -s 4 ".wl[222].w";
	setAttr ".wl[222].w[0:1]" 0.87610252336231376 0.093823082206072023;
	setAttr ".wl[222].w[21]" 0.030074394416162359;
	setAttr ".wl[222].w[25]" 2.2727645060255655e-011;
	setAttr -s 3 ".wl[223].w";
	setAttr ".wl[223].w[0]" 0.45457594491671682;
	setAttr ".wl[223].w[21]" 0.28047879682575755;
	setAttr ".wl[223].w[25]" 0.26494534527953162;
	setAttr -s 4 ".wl[224].w";
	setAttr ".wl[224].w[0:1]" 0.47043466957280183 0.00025903968941484506;
	setAttr ".wl[224].w[21]" 0.067669357480162673;
	setAttr ".wl[224].w[25]" 0.46163690688012754;
	setAttr -s 4 ".wl[225].w";
	setAttr ".wl[225].w[0:1]" 0.49475891462857097 0.0010717779254480798;
	setAttr ".wl[225].w[21]" 0.01441865458579787;
	setAttr ".wl[225].w[25]" 0.48975062339714542;
	setAttr -s 4 ".wl[226].w";
	setAttr ".wl[226].w[0:1]" 0.48951952321556474 0.00016315482497915749;
	setAttr ".wl[226].w[21]" 0.038021034003556449;
	setAttr ".wl[226].w[25]" 0.47229631636991487;
	setAttr -s 4 ".wl[227].w";
	setAttr ".wl[227].w[0]" 0.63202306636976313;
	setAttr ".wl[227].w[21:22]" 0.18966203104907176 -2.5990409695870036e-013;
	setAttr ".wl[227].w[25]" 0.17831490258040208;
	setAttr ".wl[228].w[2]"  1.0000000221949501;
	setAttr ".wl[229].w[2]"  1.0000000027712208;
	setAttr ".wl[230].w[2]"  1.0000000000010167;
	setAttr ".wl[231].w[2]"  1.0000000000007163;
	setAttr ".wl[232].w[2]"  1.0000000000074578;
	setAttr -s 3 ".wl[233].w";
	setAttr ".wl[233].w[0:1]" 0.56334468974695284 0.43665413874412035;
	setAttr ".wl[233].w[21]" 1.0746757702078816e-006;
	setAttr -s 3 ".wl[234].w";
	setAttr ".wl[234].w[0:1]" 0.3575173723777883 0.64248262759250641;
	setAttr ".wl[234].w[21]" 3.0191064262682191e-011;
	setAttr -s 4 ".wl[235].w";
	setAttr ".wl[235].w[0:1]" 0.38076703629693454 0.61815939661702834;
	setAttr ".wl[235].w[21]" 3.4312045704675781e-012;
	setAttr ".wl[235].w[25]" 0.0010735670830447895;
	setAttr -s 3 ".wl[236].w";
	setAttr ".wl[236].w[0:1]" 0.42311309166938782 0.57688691836469286;
	setAttr ".wl[236].w[21]" 3.1941020307669592e-011;
	setAttr -s 3 ".wl[237].w";
	setAttr ".wl[237].w[0:1]" 0.58858577165045511 0.41141291971480171;
	setAttr ".wl[237].w[21]" 1.3086344848026516e-006;
	setAttr -s 4 ".wl[238].w";
	setAttr ".wl[238].w[16:18]" 0.042461619351754909 0.9324563043240176 0.02035275784544649;
	setAttr ".wl[238].w[20]" 0.0047292960999886537;
	setAttr -s 4 ".wl[239].w";
	setAttr ".wl[239].w[16:18]" 0.17700994633766515 0.68164276228897758 0.14134730422228711;
	setAttr ".wl[239].w[20]" 2.542759643183479e-014;
	setAttr -s 4 ".wl[240].w";
	setAttr ".wl[240].w[16:18]" 0.22249865861542903 0.68268449180435409 0.094816878411308189;
	setAttr ".wl[240].w[20]" 2.401321901868657e-010;
	setAttr -s 4 ".wl[241].w";
	setAttr ".wl[241].w[16:18]" 0.063073709639051234 0.89475728216096961 0.029620599237174548;
	setAttr ".wl[241].w[20]" 0.012548375377173808;
	setAttr -s 4 ".wl[242].w";
	setAttr ".wl[242].w[16:18]" 0.024285369862756031 0.69629247935388605 0.0050693475514130186;
	setAttr ".wl[242].w[20]" 0.27435281443396559;
	setAttr -s 3 ".wl[243].w";
	setAttr ".wl[243].w[1:2]" 0.30954436989991363 0.69045559317758487;
	setAttr ".wl[243].w[9]" 8.1498033515082807e-011;
	setAttr -s 2 ".wl[244].w[1:2]"  0.38110368746488416 0.61889631253494137;
	setAttr -s 3 ".wl[245].w[1:3]"  0.4315671708252265 0.56827427339636294 
		0.00015861367575150997;
	setAttr -s 3 ".wl[246].w[1:3]"  0.18332694286247711 0.81274207014283006 
		0.0039309364724764168;
	setAttr -s 3 ".wl[247].w[1:3]"  0.017700161452205224 0.98198739955810532 
		0.00031241740315643548;
	setAttr -s 5 ".wl[248].w";
	setAttr ".wl[248].w[0:2]" 1.5362643303848836e-005 0.031983660585307182 
		4.3047110532474662e-005;
	setAttr ".wl[248].w[15:16]" 0.96127697878580864 0.0066809436209181545;
	setAttr -s 5 ".wl[249].w";
	setAttr ".wl[249].w[0:2]" 4.474951040746775e-005 0.032221244661915061 
		1.2600492699914856e-005;
	setAttr ".wl[249].w[15:16]" 0.96102226463588125 0.0066991507240017701;
	setAttr -s 5 ".wl[250].w";
	setAttr ".wl[250].w[0:2]" 3.8043390264588673e-005 0.025722441444471528 
		1.2339663846642612e-009;
	setAttr ".wl[250].w[15:16]" 0.96978014818240532 0.0044593465521875764;
	setAttr -s 5 ".wl[251].w";
	setAttr ".wl[251].w[0:2]" 5.7153090979916295e-005 0.032783312552451226 
		9.3644520604662432e-009;
	setAttr ".wl[251].w[15:16]" 0.95920343299891841 0.0079561215081204936;
	setAttr -s 5 ".wl[252].w";
	setAttr ".wl[252].w[0:2]" 1.1077942661144131e-007 0.029645518250791467 
		5.254296310162868e-005;
	setAttr ".wl[252].w[15:16]" 0.96316973800944483 0.0071320419534051981;
	setAttr -s 5 ".wl[253].w";
	setAttr ".wl[253].w[0:2]" 2.7338942486078306e-008 0.028521521449381956 
		3.0851689819737573e-005;
	setAttr ".wl[253].w[15:16]" 0.96849745352229599 0.0029501227237715157;
	setAttr -s 4 ".wl[254].w";
	setAttr ".wl[254].w[1]" 5.8923175876834361e-013;
	setAttr ".wl[254].w[15:17]" 1.2477663570912092e-005 0.9999874933480164 1.6761225407463282e-009;
	setAttr -s 4 ".wl[255].w";
	setAttr ".wl[255].w[1]" 1.6178426632282972e-012;
	setAttr ".wl[255].w[15:17]" 2.1577465792775797e-005 0.9999784039225128 4.6614512374173556e-009;
	setAttr -s 4 ".wl[256].w";
	setAttr ".wl[256].w[1]" 4.536004076871009e-012;
	setAttr ".wl[256].w[15:17]" 6.049752242858512e-005 0.99993945751403868 1.3069479682819325e-008;
	setAttr -s 4 ".wl[257].w";
	setAttr ".wl[257].w[1]" 7.8523279480449331e-012;
	setAttr ".wl[257].w[15:17]" 6.149177072814832e-005 0.99993850115244565 2.5161639563401925e-008;
	setAttr -s 4 ".wl[258].w";
	setAttr ".wl[258].w[1]" 7.8085892260539419e-012;
	setAttr ".wl[258].w[15:17]" 6.1479871991354935e-005 0.99993848265887697 
		2.7875503611183622e-008;
	setAttr -s 4 ".wl[259].w";
	setAttr ".wl[259].w[1]" 2.9430646444209007e-012;
	setAttr ".wl[259].w[15:17]" 6.2322795664120829e-005 0.99993766883124957 
		8.3718111184275655e-009;
	setAttr -s 3 ".wl[260].w";
	setAttr ".wl[260].w[0]" 0.40673643518342678;
	setAttr ".wl[260].w[21]" 0.30771360583338175;
	setAttr ".wl[260].w[25]" 0.28554999601589565;
	setAttr -s 3 ".wl[261].w";
	setAttr ".wl[261].w[0]" 0.47568208938915768;
	setAttr ".wl[261].w[21]" 0.049321581516781461;
	setAttr ".wl[261].w[25]" 0.47499630546497823;
	setAttr -s 5 ".wl[262].w";
	setAttr ".wl[262].w[0:1]" 0.49396843653429789 1.75584444482443e-008;
	setAttr ".wl[262].w[21]" 0.0082196524186546344;
	setAttr ".wl[262].w[25:26]" 0.49767830430708626 0.00013350264254924108;
	setAttr -s 4 ".wl[263].w";
	setAttr ".wl[263].w[0]" 0.46976044344261514;
	setAttr ".wl[263].w[21:22]" 0.030962786029500724 1.7373807658803867e-011;
	setAttr ".wl[263].w[25]" 0.49927675873100358;
	setAttr -s 4 ".wl[264].w";
	setAttr ".wl[264].w[0]" 0.45517761366419746;
	setAttr ".wl[264].w[21:22]" 0.28281992526454636 9.252556055089812e-007;
	setAttr ".wl[264].w[25]" 0.26200153581928864;
	setAttr ".wl[265].w[2]"  0.99999999255022043;
	setAttr ".wl[266].w[2]"  0.99999996994316864;
	setAttr ".wl[267].w[2]"  1.0000000499689574;
	setAttr ".wl[268].w[2]"  0.99999999266398942;
	setAttr ".wl[269].w[2]"  1.0000000675386422;
	setAttr ".wl[270].w[2]"  1.0000000000002292;
	setAttr ".wl[271].w[2]"  1.0000000146891259;
	setAttr -s 3 ".wl[272].w[22:24]"  0.072754864944690925 0.4636225886260219 
		0.46362258718028487;
	setAttr -s 3 ".wl[273].w[22:24]"  0.076603757636659553 0.46169815802037134 
		0.4616981567914471;
	setAttr -s 3 ".wl[274].w[22:24]"  1.3874107811379564e-005 0.49999307402469861 
		0.49999307402469861;
	setAttr -s 3 ".wl[275].w[22:24]"  1.6889967642346581e-005 0.49999155501744857 
		0.49999155501744841;
	setAttr ".wl[276].w[2]"  1.0000001159367065;
	setAttr -s 2 ".wl[277].w[2:3]"  0.054901957511901855 0.94509804248809803;
	setAttr ".wl[278].w[2]"  1.0000000222789822;
	setAttr ".wl[279].w[2]"  0.9999999412133902;
	setAttr ".wl[280].w[2]"  0.99999997870546065;
	setAttr ".wl[281].w[2]"  1.0000000050636662;
	setAttr -s 2 ".wl[282].w[2:3]"  0.73671555324206806 0.26328443053816142;
	setAttr -s 3 ".wl[283].w";
	setAttr ".wl[283].w[1:2]" 0.38966463448663058 0.61033531010341024;
	setAttr ".wl[283].w[9]" 2.2168132545987857e-010;
	setAttr ".wl[284].w[2]"  1.0000000799533264;
	setAttr -s 3 ".wl[285].w[1:3]"  0.20256784512412371 0.79306136668842975 
		0.0043707291169167066;
	setAttr ".wl[286].w[2]"  0.99999995872386116;
	setAttr -s 2 ".wl[287].w[1:2]"  0.44017617190364405 0.55982382809617592;
	setAttr -s 4 ".wl[288].w";
	setAttr ".wl[288].w[0:2]" 3.0844485063375171e-008 0.96333786524810638 
		0.00075376423366706712;
	setAttr ".wl[288].w[9]" 0.035908358493005894;
	setAttr -s 3 ".wl[289].w";
	setAttr ".wl[289].w[1:2]" 0.62002278379457187 0.37993304515116;
	setAttr ".wl[289].w[9]" 4.4147533462452221e-005;
	setAttr -s 3 ".wl[290].w";
	setAttr ".wl[290].w[1:2]" 0.69619351660928741 0.30380410753551335;
	setAttr ".wl[290].w[9]" 2.3758551988611448e-006;
	setAttr -s 4 ".wl[291].w";
	setAttr ".wl[291].w[0:2]" 4.2633374204417507e-008 0.97818999438683407 
		0.00065521782520224143;
	setAttr ".wl[291].w[9]" 0.021154745154589292;
	setAttr -s 3 ".wl[292].w";
	setAttr ".wl[292].w[1:2]" 0.66253790003575208 0.33741686088271244;
	setAttr ".wl[292].w[9]" 4.5239081535385423e-005;
	setAttr -s 3 ".wl[293].w";
	setAttr ".wl[293].w[1:2]" 0.66236175090741367 0.038534031226622273;
	setAttr ".wl[293].w[9]" 0.2991042207792744;
	setAttr ".wl[294].w[2]"  1.0000000486850416;
	setAttr ".wl[295].w[2]"  1.0000000332177907;
	setAttr ".wl[296].w[2]"  1.0000000085276035;
	setAttr ".wl[297].w[2]"  1.000000000002139;
	setAttr ".wl[298].w[2]"  0.99999999999947298;
	setAttr ".wl[299].w[2]"  0.99999994522261759;
	setAttr ".wl[300].w[2]"  1.0000000000013241;
	setAttr ".wl[301].w[2]"  0.99999999999913436;
	setAttr ".wl[302].w[2]"  1.000000000000042;
	setAttr ".wl[303].w[2]"  0.99999997835448373;
	setAttr ".wl[304].w[2]"  1.0000000211980391;
	setAttr ".wl[305].w[2]"  0.99999999997772815;
	setAttr ".wl[306].w[2]"  1.0000000003051526;
	setAttr ".wl[307].w[2]"  0.9999999800392082;
	setAttr ".wl[308].w[2]"  0.99999999996653843;
	setAttr ".wl[309].w[2]"  0.999999999999724;
	setAttr -s 3 ".wl[310].w[22:24]"  0.084814651869269078 0.45762022824845811 
		0.45756506296976002;
	setAttr -s 3 ".wl[311].w[22:24]"  0.24221157277047253 0.39883566668668008 
		0.35895278038393719;
	setAttr -s 3 ".wl[312].w[22:24]"  0.26841190095588424 0.38849588247290345 
		0.34309219434497601;
	setAttr -s 3 ".wl[313].w[22:24]"  1.0270501066369963e-005 0.4999948816197603 
		0.49999487994889952;
	setAttr ".wl[314].w[2]"  1.0000000464529912;
	setAttr ".wl[315].w[2]"  1.0000000000001672;
	setAttr ".wl[316].w[2]"  1.000000000000012;
	setAttr ".wl[317].w[2]"  1.0000000000000215;
	setAttr ".wl[318].w[2]"  0.99999999087279468;
	setAttr ".wl[319].w[2]"  0.99999999999925493;
	setAttr ".wl[320].w[2]"  1.0000000223908754;
	setAttr ".wl[321].w[2]"  1.0000000660084754;
	setAttr -s 2 ".wl[322].w[2:3]"  0.4939650516514173 0.50603495277236499;
	setAttr -s 2 ".wl[323].w[2:3]"  0.99999840689677522 1.5980662034853748e-006;
	setAttr -s 2 ".wl[324].w[2:3]"  0.99999998926527611 2.2018527471039012e-010;
	setAttr ".wl[325].w[2]"  1.0000000486850416;
	setAttr ".wl[326].w[2]"  0.99999999999187716;
	setAttr ".wl[327].w[13]"  0.99999998434213921;
	setAttr ".wl[328].w[13]"  0.99999999813917373;
	setAttr ".wl[329].w[13]"  1.0000000278178047;
	setAttr ".wl[330].w[13]"  1.0000000000145519;
	setAttr -s 4 ".wl[331].w";
	setAttr ".wl[331].w[0:2]" 0.016172928460106834 0.98381756146884236 5.2861315022662696e-009;
	setAttr ".wl[331].w[9]" 9.4997645084392006e-006;
	setAttr ".wl[332].w[13]"  1;
	setAttr ".wl[333].w[13]"  1.0000000021682354;
	setAttr -s 4 ".wl[334].w";
	setAttr ".wl[334].w[0:2]" 0.0017188026815982823 0.99826346360789042 2.0823069811436645e-008;
	setAttr ".wl[334].w[9]" 1.7712887441490319e-005;
	setAttr -s 2 ".wl[335].w[0:1]"  0.34904204717567794 0.65095793272963798;
	setAttr -s 4 ".wl[336].w";
	setAttr ".wl[336].w[0:2]" 0.054886847132031229 0.94510754905299788 2.9031773129594077e-010;
	setAttr ".wl[336].w[9]" 5.5911068672598877e-006;
	setAttr -s 2 ".wl[337].w[0:1]"  0.3775142118185828 0.62248584920127559;
	setAttr -s 2 ".wl[338].w[0:1]"  0.41811565280315255 0.58188432873022322;
	setAttr -s 5 ".wl[339].w";
	setAttr ".wl[339].w[0:2]" -1.2789829278054597e-012 0.52009827331905589 
		0.00051399628229409323;
	setAttr ".wl[339].w[9:10]" 0.47938770495803057 2.8534976259984219e-008;
	setAttr -s 5 ".wl[340].w";
	setAttr ".wl[340].w[0:2]" 3.559272738464127e-008 0.61591457467903032 0.0014693200450158193;
	setAttr ".wl[340].w[9:10]" 0.38261600247126881 6.7208319878913237e-008;
	setAttr -s 5 ".wl[341].w";
	setAttr ".wl[341].w[0:2]" 0.00063713658570359907 0.85799339924541074 7.8598376522511136e-005;
	setAttr ".wl[341].w[9:10]" 0.14129081830175205 4.7490610933743935e-008;
	setAttr -s 5 ".wl[342].w";
	setAttr ".wl[342].w[0:2]" 0.00024026837891352051 0.8852917395865828 6.7175884374792492e-010;
	setAttr ".wl[342].w[9:10]" 0.1144679379069509 4.5541370942132866e-008;
	setAttr -s 5 ".wl[343].w";
	setAttr ".wl[343].w[0:2]" 3.3614690195428144e-008 0.63109767742996548 
		0.0015614709478858288;
	setAttr ".wl[343].w[9:10]" 0.36734075536044641 5.3883121107868986e-008;
	setAttr -s 5 ".wl[344].w";
	setAttr ".wl[344].w[0:2]" 0.00054702079087272273 0.85451109358273036 0.00017010208736032741;
	setAttr ".wl[344].w[9:10]" 0.14477172682957923 3.3172644161156099e-008;
	setAttr -s 4 ".wl[345].w";
	setAttr ".wl[345].w[1:2]" 0.32498192608874649 0.00028751902819459225;
	setAttr ".wl[345].w[9:10]" 0.67463310016389544 9.7459977861752905e-005;
	setAttr -s 5 ".wl[346].w";
	setAttr ".wl[346].w[0:2]" 1.1627953833352732e-010 0.36521695374630503 
		0.00067541259715566944;
	setAttr ".wl[346].w[9:10]" 0.63381228930218558 0.00029535247809605263;
	setAttr -s 6 ".wl[347].w";
	setAttr ".wl[347].w[0:2]" 0.00085288701404693124 0.4162654489000423 7.4511806015255602e-005;
	setAttr ".wl[347].w[9:11]" 0.58255391770895038 0.00025323456558508335 3.5411219270236659e-012;
	setAttr -s 5 ".wl[348].w";
	setAttr ".wl[348].w[0:1]" 0.00066011265535233265 0.40112066699017856;
	setAttr ".wl[348].w[9:11]" 0.59804259311502561 0.00017662721616218291 2.2371723302539799e-011;
	setAttr -s 5 ".wl[349].w";
	setAttr ".wl[349].w[0:2]" 3.1334592311940855e-006 0.38813572922531209 
		0.00077313355350100855;
	setAttr ".wl[349].w[9:10]" 0.6108392112928962 0.00024879760224786755;
	setAttr -s 5 ".wl[350].w";
	setAttr ".wl[350].w[0:2]" 0.00078173570773229636 0.4134830022875895 0.00014842218321886922;
	setAttr ".wl[350].w[9:10]" 0.58541757813445938 0.00016929410502922122;
	setAttr -s 4 ".wl[351].w";
	setAttr ".wl[351].w[0:1]" 0.73237431547958731 0.12171937806977716;
	setAttr ".wl[351].w[21]" 0.14590484517481622;
	setAttr ".wl[351].w[25]" 1.4612830953754703e-006;
	setAttr -s 4 ".wl[352].w";
	setAttr ".wl[352].w[0:1]" 0.70923692749217282 0.11338267946333104;
	setAttr ".wl[352].w[21]" 0.17737956914280939;
	setAttr ".wl[352].w[25]" 8.2390030036278134e-007;
	setAttr -s 4 ".wl[353].w";
	setAttr ".wl[353].w[0]" 0.49308933077217487;
	setAttr ".wl[353].w[21:22]" 0.49308934741555355 1.7752886805832091e-012;
	setAttr ".wl[353].w[25]" 0.013821265308218512;
	setAttr -s 4 ".wl[354].w";
	setAttr ".wl[354].w[0]" 0.48367115664516785;
	setAttr ".wl[354].w[21:22]" 0.48367117190218861 1.6274063262805955e-012;
	setAttr ".wl[354].w[25]" 0.032657671452971;
	setAttr -s 4 ".wl[355].w";
	setAttr ".wl[355].w[0:1]" 0.69176627085058928 0.13550591393656905;
	setAttr ".wl[355].w[21]" 0.17272690979822442;
	setAttr ".wl[355].w[25]" 9.8261604979645895e-007;
	setAttr -s 3 ".wl[356].w";
	setAttr ".wl[356].w[0]" 0.47071825234226056;
	setAttr ".wl[356].w[21]" 0.47071838074812344;
	setAttr ".wl[356].w[25]" 0.058563405857846813;
	setAttr -s 4 ".wl[357].w";
	setAttr ".wl[357].w[0]" 0.25483488208130567;
	setAttr ".wl[357].w[21:22]" 0.70542724038128557 0.039731649025642551;
	setAttr ".wl[357].w[25]" 6.2285048889877536e-006;
	setAttr -s 4 ".wl[358].w";
	setAttr ".wl[358].w[0]" 0.3177426023025462;
	setAttr ".wl[358].w[21:22]" 0.66758502777381701 0.014668848858258091;
	setAttr ".wl[358].w[25]" 3.5390277058674955e-006;
	setAttr -s 4 ".wl[359].w";
	setAttr ".wl[359].w[0]" 0.34821695682848741;
	setAttr ".wl[359].w[21:22]" 0.64869095041562941 7.297116173614603e-006;
	setAttr ".wl[359].w[25]" 0.003084858101588974;
	setAttr -s 4 ".wl[360].w";
	setAttr ".wl[360].w[0]" 0.30109756203577637;
	setAttr ".wl[360].w[21:22]" 0.69294876755674784 1.1888233358476928e-005;
	setAttr ".wl[360].w[25]" 0.0059417918654323231;
	setAttr -s 4 ".wl[361].w";
	setAttr ".wl[361].w[0]" 0.2847299092267756;
	setAttr ".wl[361].w[21:22]" 0.70129567052615827 2.3875688431557439e-006;
	setAttr ".wl[361].w[25]" 0.013972011856976748;
	setAttr -s 4 ".wl[362].w";
	setAttr ".wl[362].w[0]" 0.67017863811881262;
	setAttr ".wl[362].w[21:22]" 0.32561242650995298 -2.8849053039359638e-012;
	setAttr ".wl[362].w[25]" 0.0042089353659276862;
	setAttr -s 4 ".wl[363].w";
	setAttr ".wl[363].w[0]" 0.33324157020340234;
	setAttr ".wl[363].w[21:22]" 0.63230314764706175 7.0629806577621654e-012;
	setAttr ".wl[363].w[25]" 0.034455228548856631;
	setAttr -s 4 ".wl[364].w";
	setAttr ".wl[364].w[0]" 0.37777717890149431;
	setAttr ".wl[364].w[21:22]" 0.61098361837391391 3.0435047576704922e-006;
	setAttr ".wl[364].w[25]" 0.011236180023320117;
	setAttr -s 4 ".wl[365].w";
	setAttr ".wl[365].w[0]" 0.39917147610009057;
	setAttr ".wl[365].w[21:22]" 0.58227359138122681 1.468889745242682e-010;
	setAttr ".wl[365].w[25]" 0.018554926944008256;
	setAttr -s 4 ".wl[366].w";
	setAttr ".wl[366].w[0]" 0.14345682525798101;
	setAttr ".wl[366].w[21:22]" 0.85353836839338837 1.774366912719793e-010;
	setAttr ".wl[366].w[25]" 0.0030047907262372121;
	setAttr -s 4 ".wl[367].w";
	setAttr ".wl[367].w[0]" 0.1502504994270438;
	setAttr ".wl[367].w[21:22]" 0.84338952599394079 8.4836903498274799e-011;
	setAttr ".wl[367].w[25]" 0.0063599744933980915;
	setAttr -s 4 ".wl[368].w";
	setAttr ".wl[368].w[0]" 0.16934387160638145;
	setAttr ".wl[368].w[21:22]" 0.81563769772177985 2.2827398770874025e-011;
	setAttr ".wl[368].w[25]" 0.015018430648812003;
	setAttr -s 4 ".wl[369].w";
	setAttr ".wl[369].w[0]" 0.13453161154855603;
	setAttr ".wl[369].w[21:22]" 0.85402949393332539 -1.6407110603674778e-008;
	setAttr ".wl[369].w[25]" 0.011438910925795459;
	setAttr -s 4 ".wl[370].w";
	setAttr ".wl[370].w[0]" 0.19366317232586935;
	setAttr ".wl[370].w[21:22]" 0.79636653355871023 6.2846814643559096e-011;
	setAttr ".wl[370].w[25]" 0.0099702360022912734;
	setAttr -s 3 ".wl[371].w";
	setAttr ".wl[371].w[0]" 0.19274408783008876;
	setAttr ".wl[371].w[21]" 0.7905832629555557;
	setAttr ".wl[371].w[25]" 0.016672612483960514;
	setAttr -s 3 ".wl[372].w[22:24]"  0.35106454817519595 0.49126611211288751 
		0.15766933971347497;
	setAttr -s 3 ".wl[373].w[22:24]"  0.32612664391439566 0.47030816901307027 
		0.20356518707263069;
	setAttr -s 3 ".wl[374].w[22:24]"  0.49609179137869863 0.50390826222524643 
		1.1730782136597115e-011;
	setAttr -s 3 ".wl[375].w[22:24]"  0.49999537337546601 0.49999566402322643 
		8.8954054481644953e-006;
	setAttr -s 3 ".wl[376].w[22:24]"  0.47945887191249975 0.47946334412165659 
		0.041077711343026853;
	setAttr -s 3 ".wl[377].w[22:24]"  0.47211214274013902 0.48142286729260397 
		0.046465058562633957;
	setAttr -s 2 ".wl[378].w[21:22]"  0.53383168679425408 0.46616831493287542;
	setAttr -s 3 ".wl[379].w";
	setAttr ".wl[379].w[0]" 1.9564169017849789e-011;
	setAttr ".wl[379].w[21:22]" 0.54103610900275911 0.45896389097530038;
	setAttr -s 2 ".wl[380].w[21:22]"  0.49303365078600941 0.5069663492112696;
	setAttr -s 2 ".wl[381].w[21:22]"  0.43957642962543197 0.5604235703727658;
	setAttr ".wl[382].w[21]"  1.0000000329141585;
	setAttr -s 3 ".wl[383].w[21:23]"  0.45152463044707813 0.54847528045855209 
		4.3384267427334145e-013;
	setAttr -s 3 ".wl[384].w";
	setAttr ".wl[384].w[0]" 2.3704333855163239e-012;
	setAttr ".wl[384].w[21:22]" 0.99992569688876876 7.4300906432435854e-005;
	setAttr -s 3 ".wl[385].w[21:23]"  0.44277662757778902 0.55722340520398128 
		1.2168004978597432e-012;
	setAttr -s 4 ".wl[386].w";
	setAttr ".wl[386].w[0]" 3.1601944077859443e-008;
	setAttr ".wl[386].w[21:22]" 0.53350084152192445 0.4664991339923556;
	setAttr ".wl[386].w[25]" 3.9443050315274124e-014;
	setAttr -s 2 ".wl[387].w[21:22]"  0.42990564709710066 0.57009442920200248;
	setAttr -s 4 ".wl[388].w";
	setAttr ".wl[388].w[0]" 1.2179979113883243e-007;
	setAttr ".wl[388].w[21:22]" 0.56188594654216484 0.43811391497715774;
	setAttr ".wl[388].w[25]" 1.5202805717982081e-013;
	setAttr -s 3 ".wl[389].w";
	setAttr ".wl[389].w[0]" 7.1181908724049336e-013;
	setAttr ".wl[389].w[21:22]" 0.48525413546982127 0.51474584441571258;
	setAttr -s 4 ".wl[390].w[21:24]"  0.078455031252041715 0.92153494849302187 
		8.4267433946572271e-006 1.5935167673552154e-006;
	setAttr -s 4 ".wl[391].w[21:24]"  0.052271134117797047 0.92316585011424668 
		0.02455319940393377 9.8163625988017402e-006;
	setAttr -s 4 ".wl[392].w[21:24]"  1.3294612247625119e-005 0.71199683688405313 
		0.2139785605022804 0.074011265062567999;
	setAttr -s 4 ".wl[393].w[21:24]"  2.8674227035841467e-006 0.73791993747635365 
		0.26206694540537828 1.0249694078218476e-005;
	setAttr -s 3 ".wl[394].w[21:23]"  8.7350352396800385e-006 0.97371440096943107 
		0.026276852970510505;
	setAttr -s 3 ".wl[395].w[22:24]"  0.97076578296230021 0.02923420596317873 
		7.6093689491953797e-009;
	setAttr -s 4 ".wl[396].w[21:24]"  8.5684995787555679e-006 0.90990152037040539 
		0.090089206817833764 6.909073191460865e-007;
	setAttr -s 4 ".wl[397].w[21:24]"  6.9696132830885185e-010 0.61573441350254277 
		0.38425929876967457 6.3369041095841307e-006;
	setAttr -s 4 ".wl[398].w[21:24]"  0.050594080239131568 0.88471451488935726 
		0.064686843867939631 4.6081987084079194e-006;
	setAttr -s 4 ".wl[399].w[21:24]"  1.6907975281574781e-005 0.61261635489380772 
		0.34392067584300562 0.043446133938205629;
	setAttr -s 4 ".wl[400].w[21:24]"  0.025008027850441397 0.94956225510064429 
		0.025424584862847672 5.1321881549646424e-006;
	setAttr -s 4 ".wl[401].w[21:24]"  1.4521115156079942e-005 0.70872395745723593 
		0.25595013969662911 0.035311330893897687;
	setAttr -s 4 ".wl[402].w[21:24]"  1.4481143057546035e-006 0.94179255758554659 
		0.058201574668991216 4.4252691232709012e-006;
	setAttr -s 4 ".wl[403].w[21:24]"  0.011689367327252226 0.94943724944278274 
		0.038840187247118206 3.3195976978657286e-005;
	setAttr -s 4 ".wl[404].w[21:24]"  6.7364302991350703e-008 0.49519158373852207 
		0.40691627667531161 0.097892070288378236;
	setAttr -s 4 ".wl[405].w[21:24]"  3.3618411103853362e-012 0.46250129021721442 
		0.40541103082353958 0.13208767895033108;
	setAttr -s 3 ".wl[406].w[22:24]"  0.9541131095965486 0.045871122328691109 
		1.5821802598444373e-005;
	setAttr -s 3 ".wl[407].w[22:24]"  0.5118513969008297 0.4881485971485941 
		2.0744652206519451e-011;
	setAttr -s 4 ".wl[408].w[21:24]"  2.1294212369143271e-010 0.87368322738806381 
		0.12631458274868518 2.1896496838000388e-006;
	setAttr -s 3 ".wl[409].w[22:24]"  0.50103352960177916 0.49896052837781607 
		5.9233353778442509e-006;
	setAttr -s 4 ".wl[410].w[21:24]"  2.0781260354692934e-009 0.90391710426369276 
		0.096061982648270122 2.0968253098939237e-005;
	setAttr -s 3 ".wl[411].w[22:24]"  0.48782856257517165 0.48424499885650441 
		0.027926378263220697;
	setAttr -s 4 ".wl[412].w[21:24]"  0.0052309320484071964 0.95577117228692721 
		0.038972352445691395 2.5543209781440472e-005;
	setAttr -s 3 ".wl[413].w[22:24]"  0.50006447199075166 0.47344838638986791 
		0.026487141619139613;
	setAttr -s 4 ".wl[414].w[21:24]"  0.026986860542742675 0.97300970402729947 
		3.4351765399968424e-006 2.534180672869262e-010;
	setAttr -s 4 ".wl[415].w[21:24]"  0.016610103217810989 0.97870573893796942 
		0.0046841569741367921 8.700825641674937e-010;
	setAttr -s 2 ".wl[416].w[21:22]"  0.016279303489639605 0.98372072662131294;
	setAttr -s 4 ".wl[417].w[21:24]"  0.042696842845332789 0.95729336236002949 
		9.8932714453054319e-006 9.1526807740761207e-011;
	setAttr -s 4 ".wl[418].w[21:24]"  0.030768194998417639 0.94719516486724309 
		0.022036639607915479 5.292016892162297e-010;
	setAttr -s 4 ".wl[419].w[21:24]"  0.015220346382587496 0.97618639210436875 
		0.0085932607461070201 7.6329964279663591e-010;
	setAttr ".wl[420].w[2]"  0.99999997096046589;
	setAttr ".wl[421].w[2]"  1.0000000110352587;
	setAttr ".wl[422].w[2]"  1.000000011560529;
	setAttr ".wl[423].w[2]"  1.0000000110409213;
	setAttr ".wl[424].w[2]"  0.99999997551028785;
	setAttr ".wl[425].w[2]"  1.0000000110352587;
	setAttr ".wl[426].w[2]"  1.0000000000004086;
	setAttr ".wl[427].w[13]"  1;
	setAttr ".wl[428].w[13]"  1.0000000011598331;
	setAttr ".wl[429].w[14]"  1;
	setAttr ".wl[430].w[14]"  1.0000000204017852;
	setAttr ".wl[431].w[14]"  1.0000000095897119;
	setAttr ".wl[432].w[14]"  1.000000028667273;
	setAttr -s 3 ".wl[433].w[11:13]"  0.49024925927457935 0.45608611460631504 
		0.053664629313048877;
	setAttr -s 3 ".wl[434].w[11:13]"  0.48376216778664494 0.45841667146959142 
		0.057821124272871206;
	setAttr -s 4 ".wl[435].w[11:14]"  0.99996262663002833 1.7101443290470403e-006 
		3.6300195353383303e-012 3.5663222150360113e-005;
	setAttr -s 4 ".wl[436].w[11:14]"  0.99996788061931796 2.578530094629728e-006 
		7.85240756997782e-012 2.951741972752051e-005;
	setAttr -s 3 ".wl[437].w";
	setAttr ".wl[437].w[11:12]" 0.66871261800573767 0.0085995490639603298;
	setAttr ".wl[437].w[14]" 0.32268783294485232;
	setAttr -s 3 ".wl[438].w";
	setAttr ".wl[438].w[11:12]" 0.68645948510317756 0.0057080835874714223;
	setAttr ".wl[438].w[14]" 0.30783249725755091;
	setAttr -s 3 ".wl[439].w";
	setAttr ".wl[439].w[11:12]" 0.48965220855103198 0.020695582897935924;
	setAttr ".wl[439].w[14]" 0.48965220855103198;
	setAttr -s 3 ".wl[440].w";
	setAttr ".wl[440].w[11:12]" 0.48025570213773822 0.039488595724523574;
	setAttr ".wl[440].w[14]" 0.48025570213773816;
	setAttr ".wl[441].w[14]"  1;
	setAttr ".wl[442].w[14]"  0.99999994975223683;
	setAttr ".wl[443].w[14]"  0.99999999998544797;
	setAttr ".wl[444].w[14]"  0.99999999577994469;
	setAttr ".wl[445].w[10]"  0.99999997535815055;
	setAttr ".wl[446].w[10]"  0.99999998522616795;
	setAttr -s 2 ".wl[447].w[10:11]"  0.99999501117708867 5.0154092605225723e-006;
	setAttr -s 2 ".wl[448].w[10:11]"  0.99999491572380061 5.0842761993408193e-006;
	setAttr -s 3 ".wl[449].w[9:11]"  0.45861493489995375 0.54127826816261959 
		0.00010679693697214856;
	setAttr -s 2 ".wl[450].w[10:11]"  0.99999487039422097 5.1296057790750622e-006;
	setAttr -s 3 ".wl[451].w[9:11]"  0.48151662369078729 0.51819404908581446 
		0.00028933663417015954;
	setAttr -s 2 ".wl[452].w[10:11]"  0.99999493628547509 5.079938091512303e-006;
	setAttr -s 3 ".wl[453].w[9:11]"  0.48360061385542047 0.51610485473798839 
		0.00029453140507535472;
	setAttr -s 2 ".wl[454].w[10:11]"  0.99999499320983887 5.0067901611328117e-006;
	setAttr -s 3 ".wl[455].w[9:11]"  0.47592022924266603 0.52401412579972872 
		6.5599342808055739e-005;
	setAttr -s 2 ".wl[456].w[10:11]"  0.99999499255209234 5.0062182708643362e-006;
	setAttr -s 2 ".wl[457].w[9:10]"  0.9996882677078246 0.00031170703368843533;
	setAttr -s 2 ".wl[458].w[9:10]"  0.99969650223283679 0.00030351872555911541;
	setAttr -s 3 ".wl[459].w[9:11]"  0.61491372958774204 0.38499444366044122 
		9.1799129732083494e-005;
	setAttr -s 3 ".wl[460].w[9:11]"  0.58408783157087507 0.41567081925828686 
		0.00024134919763299349;
	setAttr -s 3 ".wl[461].w[9:11]"  0.59027603980198362 0.40947442673078177 
		0.0002495334854207995;
	setAttr -s 3 ".wl[462].w[9:11]"  0.69111848542164067 0.30881673643310642 
		6.4778116153925178e-005;
	setAttr -s 2 ".wl[463].w[10:11]"  0.89969614698966316 0.10030384508318092;
	setAttr -s 2 ".wl[464].w[10:11]"  0.89969367316343773 0.10030629302245868;
	setAttr -s 5 ".wl[465].w[10:14]"  4.2972711434704161e-007 0.99999086320768882 
		6.3017085064810786e-006 4.949871993641908e-011 2.4053042349808269e-006;
	setAttr -s 5 ".wl[466].w[10:14]"  3.9008545251578984e-005 0.99993270352408747 
		2.8285221819182008e-005 2.6258165499058715e-009 8.3025165889029182e-011;
	setAttr -s 2 ".wl[467].w[10:11]"  0.89969746575279708 0.10030258191018215;
	setAttr -s 5 ".wl[468].w[10:14]"  2.5876325938898187e-005 0.99993710119558621 
		3.6986863647234526e-005 2.7224551534601133e-009 5.5692349953220568e-011;
	setAttr -s 2 ".wl[469].w[10:11]"  0.89969841241836546 0.10030157929795676;
	setAttr -s 5 ".wl[470].w[10:14]"  2.6962939833049007e-007 0.99999406193828355 
		4.777677858631779e-006 4.7505388147662764e-011 9.0763918956683547e-007;
	setAttr -s 2 ".wl[471].w[10:11]"  0.89969747369759723 0.1003025263024028;
	setAttr -s 2 ".wl[472].w[10:11]"  0.89969504627224517 0.10030495372775476;
	setAttr -s 5 ".wl[473].w";
	setAttr ".wl[473].w[0:2]" 3.0250887418660317e-006 0.0094771459649959748 
		7.2699855833698389e-006;
	setAttr ".wl[473].w[9:10]" 0.98344655303613404 0.0070660232772486418;
	setAttr -s 5 ".wl[474].w";
	setAttr ".wl[474].w[0:2]" 6.0628686949762641e-006 0.007756929319012275 
		1.4558400674083265e-006;
	setAttr ".wl[474].w[9:10]" 0.98515585686824514 0.0070796979743454431;
	setAttr -s 4 ".wl[475].w";
	setAttr ".wl[475].w[1]" 0.0026709624465651033;
	setAttr ".wl[475].w[9:11]" 0.99144524449635363 0.0058833443983125917 4.5438609301549551e-007;
	setAttr -s 5 ".wl[476].w";
	setAttr ".wl[476].w[0:1]" 6.4043532645544346e-006 0.0079475515018796149;
	setAttr ".wl[476].w[9:11]" 0.9836105381776904 0.0084354905113305685 1.5455779146937272e-008;
	setAttr -s 5 ".wl[477].w";
	setAttr ".wl[477].w[1:2]" 0.0076691242209286394 5.7132355415589162e-006;
	setAttr ".wl[477].w[9:11]" 0.98476915545619492 0.0075559931488874263 1.3938447991230871e-008;
	setAttr -s 5 ".wl[478].w";
	setAttr ".wl[478].w[1:2]" 0.0082467241369259085 6.9261017396885151e-006;
	setAttr ".wl[478].w[9:11]" 0.98862076334151228 0.003125583109611326 3.310210158177062e-009;
	setAttr -s 4 ".wl[479].w[11:14]"  0.97075233706358643 0.024257333099053084 
		2.1053123183723223e-007 0.0049900737341758089;
	setAttr -s 3 ".wl[480].w";
	setAttr ".wl[480].w[11:12]" 0.44461572255157178 0.55219968424366284;
	setAttr ".wl[480].w[14]" 0.0031845932047653604;
	setAttr -s 5 ".wl[481].w[10:14]"  0.11924416547693061 0.71017783251427324 
		0.1705523785216691 2.5107533693085583e-005 5.1334094119635218e-007;
	setAttr -s 5 ".wl[482].w[10:14]"  0.16052846839684221 0.72296268758202453 
		0.11648653627675912 2.16243598599226e-005 6.8338109441819787e-007;
	setAttr -s 4 ".wl[483].w[11:14]"  0.95107460375007413 0.034938981207005226 
		2.3935248750213871e-007 0.013986175681755966;
	setAttr -s 3 ".wl[484].w";
	setAttr ".wl[484].w[11:12]" 0.39439626896015662 0.5966825392572338;
	setAttr ".wl[484].w[14]" 0.0089211917826094844;
	setAttr -s 4 ".wl[485].w";
	setAttr ".wl[485].w[0:1]" 0.73141141516936381 0.15392858344275981;
	setAttr ".wl[485].w[21]" 0.11466000133763588;
	setAttr ".wl[485].w[25]" 5.1846620765697358e-011;
	setAttr -s 4 ".wl[486].w";
	setAttr ".wl[486].w[0:1]" 0.76429555816952677 0.12853646908795777;
	setAttr ".wl[486].w[21]" 0.10716797270583636;
	setAttr ".wl[486].w[25]" 3.5769812601542729e-011;
	setAttr -s 4 ".wl[487].w";
	setAttr ".wl[487].w[0:1]" 0.77452612406745824 0.13795231789364715;
	setAttr ".wl[487].w[21]" 0.087521557962091948;
	setAttr ".wl[487].w[25]" 7.6803242159146118e-011;
	setAttr -s 4 ".wl[488].w";
	setAttr ".wl[488].w[0]" 0.47865956762273865;
	setAttr ".wl[488].w[21:22]" 0.48220315668014602 5.9280200047865186e-012;
	setAttr ".wl[488].w[25]" 0.039137251155422402;
	setAttr -s 4 ".wl[489].w";
	setAttr ".wl[489].w[0]" 0.49586954566871938;
	setAttr ".wl[489].w[21:22]" 0.49631556557929818 1.8873868410518333e-007;
	setAttr ".wl[489].w[25]" 0.0078146389120145598;
	setAttr -s 4 ".wl[490].w";
	setAttr ".wl[490].w[0]" 0.47017799266589005;
	setAttr ".wl[490].w[21:22]" 0.5075538561783165 5.8490281145159322e-007;
	setAttr ".wl[490].w[25]" 0.022267566255552079;
	setAttr -s 4 ".wl[491].w";
	setAttr ".wl[491].w[0]" 2.5348765814348063e-006;
	setAttr ".wl[491].w[21]" 1.9688631120376897e-007;
	setAttr ".wl[491].w[25:26]" 0.97066921026540709 0.029328009246488068;
	setAttr -s 2 ".wl[492].w[25:26]"  0.98995210041144421 0.010047899587816858;
	setAttr -s 4 ".wl[493].w";
	setAttr ".wl[493].w[0]" 2.2382784266325832e-007;
	setAttr ".wl[493].w[21]" 1.9358784510460762e-008;
	setAttr ".wl[493].w[25:26]" 0.99999837092170862 1.3444179099891882e-006;
	setAttr ".wl[494].w[25]"  1;
	setAttr -s 3 ".wl[495].w";
	setAttr ".wl[495].w[0]" 0.0067456401740590682;
	setAttr ".wl[495].w[25:26]" 0.97494598528904908 0.018308374537119015;
	setAttr -s 4 ".wl[496].w";
	setAttr ".wl[496].w[0]" 0.0066605042158627966;
	setAttr ".wl[496].w[21]" 1.8253202954279898e-011;
	setAttr ".wl[496].w[25:26]" 0.97129273157628371 0.02204676418906187;
	setAttr -s 4 ".wl[497].w";
	setAttr ".wl[497].w[0]" 4.2697865213267471e-006;
	setAttr ".wl[497].w[21:22]" 0.96976039132801084 0.030235338859359105;
	setAttr ".wl[497].w[25]" 1.110842693648698e-011;
	setAttr -s 4 ".wl[498].w";
	setAttr ".wl[498].w[0]" 0.008003675270497947;
	setAttr ".wl[498].w[21:22]" 0.97212876119493685 0.019867480270439879;
	setAttr ".wl[498].w[25]" 8.3262281282640874e-008;
	setAttr -s 4 ".wl[499].w";
	setAttr ".wl[499].w[0]" 0.0063135117795805754;
	setAttr ".wl[499].w[21:22]" 0.97712340199517533 0.016563021777420243;
	setAttr ".wl[499].w[25]" 3.1515746205611359e-008;
	setAttr -s 4 ".wl[500].w";
	setAttr ".wl[500].w[0]" 1.7534194406227378e-006;
	setAttr ".wl[500].w[21:22]" 0.99999572479129772 2.4508572830105357e-006;
	setAttr ".wl[500].w[25]" 4.2184839281055976e-008;
	setAttr ".wl[501].w[21]"  0.99999998419102543;
	setAttr -s 3 ".wl[502].w";
	setAttr ".wl[502].w[0]" 1.7693947731598642e-011;
	setAttr ".wl[502].w[21:22]" 0.99005140568094674 0.0099485987269435205;
	setAttr -s 3 ".wl[503].w[25:27]"  0.083659340572233926 0.91634064502762402 
		5.6691891345045875e-012;
	setAttr -s 3 ".wl[504].w[25:27]"  0.0559560115362394 0.94404389692127133 
		9.1542477909456149e-008;
	setAttr -s 3 ".wl[505].w[25:27]"  0.11538674608385605 0.88461298884813211 
		2.9233249671642563e-007;
	setAttr -s 3 ".wl[506].w[25:27]"  0.094096971845526831 0.90579641350402773 
		0.00010661464075430926;
	setAttr -s 2 ".wl[507].w[25:26]"  0.047435544056580202 0.95256447282423595;
	setAttr -s 3 ".wl[508].w[25:27]"  0.052170542317929815 0.94779885820140719 
		3.057005799034673e-005;
	setAttr -s 2 ".wl[509].w[21:22]"  0.056232681068770163 0.94376734342334301;
	setAttr -s 3 ".wl[510].w[21:23]"  0.082294179817021293 0.91770582018971325 
		1.8513122190012581e-012;
	setAttr -s 3 ".wl[511].w[21:23]"  0.04779676999848792 0.95220323149785868 
		1.1965624918219034e-011;
	setAttr -s 3 ".wl[512].w[21:23]"  0.044934085158255331 0.9550656954944664 
		2.1934727822103001e-007;
	setAttr -s 3 ".wl[513].w[21:23]"  0.091075839640089654 0.90892371129980309 
		3.8655706665763478e-007;
	setAttr -s 3 ".wl[514].w[21:23]"  0.11878164894926194 0.88121835097945844 
		6.5465767526386206e-011;
	setAttr -s 2 ".wl[515].w[21:22]"  0.056230444929539783 0.94376956731657902;
	setAttr -s 2 ".wl[516].w[21:22]"  0.08230220992086261 0.91769779008334373;
	setAttr -s 2 ".wl[517].w[21:22]"  0.047792458101372157 0.95220754265259888;
	setAttr -s 3 ".wl[518].w[21:23]"  0.044934550112912232 0.95506534024761547 
		1.0963947232547409e-007;
	setAttr -s 3 ".wl[519].w[21:23]"  0.091083466524921691 0.90891630898922626 
		1.9323197616353251e-007;
	setAttr -s 2 ".wl[520].w[21:22]"  0.1187874758846562 0.8812125241153439;
	setAttr -s 3 ".wl[521].w";
	setAttr ".wl[521].w[1]" 0.0044437677770126967;
	setAttr ".wl[521].w[9:10]" 0.98838811704301888 0.0071681151799684777;
	setAttr -s 3 ".wl[522].w";
	setAttr ".wl[522].w[1]" 0.004323806196951047;
	setAttr ".wl[522].w[9:10]" 0.98854780137327924 0.0071283924297697856;
	setAttr -s 3 ".wl[523].w";
	setAttr ".wl[523].w[1]" 0.0020553431904718716;
	setAttr ".wl[523].w[9:10]" 0.9941713365480308 0.00377332026149732;
	setAttr -s 3 ".wl[524].w";
	setAttr ".wl[524].w[1]" 0.0053961998239479411;
	setAttr ".wl[524].w[9:10]" 0.98574975546058052 0.008854044715471656;
	setAttr -s 3 ".wl[525].w";
	setAttr ".wl[525].w[1]" 0.0050334743086041201;
	setAttr ".wl[525].w[9:10]" 0.98686765369767293 0.0080988719937229239;
	setAttr -s 3 ".wl[526].w";
	setAttr ".wl[526].w[1]" 0.0012426077175728227;
	setAttr ".wl[526].w[9:10]" 0.99690783082171741 0.0018495614607097134;
	setAttr -s 3 ".wl[527].w";
	setAttr ".wl[527].w[11:12]" 0.97096662115258559 0.024042556554122473;
	setAttr ".wl[527].w[14]" 0.0049908222932920415;
	setAttr -s 3 ".wl[528].w";
	setAttr ".wl[528].w[11:12]" 0.44461572255157178 0.55219968424366284;
	setAttr ".wl[528].w[14]" 0.0031845932047653604;
	setAttr -s 3 ".wl[529].w[10:12]"  0.11931241260170691 0.71025419353107322 
		0.1704333938672199;
	setAttr -s 3 ".wl[530].w[10:12]"  0.16059653937745194 0.72304123439384782 
		0.11636222622870032;
	setAttr -s 3 ".wl[531].w";
	setAttr ".wl[531].w[11:12]" 0.9512843250097972 0.034727550717929122;
	setAttr ".wl[531].w[14]" 0.013988124272273739;
	setAttr -s 3 ".wl[532].w";
	setAttr ".wl[532].w[11:12]" 0.39439626896015662 0.5966825392572338;
	setAttr ".wl[532].w[14]" 0.0089211917826094844;
	setAttr -s 3 ".wl[533].w";
	setAttr ".wl[533].w[0:1]" 0.73141809432326255 0.15393629819639842;
	setAttr ".wl[533].w[21]" 0.11464560748033913;
	setAttr -s 3 ".wl[534].w";
	setAttr ".wl[534].w[0:1]" 0.76430490933678052 0.12853903621057691;
	setAttr ".wl[534].w[21]" 0.10715605445264256;
	setAttr -s 3 ".wl[535].w";
	setAttr ".wl[535].w[0:1]" 0.77453654664528027 0.13795716776775244;
	setAttr ".wl[535].w[21]" 0.087506285586967311;
	setAttr -s 3 ".wl[536].w";
	setAttr ".wl[536].w[0]" 0.4786572586820742;
	setAttr ".wl[536].w[21]" 0.48220127631079374;
	setAttr ".wl[536].w[25]" 0.039141465007132024;
	setAttr -s 3 ".wl[537].w";
	setAttr ".wl[537].w[0]" 0.49587209323847303;
	setAttr ".wl[537].w[21]" 0.4963132936640966;
	setAttr ".wl[537].w[25]" 0.0078146130974303552;
	setAttr -s 3 ".wl[538].w";
	setAttr ".wl[538].w[0]" 0.47018197475455398;
	setAttr ".wl[538].w[21]" 0.50754839166320065;
	setAttr ".wl[538].w[25]" 0.02226963358224528;
	setAttr -s 2 ".wl[539].w[25:26]"  0.97066580909895939 0.029334190901040735;
	setAttr -s 2 ".wl[540].w[25:26]"  0.98995254611172268 0.010047453888277328;
	setAttr -s 2 ".wl[541].w[25:26]"  0.96731427177929885 0.032685728220701038;
	setAttr -s 3 ".wl[542].w";
	setAttr ".wl[542].w[0]" 0.012457626437456517;
	setAttr ".wl[542].w[25:26]" 0.95403757937189937 0.033504794190644109;
	setAttr -s 3 ".wl[543].w";
	setAttr ".wl[543].w[0]" 0.0067456852175244659;
	setAttr ".wl[543].w[25:26]" 0.97494882109232339 0.018305493690152119;
	setAttr -s 3 ".wl[544].w";
	setAttr ".wl[544].w[0]" 0.0066629866997992351;
	setAttr ".wl[544].w[25:26]" 0.97129372685197757 0.022043286448223239;
	setAttr -s 2 ".wl[545].w[21:22]"  0.96975867159951212 0.030241328400487814;
	setAttr -s 3 ".wl[546].w";
	setAttr ".wl[546].w[0]" 0.0080021916908321993;
	setAttr ".wl[546].w[21:22]" 0.97212932754525549 0.019868480763912386;
	setAttr -s 3 ".wl[547].w";
	setAttr ".wl[547].w[0]" 0.0063124526683797618;
	setAttr ".wl[547].w[21:22]" 0.97712439918764915 0.016563148143971088;
	setAttr -s 3 ".wl[548].w";
	setAttr ".wl[548].w[0]" 0.014586087050549208;
	setAttr ".wl[548].w[21:22]" 0.95182533524596802 0.033588577703482767;
	setAttr -s 2 ".wl[549].w[21:22]"  0.96702647335835412 0.03297352664164601;
	setAttr -s 2 ".wl[550].w[21:22]"  0.99005120235279931 0.0099487976472006547;
	setAttr -s 2 ".wl[551].w[25:26]"  0.083654663355194725 0.91634533664480533;
	setAttr -s 2 ".wl[552].w[25:26]"  0.055956778715643765 0.94404322128435636;
	setAttr -s 2 ".wl[553].w[25:26]"  0.11540776850412936 0.88459223149587074;
	setAttr -s 3 ".wl[554].w[25:27]"  0.094088304965843722 0.90580504567340114 
		0.0001066493607551974;
	setAttr -s 2 ".wl[555].w[25:26]"  0.047427334315254803 0.95257266568474508;
	setAttr -s 3 ".wl[556].w[25:27]"  0.052159655679698672 0.9478097637036268 
		3.0580616674530581e-005;
	setAttr -s 2 ".wl[557].w[21:22]"  0.056228208783461624 0.94377179121653842;
	setAttr -s 2 ".wl[558].w[21:22]"  0.082310242885028723 0.91768975711497125;
	setAttr -s 2 ".wl[559].w[21:22]"  0.047788145628095149 0.95221185437190481;
	setAttr -s 2 ".wl[560].w[21:22]"  0.044935015146659013 0.95506498485334101;
	setAttr -s 2 ".wl[561].w[21:22]"  0.091091094570535033 0.90890890542946501;
	setAttr -s 2 ".wl[562].w[21:22]"  0.11879330249625931 0.8812066975037407;
	setAttr -s 29 ".pm";
	setAttr ".pm[0]" -type "matrix" -2.2204460492503131e-016 -1 0 0 1 -2.2204460492503131e-016 0 0
		 0 0 1 0 -9 2.4424904443252816e-015 0 1;
	setAttr ".pm[1]" -type "matrix" -2.2204460492503131e-016 -1 0 0 1 -2.2204460492503131e-016 0 0
		 0 0 1 0 -13 2.8865798640254066e-015 0 1;
	setAttr ".pm[2]" -type "matrix" 3.4450928483976665e-016 1 0 0 -1 3.4450928483976665e-016 0 0
		 0 0 1 0 16 -5.144754702916966e-015 0 1;
	setAttr ".pm[3]" -type "matrix" 0.99999999999999989 -1.2246467991473539e-016 0 0
		 1.2246467991473539e-016 0.99999999999999989 0 0 0 0 1 0 -2.117308411694898e-015 -17.289135227961641 -2.1972857727399679 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999989 -1.2246467991473539e-016 0 0
		 1.2246467991473539e-016 0.99999999999999989 0 0 0 0 1 0 -1.1559550142453567 -18.860453386447801 -2.2080665791472054 1;
	setAttr ".pm[5]" -type "matrix" 0.99999999999999989 -1.2246467991473539e-016 0 0
		 1.2246467991473539e-016 0.99999999999999989 0 0 0 0 1 0 1.1559599999999977 -18.860499999999995 -2.2080700000000002 1;
	setAttr ".pm[6]" -type "matrix" 1.8700254176437211e-016 -7.685361433190031e-017 1 0
		 0.98174115462934475 0.1902217266955599 -1.4460442862760812e-016 0 -0.1902217266955599 0.98174115462934475 3.2094474043948213e-016 0
		 -20.723052112524289 -1.5187088069753172 3.7703390244449778e-015 1;
	setAttr ".pm[7]" -type "matrix" -0.043701642201027624 0.28112262878190575 0.95867629263254661 0
		 0.98813170263488659 0.1536090435094225 -9.5756735873919732e-016 0 -0.14726134834644497 0.94729843731469932 -0.28449914928575037 0
		 -23.539291381864125 -0.7655263502078713 -0.84856475112138063 1;
	setAttr ".pm[8]" -type "matrix" 1 -9.7460134914925478e-016 5.5511151231257709e-016 0
		 9.3726470479664459e-016 0.99999999999999989 1.2389269038062668e-015 0 -5.5511151231257945e-016 -1.2762565290007266e-015 1 0
		 0.07530636478016052 -25.080253494714217 3.2364215500542253 1;
	setAttr ".pm[9]" -type "matrix" 0.99942062433366718 0.034035505821170098 0 0 -0.034035505821170098 0.99942062433366718 0 0
		 0 0 1 0 -1.5016197360093839 -14.668513185874568 0.39520589310364101 1;
	setAttr ".pm[10]" -type "matrix" 0.99957452430598337 0.029167968020874627 0 0 -0.029167968020874627 0.99957452430598337 0 0
		 0 0 1 0 -5.3263861771310772 -14.642747559149576 0.39520589310364101 1;
	setAttr ".pm[11]" -type "matrix" 0.99999808119862932 0.0019589790860719681 0 0 -0.0019589790860719681 0.99999808119862932 0 0
		 0 0 1 0 -8.7971907521779169 -14.408712940286549 0.39520589310364113 1;
	setAttr ".pm[12]" -type "matrix" 0.99754945812272355 0.069665466429175898 0.0064653991575301904 0
		 -0.069666922531362141 0.99757030825150828 -7.191133539335981e-015 0 -0.0064496902305469341 -0.00045042446223481628 0.99997909908844285 0
		 -8.9320412968995182 -15.04806627107523 0.33082589101705273 1;
	setAttr ".pm[13]" -type "matrix" 1 3.404917782011145e-015 4.336808689917607e-018 0
		 -3.4000578376695466e-015 1 -7.1692597610726064e-015 0 -3.4694469519779895e-018 7.1691806113730394e-015 1 0
		 -10.668184521143282 -14.339522757130707 0.39980831859073834 1;
	setAttr ".pm[14]" -type "matrix" 0.99999999999999989 3.3757718842508646e-015 0 0
		 -3.3757718842508646e-015 0.99999999999999989 0 0 0 0 1 0 -9.8457891345426063 -14.25960243768335 -0.10202780747438156 1;
	setAttr ".pm[15]" -type "matrix" -0.99942106546270892 -0.034022550012951173 -5.0697550613528892e-010 0
		 -0.034022550012951069 0.99942106546270881 1.4892534519380571e-008 0 1.8611563782443119e-024 1.4901161316312332e-008 -0.99999999999999989 0
		 -1.501810100041217 -14.66848749737504 -0.39520621857749838 1;
	setAttr ".pm[16]" -type "matrix" -0.99957457882877054 -0.029166099487007206 -5.0697550613528892e-010 0
		 -0.029166099487007106 0.99957457882877021 1.4892534519380571e-008 0 7.2402684615743983e-011 1.4900985417952179e-008 -0.99999999999999989 0
		 -5.326413189331741 -14.642780039737904 -0.39520621857749849 1;
	setAttr ".pm[17]" -type "matrix" -0.99999793202540321 -0.0020337022686055246 -5.0697550613528892e-010 0
		 -0.0020337022686054314 0.99999793202540288 1.4892534519380571e-008 0 4.7668747648547313e-010 1.4893534759234456e-008 -0.99999999999999989 0
		 -8.7961137229099684 -14.409418468858927 -0.39520621591150218 1;
	setAttr ".pm[18]" -type "matrix" -0.99755091631800052 -0.069644655633968225 0.0064646186851123229 0
		 -0.069646110949750373 0.99757176144354398 -3.0816359663718424e-013 0 -0.006448921048746884 -0.00045023555049857094 -0.99997910413430924 0
		 -8.9323529227648635 -15.047843396227552 -0.33083379672993135 1;
	setAttr ".pm[19]" -type "matrix" 1 2.6166557408857403e-015 5.360877948154541e-010 0
		 -2.7061687877206627e-015 0.99999999999999989 3.0815259198368276e-013 0 -5.3608779741753931e-010 -3.0815239469328758e-013 1 0
		 10.668199999788175 -14.339500000000241 0.39980800183974358 1;
	setAttr ".pm[20]" -type "matrix" 0.99999999999999989 2.5696908547180936e-014 5.0697550613567077e-010 0
		 -2.5797762597536381e-014 1 -3.1592586447516412e-011 0 -5.0697550613567418e-010 3.1592586447505194e-011 0.99999999999999989 0
		 9.8457899997855307 -14.25959999998727 -0.10202799798944928 1;
	setAttr ".pm[21]" -type "matrix" -0.002571153333050477 -0.073624530315926182 -0.99728271703980542 0
		 -0.99939076637861124 0.034901233175515828 2.6541269182445139e-016 0 0.034806396649318214 0.99667513887855508 -0.073669412198705583 0
		 8.6794091304765359 -0.10544866716748842 0.98813255262557564 1;
	setAttr ".pm[22]" -type "matrix" 0.0024896236972503064 0.02530508881241399 0.99967667485744693 0
		 -0.99519511733852994 0.097911584736178378 6.1235738701981261e-016 0 -0.097879927459085941 -0.99487334573534836 0.025427263831526787 0
		 5.0651822968459239 -0.52296828786448379 -0.99047174411516004 1;
	setAttr ".pm[23]" -type "matrix" -4.2244927332497459e-016 2.2080743351775478e-008 -0.999999999999999 0
		 -0.86161896802042204 0.50755566586082246 1.1207206759060393e-008 0 0.50755566586082235 0.86161896802042148 1.902518708120133e-008 0
		 1.3938138590192777 -0.40090559669745118 0.99999999114770277 1;
	setAttr ".pm[24]" -type "matrix" 0.99999999999999889 1.1207207113063351e-008 1.902518681223458e-008 0
		 -1.1207207203149605e-008 1 -1.3234422268596182e-015 0 -1.9025186859156715e-008 1.1745595687976446e-015 0.999999999999999 0
		 -0.99999999114770244 -0.40441836589985858 -0.22706181150618088 1;
	setAttr ".pm[25]" -type "matrix" 0.0025711550541978622 0.073623852240308429 -0.99728276709415964 0
		 -0.99939076325320864 0.034901322670761264 -1.8839946213777128e-008 0 0.034806486261273514 0.99667518583394477 0.073668734596266508 0
		 8.67940749484546 -0.10544980750033278 -0.98813250475561076 1;
	setAttr ".pm[26]" -type "matrix" -0.002489624664711817 -0.02530530308280992 0.99967666943112932 0
		 -0.99519512197796478 0.097911537579916413 1.8817970915893646e-008 0 -0.097879880262966179 -0.99487334492618895 -0.025427477167105271 0
		 5.0651829712499037 -0.52296833438163304 0.99047164248229025 1;
	setAttr ".pm[27]" -type "matrix" 3.0945457268807649e-007 1.0231369666134819e-007 -0.99999999999994671 0
		 -0.86161943763641835 0.50755486864678601 -2.1470226002059868e-007 0 0.50755486864673693 0.861619437636439 2.4522064483453659e-007 0
		 1.3938158234666935 -0.40090524516220705 -0.99999961044115393 1;
	setAttr ".pm[28]" -type "matrix" 0.99999999999994671 -2.1470225286349532e-007 2.4522064111768037e-007 0
		 2.1470225308170478e-007 0.99999999999997691 -1.3879270262119731e-009 0 -2.4522064083773376e-007 1.3879798115136549e-009 0.99999999999996991 0
		 0.99999961044115637 -0.40441821452980775 -0.22706174273546567 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 28 ".ma";
	setAttr -s 29 ".dpf[0:28]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4;
	setAttr -s 28 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".bm" 0;
	setAttr ".ucm" yes;
createNode tweak -n "tweak1";
createNode objectSet -n "skinCluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:514]";
	setAttr ".irc" -type "componentList" 1 "vtx[515:562]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	setAttr -s 31 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 34 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 -3.1740705207922175e-032
		 5.7178971258750047e-016 0 0 0 0 -3.1740705207922175e-032 5.7178971258750047e-016 0
		 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 4.4408899999999997e-016
		 9 0 0 0 0 4.4408899999999997e-016 9 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.4408899999999997e-016
		 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654757 0.70710678118654746 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 4 -4.4408941970012457e-016
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 9.9579925010295987e-017 0 3
		 -2.9873996025579432e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -1 6.123233995736766e-017 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.2891352279616439 8.1151290996611519e-016
		 2.1972857727399679 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.8604533864478014 1.1559550142453561
		 2.2080665791472054 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 -1.1005194151814113e-015 7.704799664587347e-022
		 -7.8503013551528568e-017 0 -2.8604999999999983 -1.1559599999999988 2.2080700000000002 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 2.8888949165808521e-034 -1.3877787807814457e-017
		 -4.1633363423443364e-017 0 -4.6335645200042919 1.9636998535648947e-015 -2.4509958175407394 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.067562647540365811 0.70387164217443521 0.70387164217443532 0.067562647540366186 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 1.6263032587282568e-018 -9.5409791178724359e-018
		 -6.2450045135165043e-017 0 2.794980438044778 0 -3.1030516356941987e-016 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.14160149617477749 0.024715783717923535 0.018390125635869087 0.98944426300594124 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 1.1102230246251567e-015 -6.106226635438356e-016
		 -9.9920072216264128e-016 0 1.7231930194699672 1.5543122344752192e-015 -1.6653345369377348e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.52134164987446152 -0.60864805819870105 -0.38909942476372783 0.45425990688774309 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 1.1102230246251563e-016 0 1.6089062190072596
		 -2 -0.39520589310364101 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.71903946547500797 0.69496924182974806 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 -9.9746599868666408e-016 0 3.7533937468218528
		 -1.2434497875801752e-014 -1.1102230246251563e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0.0024349850840808132 0.99999703541942575 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 -1.7347234759768065e-017 0 3.0754896637038067
		 -1.7763568394002505e-015 -5.5511151231257827e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0.013606142723927321 0.99990743215568512 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 4.0386530925085056e-018 1.4028559672425719e-017
		 2.9145270808453512e-016 0 1.1309465204846898 5.3290705182007514e-015 -5.5511151231257827e-017 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.00011583960174400636 0.0032306403336245576 -0.033875550610903415 0.9994208305889114 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 2.2090619264392141e-017 -5.2092526256139841e-018
		 3.4139001194594525e-015 0 0.71358861006901542 0 -2.6090241078691179e-015 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.00011267516623723416 -0.0032307522476177895 0.034854457083028444 0.99938717040277669 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 3.375771884250867e-015 0 1.0206452272999282
		 -0.12985016894749002 0.4972337005780228 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.00097949001289610407 0.9999995202995422 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 3.3087224502121085e-024 -7.444625512977252e-024
		 5.5511151231257827e-016 0 1.6089000000000002 1.9999999999999996 -0.39520599999999995 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.69497390238304957 0.7190349609069614 5.3572279722714826e-009 5.1779591150184619e-009 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 -1.4786617107198901e-011 4.3435714107090242e-010
		 2.5734590652752268e-015 0 3.7533929688216761 0 5.5511151231257827e-017 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0024294381070785174 0.99999704891088748 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 -1.0313303726954714e-012 3.0286981074533847e-011
		 1.5959454417192456e-016 0 3.0754883778678161 3.0198066269804258e-014 -2.6659962015784799e-009 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.013567849928656997 0.99990795248778452 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 -3.5308959776174723e-011 5.0574494618314585e-010
		 2.4141674728133723e-017 0 1.1309423387600257 0 -6.7104211076696174e-011 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.00011592006101338625 -0.0032302472077982546 -0.033827785525680283 0.99942244971380578 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 -1.7347235477700702e-017 -5.3608806249480609e-010
		 2.6784130469128401e-015 0 0.71360768493900117 0 1.1102230246251563e-016 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.034844032389911989 0.99938753517953827 -0.00011262787749447284 -0.0032303636852975756 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 -3.1592506388736757e-011 -3.8277808957187304e-022
		 2.5757174171303622e-014 0 1.0206561351591257 -0.12982455038696905 -0.49723400198986389 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0010168516600216008 -0.99999948300621733 -7.430467124959233e-009 7.5556867369937972e-012 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 -7.1632140137490427e-009 4.8427497688047214e-010
		 -1.7283762738092971e-011 0 -0.32219836885867714 -0.99999999999999956 -0.12420574755703272 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.012787840945288434 0.7325784444162351 0.6804588201838484 -0.011878044226735909 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 -2.6672696778695533e-029 3.0630521673101628e-016
		 -2.4147969408729989e-014 0 3.5879381796296146 -9.7144514654701197e-017 1.1102230246251563e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99749942537947611 -0.066420158004452959 0.00076255869814120564 0.024138713356562189 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 -2.2080747253530881e-008 -1.4839944413930128e-023
		 -3.8555685278311844e-026 0 3.705435170593939 -2.55351295663786e-015 -3.9968028886505628e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.95065534224541437 -0.30998831863310167 0.0027391967585164889 0.012416093282291195 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1606058328747213 8.3266726846886741e-016
		 -2.2204460492503131e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.3508718904882438 0.61391279223127915 0.35087189048824363 0.61391279223127948 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 -5.7679164894178673e-007 3.8994494761640992e-008
		 1.3916743563276349e-009 0 -0.32220000000000049 1.0000000000000004 -0.124206 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.011878082732980995 -0.68045928016895618 -0.73257801609012996 0.012787866279552891 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 -3.7148914956646612e-030 -2.0413105050446285e-016
		 -1.6102448563837767e-014 0 3.5879359023968664 4.163336342344337e-017 1.1102230246251563e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.99749943476697445 0.066420179297260323 0.00076254294270747974 0.024138267335227583 1
		 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 3.8599472781982119e-007 -8.494090338254662e-023
		 1.3668920105799305e-022 0 3.7054341588217783 -1.4432899320127035e-015 -8.8817841970012523e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.95065549512635406 0.30998785725825051 0.0027391520740957104 0.012415916575913542 1
		 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1606075224588193 -2.2204460492503131e-016
		 5.5511151231257827e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.35087217407388593 0.61391263015242048 0.3508721740738831 0.61391263015242536 1
		 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 1.1102230246251567e-015 -6.106226635438356e-016
		 -9.9920072216264128e-016 0 1.7231930194699672 1.5543122344752192e-015 -1.6653345369377348e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.52134164987446152 -0.60864805819870105 -0.38909942476372783 0.45425990688774309 1
		 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 1.1102230246251567e-015 -6.106226635438356e-016
		 -9.9920072216264128e-016 0 1.7231930194699672 1.5543122344752192e-015 -1.6653345369377348e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.52134164987446152 -0.60864805819870105 -0.38909942476372783 0.45425990688774309 1
		 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 1.1102230246251567e-015 -6.106226635438356e-016
		 -9.9920072216264128e-016 0 1.7231930194699672 1.5543122344752192e-015 -1.6653345369377348e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.52134164987446152 -0.60864805819870105 -0.38909942476372783 0.45425990688774309 1
		 1 1 yes;
	setAttr -s 31 ".m";
	setAttr -s 31 ".p";
	setAttr -s 34 ".g[0:33]" yes yes no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster4";
	setAttr -s 22 ".wl";
	setAttr -s 3 ".wl[0].w";
	setAttr ".wl[0].w[2]" 0.055375909479453395;
	setAttr ".wl[0].w[6:7]" 0.93435784420986467 0.010266246310681914;
	setAttr -s 3 ".wl[1].w";
	setAttr ".wl[1].w[2]" 0.037524319372845359;
	setAttr ".wl[1].w[6:7]" 0.95597038361523423 0.0065052970119204283;
	setAttr -s 3 ".wl[2].w[6:8]"  0.10265968710315902 0.44867015644842045 
		0.44867015644842045;
	setAttr -s 3 ".wl[3].w";
	setAttr ".wl[3].w[2]" 0.00032665664874945383;
	setAttr ".wl[3].w[6:7]" 0.99962942382367426 4.3919527576387149e-005;
	setAttr -s 3 ".wl[4].w";
	setAttr ".wl[4].w[2]" 0.00078880362514096984;
	setAttr ".wl[4].w[6:7]" 0.99910536327203725 0.0001058331028217565;
	setAttr -s 3 ".wl[5].w[6:8]"  0.029729902154600321 0.48513504892269982 
		0.48513504892269982;
	setAttr -s 3 ".wl[6].w[6:8]"  0.022066709911602055 0.48896664504419907 
		0.48896664504419907;
	setAttr -s 3 ".wl[7].w[6:8]"  0.027146539990597573 0.48642673000470127 
		0.48642673000470127;
	setAttr -s 3 ".wl[8].w[6:8]"  0.022471922542780489 0.48876403872860974 
		0.48876403872860974;
	setAttr -s 3 ".wl[9].w";
	setAttr ".wl[9].w[2]" 0.92162681676556224;
	setAttr ".wl[9].w[6:7]" 0.078370682916173301 2.50031826442357e-006;
	setAttr -s 3 ".wl[10].w";
	setAttr ".wl[10].w[2]" 0.98175948739018082;
	setAttr ".wl[10].w[6:7]" 0.018240160469502532 3.5214031672569612e-007;
	setAttr -s 3 ".wl[11].w";
	setAttr ".wl[11].w[2]" 0.99600427026002669;
	setAttr ".wl[11].w[6:7]" 0.0039956502389086488 7.9501064577810816e-008;
	setAttr -s 3 ".wl[12].w";
	setAttr ".wl[12].w[2]" 0.99098992815959253;
	setAttr ".wl[12].w[6:7]" 0.0090098951497401287 1.7669066735252163e-007;
	setAttr -s 3 ".wl[13].w";
	setAttr ".wl[13].w[2]" 0.98744152082674108;
	setAttr ".wl[13].w[6:7]" 0.012473296130862181 8.5183042396480953e-005;
	setAttr -s 3 ".wl[14].w[6:8]"  0.50015201255922459 0.49976160626756622 
		8.6381173209153643e-005;
	setAttr -s 3 ".wl[15].w[6:8]"  0.48401557940525874 0.4855865319334467 
		0.030397888661294559;
	setAttr -s 3 ".wl[16].w[6:8]"  0.50026964714277555 0.4997117662130085 
		1.8586644215968217e-005;
	setAttr -s 3 ".wl[17].w[6:8]"  0.48960320818186526 0.4895786961982001 
		0.020818095619934543;
	setAttr -s 3 ".wl[18].w[6:8]"  1.7766355118412011e-005 0.4999911168224408 
		0.4999911168224408;
	setAttr -s 3 ".wl[19].w[6:8]"  0.011595266227419136 0.49420236688629038 
		0.49420236688629038;
	setAttr -s 3 ".wl[20].w[6:8]"  6.9893254541388635e-005 0.49996505337272928 
		0.49996505337272928;
	setAttr -s 3 ".wl[21].w[6:8]"  0.018044115479840712 0.49103585935970551 
		0.49092002516045374;
	setAttr -s 29 ".pm";
	setAttr ".pm[0]" -type "matrix" -2.2204460492503131e-016 -1 0 0 1 -2.2204460492503131e-016 0 0
		 0 0 1 0 -9 2.4424904443252816e-015 0 1;
	setAttr ".pm[1]" -type "matrix" -2.2204460492503131e-016 -1 0 0 1 -2.2204460492503131e-016 0 0
		 0 0 1 0 -13 2.8865798640254066e-015 0 1;
	setAttr ".pm[2]" -type "matrix" 3.4450928483976665e-016 1 0 0 -1 3.4450928483976665e-016 0 0
		 0 0 1 0 16 -5.144754702916966e-015 0 1;
	setAttr ".pm[3]" -type "matrix" 0.99999999999999989 -1.2246467991473539e-016 0 0
		 1.2246467991473539e-016 0.99999999999999989 0 0 0 0 1 0 -2.117308411694898e-015 -17.289135227961641 -2.1972857727399679 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999989 -1.2246467991473539e-016 0 0
		 1.2246467991473539e-016 0.99999999999999989 0 0 0 0 1 0 -1.1559550142453567 -18.860453386447801 -2.2080665791472054 1;
	setAttr ".pm[5]" -type "matrix" 0.99999999999999989 -1.2246467991473539e-016 0 0
		 1.2246467991473539e-016 0.99999999999999989 0 0 0 0 1 0 1.1559599999999977 -18.860499999999995 -2.2080700000000002 1;
	setAttr ".pm[6]" -type "matrix" 1.8700254176437211e-016 -7.685361433190031e-017 1 0
		 0.98174115462934475 0.1902217266955599 -1.4460442862760812e-016 0 -0.1902217266955599 0.98174115462934475 3.2094474043948213e-016 0
		 -20.723052112524289 -1.5187088069753172 3.7703390244449778e-015 1;
	setAttr ".pm[7]" -type "matrix" -0.043701642201027624 0.28112262878190575 0.95867629263254661 0
		 0.98813170263488659 0.1536090435094225 -9.5756735873919732e-016 0 -0.14726134834644497 0.94729843731469932 -0.28449914928575037 0
		 -23.539291381864125 -0.7655263502078713 -0.84856475112138063 1;
	setAttr ".pm[8]" -type "matrix" 1 -9.7460134914925478e-016 5.5511151231257709e-016 0
		 9.3726470479664459e-016 0.99999999999999989 1.2389269038062668e-015 0 -5.5511151231257945e-016 -1.2762565290007266e-015 1 0
		 0.07530636478016052 -25.080253494714217 3.2364215500542253 1;
	setAttr ".pm[9]" -type "matrix" 0.99942062433366718 0.034035505821170098 0 0 -0.034035505821170098 0.99942062433366718 0 0
		 0 0 1 0 -1.5016197360093839 -14.668513185874568 0.39520589310364101 1;
	setAttr ".pm[10]" -type "matrix" 0.99957452430598337 0.029167968020874627 0 0 -0.029167968020874627 0.99957452430598337 0 0
		 0 0 1 0 -5.3263861771310772 -14.642747559149576 0.39520589310364101 1;
	setAttr ".pm[11]" -type "matrix" 0.99999808119862932 0.0019589790860719681 0 0 -0.0019589790860719681 0.99999808119862932 0 0
		 0 0 1 0 -8.7971907521779169 -14.408712940286549 0.39520589310364113 1;
	setAttr ".pm[12]" -type "matrix" 0.99754945812272355 0.069665466429175898 0.0064653991575301904 0
		 -0.069666922531362141 0.99757030825150828 -7.191133539335981e-015 0 -0.0064496902305469341 -0.00045042446223481628 0.99997909908844285 0
		 -8.9320412968995182 -15.04806627107523 0.33082589101705273 1;
	setAttr ".pm[13]" -type "matrix" 1 3.404917782011145e-015 4.336808689917607e-018 0
		 -3.4000578376695466e-015 1 -7.1692597610726064e-015 0 -3.4694469519779895e-018 7.1691806113730394e-015 1 0
		 -10.668184521143282 -14.339522757130707 0.39980831859073834 1;
	setAttr ".pm[14]" -type "matrix" 0.99999999999999989 3.3757718842508646e-015 0 0
		 -3.3757718842508646e-015 0.99999999999999989 0 0 0 0 1 0 -9.8457891345426063 -14.25960243768335 -0.10202780747438156 1;
	setAttr ".pm[15]" -type "matrix" -0.99942106546270892 -0.034022550012951173 -5.0697550613528892e-010 0
		 -0.034022550012951069 0.99942106546270881 1.4892534519380571e-008 0 1.8611563782443119e-024 1.4901161316312332e-008 -0.99999999999999989 0
		 -1.501810100041217 -14.66848749737504 -0.39520621857749838 1;
	setAttr ".pm[16]" -type "matrix" -0.99957457882877054 -0.029166099487007206 -5.0697550613528892e-010 0
		 -0.029166099487007106 0.99957457882877021 1.4892534519380571e-008 0 7.2402684615743983e-011 1.4900985417952179e-008 -0.99999999999999989 0
		 -5.326413189331741 -14.642780039737904 -0.39520621857749849 1;
	setAttr ".pm[17]" -type "matrix" -0.99999793202540321 -0.0020337022686055246 -5.0697550613528892e-010 0
		 -0.0020337022686054314 0.99999793202540288 1.4892534519380571e-008 0 4.7668747648547313e-010 1.4893534759234456e-008 -0.99999999999999989 0
		 -8.7961137229099684 -14.409418468858927 -0.39520621591150218 1;
	setAttr ".pm[18]" -type "matrix" -0.99755091631800052 -0.069644655633968225 0.0064646186851123229 0
		 -0.069646110949750373 0.99757176144354398 -3.0816359663718424e-013 0 -0.006448921048746884 -0.00045023555049857094 -0.99997910413430924 0
		 -8.9323529227648635 -15.047843396227552 -0.33083379672993135 1;
	setAttr ".pm[19]" -type "matrix" 1 2.6166557408857403e-015 5.360877948154541e-010 0
		 -2.7061687877206627e-015 0.99999999999999989 3.0815259198368276e-013 0 -5.3608779741753931e-010 -3.0815239469328758e-013 1 0
		 10.668199999788175 -14.339500000000241 0.39980800183974358 1;
	setAttr ".pm[20]" -type "matrix" 0.99999999999999989 2.5696908547180936e-014 5.0697550613567077e-010 0
		 -2.5797762597536381e-014 1 -3.1592586447516412e-011 0 -5.0697550613567418e-010 3.1592586447505194e-011 0.99999999999999989 0
		 9.8457899997855307 -14.25959999998727 -0.10202799798944928 1;
	setAttr ".pm[21]" -type "matrix" -0.002571153333050477 -0.073624530315926182 -0.99728271703980542 0
		 -0.99939076637861124 0.034901233175515828 2.6541269182445139e-016 0 0.034806396649318214 0.99667513887855508 -0.073669412198705583 0
		 8.6794091304765359 -0.10544866716748842 0.98813255262557564 1;
	setAttr ".pm[22]" -type "matrix" 0.0024896236972503064 0.02530508881241399 0.99967667485744693 0
		 -0.99519511733852994 0.097911584736178378 6.1235738701981261e-016 0 -0.097879927459085941 -0.99487334573534836 0.025427263831526787 0
		 5.0651822968459239 -0.52296828786448379 -0.99047174411516004 1;
	setAttr ".pm[23]" -type "matrix" -4.2244927332497459e-016 2.2080743351775478e-008 -0.999999999999999 0
		 -0.86161896802042204 0.50755566586082246 1.1207206759060393e-008 0 0.50755566586082235 0.86161896802042148 1.902518708120133e-008 0
		 1.3938138590192777 -0.40090559669745118 0.99999999114770277 1;
	setAttr ".pm[24]" -type "matrix" 0.99999999999999889 1.1207207113063351e-008 1.902518681223458e-008 0
		 -1.1207207203149605e-008 1 -1.3234422268596182e-015 0 -1.9025186859156715e-008 1.1745595687976446e-015 0.999999999999999 0
		 -0.99999999114770244 -0.40441836589985858 -0.22706181150618088 1;
	setAttr ".pm[25]" -type "matrix" 0.0025711550541978622 0.073623852240308429 -0.99728276709415964 0
		 -0.99939076325320864 0.034901322670761264 -1.8839946213777128e-008 0 0.034806486261273514 0.99667518583394477 0.073668734596266508 0
		 8.67940749484546 -0.10544980750033278 -0.98813250475561076 1;
	setAttr ".pm[26]" -type "matrix" -0.002489624664711817 -0.02530530308280992 0.99967666943112932 0
		 -0.99519512197796478 0.097911537579916413 1.8817970915893646e-008 0 -0.097879880262966179 -0.99487334492618895 -0.025427477167105271 0
		 5.0651829712499037 -0.52296833438163304 0.99047164248229025 1;
	setAttr ".pm[27]" -type "matrix" 3.0945457268807649e-007 1.0231369666134819e-007 -0.99999999999994671 0
		 -0.86161943763641835 0.50755486864678601 -2.1470226002059868e-007 0 0.50755486864673693 0.861619437636439 2.4522064483453659e-007 0
		 1.3938158234666935 -0.40090524516220705 -0.99999961044115393 1;
	setAttr ".pm[28]" -type "matrix" 0.99999999999994671 -2.1470225286349532e-007 2.4522064111768037e-007 0
		 2.1470225308170478e-007 0.99999999999997691 -1.3879270262119731e-009 0 -2.4522064083773376e-007 1.3879798115136549e-009 0.99999999999996991 0
		 0.99999961044115637 -0.40441821452980775 -0.22706174273546567 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 4 ".ma";
	setAttr -s 29 ".dpf[0:28]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4;
	setAttr -s 4 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".bm" 0;
	setAttr ".ucm" yes;
createNode tweak -n "tweak4";
createNode objectSet -n "skinCluster4Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster4GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster4GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "C:/Users/vasqm058.DISID/Documents/Bryants Game/keso_Tex.tga";
createNode place2dTexture -n "place2dTexture1";
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "C:/Users/vasqm058.DISID/Documents/Bryants Game/keso_Tex.tga";
createNode place2dTexture -n "place2dTexture2";
createNode shadingEngine -n "lambert4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode file -n "file3";
	setAttr ".ftn" -type "string" "C:/Users/vasqm058.DISID/Documents/Bryants Game/keso_Tex.tga";
createNode place2dTexture -n "place2dTexture3";
createNode file -n "file4";
	setAttr ".ftn" -type "string" "C:/Users/Miguel Jr/Desktop/Bryant game/keso_diff_02.jpg";
createNode place2dTexture -n "place2dTexture4";
createNode file -n "file5";
	setAttr ".ftn" -type "string" "C:/Users/Miguel Jr/Desktop/Bryant game/keso_diff_02.jpg";
createNode place2dTexture -n "place2dTexture5";
createNode file -n "file6";
	setAttr ".ftn" -type "string" "C:/Users/Miguel Jr/Desktop/Bryant game/keso_diff_02.jpg";
createNode place2dTexture -n "place2dTexture6";
createNode lambert -n "lambert5";
createNode shadingEngine -n "lambert5SG";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
createNode file -n "file7";
	setAttr ".ftn" -type "string" "C:/Users/Miguel Jr/Desktop/Bryant game/keso_diff_02.jpg";
createNode place2dTexture -n "place2dTexture7";
createNode animCurveUU -n "joint1_parentConstraint1_root1W0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 1;
createNode animCurveUU -n "joint1_parentConstraint1_R_wristW1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 0;
createNode animCurveTL -n "knife_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -2.0648300495523686 1 -2.0648300495523686 
		24 -2.0648300495523686 28 -2.0648300495523686 30 -0.46398124567154175 31 -1.3088341218373307 
		32 -1.2735199372995787 35 -1.3793560976012134 41 -1.3080679533066242 47 -0.99253897914218547 
		48 -2.0648300495523686 55 -2.0648300495523686 56 -2.0648300495523686 80 -2.0648300495523686 
		81 -2.0648300495523686 95 -2.0648300495523686;
	setAttr -s 16 ".kit[3:15]"  1 10 10 10 10 10 10 9 
		16 10 1 10 1;
	setAttr -s 16 ".kot[3:15]"  1 10 10 10 10 10 10 9 
		16 10 1 1 1;
	setAttr -s 16 ".kix[3:15]"  1 0.16312994062900543 1 1 0.99578309059143066 
		0.79093778133392334 0.35962805151939392 0.29684868454933167 1 1 1 1 1;
	setAttr -s 16 ".kiy[3:15]"  0 0.98660457134246826 0 0 -0.091739550232887268 
		0.6118965744972229 -0.93309575319290161 -0.95492452383041382 0 0 0 0 0;
	setAttr -s 16 ".kox[3:15]"  1 0.16312994062900543 1 1 0.99578309059143066 
		0.79093778133392334 0.35962805151939392 0.29684868454933167 1 1 1 1 1;
	setAttr -s 16 ".koy[3:15]"  0 0.98660457134246826 0 0 -0.091739550232887268 
		0.6118965744972229 -0.93309575319290161 -0.95492452383041382 0 0 0 0 0;
createNode animCurveTL -n "knife_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1.1830518338212084 1 1.1830518338212084 
		24 1.1830518338212084 28 1.1830518338212084 30 0.31971962217604677 31 -0.83717169432121674 
		32 -0.91610363978149945 35 -0.84471462280137977 41 -0.81586063901761297 47 -0.67568961434831987 
		48 1.1830518338212084 55 1.1830518338212084 56 1.1830518338212084 80 1.1830518338212084 
		81 1.1830518338212084 95 1.1830518338212084;
	setAttr -s 16 ".kit[3:15]"  1 10 10 10 10 10 10 9 
		16 10 1 10 1;
	setAttr -s 16 ".kot[3:15]"  1 10 10 10 10 10 10 9 
		16 10 1 1 1;
	setAttr -s 16 ".kix[3:15]"  1 0.061756234616041183 0.067278683185577393 
		0.9989774227142334 1 1 0.1443837583065033 0.17651687562465668 1 1 1 1 1;
	setAttr -s 16 ".kiy[3:15]"  0 -0.99809122085571289 -0.99773424863815308 
		-0.045211270451545715 0 0 0.98952180147171021 0.98429763317108154 0 0 0 0 0;
	setAttr -s 16 ".kox[3:15]"  1 0.061756234616041183 0.067278683185577393 
		0.9989774227142334 1 1 0.1443837583065033 0.17651687562465668 1 1 1 1 1;
	setAttr -s 16 ".koy[3:15]"  0 -0.99809122085571289 -0.99773424863815308 
		-0.045211270451545715 0 0 0.98952180147171021 0.98429763317108154 0 0 0 0 0;
createNode animCurveTL -n "knife_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -0.20773123674226923 1 -0.20773123674226923 
		24 -0.20773123674226923 28 -0.20773123674226923 30 0.89452009640297214 31 0.14769261732411723 
		32 -0.31058694977612966 35 0.29823110597938662 41 0.61117535839642023 47 -0.3276733307528869 
		48 -0.20773123674226923 55 -0.20773123674226923 56 -0.20773123674226923 80 -0.20773123674226923 
		81 -0.20773123674226923 95 -0.20773123674226923;
	setAttr -s 16 ".kit[3:15]"  1 10 10 10 10 10 10 9 
		16 10 1 10 1;
	setAttr -s 16 ".kot[3:15]"  1 10 10 10 10 10 10 9 
		16 10 1 1 1;
	setAttr -s 16 ".kix[3:15]"  1 0.33177265524864197 0.068985447287559509 
		0.74210095405578613 0.37683764100074768 0.62414413690567017 0.33552008867263794 0.94093954563140869 
		1 1 1 1 1;
	setAttr -s 16 ".kiy[3:15]"  0 0.94335931539535522 -0.99761766195297241 
		0.67028820514678955 0.92627930641174316 -0.78130918741226196 -0.94203305244445801 
		0.33857473731040955 0 0 0 0 0;
	setAttr -s 16 ".kox[3:15]"  1 0.33177265524864197 0.068985447287559509 
		0.74210095405578613 0.37683764100074768 0.62414413690567017 0.33552008867263794 0.94093954563140869 
		1 1 1 1 1;
	setAttr -s 16 ".koy[3:15]"  0 0.94335931539535522 -0.99761766195297241 
		0.67028820514678955 0.92627930641174316 -0.78130918741226196 -0.94203305244445801 
		0.33857473731040955 0 0 0 0 0;
createNode animCurveTU -n "knife_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 1 1 24 1 28 1 48 1 55 1 56 1 80 1 81 
		1 95 1;
	setAttr -s 10 ".kit[0:9]"  9 9 9 1 9 16 9 1 
		9 1;
	setAttr -s 10 ".kot[4:9]"  9 16 5 5 5 5;
	setAttr -s 10 ".kix[3:9]"  1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[3:9]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "knife_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 120.83740213700312 1 120.83740213700312 
		11 117.4957210809515 24 120.83740213700312 28 120.83740213700312 30 73.858059549185583 
		31 -81.395069641990418 32 -75.184852732057124 35 17.222260261364084 41 -31.597303437247739 
		47 109.19842221013784 48 120.83740213700312 55 120.83740213700312 56 120.83740213700312 
		80 120.83740213700312 81 120.83740213700312 95 120.83740213700312;
	setAttr -s 17 ".kit[4:16]"  1 10 10 10 10 10 10 9 
		16 10 1 10 1;
	setAttr -s 17 ".kot[4:16]"  1 10 10 10 10 10 10 9 
		16 10 1 1 1;
	setAttr -s 17 ".kix[4:16]"  0.72064977884292603 0.035392362624406815 
		0.032018981873989105 0.09638107568025589 0.44213831424713135 0.29737967252731323 
		0.10897611081600189 0.85392540693283081 1 1 1 1 1;
	setAttr -s 17 ".kiy[4:16]"  -0.69329929351806641 -0.99937349557876587 
		-0.99948722124099731 0.99534451961517334 0.89694684743881226 0.95475929975509644 
		0.99404442310333252 0.52039533853530884 0 0 0 0 0;
	setAttr -s 17 ".kox[4:16]"  0.72064977884292603 0.035392362624406815 
		0.032018981873989105 0.09638107568025589 0.44213831424713135 0.29737967252731323 
		0.10897611081600189 0.85392540693283081 1 1 1 1 1;
	setAttr -s 17 ".koy[4:16]"  -0.69329929351806641 -0.99937349557876587 
		-0.99948722124099731 0.99534451961517334 0.89694684743881226 0.95475929975509644 
		0.99404442310333252 0.52039533853530884 0 0 0 0 0;
createNode animCurveTA -n "knife_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -43.085959212047719 1 -43.085959212047719 
		11 -35.817885930725758 24 -43.085959212047719 28 -43.085959212047719 30 -17.565857120172467 
		31 20.554361741414489 32 -0.35770897005539226 35 -8.6089727182128879 41 -32.366664951416666 
		47 3.4371787881358253 48 -43.085959212047719 55 -43.085959212047719 56 -43.085959212047719 
		80 -43.085959212047719 81 -43.085959212047719 95 -43.085959212047719;
	setAttr -s 17 ".kit[4:16]"  1 10 10 10 10 10 10 9 
		16 10 1 10 1;
	setAttr -s 17 ".kot[4:16]"  1 10 10 10 10 10 10 9 
		16 10 1 1 1;
	setAttr -s 17 ".kix[4:16]"  0.92771041393280029 0.11183233559131622 
		0.26736363768577576 0.31118437647819519 0.55733031034469604 0.92182081937789917 0.84172022342681885 
		0.37976363301277161 1 1 1 1 1;
	setAttr -s 17 ".kiy[4:16]"  0.37330052256584167 0.99372708797454834 
		0.96359574794769287 -0.95034956932067871 -0.83029085397720337 0.38761645555496216 
		-0.53991401195526123 -0.92508351802825928 0 0 0 0 0;
	setAttr -s 17 ".kox[4:16]"  0.92771041393280029 0.11183233559131622 
		0.26736363768577576 0.31118437647819519 0.55733031034469604 0.92182081937789917 0.84172022342681885 
		0.37976363301277161 1 1 1 1 1;
	setAttr -s 17 ".koy[4:16]"  0.37330052256584167 0.99372708797454834 
		0.96359574794769287 -0.95034956932067871 -0.83029085397720337 0.38761645555496216 
		-0.53991401195526123 -0.92508351802825928 0 0 0 0 0;
createNode animCurveTA -n "knife_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -120.08426545665664 1 -120.08426545665664 
		11 -114.83809549422958 24 -120.08426545665664 28 -120.08426545665664 30 -113.84934847101796 
		31 -136.08852885649765 32 -162.14997841687691 35 -159.41190067198411 41 -101.30790312749306 
		47 -138.18760867053459 48 -120.08426545665664 55 -120.08426545665664 56 -120.08426545665664 
		80 -120.08426545665664 81 -120.08426545665664 95 -120.08426545665664;
	setAttr -s 17 ".kit[4:16]"  1 10 10 10 10 10 10 9 
		16 10 1 10 1;
	setAttr -s 17 ".kot[4:16]"  1 10 10 10 10 10 10 9 
		16 10 1 1 1;
	setAttr -s 17 ".kix[4:16]"  0.99976247549057007 0.40846920013427734 
		0.098373286426067352 1 1 0.803508460521698 0.66483408212661743 0.72576409578323364 
		1 1 1 1 1;
	setAttr -s 17 ".kiy[4:16]"  0.021793000400066376 -0.91277211904525757 
		-0.99514961242675781 0 0 0.59529334306716919 -0.74699103832244873 0.68794363737106323 
		0 0 0 0 0;
	setAttr -s 17 ".kox[4:16]"  0.99976247549057007 0.40846920013427734 
		0.098373286426067352 1 1 0.803508460521698 0.66483408212661743 0.72576409578323364 
		1 1 1 1 1;
	setAttr -s 17 ".koy[4:16]"  0.021793000400066376 -0.91277211904525757 
		-0.99514961242675781 0 0 0.59529334306716919 -0.74699103832244873 0.68794363737106323 
		0 0 0 0 0;
createNode animCurveTU -n "knife_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 1 1 24 1 28 1 48 1 55 1 56 1 80 1 81 
		1 95 1;
	setAttr -s 10 ".kit[3:9]"  1 9 16 10 1 10 1;
	setAttr -s 10 ".kot[3:9]"  1 9 16 10 1 1 1;
	setAttr -s 10 ".kix[3:9]"  1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[3:9]"  0 0 0 0 0 0 0;
	setAttr -s 10 ".kox[3:9]"  1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[3:9]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "knife_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 1 1 24 1 28 1 48 1 55 1 56 1 80 1 81 
		1 95 1;
	setAttr -s 10 ".kit[3:9]"  1 9 16 10 1 10 1;
	setAttr -s 10 ".kot[3:9]"  1 9 16 10 1 1 1;
	setAttr -s 10 ".kix[3:9]"  1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[3:9]"  0 0 0 0 0 0 0;
	setAttr -s 10 ".kox[3:9]"  1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[3:9]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "knife_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 1 1 24 1 28 1 48 1 55 1 56 1 80 1 81 
		1 95 1;
	setAttr -s 10 ".kit[3:9]"  1 9 16 10 1 10 1;
	setAttr -s 10 ".kot[3:9]"  1 9 16 10 1 1 1;
	setAttr -s 10 ".kix[3:9]"  1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[3:9]"  0 0 0 0 0 0 0;
	setAttr -s 10 ".kox[3:9]"  1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[3:9]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "L_foot_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 1 1.8232600451969279 24 1.8232600451969279 
		48 1.8232600451969279 55 1.8232600451969279 56 0 68 0 80 0 81 0 88 0 95 0;
	setAttr -s 11 ".kit[3:10]"  9 16 10 10 1 10 10 1;
	setAttr -s 11 ".kot[3:10]"  9 16 10 10 1 1 10 1;
	setAttr -s 11 ".kix[7:10]"  1 1 1 1;
	setAttr -s 11 ".kiy[7:10]"  0 0 0 0;
	setAttr -s 11 ".kox[7:10]"  1 1 1 1;
	setAttr -s 11 ".koy[7:10]"  0 0 0 0;
createNode animCurveTL -n "L_foot_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 0 24 0 48 0 55 0 56 0 62 0.82109462143603351 
		68 0 80 0 81 3.2673519414662975 85 2.769670882487806 88 1.355408781953537 89 0 91 
		0 95 3.2673519414662975;
	setAttr -s 15 ".kit[3:14]"  9 16 10 10 10 1 10 10 
		10 10 10 1;
	setAttr -s 15 ".kot[3:14]"  9 16 10 10 10 1 1 10 
		10 10 10 1;
	setAttr -s 15 ".kix[8:14]"  1 0.075007691979408264 0.15080526471138 
		0.06006690114736557 1 1 0.075007691979408264;
	setAttr -s 15 ".kiy[8:14]"  0 0.99718296527862549 -0.98856347799301147 
		-0.99819427728652954 0 0 0.99718296527862549;
	setAttr -s 15 ".kox[8:14]"  1 1 0.15080526471138 0.06006690114736557 
		1 1 1;
	setAttr -s 15 ".koy[8:14]"  0 0 -0.98856347799301147 -0.99819427728652954 
		0 0 0;
createNode animCurveTL -n "L_foot_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 24 0 48 0 55 0 56 -2.096950128218658 
		68 2.4960853935631691 80 -2.096950128218658 81 -5.9213408177564961 88 4.8977625474992301 
		89 1.2472586383228559 95 -5.9213408177564961;
	setAttr -s 12 ".kit[3:11]"  9 16 10 10 1 10 10 10 
		1;
	setAttr -s 12 ".kot[3:11]"  9 16 10 10 1 1 10 10 
		1;
	setAttr -s 12 ".kix[7:11]"  1 0.047601040452718735 0.046448886394500732 
		0.026948681101202965 0.047601040452718735;
	setAttr -s 12 ".kiy[7:11]"  0 0.99886637926101685 0.99892067909240723 
		-0.99963682889938354 0.99886637926101685;
	setAttr -s 12 ".kox[7:11]"  1 0.12911400198936462 0.046448886394500732 
		0.026948681101202965 0.12911400198936462;
	setAttr -s 12 ".koy[7:11]"  0 0.99162971973419189 0.99892067909240723 
		-0.99963682889938354 0.99162971973419189;
createNode animCurveTL -n "R_foot_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 -1.4978049736352761 24 -1.4978049736352761 
		32 -1.4978049736352761 36 -0.34776007067681181 43 -0.34776007067681181 48 -1.4978049736352761 
		55 -1.4978049736352761 56 0 68 0 80 0 81 0 82 0 88 0 95 0;
	setAttr -s 15 ".kit[7:14]"  16 10 10 1 10 10 10 1;
	setAttr -s 15 ".kot[7:14]"  16 10 10 1 1 10 10 1;
	setAttr -s 15 ".kix[10:14]"  1 1 1 1 1;
	setAttr -s 15 ".kiy[10:14]"  0 0 0 0 0;
	setAttr -s 15 ".kox[10:14]"  1 1 1 1 1;
	setAttr -s 15 ".koy[10:14]"  0 0 0 0 0;
createNode animCurveTL -n "R_foot_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 24 0 32 0 34 0.71128486181031869 
		36 0 43 0 48 0 55 0 56 0 68 0 74 1.020440386578747 80 0 81 1.4436080316860012 82 
		0 84 0 88 3.5169172292102182 92 2.9978994720397543 95 1.4436080316860012;
	setAttr -s 19 ".kit[8:18]"  16 10 10 10 1 10 10 10 
		10 10 1;
	setAttr -s 19 ".kot[8:18]"  16 10 10 10 1 1 10 10 
		10 10 1;
	setAttr -s 19 ".kix[12:18]"  1 1 1 1 0.11050792783498764 0.13930514454841614 
		1;
	setAttr -s 19 ".kiy[12:18]"  0 0 0 0 0.99387526512145996 -0.99024957418441772 
		0;
	setAttr -s 19 ".kox[12:18]"  1 1 1 1 0.11050792783498764 0.13930514454841614 
		1;
	setAttr -s 19 ".koy[12:18]"  0 0 0 0 0.99387526512145996 -0.99024957418441772 
		0;
createNode animCurveTL -n "R_foot_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 0 24 0 32 0 36 6.223669720551964 
		43 6.223669720551964 48 0 55 0 56 2.7346538296360281 68 -2.1501763228820518 80 2.7346538296360281 
		81 5.160855568305073 82 1.1330512523226695 88 -4.8518707476538978 95 5.160855568305073;
	setAttr -s 15 ".kit[7:14]"  16 10 10 1 10 10 10 1;
	setAttr -s 15 ".kot[7:14]"  16 10 10 1 1 10 10 1;
	setAttr -s 15 ".kix[10:14]"  1 0.051961027085781097 0.029117252677679062 
		0.13328200578689575 0.049867164343595505;
	setAttr -s 15 ".kiy[10:14]"  0 -0.99864906072616577 -0.99957603216171265 
		0.99107813835144043 0.99875593185424805;
	setAttr -s 15 ".kox[10:14]"  1 0.14945277571678162 0.029117252677679062 
		0.13328200578689575 0.14945277571678162;
	setAttr -s 15 ".koy[10:14]"  0 -0.98876887559890747 -0.99957603216171265 
		0.99107813835144043 -0.98876887559890747;
createNode animCurveTL -n "root1_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 24 0 29 0.1370234273121298 35 0.1140097227917983 
		40 0.93403544109311742 48 0 55 0 56 0 68 0 80 0 81 0 88 0 95 0;
	setAttr -s 14 ".kit[2:13]"  1 10 10 1 9 16 10 10 
		1 10 10 1;
	setAttr -s 14 ".kot[2:13]"  1 10 10 1 9 16 10 10 
		1 1 10 1;
	setAttr -s 14 ".kix[2:13]"  1 1 1 1 0.5561223030090332 1 1 1 1 1 1 
		1;
	setAttr -s 14 ".kiy[2:13]"  0 0 0 0 -0.83110052347183228 0 0 0 0 0 
		0 0;
	setAttr -s 14 ".kox[2:13]"  1 1 1 1 0.5561223030090332 1 1 1 1 1 1 
		1;
	setAttr -s 14 ".koy[2:13]"  0 0 0 0 -0.83110052347183228 0 0 0 0 0 
		0 0;
createNode animCurveTL -n "root1_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 1 -0.9307088781569739 9 -1.3732080039117225 
		24 -0.9307088781569739 29 -2.0105537093867216 32 -0.79817834410927979 35 -1.8291888794790565 
		40 -1.8291888794790565 43 -3.0736873817971682 48 -0.9307088781569739 55 -0.9307088781569739 
		56 -0.68918060506508105 60 -0.76738363620113992 64 -0.042998897168358141 68 -0.68918060506508105 
		72 -0.85335074882674489 76 -0.072012540413030734 80 -0.68918060506508105 81 -2.6695574518760115 
		84 0.0092827901853631545 88 -2.5981190345558201 91 -0.10249567540920701 95 -2.6695574518760115;
	setAttr -s 23 ".kit[1:22]"  3 10 1 10 10 10 1 9 
		9 16 10 10 10 10 10 10 1 10 1 10 1 1;
	setAttr -s 23 ".kot[1:22]"  3 10 1 10 10 10 1 9 
		9 16 10 10 10 10 10 10 1 1 1 10 1 1;
	setAttr -s 23 ".kix[3:22]"  1 0.92924648523330688 0.80943375825881958 
		1 0.98080712556838989 0.34783092141151428 0.22721746563911438 1 0.78698796033859253 
		0.45844778418540955 0.97356569766998291 0.38041698932647705 0.47521814703941345 0.89709854125976563 
		1 0.23210279643535614 0.057812206447124481 0.93377512693405151 0.056718923151493073 
		0.23210279643535614;
	setAttr -s 23 ".kiy[3:22]"  0 0.36946055293083191 0.5872112512588501 
		0 -0.19498035311698914 0.93755728006362915 0.97384405136108398 0 0.61696827411651611 
		0.8887212872505188 0.22840741276741028 -0.92481505870819092 0.87986797094345093 0.44183051586151123 
		0 0.97269135713577271 0.99832749366760254 -0.35786029696464539 0.99839025735855103 
		0.97269135713577271;
	setAttr -s 23 ".kox[3:22]"  1 0.92924648523330688 0.80943375825881958 
		1 0.98080712556838989 0.34783092141151428 0.22721746563911438 1 0.78698796033859253 
		0.45844778418540955 0.97356569766998291 0.38041698932647705 0.47521814703941345 0.89709854125976563 
		1 0.60776960849761963 0.057812187820672989 0.93377512693405151 0.056718897074460983 
		0.60776960849761963;
	setAttr -s 23 ".koy[3:22]"  0 0.36946055293083191 0.5872112512588501 
		0 -0.19498035311698914 0.93755728006362915 0.97384405136108398 0 0.61696827411651611 
		0.8887212872505188 0.22840741276741028 -0.92481505870819092 0.87986797094345093 0.44183051586151123 
		0 0.7941133975982666 0.99832749366760254 -0.35786029696464539 0.99839019775390625 
		0.7941133975982666;
createNode animCurveTL -n "root1_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 -1.0856533578959746 24 -1.0856533578959746 
		29 -1.8425832252025567 35 2.4241613445477204 40 2.4241613445477204 43 0.19031627940413443 
		48 -1.0856533578959746 55 -1.0856533578959746 56 0 68 0 80 0 81 0 88 0 95 0;
	setAttr -s 15 ".kit[2:14]"  1 10 10 1 9 9 16 10 
		10 1 10 10 1;
	setAttr -s 15 ".kot[2:14]"  1 10 10 1 9 9 16 10 
		10 1 1 10 1;
	setAttr -s 15 ".kix[2:14]"  1 0.12948682904243469 1 0.72278618812561035 
		0.094546355307102203 0.3648470938205719 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[2:14]"  0 0.99158120155334473 0 0.69107174873352051 
		-0.99552041292190552 -0.93106740713119507 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[2:14]"  1 0.12948682904243469 1 0.72278618812561035 
		0.094546355307102203 0.3648470938205719 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[2:14]"  0 0.99158120155334473 0 0.69107174873352051 
		-0.99552041292190552 -0.93106740713119507 0 0 0 0 0 0 0;
createNode animCurveTL -n "chest_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[0:8]"  10 10 10 9 16 16 16 16 
		16;
	setAttr -s 9 ".kot[0:8]"  10 10 10 9 16 16 16 16 
		16;
createNode animCurveTL -n "chest_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[0:8]"  10 10 10 9 16 16 16 16 
		16;
	setAttr -s 9 ".kot[0:8]"  10 10 10 9 16 16 16 16 
		16;
createNode animCurveTL -n "chest_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[0:8]"  10 10 10 9 16 16 16 16 
		16;
	setAttr -s 9 ".kot[0:8]"  10 10 10 9 16 16 16 16 
		16;
createNode animCurveTL -n "L_shoulder_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[2:8]"  1 9 16 10 1 10 1;
	setAttr -s 9 ".kot[2:8]"  1 9 16 10 1 1 1;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "L_shoulder_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[2:8]"  1 9 16 10 1 10 1;
	setAttr -s 9 ".kot[2:8]"  1 9 16 10 1 1 1;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "L_shoulder_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[2:8]"  1 9 16 10 1 10 1;
	setAttr -s 9 ".kot[2:8]"  1 9 16 10 1 1 1;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "L_elbow_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[1:8]"  16 10 9 16 10 1 10 1;
	setAttr -s 9 ".kot[1:8]"  16 10 9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "L_elbow_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[1:8]"  16 10 9 16 10 1 10 1;
	setAttr -s 9 ".kot[1:8]"  16 10 9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "L_elbow_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[1:8]"  16 10 9 16 10 1 10 1;
	setAttr -s 9 ".kot[1:8]"  16 10 9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "L_wrist_translateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[0:8]"  10 16 1 9 16 10 1 10 
		1;
	setAttr -s 9 ".kot[0:8]"  10 16 1 9 16 10 1 1 
		1;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "L_wrist_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[0:8]"  10 16 1 9 16 10 1 10 
		1;
	setAttr -s 9 ".kot[0:8]"  10 16 1 9 16 10 1 1 
		1;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "L_wrist_translateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[0:8]"  10 16 1 9 16 10 1 10 
		1;
	setAttr -s 9 ".kot[0:8]"  10 16 1 9 16 10 1 1 
		1;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "L_fingers1_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "L_fingers1_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "L_fingers1_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "L_fingers2_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "L_fingers2_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "L_fingers2_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "L_thumb_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[2:8]"  1 9 16 10 1 10 1;
	setAttr -s 9 ".kot[2:8]"  1 9 16 10 1 1 1;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "L_thumb_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[2:8]"  1 9 16 10 1 10 1;
	setAttr -s 9 ".kot[2:8]"  1 9 16 10 1 1 1;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "L_thumb_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[2:8]"  1 9 16 10 1 10 1;
	setAttr -s 9 ".kot[2:8]"  1 9 16 10 1 1 1;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "R_shoulder_translateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[0:8]"  10 16 1 9 16 10 1 10 
		1;
	setAttr -s 9 ".kot[0:8]"  10 16 1 9 16 10 1 1 
		1;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "R_shoulder_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[0:8]"  10 16 1 9 16 10 1 10 
		1;
	setAttr -s 9 ".kot[0:8]"  10 16 1 9 16 10 1 1 
		1;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "R_shoulder_translateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[0:8]"  10 16 1 9 16 10 1 10 
		1;
	setAttr -s 9 ".kot[0:8]"  10 16 1 9 16 10 1 1 
		1;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "R_elbow_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 50 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[1:8]"  16 10 9 16 10 1 10 1;
	setAttr -s 9 ".kot[1:8]"  16 10 9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "R_elbow_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 50 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[1:8]"  16 10 9 16 10 1 10 1;
	setAttr -s 9 ".kot[1:8]"  16 10 9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "R_elbow_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 50 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[1:8]"  16 10 9 16 10 1 10 1;
	setAttr -s 9 ".kot[1:8]"  16 10 9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "R_wrist_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "R_wrist_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "R_wrist_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "R_fingers1_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "R_fingers1_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "R_fingers1_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "R_fingers2_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "R_fingers2_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "R_fingers2_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "R_thumb_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "R_thumb_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "R_thumb_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "neck_translateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[0:8]"  10 10 1 9 16 1 1 16 
		16;
	setAttr -s 9 ".kot[0:8]"  10 10 1 9 16 1 1 16 
		16;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "neck_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[0:8]"  10 10 1 9 16 1 1 16 
		16;
	setAttr -s 9 ".kot[0:8]"  10 10 1 9 16 1 1 16 
		16;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "neck_translateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[0:8]"  10 10 1 9 16 1 1 16 
		16;
	setAttr -s 9 ".kot[0:8]"  10 10 1 9 16 1 1 16 
		16;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "feather1_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 1 0 24 0 48 0 55 0 56 0 69 0 80 0 81 
		0 89 0 95 0;
	setAttr -s 11 ".kit[3:10]"  9 16 10 1 1 10 1 1;
	setAttr -s 11 ".kot[3:10]"  9 16 10 1 1 1 1 1;
	setAttr -s 11 ".kix[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".kiy[6:10]"  0 0 0 0 0;
	setAttr -s 11 ".kox[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".koy[6:10]"  0 0 0 0 0;
createNode animCurveTL -n "feather1_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 1 0 24 0 48 0 55 0 56 0 69 0 80 0 81 
		0 89 0 95 0;
	setAttr -s 11 ".kit[3:10]"  9 16 10 1 1 10 1 1;
	setAttr -s 11 ".kot[3:10]"  9 16 10 1 1 1 1 1;
	setAttr -s 11 ".kix[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".kiy[6:10]"  0 0 0 0 0;
	setAttr -s 11 ".kox[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".koy[6:10]"  0 0 0 0 0;
createNode animCurveTL -n "feather1_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 1 0 24 0 48 0 55 0 56 0 69 0 80 0 81 
		0 89 0 95 0;
	setAttr -s 11 ".kit[3:10]"  9 16 10 1 1 10 1 1;
	setAttr -s 11 ".kot[3:10]"  9 16 10 1 1 1 1 1;
	setAttr -s 11 ".kix[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".kiy[6:10]"  0 0 0 0 0;
	setAttr -s 11 ".kox[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".koy[6:10]"  0 0 0 0 0;
createNode animCurveTL -n "feather2_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "feather2_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "feather2_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "feather3_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "feather3_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "feather3_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "L_foot_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[4:8]"  16 9 1 9 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 9 16 5 5 5 
		5;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
createNode animCurveTA -n "L_foot_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 24 0 48 0 55 0 56 0 62 32.212450450045665 
		65 -13.840974547858966 68 0 80 0 81 70.911565371787418 85 32.212450450045665 86 -13.840974547858966 
		88 -43.88590813441742 89 0 91 0 95 70.911565371787418;
	setAttr -s 17 ".kit[3:16]"  9 16 10 10 10 10 1 10 
		10 10 10 10 10 1;
	setAttr -s 17 ".kot[3:16]"  9 16 10 10 10 10 1 1 
		10 10 10 10 10 1;
	setAttr -s 17 ".kix[9:16]"  1 0.34747031331062317 0.13946437835693359 
		0.093700610101222992 0.45956707000732422 1 1 0.34747031331062317;
	setAttr -s 17 ".kiy[9:16]"  0 0.93769103288650513 -0.9902271032333374 
		-0.99560046195983887 0.88814300298690796 0 0 0.93769103288650513;
	setAttr -s 17 ".kox[9:16]"  1 1 0.13946437835693359 0.093700610101222992 
		0.45956707000732422 1 1 1;
	setAttr -s 17 ".koy[9:16]"  0 0 -0.9902271032333374 -0.99560046195983887 
		0.88814300298690796 0 0 0;
createNode animCurveTA -n "L_foot_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 1 0 24 0 48 0 55 0 56 0 68 0 80 0 81 
		0 88 0 95 0;
	setAttr -s 11 ".kit[3:10]"  9 16 10 10 1 10 10 1;
	setAttr -s 11 ".kot[3:10]"  9 16 10 10 1 1 10 1;
	setAttr -s 11 ".kix[7:10]"  1 1 1 1;
	setAttr -s 11 ".kiy[7:10]"  0 0 0 0;
	setAttr -s 11 ".kox[7:10]"  1 1 1 1;
	setAttr -s 11 ".koy[7:10]"  0 0 0 0;
createNode animCurveTA -n "L_foot_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 1 0 24 0 48 0 55 0 56 0 68 0 80 0 81 
		0 88 0 95 0;
	setAttr -s 11 ".kit[3:10]"  9 16 10 10 1 10 10 1;
	setAttr -s 11 ".kot[3:10]"  9 16 10 10 1 1 10 1;
	setAttr -s 11 ".kix[7:10]"  1 1 1 1;
	setAttr -s 11 ".kiy[7:10]"  0 0 0 0;
	setAttr -s 11 ".kox[7:10]"  1 1 1 1;
	setAttr -s 11 ".koy[7:10]"  0 0 0 0;
createNode animCurveTU -n "L_foot_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "L_foot_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "L_foot_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "R_foot_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 1 1 24 1 32 1 48 1 55 1 56 1 80 1 81 
		1 82 1 95 1;
	setAttr -s 11 ".kit[0:10]"  9 9 9 9 10 16 9 1 
		9 9 1;
	setAttr -s 11 ".kot[4:10]"  10 16 5 5 5 5 5;
	setAttr -s 11 ".kix[7:10]"  1 1 1 1;
	setAttr -s 11 ".kiy[7:10]"  0 0 0 0;
createNode animCurveTA -n "R_foot_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 0 24 0 32 0 34 24.835402083584707 
		36 0 48 0 55 0 56 0 68 0 74 33.677416477185801 77 -16.942056041759521 80 0 81 -30.787548677921318 
		82 0 84 0 88 77.804404600237007 92 33.677416477185801 94 -16.942056041759521 95 -30.787548677921318;
	setAttr -s 20 ".kit[7:19]"  16 10 10 10 10 1 10 10 
		10 10 10 10 1;
	setAttr -s 20 ".kot[7:19]"  16 10 10 10 10 1 1 10 
		10 10 10 10 1;
	setAttr -s 20 ".kix[12:19]"  1 1 1 1 0.49330034852027893 0.14948321878910065 
		0.11041932553052902 1;
	setAttr -s 20 ".kiy[12:19]"  0 0 0 0 0.86985909938812256 -0.98876428604125977 
		-0.9938850998878479 0;
	setAttr -s 20 ".kox[12:19]"  1 1 1 1 0.49330034852027893 0.14948321878910065 
		0.11041932553052902 1;
	setAttr -s 20 ".koy[12:19]"  0 0 0 0 0.86985909938812256 -0.98876428604125977 
		-0.9938850998878479 0;
createNode animCurveTA -n "R_foot_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 -26.362993263172505 24 -26.362993263172505 
		32 -26.362993263172505 36 3.0611068812658764 43 3.0611068812658764 48 -26.362993263172505 
		55 -26.362993263172505 56 0 68 0 80 0 81 0 82 0 88 0 95 0;
	setAttr -s 15 ".kit[7:14]"  16 10 10 1 10 10 10 1;
	setAttr -s 15 ".kot[7:14]"  16 10 10 1 1 10 10 1;
	setAttr -s 15 ".kix[10:14]"  1 1 1 1 1;
	setAttr -s 15 ".kiy[10:14]"  0 0 0 0 0;
	setAttr -s 15 ".kox[10:14]"  1 1 1 1 1;
	setAttr -s 15 ".koy[10:14]"  0 0 0 0 0;
createNode animCurveTA -n "R_foot_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 1 0 24 0 32 0 36 0 48 0 55 0 56 0 68 
		0 80 0 81 0 82 0 88 0 95 0;
	setAttr -s 14 ".kit[6:13]"  16 10 10 1 10 10 10 1;
	setAttr -s 14 ".kot[6:13]"  16 10 10 1 1 10 10 1;
	setAttr -s 14 ".kix[9:13]"  1 1 1 1 1;
	setAttr -s 14 ".kiy[9:13]"  0 0 0 0 0;
	setAttr -s 14 ".kox[9:13]"  1 1 1 1 1;
	setAttr -s 14 ".koy[9:13]"  0 0 0 0 0;
createNode animCurveTU -n "R_foot_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 1 1 24 1 32 1 48 1 55 1 56 1 80 1 81 
		1 82 1 95 1;
	setAttr -s 11 ".kit[5:10]"  16 10 1 10 10 1;
	setAttr -s 11 ".kot[5:10]"  16 10 1 1 10 1;
	setAttr -s 11 ".kix[7:10]"  1 1 1 1;
	setAttr -s 11 ".kiy[7:10]"  0 0 0 0;
	setAttr -s 11 ".kox[7:10]"  1 1 1 1;
	setAttr -s 11 ".koy[7:10]"  0 0 0 0;
createNode animCurveTU -n "R_foot_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 1 1 24 1 32 1 48 1 55 1 56 1 80 1 81 
		1 82 1 95 1;
	setAttr -s 11 ".kit[5:10]"  16 10 1 10 10 1;
	setAttr -s 11 ".kot[5:10]"  16 10 1 1 10 1;
	setAttr -s 11 ".kix[7:10]"  1 1 1 1;
	setAttr -s 11 ".kiy[7:10]"  0 0 0 0;
	setAttr -s 11 ".kox[7:10]"  1 1 1 1;
	setAttr -s 11 ".koy[7:10]"  0 0 0 0;
createNode animCurveTU -n "R_foot_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 1 1 24 1 32 1 48 1 55 1 56 1 80 1 81 
		1 82 1 95 1;
	setAttr -s 11 ".kit[5:10]"  16 10 1 10 10 1;
	setAttr -s 11 ".kot[5:10]"  16 10 1 1 10 1;
	setAttr -s 11 ".kix[7:10]"  1 1 1 1;
	setAttr -s 11 ".kiy[7:10]"  0 0 0 0;
	setAttr -s 11 ".kox[7:10]"  1 1 1 1;
	setAttr -s 11 ".koy[7:10]"  0 0 0 0;
createNode animCurveTU -n "root1_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[0:8]"  9 9 1 9 16 9 1 9 
		1;
	setAttr -s 9 ".kot[3:8]"  9 16 5 5 5 5;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "root1_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 17.810346668911141 9 18.454726508521773 
		24 17.810346668911141 29 27.17852390142928 35 49.30120269318428 40 49.30120269318428 
		48 17.810346668911141 55 17.810346668911141 56 13.126452123635515 68 10.469324676445121 
		80 13.126452123635515 81 22.070874660461968 88 21.862282191923118 95 22.070874660461968;
	setAttr -s 15 ".kit[1:14]"  16 1 1 10 10 1 9 16 
		10 10 1 10 10 1;
	setAttr -s 15 ".kot[1:14]"  16 1 1 10 10 1 9 16 
		10 10 1 1 10 1;
	setAttr -s 15 ".kix[2:14]"  0.99437391757965088 1 0.64044618606567383 
		1 0.97933095693588257 0.75094044208526611 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[2:14]"  0.10592727363109589 0 0.76800310611724854 
		0 -0.20226447284221649 -0.660369873046875 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[2:14]"  0.99437391757965088 1 0.64044618606567383 
		1 0.97933095693588257 0.75094044208526611 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[2:14]"  0.10592728108167648 0 0.76800310611724854 
		0 -0.20226447284221649 -0.660369873046875 0 0 0 0 0 0 0;
createNode animCurveTA -n "root1_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 -19.384134565594906 24 -19.384134565594906 
		35 34.568958620708301 40 34.568958620708301 48 -19.384134565594906 55 -19.384134565594906 
		56 27.045514114865657 68 -3.2141974871971457 80 27.045514114865657 81 52.901185560553984 
		88 -38.978586692811973 95 52.901185560553984;
	setAttr -s 13 ".kit[2:12]"  1 10 1 9 16 10 10 1 
		10 10 1;
	setAttr -s 13 ".kot[2:12]"  1 10 1 9 16 10 10 1 
		1 10 1;
	setAttr -s 13 ".kix[2:12]"  0.98881381750106812 1 1 0.55300062894821167 
		1 0.88684654235839844 1 0.72577857971191406 0.27787497639656067 1 0.28358882665634155;
	setAttr -s 13 ".kiy[2:12]"  -0.14915500581264496 0 0 -0.83318078517913818 
		0 0.46206405758857727 0 0.68792837858200073 -0.96061724424362183 0 -0.95894593000411987;
	setAttr -s 13 ".kox[2:12]"  0.98881381750106812 1 1 0.55300062894821167 
		1 0.88684654235839844 1 0.72577857971191406 0.75505393743515015 1 0.75505393743515015;
	setAttr -s 13 ".koy[2:12]"  -0.14915500581264496 0 0 -0.83318078517913818 
		0 0.46206405758857727 0 0.68792837858200073 0.65566271543502808 0 0.65566271543502808;
createNode animCurveTA -n "root1_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 -4.5103986365922308 24 -4.5103986365922308 
		35 34.063753524126177 40 34.063753524126177 48 -4.5103986365922308 55 -4.5103986365922308 
		56 6.1208064516103278 68 -2.9780580470919316 80 6.1208064516103278 81 22.336313037099853 
		88 -18.093948304185322 95 22.336313037099853;
	setAttr -s 13 ".kit[2:12]"  1 10 1 9 16 10 10 1 
		10 10 1;
	setAttr -s 13 ".kot[2:12]"  1 10 1 9 16 10 10 1 
		1 10 1;
	setAttr -s 13 ".kix[2:12]"  0.99999904632568359 1 1 0.6803593635559082 
		1 0.99878329038619995 1 0.99181127548217773 0.61927849054336548 1 0.5476716160774231;
	setAttr -s 13 ".kiy[2:12]"  0.0013964668614789844 0 0 -0.73287862539291382 
		0 0.049314197152853012 0 0.12771159410476685 -0.78517144918441772 0 -0.83669334650039673;
	setAttr -s 13 ".kox[2:12]"  0.99999904632568359 1 1 0.6803593635559082 
		1 0.99878329038619995 1 0.99181127548217773 0.99663132429122925 1 0.99663132429122925;
	setAttr -s 13 ".koy[2:12]"  0.0013964668614789844 0 0 -0.73287862539291382 
		0 0.049314197152853012 0 0.12771159410476685 0.082013241946697235 0 0.082013241946697235;
createNode animCurveTU -n "root1_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[2:8]"  1 9 16 10 1 10 1;
	setAttr -s 9 ".kot[2:8]"  1 9 16 10 1 1 1;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "root1_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[2:8]"  1 9 16 10 1 10 1;
	setAttr -s 9 ".kot[2:8]"  1 9 16 10 1 1 1;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "root1_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[2:8]"  1 9 16 10 1 10 1;
	setAttr -s 9 ".kot[2:8]"  1 9 16 10 1 1 1;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "root1_KnifeAttach";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 24 1 29 1 31 0 47 0 48 1 55 1 56 
		1 80 1 81 1 95 1;
	setAttr -s 12 ".kit[2:11]"  1 10 10 10 9 16 10 1 
		10 1;
	setAttr -s 12 ".kot[2:11]"  1 10 10 10 9 16 10 1 
		1 1;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 0.31622779369354248 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0.94868326187133789 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 0.31622779369354248 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0.94868326187133789 0 0 0 0 0;
createNode animCurveTU -n "chest_visibility";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[0:8]"  9 9 9 9 16 16 16 16 
		16;
	setAttr -s 9 ".kot[0:8]"  5 5 5 9 16 16 16 16 
		16;
createNode animCurveTA -n "chest_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 23.784251378016155 5 22.775921306365838 
		14 25.348125590644376 24 23.784251378016155 29 35.638667506961291 34 -63.750172944747987 
		37 42.11167175752167 48 23.784251378016155 55 23.784251378016155 56 8.5908262368592876 
		68 7.6276363205739504 80 8.5908262368592876 81 0 88 0 95 0;
	setAttr -s 16 ".kit[8:15]"  9 16 16 10 16 16 10 16;
	setAttr -s 16 ".kot[8:15]"  9 16 16 10 16 16 10 16;
createNode animCurveTA -n "chest_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 1 -0.24832704591397842 24 -0.24832704591397842 
		29 -27.1476786384824 34 -79.789062954536405 37 -31.411464087618793 48 -0.24832704591397842 
		55 -0.24832704591397842 56 -39.194763840333366 68 29.287764042742072 80 -39.194763840333366 
		81 -92.383701463303623 88 83.689611218988361 95 -92.383701463303623;
	setAttr -s 14 ".kit[6:13]"  9 16 16 10 16 16 10 16;
	setAttr -s 14 ".kot[6:13]"  9 16 16 10 16 16 10 16;
createNode animCurveTA -n "chest_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 1 -1.9537862480464159 24 -1.9537862480464159 
		29 -4.7444199949961439 34 61.965779492511096 37 1.4475230127057721 48 -1.9537862480464159 
		55 -1.9537862480464159 56 -2.7812792701161491 68 6.4205461179066647 80 -2.7812792701161491 
		81 0 88 0 95 0;
	setAttr -s 14 ".kit[6:13]"  9 16 16 10 16 16 10 16;
	setAttr -s 14 ".kot[6:13]"  9 16 16 10 16 16 10 16;
createNode animCurveTU -n "chest_scaleX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[0:8]"  10 10 10 9 16 16 16 16 
		16;
	setAttr -s 9 ".kot[0:8]"  10 10 10 9 16 16 16 16 
		16;
createNode animCurveTU -n "chest_scaleY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[0:8]"  10 10 10 9 16 16 16 16 
		16;
	setAttr -s 9 ".kot[0:8]"  10 10 10 9 16 16 16 16 
		16;
createNode animCurveTU -n "chest_scaleZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[0:8]"  10 10 10 9 16 16 16 16 
		16;
	setAttr -s 9 ".kot[0:8]"  10 10 10 9 16 16 16 16 
		16;
createNode animCurveTU -n "R_shoulder_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[1:8]"  16 1 9 16 9 1 9 1;
	setAttr -s 9 ".kot[0:8]"  5 16 1 9 16 5 5 5 
		5;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 0 0 0 0;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "R_shoulder_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 1 -33.995989996255702 12 -29.872388147476631 
		24 -33.995989996255702 30 -0.41068895239589132 34 -85.760401160207266 37 -101.75896898996238 
		41 -104.86328421738712 48 -44.460527828242647 55 -33.995989996255702 56 -5.9342857346062114 
		68 -6.3589999271490116 80 -5.9342857346062114 81 -11.750551823736004 85 -35.556716371698414 
		88 -81.063365900016976 92 -17.303130775514472 95 -11.750551823736004;
	setAttr -s 18 ".kit[1:17]"  16 10 16 10 10 10 10 9 
		16 10 10 1 10 10 10 10 1;
	setAttr -s 18 ".kot[1:17]"  16 10 16 10 10 10 10 9 
		16 10 10 1 1 10 10 10 1;
	setAttr -s 18 ".kix[12:17]"  1 0.37375560402870178 0.23438334465026855 
		0.67525923252105713 0.23438316583633423 0.37375560402870178;
	setAttr -s 18 ".kiy[12:17]"  0 -0.92752724885940552 -0.97214424610137939 
		0.73758059740066528 0.97214430570602417 -0.92752724885940552;
	setAttr -s 18 ".kox[12:17]"  1 1 0.23438334465026855 0.67525923252105713 
		0.23438316583633423 1;
	setAttr -s 18 ".koy[12:17]"  0 0 -0.97214424610137939 0.73758059740066528 
		0.97214430570602417 0;
createNode animCurveTA -n "R_shoulder_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 1 -38.066642466610958 12 -29.486496357010644 
		24 -38.066642466610958 30 -18.699601559866654 34 -26.825752940672103 37 54.39435602016421 
		41 40.390387551784116 48 -35.352337136264737 55 -38.066642466610958 56 -13.962452261778301 
		68 25.058173240514535 80 -13.962452261778301 81 -46.222247709371516 85 11.835865047319192 
		88 23.916991877296862 92 -25.090743237050503 95 -46.222247709371516;
	setAttr -s 18 ".kit[1:17]"  16 10 1 10 10 10 10 9 
		16 10 10 1 10 10 10 10 1;
	setAttr -s 18 ".kot[1:17]"  16 10 1 10 10 10 10 9 
		16 10 10 1 1 10 10 10 1;
	setAttr -s 18 ".kix[3:17]"  1 0.9047248363494873 0.22287645936012268 
		0.24127492308616638 0.2808322012424469 0.39191821217536926 1 0.44120761752128601 
		1 1 0.41991972923278809 0.23177085816860199 0.41229823231697083 0.23177067935466766 
		0.41991972923278809;
	setAttr -s 18 ".kiy[3:17]"  0 0.425996333360672 0.97484666109085083 
		0.97045683860778809 -0.95975691080093384 -0.92000007629394531 0 0.89740496873855591 
		0 0 0.90756130218505859 0.97277039289474487 -0.91104894876480103 -0.97277039289474487 
		0.90756130218505859;
	setAttr -s 18 ".kox[3:17]"  1 0.9047248363494873 0.22287645936012268 
		0.24127492308616638 0.2808322012424469 0.39191821217536926 1 0.44120761752128601 
		1 1 0.28293544054031372 0.23177085816860199 0.41229823231697083 0.23177067935466766 
		0.28293544054031372;
	setAttr -s 18 ".koy[3:17]"  0 0.425996333360672 0.97484666109085083 
		0.97045683860778809 -0.95975691080093384 -0.92000007629394531 0 0.89740496873855591 
		0 0 0.95913892984390259 0.97277039289474487 -0.91104894876480103 -0.97277039289474487 
		0.95913892984390259;
createNode animCurveTA -n "R_shoulder_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 1 68.818053311888136 12 69.993260906900716 
		24 68.818053311888136 30 67.080547729169083 34 -1.0593896243259322 37 -6.3331926515782309 
		41 -62.170614435196221 48 98.94156380552657 55 68.818053311888136 56 64.694625191007262 
		68 60.55553730438151 80 64.694625191007262 81 42.934749461005545 85 64.451863895441107 
		88 -16.64928532188609 92 66.064562715204019 95 42.934749461005545;
	setAttr -s 18 ".kit[1:17]"  16 10 1 10 10 10 10 9 
		16 10 10 1 10 10 10 10 1;
	setAttr -s 18 ".kot[1:17]"  16 10 1 10 10 10 10 9 
		16 10 10 1 1 10 10 10 1;
	setAttr -s 18 ".kix[3:17]"  1 1 0.22195358574390411 0.26377221941947937 
		0.24203142523765564 0.24723480641841888 1 0.96633988618850708 1 1 0.99979323148727417 
		0.27004563808441162 0.99537575244903564 0.27004542946815491 0.99979323148727417;
	setAttr -s 18 ".kiy[3:17]"  0 0 -0.97505724430084229 -0.96458500623703003 
		0.97026842832565308 0.9689556360244751 0 -0.25726908445358276 0 0 -0.020333301275968552 
		-0.96284753084182739 0.096057474613189697 0.96284753084182739 -0.020333301275968552;
	setAttr -s 18 ".kox[3:17]"  1 1 0.22195358574390411 0.26377221941947937 
		0.24203142523765564 0.24723480641841888 1 0.96633988618850708 1 1 0.91405802965164185 
		0.27004563808441162 0.99537575244903564 0.27004542946815491 0.91405802965164185;
	setAttr -s 18 ".koy[3:17]"  0 0 -0.97505724430084229 -0.96458500623703003 
		0.97026842832565308 0.9689556360244751 0 -0.25726908445358276 0 0 -0.40558341145515442 
		-0.96284753084182739 0.096057474613189697 0.96284753084182739 -0.40558341145515442;
createNode animCurveTU -n "R_shoulder_scaleX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[0:8]"  10 16 1 9 16 10 1 10 
		1;
	setAttr -s 9 ".kot[0:8]"  10 16 1 9 16 10 1 1 
		1;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "R_shoulder_scaleY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[0:8]"  10 16 1 9 16 10 1 10 
		1;
	setAttr -s 9 ".kot[0:8]"  10 16 1 9 16 10 1 1 
		1;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "R_shoulder_scaleZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[0:8]"  10 16 1 9 16 10 1 10 
		1;
	setAttr -s 9 ".kot[0:8]"  10 16 1 9 16 10 1 1 
		1;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "neck_visibility";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[0:8]"  9 9 1 9 16 1 1 16 
		16;
	setAttr -s 9 ".kot[0:8]"  5 5 5 9 16 5 5 16 
		16;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "neck_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 -35.820601349396334 9 -35.569445586427939 
		17 -32.241045179555357 24 -35.820601349396334 28 -36.156599102581573 33 -32.125088112249557 
		39 -57.689395080072458 48 -35.820601349396334 55 -35.820601349396334 56 -11.537068413982187 
		69 -8.9280357381129374 80 -11.537068413982187 81 -7.0251663088278198 88 -11.115109249257879 
		93 -7.5296009707776239 95 -7.0251663088278198;
	setAttr -s 17 ".kit[0:16]"  10 16 10 10 1 9 9 10 
		9 16 1 9 16 16 9 10 16;
	setAttr -s 17 ".kot[0:16]"  10 16 10 10 1 9 9 10 
		9 16 1 9 16 16 9 10 16;
	setAttr -s 17 ".kix[4:16]"  1 0.98552876710891724 0.77328038215637207 
		0.99471718072891235 0.86783349514007568 1 1 1 1 1 0.99984502792358398 1 1;
	setAttr -s 17 ".kiy[4:16]"  0 0.16950798034667969 -0.63406425714492798 
		-0.10265301913022995 0.49685516953468323 0 0 0 0 0 -0.017605362460017204 0 0;
	setAttr -s 17 ".kox[4:16]"  1 0.98552876710891724 0.77328038215637207 
		0.99471718072891235 0.86783349514007568 1 1 1 1 1 0.99984502792358398 1 1;
	setAttr -s 17 ".koy[4:16]"  0 0.16950798034667969 -0.63406425714492798 
		-0.10265301913022995 0.49685516953468323 0 0 0 0 0 -0.017605362460017204 0 0;
createNode animCurveTA -n "neck_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 22.702379508767905 24 22.702379508767905 
		28 11.905489267011133 33 26.112848895274244 39 -23.265693337471237 48 22.702379508767905 
		55 22.702379508767905 56 13.110176540246551 69 -22.664964053760031 80 13.110176540246551 
		81 38.762573458919348 88 -44.528430991290925 93 15.640531212027474 95 38.762573458919348;
	setAttr -s 15 ".kit[0:14]"  10 10 1 9 9 10 9 16 
		1 9 16 16 9 10 16;
	setAttr -s 15 ".kot[0:14]"  10 10 1 9 9 10 9 16 
		1 9 16 16 9 10 16;
	setAttr -s 15 ".kix[2:14]"  0.99919909238815308 0.98763543367385864 
		0.59828072786331177 0.99549543857574463 0.63910216093063354 1 1 1 0.42266380786895752 
		1 0.77816206216812134 0.19671665132045746 1;
	setAttr -s 15 ".kiy[2:14]"  0.040016490966081619 0.15676781535148621 
		-0.80128657817840576 -0.094809263944625854 0.76912188529968262 0 0 0 0.90628659725189209 
		0 -0.6280636191368103 0.98046034574508667 0;
	setAttr -s 15 ".kox[2:14]"  0.99919909238815308 0.98763543367385864 
		0.59828072786331177 0.99549543857574463 0.63910216093063354 1 1 1 0.42266380786895752 
		1 0.77816206216812134 0.19671665132045746 1;
	setAttr -s 15 ".koy[2:14]"  0.040016490966081619 0.15676781535148621 
		-0.80128657817840576 -0.094809263944625854 0.76912188529968262 0 0 0 0.90628659725189209 
		0 -0.6280636191368103 0.98046034574508667 0;
createNode animCurveTA -n "neck_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 -13.636946585115368 24 -13.636946585115368 
		28 -14.00251889654381 33 -26.166786100136651 39 18.31480690984236 48 -13.636946585115368 
		55 -13.636946585115368 56 -0.044709112021740806 69 -1.6878015042934151 80 -0.044709112021740806 
		81 0.29183058881804363 88 2.5239980217412086 93 1.6765080914007975 95 0.29183058881804363;
	setAttr -s 15 ".kit[0:14]"  10 10 1 9 9 10 9 16 
		1 9 16 16 9 10 16;
	setAttr -s 15 ".kot[0:14]"  10 10 1 9 9 10 9 16 
		1 9 16 16 9 10 16;
	setAttr -s 15 ".kix[2:14]"  0.9993559718132019 0.86384207010269165 
		0.63063228130340576 0.94388806819915771 0.76702731847763062 1 1 1 0.99762088060379028 
		0.99107611179351807 0.99883395433425903 1 1;
	setAttr -s 15 ".kiy[2:14]"  0.035882890224456787 -0.50376266241073608 
		0.77608180046081543 0.33026561141014099 -0.64161437749862671 0 0 0 0.068937793374061584 
		0.13329687714576721 0.048278003931045532 0 0;
	setAttr -s 15 ".kox[2:14]"  0.9993559718132019 0.86384207010269165 
		0.63063228130340576 0.94388806819915771 0.76702731847763062 1 1 1 0.99762088060379028 
		0.99107611179351807 0.99883395433425903 1 1;
	setAttr -s 15 ".koy[2:14]"  0.035882890224456787 -0.50376266241073608 
		0.77608180046081543 0.33026561141014099 -0.64161437749862671 0 0 0 0.068937793374061584 
		0.13329687714576721 0.048278003931045532 0 0;
createNode animCurveTU -n "neck_scaleX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[0:8]"  10 10 1 9 16 1 1 16 
		16;
	setAttr -s 9 ".kot[0:8]"  10 10 1 9 16 1 1 16 
		16;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "neck_scaleY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[0:8]"  10 10 1 9 16 1 1 16 
		16;
	setAttr -s 9 ".kot[0:8]"  10 10 1 9 16 1 1 16 
		16;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "neck_scaleZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[0:8]"  10 10 1 9 16 1 1 16 
		16;
	setAttr -s 9 ".kot[0:8]"  10 10 1 9 16 1 1 16 
		16;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "R_elbow_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 50 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[1:8]"  16 9 9 16 9 1 9 1;
	setAttr -s 9 ".kot[0:8]"  5 16 5 9 16 5 5 5 
		5;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
createNode animCurveTA -n "R_elbow_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 121.35569335966954 13 65.821327951926932 
		24 121.35569335966954 29 154.66439360973808 35 6.4461683185969445 37 -0.63311588966443111 
		50 159.77454980066938 55 121.35569335966954 56 0 60 4.6281805797532085 73 2.4551845666075303 
		80 0 81 -31.720160997316743 82 -69.268728277995265 83 123.0674823493683 88 104.9288526559331 
		91 177.63514698299394 95 -31.720160997316743;
	setAttr -s 19 ".kit[1:18]"  16 10 16 10 10 10 9 16 
		10 10 10 1 10 10 10 10 10 1;
	setAttr -s 19 ".kot[1:18]"  16 10 16 10 10 10 9 16 
		10 10 10 1 1 10 10 10 10 1;
	setAttr -s 19 ".kix[12:18]"  1 0.068766310811042786 0.030831750482320786 
		0.081951558589935303 0.33034920692443848 0.12138895690441132 0.83989286422729492;
	setAttr -s 19 ".kiy[12:18]"  0 -0.99763280153274536 0.99952459335327148 
		0.99663627147674561 0.943858802318573 -0.99260503053665161 0.54275214672088623;
	setAttr -s 19 ".kox[12:18]"  1 0.061241146177053452 0.030831750482320786 
		0.081951558589935303 0.33034920692443848 0.12138895690441132 0.061241146177053452;
	setAttr -s 19 ".koy[12:18]"  0 -0.99812299013137817 0.99952459335327148 
		0.99663627147674561 0.943858802318573 -0.99260503053665161 -0.99812299013137817;
createNode animCurveTA -n "R_elbow_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 68.749560796626341 13 72.52852126750993 
		24 68.749560796626341 29 62.866726034791235 35 54.351818768714239 37 32.233893595206624 
		50 64.905861908633284 55 68.749560796626341 56 20.572265205602861 60 12.963640866876695 
		68 53.293900248594014 73 66.605860358372198 80 20.572265205602861 81 127.55693411221225 
		82 130.59193992016807 83 58.495840377426283 88 65.904171615287055 91 65.656173308015909 
		95 127.55693411221225;
	setAttr -s 20 ".kit[1:19]"  16 10 16 10 10 10 9 16 
		10 10 10 10 1 10 10 10 10 10 1;
	setAttr -s 20 ".kot[1:19]"  16 10 16 10 10 10 9 16 
		10 10 10 10 1 1 10 10 10 10 1;
	setAttr -s 20 ".kix[13:19]"  1 0.043357402086257935 0.068971879780292511 
		0.21619522571563721 1 1 0.68541109561920166;
	setAttr -s 20 ".kiy[13:19]"  0 0.99905961751937866 -0.99761861562728882 
		-0.97635012865066528 0 0 -0.72815632820129395;
	setAttr -s 20 ".kox[13:19]"  1 0.1273379772901535 0.068971879780292511 
		0.21619522571563721 1 1 0.1273379772901535;
	setAttr -s 20 ".koy[13:19]"  0 -0.99185943603515625 -0.99761861562728882 
		-0.97635012865066528 0 0 -0.99185943603515625;
createNode animCurveTA -n "R_elbow_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 125.62989778375322 13 86.592906517861067 
		24 125.62989778375322 29 162.15392647784574 35 -10.633735797375003 37 -45.975106970990417 
		50 168.43224998245267 55 125.62989778375322 56 0 60 1.2127325773902533 73 1.7288695684144619 
		80 0 81 -24.397386688830998 82 -40.251207916117814 83 143.69981084282685 88 125.3658651659165 
		91 177.32049783952917 95 -24.397386688830998;
	setAttr -s 19 ".kit[1:18]"  16 10 16 10 10 10 9 16 
		10 10 10 1 10 10 10 10 10 1;
	setAttr -s 19 ".kot[1:18]"  16 10 16 10 10 10 9 16 
		10 10 10 1 1 10 10 10 10 1;
	setAttr -s 19 ".kix[12:18]"  1 0.11779560893774033 0.028392612934112549 
		0.086166657507419586 0.49393001198768616 0.11089625954627991 0.98596489429473877;
	setAttr -s 19 ".kiy[12:18]"  0 -0.99303781986236572 0.99959689378738403 
		0.99628067016601563 0.86950165033340454 -0.99383193254470825 0.16695284843444824;
	setAttr -s 19 ".kox[12:18]"  1 1 0.028392612934112549 0.086166657507419586 
		0.49393001198768616 0.11089625954627991 1;
	setAttr -s 19 ".koy[12:18]"  0 0 0.99959689378738403 0.99628067016601563 
		0.86950165033340454 -0.99383193254470825 0;
createNode animCurveTU -n "R_elbow_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 50 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[1:8]"  16 10 9 16 10 1 10 1;
	setAttr -s 9 ".kot[1:8]"  16 10 9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "R_elbow_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 50 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[1:8]"  16 10 9 16 10 1 10 1;
	setAttr -s 9 ".kot[1:8]"  16 10 9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "R_elbow_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 50 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[1:8]"  16 10 9 16 10 1 10 1;
	setAttr -s 9 ".kot[1:8]"  16 10 9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "R_wrist_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[4:8]"  16 9 1 9 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 9 16 5 5 5 
		5;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
createNode animCurveTA -n "R_wrist_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 -21.022406748440996 10 -27.630151307584615 
		24 -21.022406748440996 48 -21.022406748440996 55 -21.022406748440996 56 0 77 26.773584727304204 
		80 0 81 0 94 26.773584727304204 95 0;
	setAttr -s 12 ".kit[4:11]"  9 16 10 10 1 10 10 1;
	setAttr -s 12 ".kot[4:11]"  9 16 10 10 1 1 10 1;
	setAttr -s 12 ".kix[8:11]"  1 1 1 1;
	setAttr -s 12 ".kiy[8:11]"  0 0 0 0;
	setAttr -s 12 ".kox[8:11]"  1 0.55044448375701904 1 1;
	setAttr -s 12 ".koy[8:11]"  0 0.83487170934677124 0 0;
createNode animCurveTA -n "R_wrist_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 9.418758923913602 10 -0.9069683766904908 
		24 9.418758923913602 48 9.418758923913602 55 9.418758923913602 56 0 62 -13.014623525342296 
		74 15.753953006298165 77 -2.4383648917972467 80 0 81 0 85 -13.014623525342296 92 
		15.753953006298165 94 -2.4383648917972467 95 0;
	setAttr -s 16 ".kit[4:15]"  9 16 10 10 10 10 1 10 
		10 10 10 1;
	setAttr -s 16 ".kot[4:15]"  9 16 10 10 10 10 1 1 
		10 10 10 1;
	setAttr -s 16 ".kix[10:15]"  1 1 0.85752719640731812 0.89719420671463013 
		1 1;
	setAttr -s 16 ".kiy[10:15]"  0 0 0.51443850994110107 0.44163617491722107 
		0 0;
	setAttr -s 16 ".kox[10:15]"  1 0.40805304050445557 0.85752719640731812 
		0.89719420671463013 1 1;
	setAttr -s 16 ".koy[10:15]"  0 -0.91295820474624634 0.51443850994110107 
		0.44163617491722107 0 0;
createNode animCurveTA -n "R_wrist_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 13.657979621821422 10 -3.5802801624762486 
		24 13.657979621821422 48 13.657979621821422 55 13.657979621821422 56 0 77 12.190739637029994 
		80 0 81 0 94 12.190739637029994 95 0;
	setAttr -s 12 ".kit[4:11]"  9 16 10 10 1 10 10 1;
	setAttr -s 12 ".kot[4:11]"  9 16 10 10 1 1 10 1;
	setAttr -s 12 ".kix[8:11]"  1 1 1 1;
	setAttr -s 12 ".kiy[8:11]"  0 0 0 0;
	setAttr -s 12 ".kox[8:11]"  1 0.99891781806945801 1 1;
	setAttr -s 12 ".koy[8:11]"  0 -0.046509929001331329 0 0;
createNode animCurveTU -n "R_wrist_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "R_wrist_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "R_wrist_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "R_fingers1_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[4:8]"  16 9 1 9 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 9 16 5 5 5 
		5;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
createNode animCurveTA -n "R_fingers1_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 4.8348895208492486 15 7.1893437040106409 
		24 4.8348895208492486 48 4.8348895208492486 55 4.8348895208492486 56 0 80 0 81 0 
		95 0;
	setAttr -s 10 ".kit[4:9]"  9 16 10 1 10 1;
	setAttr -s 10 ".kot[4:9]"  9 16 10 1 1 1;
	setAttr -s 10 ".kix[7:9]"  1 1 1;
	setAttr -s 10 ".kiy[7:9]"  0 0 0;
	setAttr -s 10 ".kox[7:9]"  1 1 1;
	setAttr -s 10 ".koy[7:9]"  0 0 0;
createNode animCurveTA -n "R_fingers1_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 -38.860441847859867 15 -35.144199592753061 
		24 -38.860441847859867 48 -38.860441847859867 55 -38.860441847859867 56 0 80 0 81 
		0 95 0;
	setAttr -s 10 ".kit[4:9]"  9 16 10 1 10 1;
	setAttr -s 10 ".kot[4:9]"  9 16 10 1 1 1;
	setAttr -s 10 ".kix[7:9]"  1 1 1;
	setAttr -s 10 ".kiy[7:9]"  0 0 0;
	setAttr -s 10 ".kox[7:9]"  1 1 1;
	setAttr -s 10 ".koy[7:9]"  0 0 0;
createNode animCurveTA -n "R_fingers1_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 28.70039313452493 15 -7.3834163104229749 
		24 28.70039313452493 48 28.70039313452493 55 28.70039313452493 56 41.916016755955127 
		80 41.916016755955127 81 41.916016755955127 95 41.916016755955127;
	setAttr -s 10 ".kit[4:9]"  9 16 10 1 10 1;
	setAttr -s 10 ".kot[4:9]"  9 16 10 1 1 1;
	setAttr -s 10 ".kix[7:9]"  0.90121352672576904 1 0.78031033277511597;
	setAttr -s 10 ".kiy[7:9]"  -0.43337535858154297 0 -0.62539249658584595;
	setAttr -s 10 ".kox[7:9]"  0.90121352672576904 1 0.78031033277511597;
	setAttr -s 10 ".koy[7:9]"  -0.43337535858154297 0 -0.62539249658584595;
createNode animCurveTU -n "R_fingers1_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "R_fingers1_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "R_fingers1_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "R_fingers2_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[4:8]"  16 9 1 9 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 9 16 5 5 5 
		5;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
createNode animCurveTA -n "R_fingers2_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 -24.685376021663398 12 9.2518660438747826 
		24 -24.685376021663398 48 -24.685376021663398 55 -24.685376021663398 56 0 80 0 81 
		0 95 0;
	setAttr -s 10 ".kit[4:9]"  9 16 10 1 10 1;
	setAttr -s 10 ".kot[4:9]"  9 16 10 1 1 1;
	setAttr -s 10 ".kix[7:9]"  1 1 1;
	setAttr -s 10 ".kiy[7:9]"  0 0 0;
	setAttr -s 10 ".kox[7:9]"  1 1 1;
	setAttr -s 10 ".koy[7:9]"  0 0 0;
createNode animCurveTA -n "R_fingers2_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 -4.2664004506522613 12 -5.169366517613212 
		24 -4.2664004506522613 48 -4.2664004506522613 55 -4.2664004506522613 56 0 80 0 81 
		0 95 0;
	setAttr -s 10 ".kit[4:9]"  9 16 10 1 10 1;
	setAttr -s 10 ".kot[4:9]"  9 16 10 1 1 1;
	setAttr -s 10 ".kix[7:9]"  1 1 1;
	setAttr -s 10 ".kiy[7:9]"  0 0 0;
	setAttr -s 10 ".kox[7:9]"  1 1 1;
	setAttr -s 10 ".koy[7:9]"  0 0 0;
createNode animCurveTA -n "R_fingers2_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 53.610993261872899 12 57.332138394052635 
		24 53.610993261872899 48 53.610993261872899 55 53.610993261872899 56 25.944309324991806 
		80 25.944309324991806 81 25.944309324991806 95 25.944309324991806;
	setAttr -s 10 ".kit[4:9]"  9 16 10 1 10 1;
	setAttr -s 10 ".kot[4:9]"  9 16 10 1 1 1;
	setAttr -s 10 ".kix[7:9]"  0.74393707513809204 1 0.5554429292678833;
	setAttr -s 10 ".kiy[7:9]"  -0.66824966669082642 0 -0.83155465126037598;
	setAttr -s 10 ".kox[7:9]"  0.74393707513809204 1 0.5554429292678833;
	setAttr -s 10 ".koy[7:9]"  -0.66824966669082642 0 -0.83155465126037598;
createNode animCurveTU -n "R_fingers2_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "R_fingers2_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "R_fingers2_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "R_thumb_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[4:8]"  16 9 1 9 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 9 16 5 5 5 
		5;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
createNode animCurveTA -n "R_thumb_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 57.679447092666543 14 -2.5372081133679747 
		24 57.679447092666543 48 57.679447092666543 55 57.679447092666543 56 46.593558376997883 
		80 46.593558376997883 81 46.593558376997883 95 46.593558376997883;
	setAttr -s 10 ".kit[4:9]"  9 16 10 1 10 1;
	setAttr -s 10 ".kot[4:9]"  9 16 10 1 1 1;
	setAttr -s 10 ".kix[7:9]"  0.71907389163970947 1 0.52745658159255981;
	setAttr -s 10 ".kiy[7:9]"  -0.69493353366851807 0 -0.84958195686340332;
	setAttr -s 10 ".kox[7:9]"  0.71907389163970947 1 0.52745658159255981;
	setAttr -s 10 ".koy[7:9]"  -0.69493353366851807 0 -0.84958195686340332;
createNode animCurveTA -n "R_thumb_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 26.159413096419119 14 2.2461718189459638 
		24 26.159413096419119 48 26.159413096419119 55 26.159413096419119 56 31.038964576395117 
		80 31.038964576395117 81 31.038964576395117 95 31.038964576395117;
	setAttr -s 10 ".kit[4:9]"  9 16 10 1 10 1;
	setAttr -s 10 ".kot[4:9]"  9 16 10 1 1 1;
	setAttr -s 10 ".kix[7:9]"  0.9158862829208374 1 0.80749136209487915;
	setAttr -s 10 ".kiy[7:9]"  -0.40143775939941406 0 -0.58987939357757568;
	setAttr -s 10 ".kox[7:9]"  0.9158862829208374 1 0.80749136209487915;
	setAttr -s 10 ".koy[7:9]"  -0.40143775939941406 0 -0.58987939357757568;
createNode animCurveTA -n "R_thumb_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 52.862017853590487 14 11.457397680378913 
		24 52.862017853590487 48 52.862017853590487 55 52.862017853590487 56 20.255302780434157 
		80 20.255302780434157 81 20.255302780434157 95 20.255302780434157;
	setAttr -s 10 ".kit[4:9]"  9 16 10 1 10 1;
	setAttr -s 10 ".kot[4:9]"  9 16 10 1 1 1;
	setAttr -s 10 ".kix[7:9]"  0.74858909845352173 1 0.56084924936294556;
	setAttr -s 10 ".kiy[7:9]"  -0.66303414106369019 0 -0.82791793346405029;
	setAttr -s 10 ".kox[7:9]"  0.74858909845352173 1 0.56084924936294556;
	setAttr -s 10 ".koy[7:9]"  -0.66303414106369019 0 -0.82791793346405029;
createNode animCurveTU -n "R_thumb_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "R_thumb_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "R_thumb_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "L_shoulder_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[0:8]"  9 9 1 9 16 9 1 9 
		1;
	setAttr -s 9 ".kot[3:8]"  9 16 5 5 5 5;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "L_shoulder_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 -11.994959654654926 14 -8.2347559521077773 
		24 -11.994959654654926 33 -47.398382962764806 36 5.699918713461023 40 7.6388910699632371 
		48 -15.136538327022212 55 -11.994959654654926 56 -4.4106597097023492 68 -5.9452576350475299 
		80 -4.4106597097023492 81 -54.208095361088439 85 -17.269218006603456 88 11.470028469508575 
		91 -15.580713238158188 95 -54.208095361088439;
	setAttr -s 17 ".kit[1:16]"  1 10 1 10 10 10 9 16 
		10 10 1 10 10 10 10 1;
	setAttr -s 17 ".kot[1:16]"  1 10 1 10 10 10 9 16 
		10 10 1 1 10 10 10 1;
	setAttr -s 17 ".kix[1:16]"  1 1 1 0.85079014301300049 1 1 0.87685191631317139 
		1 1 1 1 0.68034517765045166 0.24658513069152832 0.99312382936477661 0.24658492207527161 
		0.75936496257781982;
	setAttr -s 17 ".kiy[1:16]"  0 0 0 0.5255056619644165 0 0 -0.48076072335243225 
		0 0 0 0 -0.73289179801940918 0.96912109851837158 0.1170693039894104 -0.96912115812301636 
		0.6506650447845459;
	setAttr -s 17 ".kox[1:16]"  1 1 1 0.85079014301300049 1 1 0.87685191631317139 
		1 1 1 1 1 0.24658513069152832 0.99312382936477661 0.24658492207527161 1;
	setAttr -s 17 ".koy[1:16]"  0 0 0 0.5255056619644165 0 0 -0.48076072335243225 
		0 0 0 0 0 0.96912109851837158 0.1170693039894104 -0.96912115812301636 0;
createNode animCurveTA -n "L_shoulder_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 -12.791945337410105 14 -14.753005802095673 
		24 -12.791945337410105 33 -28.21137505571344 36 -33.512048639693631 40 12.760371703517086 
		48 -39.090898962522736 55 -12.791945337410105 56 -27.947620789911578 68 14.165902569137671 
		80 -27.947620789911578 81 -28.297977421284635 85 0.14089744552224709 88 54.348086667681066 
		91 -12.322194677049692 95 -28.297977421284635;
	setAttr -s 17 ".kit[1:16]"  1 10 1 10 10 10 9 16 
		10 10 1 10 10 10 10 1;
	setAttr -s 17 ".kot[1:16]"  1 10 1 10 10 10 9 16 
		10 10 1 1 10 10 10 1;
	setAttr -s 17 ".kix[1:16]"  1 1 1 0.81027680635452271 0.37766656279563904 
		0.98156124353408813 0.81401461362838745 1 0.75495821237564087 1 1 1 0.19819185137748718 
		0.75441020727157593 0.19819170236587524 1;
	setAttr -s 17 ".kiy[1:16]"  0 0 0 -0.58604735136032104 0.92594164609909058 
		-0.19114787876605988 -0.58084434270858765 0 0.65577298402786255 0 0 0 0.98016327619552612 
		-0.6564033031463623 -0.98016327619552612 0;
	setAttr -s 17 ".kox[1:16]"  1 1 1 0.81027680635452271 0.37766656279563904 
		0.98156124353408813 0.81401461362838745 1 0.75495821237564087 1 1 0.56834298372268677 
		0.19819185137748718 0.75441020727157593 0.19819170236587524 0.56834298372268677;
	setAttr -s 17 ".koy[1:16]"  0 0 0 -0.58604735136032104 0.92594164609909058 
		-0.19114787876605988 -0.58084434270858765 0 0.65577298402786255 0 0 0.82279175519943237 
		0.98016327619552612 -0.6564033031463623 -0.98016327619552612 0.82279175519943237;
createNode animCurveTA -n "L_shoulder_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 -49.769224638902429 14 -59.218738351408334 
		24 -49.769224638902429 33 -9.1597286323765825 36 -49.139226033022602 40 -55.907107314638459 
		48 -42.782902806368213 55 -49.769224638902429 56 -59.117677326367094 68 -65.051553404891095 
		80 -59.117677326367094 81 1.8319040276442939 85 -46.644311100307227 88 -44.799964361881209 
		91 -60.522257082595708 95 1.8319040276442939;
	setAttr -s 17 ".kit[1:16]"  1 10 1 10 10 10 9 16 
		10 10 1 10 10 10 10 1;
	setAttr -s 17 ".kot[1:16]"  1 10 1 10 10 10 9 16 
		10 10 1 1 10 10 10 1;
	setAttr -s 17 ".kix[1:16]"  1 1 1 0.99975830316543579 0.33661815524101257 
		0.97625833749771118 0.98562663793563843 1 0.89713108539581299 1 1 0.69139152765274048 
		1 1 0.33735707402229309 0.42876937985420227;
	setAttr -s 17 ".kiy[1:16]"  0 0 0 0.02198578417301178 -0.94164121150970459 
		0.21660979092121124 0.16893836855888367 0 -0.44176450371742249 0 0 0.72248029708862305 
		0 0 0.94137674570083618 0.90341395139694214;
	setAttr -s 17 ".kox[1:16]"  1 1 1 0.99975830316543579 0.33661815524101257 
		0.97625833749771118 0.98562663793563843 1 0.89713108539581299 1 1 0.77300292253494263 
		1 1 0.33735707402229309 0.77300292253494263;
	setAttr -s 17 ".koy[1:16]"  0 0 0 0.02198578417301178 -0.94164121150970459 
		0.21660979092121124 0.16893836855888367 0 -0.44176450371742249 0 0 -0.63440245389938354 
		0 0 0.94137674570083618 -0.63440245389938354;
createNode animCurveTU -n "L_shoulder_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[2:8]"  1 9 16 10 1 10 1;
	setAttr -s 9 ".kot[2:8]"  1 9 16 10 1 1 1;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "L_shoulder_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[2:8]"  1 9 16 10 1 10 1;
	setAttr -s 9 ".kot[2:8]"  1 9 16 10 1 1 1;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "L_shoulder_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[2:8]"  1 9 16 10 1 10 1;
	setAttr -s 9 ".kot[2:8]"  1 9 16 10 1 1 1;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "L_elbow_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[1:8]"  16 9 9 16 9 1 9 1;
	setAttr -s 9 ".kot[0:8]"  5 16 5 9 16 5 5 5 
		5;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
createNode animCurveTA -n "L_elbow_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0.75030590774903461 14 -0.17413311472251924 
		24 0.75030590774903461 30 -3.1839235105942558 34 -45.460126024708231 43 5.2684774703820976 
		48 -49.547328620726255 55 0.75030590774903461 56 0 80 0 81 0 85 -46.642597753104624 
		88 53.761446698786543 91 71.329386494870178 95 0;
	setAttr -s 16 ".kit[1:15]"  16 10 10 10 10 10 9 16 
		10 1 10 10 10 10 1;
	setAttr -s 16 ".kot[1:15]"  16 10 10 10 10 10 9 16 
		10 1 1 10 10 10 1;
	setAttr -s 16 ".kix[10:15]"  1 1 0.29683154821395874 0.12053297460079193 
		0.29683133959770203 1;
	setAttr -s 16 ".kiy[10:15]"  0 0 0.95492982864379883 0.99270933866500854 
		-0.9549298882484436 0;
	setAttr -s 16 ".kox[10:15]"  1 1 0.29683154821395874 0.12053297460079193 
		0.29683133959770203 1;
	setAttr -s 16 ".koy[10:15]"  0 0 0.95492982864379883 0.99270933866500854 
		-0.9549298882484436 0;
createNode animCurveTA -n "L_elbow_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 -43.023103822035722 14 -46.889075565013698 
		24 -43.023103822035722 30 -35.047184437683548 34 -65.514245960304152 43 -24.287319190552303 
		48 -70.863510476724969 55 -43.023103822035722 56 -40.911189572718158 62 -58.034952637656524 
		68 -21.508878231194323 72 -6.2917558022995221 80 -40.911189572718158 81 -84.407539455393021 
		85 -99.68116525371525 88 -67.198065588225333 91 -70.54550550021483 95 -84.407539455393021;
	setAttr -s 19 ".kit[1:18]"  16 10 10 10 10 10 9 16 
		10 10 10 10 1 10 10 10 10 1;
	setAttr -s 19 ".kot[1:18]"  16 10 10 10 10 10 9 16 
		10 10 10 10 1 1 10 10 10 1;
	setAttr -s 19 ".kix[13:18]"  1 0.19904357194900513 0.69664627313613892 
		0.44119390845298767 0.69664597511291504 0.57185345888137817;
	setAttr -s 19 ".kiy[13:18]"  0 -0.97999066114425659 0.71741479635238647 
		0.8974117636680603 -0.71741509437561035 -0.82035577297210693;
	setAttr -s 19 ".kox[13:18]"  1 1 0.69664627313613892 0.44119390845298767 
		0.69664597511291504 1;
	setAttr -s 19 ".koy[13:18]"  0 0 0.71741479635238647 0.8974117636680603 
		-0.71741509437561035 0;
createNode animCurveTA -n "L_elbow_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 21.113254414669438 14 23.888479254666677 
		24 21.113254414669438 30 7.1631251557604978 34 77.183241181495148 43 12.248266929151916 
		48 65.359215670987254 55 21.113254414669438 56 0 80 0 81 0 85 18.44397376645318 88 
		-180.26502145345574 91 -91.018991132846125 95 0;
	setAttr -s 16 ".kit[1:15]"  16 10 10 10 10 10 9 16 
		10 1 10 10 10 10 1;
	setAttr -s 16 ".kot[1:15]"  16 10 10 10 10 10 9 16 
		10 1 1 10 10 10 1;
	setAttr -s 16 ".kix[10:15]"  1 1 0.092308118939399719 0.12975035607814789 
		0.092308036983013153 1;
	setAttr -s 16 ".kiy[10:15]"  0 0 -0.99573051929473877 -0.99154669046401978 
		0.99573045969009399 0;
	setAttr -s 16 ".kox[10:15]"  1 1 0.092308118939399719 0.12975035607814789 
		0.092308036983013153 1;
	setAttr -s 16 ".koy[10:15]"  0 0 -0.99573051929473877 -0.99154669046401978 
		0.99573045969009399 0;
createNode animCurveTU -n "L_elbow_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[1:8]"  16 10 9 16 10 1 10 1;
	setAttr -s 9 ".kot[1:8]"  16 10 9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "L_elbow_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[1:8]"  16 10 9 16 10 1 10 1;
	setAttr -s 9 ".kot[1:8]"  16 10 9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "L_elbow_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[1:8]"  16 10 9 16 10 1 10 1;
	setAttr -s 9 ".kot[1:8]"  16 10 9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "L_wrist_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[1:8]"  16 1 9 16 9 1 9 1;
	setAttr -s 9 ".kot[0:8]"  5 16 1 9 16 5 5 5 
		5;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 0 0 0 0;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "L_wrist_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 1 -37.79687956709531 15 -49.81493829538924 
		24 -37.79687956709531 34 -35.812802567539542 40 -7.0750892425648786 48 -22.077756498240511 
		55 -37.79687956709531 56 0 62 -4.5164833260685811 67 52.474888373269387 73 6.6732063900635712 
		80 0 81 0 85 -4.5164833260685811 88 52.474888373269387 91 6.6732063900635712 95 0;
	setAttr -s 18 ".kit[1:17]"  16 10 1 10 10 9 16 10 
		10 10 10 1 10 10 10 10 1;
	setAttr -s 18 ".kot[1:17]"  16 10 1 10 10 9 16 10 
		10 10 10 1 1 10 10 10 1;
	setAttr -s 18 ".kix[3:17]"  1 1 0.9249427318572998 0.75896733999252319 
		1 0.44873946905136108 0.44752895832061768 0.91996550559997559 0.50906139612197876 
		1 1 0.30344635248184204 0.7880481481552124 0.30344611406326294 1;
	setAttr -s 18 ".kiy[3:17]"  0 0 0.38010668754577637 -0.65112876892089844 
		0 0.89366257190704346 0.89426952600479126 0.39199936389923096 -0.86073023080825806 
		0 0 0.95284855365753174 0.61561352014541626 -0.95284861326217651 0;
	setAttr -s 18 ".kox[3:17]"  1 1 0.9249427318572998 0.75896733999252319 
		1 0.44873946905136108 0.44752895832061768 0.91996550559997559 0.50906139612197876 
		1 0.288472980260849 0.30344635248184204 0.7880481481552124 0.30344611406326294 1;
	setAttr -s 18 ".koy[3:17]"  0 0 0.38010668754577637 -0.65112876892089844 
		0 0.89366257190704346 0.89426952600479126 0.39199936389923096 -0.86073023080825806 
		0 0.95748805999755859 0.95284855365753174 0.61561352014541626 -0.95284861326217651 
		0;
createNode animCurveTA -n "L_wrist_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 1 21.155371200359927 15 10.839788846371201 
		24 21.155371200359927 34 10.717669180285142 40 -8.422306451594304 48 18.233487246374303 
		55 21.155371200359927 56 0 62 -10.886331871370174 67 7.1139466737276331 73 12.148191616205933 
		80 0 81 0 85 -10.886331871370174 88 7.1139466737276331 91 12.148191616205933 95 0;
	setAttr -s 18 ".kit[1:17]"  16 10 1 10 10 9 16 10 
		10 10 10 1 10 10 10 10 1;
	setAttr -s 18 ".kot[1:17]"  16 10 1 10 10 9 16 10 
		10 10 10 1 1 10 10 10 1;
	setAttr -s 18 ".kix[3:17]"  1 0.79066693782806396 0.97563630342483521 
		0.77100813388824463 1 0.46243220567703247 0.96521049737930298 0.75177431106567383 
		0.97472059726715088 1 1 0.92009979486465454 0.5280720591545105 0.92009961605072021 
		1;
	setAttr -s 18 ".kiy[3:17]"  0 -0.61224651336669922 0.2193940132856369 
		0.63682526350021362 0 -0.88665461540222168 0.26147395372390747 0.65942054986953735 
		-0.22342723608016968 0 0 0.3916841447353363 0.84919959306716919 -0.39168438315391541 
		0;
	setAttr -s 18 ".kox[3:17]"  1 0.79066693782806396 0.97563630342483521 
		0.77100813388824463 1 0.46243220567703247 0.96521049737930298 0.75177431106567383 
		0.97472059726715088 1 0.29864734411239624 0.92009979486465454 0.5280720591545105 
		0.92009961605072021 1;
	setAttr -s 18 ".koy[3:17]"  0 -0.61224651336669922 0.2193940132856369 
		0.63682526350021362 0 -0.88665461540222168 0.26147395372390747 0.65942054986953735 
		-0.22342723608016968 0 -0.95436352491378784 0.3916841447353363 0.84919959306716919 
		-0.39168438315391541 0;
createNode animCurveTA -n "L_wrist_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 1 27.143021641155922 15 -6.8331015449556043 
		24 27.143021641155922 34 6.3869686895048972 40 -19.264151659738864 48 -18.41261568319106 
		55 27.143021641155922 56 0 62 2.8267345755594473 67 -8.8361389048529464 73 4.2251946316542348 
		80 0 81 0 85 2.8267345755594473 88 -8.8361389048529464 91 4.2251946316542348 95 0;
	setAttr -s 18 ".kit[1:17]"  16 10 1 10 10 9 16 10 
		10 10 10 1 10 10 10 10 1;
	setAttr -s 18 ".kot[1:17]"  16 10 1 10 10 9 16 10 
		10 10 10 1 1 10 10 10 1;
	setAttr -s 18 ".kix[3:17]"  1 0.63550412654876709 1 0.61091095209121704 
		1 1 1 0.99858510494232178 0.96177780628204346 1 1 1 0.99526780843734741 0.88402837514877319 
		1;
	setAttr -s 18 ".kiy[3:17]"  0 -0.77209746837615967 0 0.79169934988021851 
		0 0 0 0.053177867084741592 0.27383103966712952 0 0 0 0.097168929874897003 0.46743315458297729 
		0;
	setAttr -s 18 ".kox[3:17]"  1 0.63550412654876709 1 0.61091095209121704 
		1 1 1 0.99858510494232178 0.96177780628204346 1 1 1 0.99526780843734741 0.88402837514877319 
		1;
	setAttr -s 18 ".koy[3:17]"  0 -0.77209746837615967 0 0.79169934988021851 
		0 0 0 0.053177867084741592 0.27383103966712952 0 0 0 0.097168929874897003 0.46743315458297729 
		0;
createNode animCurveTU -n "L_wrist_scaleX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[0:8]"  10 16 1 9 16 10 1 10 
		1;
	setAttr -s 9 ".kot[0:8]"  10 16 1 9 16 10 1 1 
		1;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "L_wrist_scaleY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[0:8]"  10 16 1 9 16 10 1 10 
		1;
	setAttr -s 9 ".kot[0:8]"  10 16 1 9 16 10 1 1 
		1;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "L_wrist_scaleZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[0:8]"  10 16 1 9 16 10 1 10 
		1;
	setAttr -s 9 ".kot[0:8]"  10 16 1 9 16 10 1 1 
		1;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "L_fingers1_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[4:8]"  16 9 1 9 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 9 16 5 5 5 
		5;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
createNode animCurveTA -n "L_fingers1_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 18.676391264354386 24 18.676391264354386 
		48 18.676391264354386 55 18.676391264354386 56 0 80 0 81 0 95 0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTA -n "L_fingers1_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 15.202778353994004 24 15.202778353994004 
		48 15.202778353994004 55 15.202778353994004 56 0 80 0 81 0 95 0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTA -n "L_fingers1_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 -23.031006727297655 24 -23.031006727297655 
		48 -23.031006727297655 55 -23.031006727297655 56 -28.723105611248744 80 -28.723105611248744 
		81 -28.723105611248744 95 -28.723105611248744;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  0.93294709920883179 1 0.84106743335723877;
	setAttr -s 9 ".kiy[6:8]"  0.36001336574554443 0 0.54093027114868164;
	setAttr -s 9 ".kox[6:8]"  0.93294709920883179 1 0.84106743335723877;
	setAttr -s 9 ".koy[6:8]"  0.36001336574554443 0 0.54093027114868164;
createNode animCurveTU -n "L_fingers1_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "L_fingers1_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "L_fingers1_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "L_fingers2_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[4:8]"  16 9 1 9 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 9 16 5 5 5 
		5;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
createNode animCurveTA -n "L_fingers2_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 5.3491580458562407 24 5.3491580458562407 
		48 5.3491580458562407 55 5.3491580458562407 56 0 80 0 81 0 95 0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTA -n "L_fingers2_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 5.6255988815976439 24 5.6255988815976439 
		48 5.6255988815976439 55 5.6255988815976439 56 0 80 0 81 0 95 0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTA -n "L_fingers2_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 -15.656882032874753 24 -15.656882032874753 
		48 -15.656882032874753 55 -15.656882032874753 56 -32.781093783951498 80 -32.781093783951498 
		81 -32.781093783951498 95 -32.781093783951498;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  0.96727049350738525 1 0.91625064611434937;
	setAttr -s 9 ".kiy[6:8]"  0.25374755263328552 0 0.4006054699420929;
	setAttr -s 9 ".kox[6:8]"  0.96727049350738525 1 0.91625064611434937;
	setAttr -s 9 ".koy[6:8]"  0.25374755263328552 0 0.4006054699420929;
createNode animCurveTU -n "L_fingers2_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "L_fingers2_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "L_fingers2_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "L_thumb_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[0:8]"  9 9 1 9 16 9 1 9 
		1;
	setAttr -s 9 ".kot[3:8]"  9 16 5 5 5 5;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "L_thumb_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 39.838175049021721 24 39.838175049021721 
		48 39.838175049021721 55 39.838175049021721 56 46.53659428581792 80 46.53659428581792 
		81 46.53659428581792 95 46.53659428581792;
	setAttr -s 9 ".kit[2:8]"  1 9 16 10 1 10 1;
	setAttr -s 9 ".kot[2:8]"  1 9 16 10 1 1 1;
	setAttr -s 9 ".kix[2:8]"  0.68832927942276001 1 1 1 0.83173209428787231 
		1 0.66850560903549194;
	setAttr -s 9 ".kiy[2:8]"  0.72539836168289185 0 0 0 -0.55517715215682983 
		0 -0.74370712041854858;
	setAttr -s 9 ".kox[2:8]"  0.68832927942276001 1 1 1 0.83173209428787231 
		1 0.66850560903549194;
	setAttr -s 9 ".koy[2:8]"  0.72539836168289185 0 0 0 -0.55517715215682983 
		0 -0.74370712041854858;
createNode animCurveTA -n "L_thumb_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 -19.004123028506232 24 -19.004123028506232 
		48 -19.004123028506232 55 -19.004123028506232 56 -6.4834448844043733 80 -6.4834448844043733 
		81 -6.4834448844043733 95 -6.4834448844043733;
	setAttr -s 9 ".kit[2:8]"  1 9 16 10 1 10 1;
	setAttr -s 9 ".kot[2:8]"  1 9 16 10 1 1 1;
	setAttr -s 9 ".kix[2:8]"  0.91161239147186279 1 1 1 0.95286101102828979 
		1 0.88331854343414307;
	setAttr -s 9 ".kiy[2:8]"  -0.41105106472969055 0 0 0 0.30340731143951416 
		0 0.46877312660217285;
	setAttr -s 9 ".kox[2:8]"  0.91161239147186279 1 1 1 0.95286101102828979 
		1 0.88331854343414307;
	setAttr -s 9 ".koy[2:8]"  -0.41105106472969055 0 0 0 0.30340731143951416 
		0 0.46877312660217285;
createNode animCurveTA -n "L_thumb_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 11.416610019422716 24 11.416610019422716 
		48 11.416610019422716 55 11.416610019422716 56 -19.025956761508237 80 -19.025956761508237 
		81 -19.025956761508237 95 -19.025956761508237;
	setAttr -s 9 ".kit[2:8]"  1 9 16 10 1 10 1;
	setAttr -s 9 ".kot[2:8]"  1 9 16 10 1 1 1;
	setAttr -s 9 ".kix[2:8]"  0.85036230087280273 1 1 1 0.98219186067581177 
		1 0.95275211334228516;
	setAttr -s 9 ".kiy[2:8]"  -0.52619779109954834 0 0 0 -0.18788069486618042 
		0 -0.30374878644943237;
	setAttr -s 9 ".kox[2:8]"  0.85036230087280273 1 1 1 0.98219186067581177 
		1 0.95275211334228516;
	setAttr -s 9 ".koy[2:8]"  -0.52619779109954834 0 0 0 -0.18788069486618042 
		0 -0.30374878644943237;
createNode animCurveTU -n "L_thumb_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[2:8]"  1 9 16 10 1 10 1;
	setAttr -s 9 ".kot[2:8]"  1 9 16 10 1 1 1;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "L_thumb_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[2:8]"  1 9 16 10 1 10 1;
	setAttr -s 9 ".kot[2:8]"  1 9 16 10 1 1 1;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "L_thumb_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[2:8]"  1 9 16 10 1 10 1;
	setAttr -s 9 ".kot[2:8]"  1 9 16 10 1 1 1;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "feather1_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 1 1 24 1 48 1 55 1 56 1 69 1 80 1 81 
		1 89 1 95 1;
	setAttr -s 11 ".kit[0:10]"  9 9 9 9 16 9 1 1 
		9 1 1;
	setAttr -s 11 ".kot[3:10]"  9 16 5 5 5 5 5 5;
	setAttr -s 11 ".kix[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".kiy[6:10]"  0 0 0 0 0;
createNode animCurveTA -n "feather1_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 1 0 6 4.3003521197056775 10 -7.4269501611356787 
		17 4.3533907311463187 24 0 29 -28.801794928706048 35 -23.168572343122964 40 3.5702309146701809 
		48 -12.681588456924711 55 0 56 -16.616944253615287 62 -1.9645793633777846 69 -16.616944253615287 
		74 -2.7634871501648419 80 -16.616944253615287 81 -16.616944253615287 85 -1.9645793633777846 
		89 -16.616944253615287 92 -2.7634871501648419 95 -16.616944253615287;
	setAttr -s 21 ".kit[9:20]"  9 16 10 10 1 10 1 10 
		10 1 10 1;
	setAttr -s 21 ".kot[9:20]"  9 16 10 10 1 10 1 1 
		10 1 10 1;
	setAttr -s 21 ".kix[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[13:20]"  0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 0.98134046792984009 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 -0.1922776997089386 0 0 0 0;
createNode animCurveTA -n "feather1_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 24 0 35 16.896219307470748 40 1.4516602370750271 
		48 0.90778017555893153 55 0 56 0 69 0 80 0 81 0 89 0 95 0;
	setAttr -s 13 ".kit[5:12]"  9 16 10 1 1 10 1 1;
	setAttr -s 13 ".kot[5:12]"  9 16 10 1 1 1 1 1;
	setAttr -s 13 ".kix[8:12]"  1 1 1 1 1;
	setAttr -s 13 ".kiy[8:12]"  0 0 0 0 0;
	setAttr -s 13 ".kox[8:12]"  1 1 1 1 1;
	setAttr -s 13 ".koy[8:12]"  0 0 0 0 0;
createNode animCurveTA -n "feather1_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 24 0 35 35.925320397486495 40 -11.817929738951449 
		48 21.791183220047952 55 0 56 0 69 0 80 0 81 0 89 0 95 0;
	setAttr -s 13 ".kit[5:12]"  9 16 10 1 1 10 1 1;
	setAttr -s 13 ".kot[5:12]"  9 16 10 1 1 1 1 1;
	setAttr -s 13 ".kix[8:12]"  1 1 1 1 1;
	setAttr -s 13 ".kiy[8:12]"  0 0 0 0 0;
	setAttr -s 13 ".kox[8:12]"  1 1 1 1 1;
	setAttr -s 13 ".koy[8:12]"  0 0 0 0 0;
createNode animCurveTU -n "feather1_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 1 1 24 1 48 1 55 1 56 1 69 1 80 1 81 
		1 89 1 95 1;
	setAttr -s 11 ".kit[3:10]"  9 16 10 1 1 10 1 1;
	setAttr -s 11 ".kot[3:10]"  9 16 10 1 1 1 1 1;
	setAttr -s 11 ".kix[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".kiy[6:10]"  0 0 0 0 0;
	setAttr -s 11 ".kox[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".koy[6:10]"  0 0 0 0 0;
createNode animCurveTU -n "feather1_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 1 1 24 1 48 1 55 1 56 1 69 1 80 1 81 
		1 89 1 95 1;
	setAttr -s 11 ".kit[3:10]"  9 16 10 1 1 10 1 1;
	setAttr -s 11 ".kot[3:10]"  9 16 10 1 1 1 1 1;
	setAttr -s 11 ".kix[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".kiy[6:10]"  0 0 0 0 0;
	setAttr -s 11 ".kox[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".koy[6:10]"  0 0 0 0 0;
createNode animCurveTU -n "feather1_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 1 1 24 1 48 1 55 1 56 1 69 1 80 1 81 
		1 89 1 95 1;
	setAttr -s 11 ".kit[3:10]"  9 16 10 1 1 10 1 1;
	setAttr -s 11 ".kot[3:10]"  9 16 10 1 1 1 1 1;
	setAttr -s 11 ".kix[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".kiy[6:10]"  0 0 0 0 0;
	setAttr -s 11 ".kox[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".koy[6:10]"  0 0 0 0 0;
createNode animCurveTU -n "feather2_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[4:8]"  16 9 1 9 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 9 16 5 5 5 
		5;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
createNode animCurveTA -n "feather2_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 1 0 8 11.589451252842499 14 -16.931710684088127 
		24 0 29 -25.88316319393747 32 5.6928630836681711 36 -24.958960552367547 40 43.710032845573508 
		48 -11.70052082839053 55 0 56 0 60 -21.352285338201213 66 21.748173505415025 72 -14.680307486935988 
		76 19.327002375509153 80 0 81 0 83 -21.352285338201213 87 21.748173505415025 91 -14.680307486935988 
		93 19.327002375509153 95 0;
	setAttr -s 23 ".kit[9:22]"  9 16 10 10 10 10 10 1 
		10 10 10 10 10 1;
	setAttr -s 23 ".kot[9:22]"  9 16 10 10 10 10 10 1 
		1 10 10 10 10 1;
	setAttr -s 23 ".kix[16:22]"  1 1 0.55004352331161499 0.94405132532119751 
		0.98601347208023071 0.5452728271484375 1;
	setAttr -s 23 ".kiy[16:22]"  0 0 0.83513599634170532 0.32979846000671387 
		-0.16666549444198608 0.83825862407684326 0;
	setAttr -s 23 ".kox[16:22]"  1 1 0.55004352331161499 0.94405132532119751 
		0.98601347208023071 0.5452728271484375 1;
	setAttr -s 23 ".koy[16:22]"  0 0 0.83513599634170532 0.32979846000671387 
		-0.16666549444198608 0.83825862407684326 0;
createNode animCurveTA -n "feather2_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 1 0 24 0 36 5.6779530652605947 40 3.6429341619485878 
		48 0 55 0 56 0 80 0 81 0 95 0;
	setAttr -s 11 ".kit[5:10]"  9 16 10 1 10 1;
	setAttr -s 11 ".kot[5:10]"  9 16 10 1 1 1;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "feather2_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 1 0 24 0 36 -0.86250672739639245 40 
		0.62986133983847903 48 0 55 0 56 0 80 0 81 0 95 0;
	setAttr -s 11 ".kit[5:10]"  9 16 10 1 10 1;
	setAttr -s 11 ".kot[5:10]"  9 16 10 1 1 1;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTU -n "feather2_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "feather2_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "feather2_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "feather3_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[4:8]"  16 9 1 9 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 9 16 5 5 5 
		5;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
createNode animCurveTA -n "feather3_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 1 0 10 29.018486763107674 14 -28.661214744331811 
		24 0 32 -40.789535385610307 37 -52.130372423945289 42 90.914468986271046 48 -50.764206401752396 
		55 0 56 0 63 -50.116149181529245 68 65.907837519839376 73 -41.553882934417004 76 
		53.082625229385883 80 0 81 0 85 -50.116149181529245 88 65.907837519839376 91 -41.553882934417004 
		93 53.082625229385883 95 0;
	setAttr -s 22 ".kit[8:21]"  9 16 10 10 10 10 10 1 
		10 10 10 10 10 1;
	setAttr -s 22 ".kot[8:21]"  9 16 10 10 10 10 10 1 
		1 10 10 10 10 1;
	setAttr -s 22 ".kix[15:21]"  1 1 0.24577769637107849 0.85834038257598877 
		0.68129318952560425 0.22396712005138397 1;
	setAttr -s 22 ".kiy[15:21]"  0 0 0.96932625770568848 0.5130806565284729 
		-0.7320106029510498 0.97459667921066284 0;
	setAttr -s 22 ".kox[15:21]"  1 1 0.24577769637107849 0.85834038257598877 
		0.68129318952560425 0.22396712005138397 1;
	setAttr -s 22 ".koy[15:21]"  0 0 0.96932625770568848 0.5130806565284729 
		-0.7320106029510498 0.97459667921066284 0;
createNode animCurveTA -n "feather3_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 -14.201860169993214 55 
		0 56 0 80 0 81 0 95 0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTA -n "feather3_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 25.120346887331923 55 0 
		56 0 80 0 81 0 95 0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "feather3_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "feather3_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "feather3_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode displayLayer -n "layer1";
	setAttr ".dt" 2;
	setAttr ".do" 1;
createNode animCurveTL -n "L_knee_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "L_knee_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "L_knee_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 20.278938792558506 1 20.278938792558506 
		24 20.278938792558506 48 20.278938792558506 55 20.278938792558506 56 27.393104069510247 
		80 27.393104069510247 81 27.393104069510247 95 27.393104069510247;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "L_knee1_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "L_knee1_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTL -n "L_knee1_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 20.278938792558506 1 20.278938792558506 
		24 20.278938792558506 48 20.278938792558506 55 20.278938792558506 56 27.393104069510247 
		80 27.393104069510247 81 27.393104069510247 95 27.393104069510247;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "L_knee_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[4:8]"  16 9 1 9 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 9 16 5 5 5 
		5;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
createNode animCurveTA -n "L_knee_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTA -n "L_knee_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTA -n "L_knee_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "L_knee_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "L_knee_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "L_knee_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "L_knee1_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[4:8]"  16 9 1 9 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 9 16 5 5 5 
		5;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
createNode animCurveTA -n "L_knee1_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTA -n "L_knee1_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTA -n "L_knee1_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 
		0;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "L_knee1_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "L_knee1_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTU -n "L_knee1_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 
		1;
	setAttr -s 9 ".kit[3:8]"  9 16 10 1 10 1;
	setAttr -s 9 ".kot[3:8]"  9 16 10 1 1 1;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTA -n "master_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 0;
	setAttr -s 8 ".kit[2:7]"  9 16 10 1 10 1;
	setAttr -s 8 ".kot[2:7]"  9 16 10 1 1 1;
	setAttr -s 8 ".kix[5:7]"  1 1 1;
	setAttr -s 8 ".kiy[5:7]"  0 0 0;
	setAttr -s 8 ".kox[5:7]"  1 1 1;
	setAttr -s 8 ".koy[5:7]"  0 0 0;
createNode animCurveTA -n "master_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 0;
	setAttr -s 8 ".kit[2:7]"  9 16 10 1 10 1;
	setAttr -s 8 ".kot[2:7]"  9 16 10 1 1 1;
	setAttr -s 8 ".kix[5:7]"  1 1 1;
	setAttr -s 8 ".kiy[5:7]"  0 0 0;
	setAttr -s 8 ".kox[5:7]"  1 1 1;
	setAttr -s 8 ".koy[5:7]"  0 0 0;
createNode animCurveTA -n "master_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 0;
	setAttr -s 8 ".kit[2:7]"  9 16 10 1 10 1;
	setAttr -s 8 ".kot[2:7]"  9 16 10 1 1 1;
	setAttr -s 8 ".kix[5:7]"  1 1 1;
	setAttr -s 8 ".kiy[5:7]"  0 0 0;
	setAttr -s 8 ".kox[5:7]"  1 1 1;
	setAttr -s 8 ".koy[5:7]"  0 0 0;
createNode animCurveTU -n "master_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 1;
	setAttr -s 8 ".kit[3:7]"  16 9 1 9 1;
	setAttr -s 8 ".kot[0:7]"  5 5 9 16 5 5 5 5;
	setAttr -s 8 ".kix[5:7]"  1 1 1;
	setAttr -s 8 ".kiy[5:7]"  0 0 0;
createNode animCurveTL -n "master_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 0;
	setAttr -s 8 ".kit[2:7]"  9 16 10 1 10 1;
	setAttr -s 8 ".kot[2:7]"  9 16 10 1 1 1;
	setAttr -s 8 ".kix[5:7]"  1 1 1;
	setAttr -s 8 ".kiy[5:7]"  0 0 0;
	setAttr -s 8 ".kox[5:7]"  1 1 1;
	setAttr -s 8 ".koy[5:7]"  0 0 0;
createNode animCurveTL -n "master_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 0;
	setAttr -s 8 ".kit[2:7]"  9 16 10 1 10 1;
	setAttr -s 8 ".kot[2:7]"  9 16 10 1 1 1;
	setAttr -s 8 ".kix[5:7]"  1 1 1;
	setAttr -s 8 ".kiy[5:7]"  0 0 0;
	setAttr -s 8 ".kox[5:7]"  1 1 1;
	setAttr -s 8 ".koy[5:7]"  0 0 0;
createNode animCurveTL -n "master_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 24 0 48 0 55 0 56 0 80 0 81 0 95 0;
	setAttr -s 8 ".kit[2:7]"  9 16 10 1 10 1;
	setAttr -s 8 ".kot[2:7]"  9 16 10 1 1 1;
	setAttr -s 8 ".kix[5:7]"  1 1 1;
	setAttr -s 8 ".kiy[5:7]"  0 0 0;
	setAttr -s 8 ".kox[5:7]"  1 1 1;
	setAttr -s 8 ".koy[5:7]"  0 0 0;
createNode animCurveTU -n "master_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 1;
	setAttr -s 8 ".kit[2:7]"  9 16 10 1 10 1;
	setAttr -s 8 ".kot[2:7]"  9 16 10 1 1 1;
	setAttr -s 8 ".kix[5:7]"  1 1 1;
	setAttr -s 8 ".kiy[5:7]"  0 0 0;
	setAttr -s 8 ".kox[5:7]"  1 1 1;
	setAttr -s 8 ".koy[5:7]"  0 0 0;
createNode animCurveTU -n "master_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 1;
	setAttr -s 8 ".kit[2:7]"  9 16 10 1 10 1;
	setAttr -s 8 ".kot[2:7]"  9 16 10 1 1 1;
	setAttr -s 8 ".kix[5:7]"  1 1 1;
	setAttr -s 8 ".kiy[5:7]"  0 0 0;
	setAttr -s 8 ".kox[5:7]"  1 1 1;
	setAttr -s 8 ".koy[5:7]"  0 0 0;
createNode animCurveTU -n "master_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 24 1 48 1 55 1 56 1 80 1 81 1 95 1;
	setAttr -s 8 ".kit[2:7]"  9 16 10 1 10 1;
	setAttr -s 8 ".kot[2:7]"  9 16 10 1 1 1;
	setAttr -s 8 ".kix[5:7]"  1 1 1;
	setAttr -s 8 ".kiy[5:7]"  0 0 0;
	setAttr -s 8 ".kox[5:7]"  1 1 1;
	setAttr -s 8 ".koy[5:7]"  0 0 0;
select -ne :time1;
	setAttr ".o" 0;
select -ne :renderPartition;
	setAttr -s 6 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :defaultTextureList1;
	setAttr -s 7 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 7 ".u";
select -ne :renderGlobalsList1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
connectAttr "master_translateX.o" "master.tx";
connectAttr "master_translateY.o" "master.ty";
connectAttr "master_translateZ.o" "master.tz";
connectAttr "master_visibility.o" "master.v";
connectAttr "master_rotateX.o" "master.rx";
connectAttr "master_rotateY.o" "master.ry";
connectAttr "master_rotateZ.o" "master.rz";
connectAttr "master_scaleX.o" "master.sx";
connectAttr "master_scaleY.o" "master.sy";
connectAttr "master_scaleZ.o" "master.sz";
connectAttr "L_foot_translateX.o" "|Keso|master|L_foot.tx";
connectAttr "L_foot_translateY.o" "|Keso|master|L_foot.ty";
connectAttr "L_foot_translateZ.o" "|Keso|master|L_foot.tz";
connectAttr "L_foot_visibility.o" "|Keso|master|L_foot.v";
connectAttr "L_foot_rotateX.o" "|Keso|master|L_foot.rx";
connectAttr "L_foot_rotateY.o" "|Keso|master|L_foot.ry";
connectAttr "L_foot_rotateZ.o" "|Keso|master|L_foot.rz";
connectAttr "L_foot_scaleX.o" "|Keso|master|L_foot.sx";
connectAttr "L_foot_scaleY.o" "|Keso|master|L_foot.sy";
connectAttr "L_foot_scaleZ.o" "|Keso|master|L_foot.sz";
connectAttr "L_Leg.msg" "ikHandle1.hsj";
connectAttr "effector1.hp" "ikHandle1.hee";
connectAttr "ikRPsolver.msg" "ikHandle1.hsv";
connectAttr "ikHandle1_poleVectorConstraint1.ctx" "ikHandle1.pvx";
connectAttr "ikHandle1_poleVectorConstraint1.cty" "ikHandle1.pvy";
connectAttr "ikHandle1_poleVectorConstraint1.ctz" "ikHandle1.pvz";
connectAttr "L_ankle.msg" "ikHandle2.hsj";
connectAttr "effector2.hp" "ikHandle2.hee";
connectAttr "ikRPsolver.msg" "ikHandle2.hsv";
connectAttr "ikHandle1.pim" "ikHandle1_poleVectorConstraint1.cpim";
connectAttr "L_Leg.pm" "ikHandle1_poleVectorConstraint1.ps";
connectAttr "L_Leg.t" "ikHandle1_poleVectorConstraint1.crp";
connectAttr "|Keso|master|L_foot|L_knee.t" "ikHandle1_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "|Keso|master|L_foot|L_knee.rp" "ikHandle1_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "|Keso|master|L_foot|L_knee.rpt" "ikHandle1_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "|Keso|master|L_foot|L_knee.pm" "ikHandle1_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "ikHandle1_poleVectorConstraint1.w0" "ikHandle1_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "L_knee_translateX.o" "|Keso|master|L_foot|L_knee.tx";
connectAttr "L_knee_translateY.o" "|Keso|master|L_foot|L_knee.ty";
connectAttr "L_knee_translateZ.o" "|Keso|master|L_foot|L_knee.tz";
connectAttr "L_knee_visibility.o" "|Keso|master|L_foot|L_knee.v";
connectAttr "L_knee_rotateX.o" "|Keso|master|L_foot|L_knee.rx";
connectAttr "L_knee_rotateY.o" "|Keso|master|L_foot|L_knee.ry";
connectAttr "L_knee_rotateZ.o" "|Keso|master|L_foot|L_knee.rz";
connectAttr "L_knee_scaleX.o" "|Keso|master|L_foot|L_knee.sx";
connectAttr "L_knee_scaleY.o" "|Keso|master|L_foot|L_knee.sy";
connectAttr "L_knee_scaleZ.o" "|Keso|master|L_foot|L_knee.sz";
connectAttr "R_foot_translateX.o" "|Keso|master|R_foot.tx";
connectAttr "R_foot_translateY.o" "|Keso|master|R_foot.ty";
connectAttr "R_foot_translateZ.o" "|Keso|master|R_foot.tz";
connectAttr "R_foot_visibility.o" "|Keso|master|R_foot.v";
connectAttr "R_foot_rotateX.o" "|Keso|master|R_foot.rx";
connectAttr "R_foot_rotateY.o" "|Keso|master|R_foot.ry";
connectAttr "R_foot_rotateZ.o" "|Keso|master|R_foot.rz";
connectAttr "R_foot_scaleX.o" "|Keso|master|R_foot.sx";
connectAttr "R_foot_scaleY.o" "|Keso|master|R_foot.sy";
connectAttr "R_foot_scaleZ.o" "|Keso|master|R_foot.sz";
connectAttr "R_Leg.msg" "ikHandle3.hsj";
connectAttr "effector3.hp" "ikHandle3.hee";
connectAttr "ikRPsolver.msg" "ikHandle3.hsv";
connectAttr "ikHandle3_poleVectorConstraint1.ctx" "ikHandle3.pvx";
connectAttr "ikHandle3_poleVectorConstraint1.cty" "ikHandle3.pvy";
connectAttr "ikHandle3_poleVectorConstraint1.ctz" "ikHandle3.pvz";
connectAttr "R_ankle.msg" "ikHandle4.hsj";
connectAttr "effector4.hp" "ikHandle4.hee";
connectAttr "ikRPsolver.msg" "ikHandle4.hsv";
connectAttr "ikHandle3.pim" "ikHandle3_poleVectorConstraint1.cpim";
connectAttr "R_Leg.pm" "ikHandle3_poleVectorConstraint1.ps";
connectAttr "R_Leg.t" "ikHandle3_poleVectorConstraint1.crp";
connectAttr "L_knee1.t" "ikHandle3_poleVectorConstraint1.tg[0].tt";
connectAttr "L_knee1.rp" "ikHandle3_poleVectorConstraint1.tg[0].trp";
connectAttr "L_knee1.rpt" "ikHandle3_poleVectorConstraint1.tg[0].trt";
connectAttr "L_knee1.pm" "ikHandle3_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle3_poleVectorConstraint1.w0" "ikHandle3_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "L_knee1_translateX.o" "L_knee1.tx";
connectAttr "L_knee1_translateY.o" "L_knee1.ty";
connectAttr "L_knee1_translateZ.o" "L_knee1.tz";
connectAttr "L_knee1_visibility.o" "L_knee1.v";
connectAttr "L_knee1_rotateX.o" "L_knee1.rx";
connectAttr "L_knee1_rotateY.o" "L_knee1.ry";
connectAttr "L_knee1_rotateZ.o" "L_knee1.rz";
connectAttr "L_knee1_scaleX.o" "L_knee1.sx";
connectAttr "L_knee1_scaleY.o" "L_knee1.sy";
connectAttr "L_knee1_scaleZ.o" "L_knee1.sz";
connectAttr "root1_KnifeAttach.o" "root1.KnifeAttach";
connectAttr "root1_translateX.o" "root1.tx";
connectAttr "root1_translateY.o" "root1.ty";
connectAttr "root1_translateZ.o" "root1.tz";
connectAttr "root1_rotateX.o" "root1.rx";
connectAttr "root1_rotateY.o" "root1.ry";
connectAttr "root1_rotateZ.o" "root1.rz";
connectAttr "root1_scaleX.o" "root1.sx";
connectAttr "root1_scaleY.o" "root1.sy";
connectAttr "root1_scaleZ.o" "root1.sz";
connectAttr "root1_visibility.o" "root1.v";
connectAttr "root.s" "|Keso|master|root1|root|chest.is";
connectAttr "chest_parentConstraint1.ctx" "|Keso|master|root1|root|chest.tx";
connectAttr "chest_parentConstraint1.cty" "|Keso|master|root1|root|chest.ty";
connectAttr "chest_parentConstraint1.ctz" "|Keso|master|root1|root|chest.tz";
connectAttr "chest_parentConstraint1.crx" "|Keso|master|root1|root|chest.rx";
connectAttr "chest_parentConstraint1.cry" "|Keso|master|root1|root|chest.ry";
connectAttr "chest_parentConstraint1.crz" "|Keso|master|root1|root|chest.rz";
connectAttr "|Keso|master|root1|root|chest.s" "|Keso|master|root1|root|chest|neck.is"
		;
connectAttr "neck_parentConstraint1.ctx" "|Keso|master|root1|root|chest|neck.tx"
		;
connectAttr "neck_parentConstraint1.cty" "|Keso|master|root1|root|chest|neck.ty"
		;
connectAttr "neck_parentConstraint1.ctz" "|Keso|master|root1|root|chest|neck.tz"
		;
connectAttr "neck_parentConstraint1.crx" "|Keso|master|root1|root|chest|neck.rx"
		;
connectAttr "neck_parentConstraint1.cry" "|Keso|master|root1|root|chest|neck.ry"
		;
connectAttr "neck_parentConstraint1.crz" "|Keso|master|root1|root|chest|neck.rz"
		;
connectAttr "|Keso|master|root1|root|chest|neck.s" "jaw.is";
connectAttr "|Keso|master|root1|root|chest|neck.s" "L_eye.is";
connectAttr "|Keso|master|root1|root|chest|neck.s" "R_eye.is";
connectAttr "|Keso|master|root1|root|chest|neck.s" "|Keso|master|root1|root|chest|neck|feather1.is"
		;
connectAttr "feather1_parentConstraint1.ctx" "|Keso|master|root1|root|chest|neck|feather1.tx"
		;
connectAttr "feather1_parentConstraint1.cty" "|Keso|master|root1|root|chest|neck|feather1.ty"
		;
connectAttr "feather1_parentConstraint1.ctz" "|Keso|master|root1|root|chest|neck|feather1.tz"
		;
connectAttr "feather1_parentConstraint1.crx" "|Keso|master|root1|root|chest|neck|feather1.rx"
		;
connectAttr "feather1_parentConstraint1.cry" "|Keso|master|root1|root|chest|neck|feather1.ry"
		;
connectAttr "feather1_parentConstraint1.crz" "|Keso|master|root1|root|chest|neck|feather1.rz"
		;
connectAttr "|Keso|master|root1|root|chest|neck|feather1.s" "|Keso|master|root1|root|chest|neck|feather1|feather2.is"
		;
connectAttr "feather2_parentConstraint1.ctx" "|Keso|master|root1|root|chest|neck|feather1|feather2.tx"
		;
connectAttr "feather2_parentConstraint1.cty" "|Keso|master|root1|root|chest|neck|feather1|feather2.ty"
		;
connectAttr "feather2_parentConstraint1.ctz" "|Keso|master|root1|root|chest|neck|feather1|feather2.tz"
		;
connectAttr "feather2_parentConstraint1.crx" "|Keso|master|root1|root|chest|neck|feather1|feather2.rx"
		;
connectAttr "feather2_parentConstraint1.cry" "|Keso|master|root1|root|chest|neck|feather1|feather2.ry"
		;
connectAttr "feather2_parentConstraint1.crz" "|Keso|master|root1|root|chest|neck|feather1|feather2.rz"
		;
connectAttr "|Keso|master|root1|root|chest|neck|feather1|feather2.s" "|Keso|master|root1|root|chest|neck|feather1|feather2|feather3.is"
		;
connectAttr "feather3_parentConstraint1.ctx" "|Keso|master|root1|root|chest|neck|feather1|feather2|feather3.tx"
		;
connectAttr "feather3_parentConstraint1.cty" "|Keso|master|root1|root|chest|neck|feather1|feather2|feather3.ty"
		;
connectAttr "feather3_parentConstraint1.ctz" "|Keso|master|root1|root|chest|neck|feather1|feather2|feather3.tz"
		;
connectAttr "feather3_parentConstraint1.crx" "|Keso|master|root1|root|chest|neck|feather1|feather2|feather3.rx"
		;
connectAttr "feather3_parentConstraint1.cry" "|Keso|master|root1|root|chest|neck|feather1|feather2|feather3.ry"
		;
connectAttr "feather3_parentConstraint1.crz" "|Keso|master|root1|root|chest|neck|feather1|feather2|feather3.rz"
		;
connectAttr "|Keso|master|root1|root|chest|neck|feather1|feather2|feather3.ro" "feather3_parentConstraint1.cro"
		;
connectAttr "|Keso|master|root1|root|chest|neck|feather1|feather2|feather3.pim" "feather3_parentConstraint1.cpim"
		;
connectAttr "|Keso|master|root1|root|chest|neck|feather1|feather2|feather3.rp" "feather3_parentConstraint1.crp"
		;
connectAttr "|Keso|master|root1|root|chest|neck|feather1|feather2|feather3.rpt" "feather3_parentConstraint1.crt"
		;
connectAttr "|Keso|master|root1|root|chest|neck|feather1|feather2|feather3.jo" "feather3_parentConstraint1.cjo"
		;
connectAttr "|Keso|master|root1|chest|neck|feather1|feather2|feather3.t" "feather3_parentConstraint1.tg[0].tt"
		;
connectAttr "|Keso|master|root1|chest|neck|feather1|feather2|feather3.rp" "feather3_parentConstraint1.tg[0].trp"
		;
connectAttr "|Keso|master|root1|chest|neck|feather1|feather2|feather3.rpt" "feather3_parentConstraint1.tg[0].trt"
		;
connectAttr "|Keso|master|root1|chest|neck|feather1|feather2|feather3.r" "feather3_parentConstraint1.tg[0].tr"
		;
connectAttr "|Keso|master|root1|chest|neck|feather1|feather2|feather3.ro" "feather3_parentConstraint1.tg[0].tro"
		;
connectAttr "|Keso|master|root1|chest|neck|feather1|feather2|feather3.s" "feather3_parentConstraint1.tg[0].ts"
		;
connectAttr "|Keso|master|root1|chest|neck|feather1|feather2|feather3.pm" "feather3_parentConstraint1.tg[0].tpm"
		;
connectAttr "feather3_parentConstraint1.w0" "feather3_parentConstraint1.tg[0].tw"
		;
connectAttr "|Keso|master|root1|root|chest|neck|feather1|feather2.ro" "feather2_parentConstraint1.cro"
		;
connectAttr "|Keso|master|root1|root|chest|neck|feather1|feather2.pim" "feather2_parentConstraint1.cpim"
		;
connectAttr "|Keso|master|root1|root|chest|neck|feather1|feather2.rp" "feather2_parentConstraint1.crp"
		;
connectAttr "|Keso|master|root1|root|chest|neck|feather1|feather2.rpt" "feather2_parentConstraint1.crt"
		;
connectAttr "|Keso|master|root1|root|chest|neck|feather1|feather2.jo" "feather2_parentConstraint1.cjo"
		;
connectAttr "|Keso|master|root1|chest|neck|feather1|feather2.t" "feather2_parentConstraint1.tg[0].tt"
		;
connectAttr "|Keso|master|root1|chest|neck|feather1|feather2.rp" "feather2_parentConstraint1.tg[0].trp"
		;
connectAttr "|Keso|master|root1|chest|neck|feather1|feather2.rpt" "feather2_parentConstraint1.tg[0].trt"
		;
connectAttr "|Keso|master|root1|chest|neck|feather1|feather2.r" "feather2_parentConstraint1.tg[0].tr"
		;
connectAttr "|Keso|master|root1|chest|neck|feather1|feather2.ro" "feather2_parentConstraint1.tg[0].tro"
		;
connectAttr "|Keso|master|root1|chest|neck|feather1|feather2.s" "feather2_parentConstraint1.tg[0].ts"
		;
connectAttr "|Keso|master|root1|chest|neck|feather1|feather2.pm" "feather2_parentConstraint1.tg[0].tpm"
		;
connectAttr "feather2_parentConstraint1.w0" "feather2_parentConstraint1.tg[0].tw"
		;
connectAttr "|Keso|master|root1|root|chest|neck|feather1.ro" "feather1_parentConstraint1.cro"
		;
connectAttr "|Keso|master|root1|root|chest|neck|feather1.pim" "feather1_parentConstraint1.cpim"
		;
connectAttr "|Keso|master|root1|root|chest|neck|feather1.rp" "feather1_parentConstraint1.crp"
		;
connectAttr "|Keso|master|root1|root|chest|neck|feather1.rpt" "feather1_parentConstraint1.crt"
		;
connectAttr "|Keso|master|root1|root|chest|neck|feather1.jo" "feather1_parentConstraint1.cjo"
		;
connectAttr "|Keso|master|root1|chest|neck|feather1.t" "feather1_parentConstraint1.tg[0].tt"
		;
connectAttr "|Keso|master|root1|chest|neck|feather1.rp" "feather1_parentConstraint1.tg[0].trp"
		;
connectAttr "|Keso|master|root1|chest|neck|feather1.rpt" "feather1_parentConstraint1.tg[0].trt"
		;
connectAttr "|Keso|master|root1|chest|neck|feather1.r" "feather1_parentConstraint1.tg[0].tr"
		;
connectAttr "|Keso|master|root1|chest|neck|feather1.ro" "feather1_parentConstraint1.tg[0].tro"
		;
connectAttr "|Keso|master|root1|chest|neck|feather1.s" "feather1_parentConstraint1.tg[0].ts"
		;
connectAttr "|Keso|master|root1|chest|neck|feather1.pm" "feather1_parentConstraint1.tg[0].tpm"
		;
connectAttr "feather1_parentConstraint1.w0" "feather1_parentConstraint1.tg[0].tw"
		;
connectAttr "|Keso|master|root1|root|chest|neck.ro" "neck_parentConstraint1.cro"
		;
connectAttr "|Keso|master|root1|root|chest|neck.pim" "neck_parentConstraint1.cpim"
		;
connectAttr "|Keso|master|root1|root|chest|neck.rp" "neck_parentConstraint1.crp"
		;
connectAttr "|Keso|master|root1|root|chest|neck.rpt" "neck_parentConstraint1.crt"
		;
connectAttr "|Keso|master|root1|root|chest|neck.jo" "neck_parentConstraint1.cjo"
		;
connectAttr "|Keso|master|root1|chest|neck.t" "neck_parentConstraint1.tg[0].tt";
connectAttr "|Keso|master|root1|chest|neck.rp" "neck_parentConstraint1.tg[0].trp"
		;
connectAttr "|Keso|master|root1|chest|neck.rpt" "neck_parentConstraint1.tg[0].trt"
		;
connectAttr "|Keso|master|root1|chest|neck.r" "neck_parentConstraint1.tg[0].tr";
connectAttr "|Keso|master|root1|chest|neck.ro" "neck_parentConstraint1.tg[0].tro"
		;
connectAttr "|Keso|master|root1|chest|neck.s" "neck_parentConstraint1.tg[0].ts";
connectAttr "|Keso|master|root1|chest|neck.pm" "neck_parentConstraint1.tg[0].tpm"
		;
connectAttr "neck_parentConstraint1.w0" "neck_parentConstraint1.tg[0].tw";
connectAttr "|Keso|master|root1|root|chest.s" "|Keso|master|root1|root|chest|L_shoulder.is"
		;
connectAttr "L_shoulder_parentConstraint1.ctx" "|Keso|master|root1|root|chest|L_shoulder.tx"
		;
connectAttr "L_shoulder_parentConstraint1.cty" "|Keso|master|root1|root|chest|L_shoulder.ty"
		;
connectAttr "L_shoulder_parentConstraint1.ctz" "|Keso|master|root1|root|chest|L_shoulder.tz"
		;
connectAttr "L_shoulder_parentConstraint1.crx" "|Keso|master|root1|root|chest|L_shoulder.rx"
		;
connectAttr "L_shoulder_parentConstraint1.cry" "|Keso|master|root1|root|chest|L_shoulder.ry"
		;
connectAttr "L_shoulder_parentConstraint1.crz" "|Keso|master|root1|root|chest|L_shoulder.rz"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder.s" "|Keso|master|root1|root|chest|L_shoulder|L_elbow.is"
		;
connectAttr "L_elbow_parentConstraint1.ctx" "|Keso|master|root1|root|chest|L_shoulder|L_elbow.tx"
		;
connectAttr "L_elbow_parentConstraint1.cty" "|Keso|master|root1|root|chest|L_shoulder|L_elbow.ty"
		;
connectAttr "L_elbow_parentConstraint1.ctz" "|Keso|master|root1|root|chest|L_shoulder|L_elbow.tz"
		;
connectAttr "L_elbow_parentConstraint1.crx" "|Keso|master|root1|root|chest|L_shoulder|L_elbow.rx"
		;
connectAttr "L_elbow_parentConstraint1.cry" "|Keso|master|root1|root|chest|L_shoulder|L_elbow.ry"
		;
connectAttr "L_elbow_parentConstraint1.crz" "|Keso|master|root1|root|chest|L_shoulder|L_elbow.rz"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow.s" "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.is"
		;
connectAttr "L_wrist_parentConstraint1.ctx" "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.tx"
		;
connectAttr "L_wrist_parentConstraint1.cty" "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.ty"
		;
connectAttr "L_wrist_parentConstraint1.ctz" "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.tz"
		;
connectAttr "L_wrist_parentConstraint1.crx" "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.rx"
		;
connectAttr "L_wrist_parentConstraint1.cry" "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.ry"
		;
connectAttr "L_wrist_parentConstraint1.crz" "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.rz"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.s" "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.is"
		;
connectAttr "L_fingers1_parentConstraint1.ctx" "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.tx"
		;
connectAttr "L_fingers1_parentConstraint1.cty" "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.ty"
		;
connectAttr "L_fingers1_parentConstraint1.ctz" "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.tz"
		;
connectAttr "L_fingers1_parentConstraint1.crx" "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.rx"
		;
connectAttr "L_fingers1_parentConstraint1.cry" "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.ry"
		;
connectAttr "L_fingers1_parentConstraint1.crz" "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.rz"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.s" "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.is"
		;
connectAttr "L_fingers2_parentConstraint1.ctx" "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.tx"
		;
connectAttr "L_fingers2_parentConstraint1.cty" "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.ty"
		;
connectAttr "L_fingers2_parentConstraint1.ctz" "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.tz"
		;
connectAttr "L_fingers2_parentConstraint1.crx" "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.rx"
		;
connectAttr "L_fingers2_parentConstraint1.cry" "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.ry"
		;
connectAttr "L_fingers2_parentConstraint1.crz" "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.rz"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.ro" "L_fingers2_parentConstraint1.cro"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.pim" "L_fingers2_parentConstraint1.cpim"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.rp" "L_fingers2_parentConstraint1.crp"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.rpt" "L_fingers2_parentConstraint1.crt"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.jo" "L_fingers2_parentConstraint1.cjo"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.t" "L_fingers2_parentConstraint1.tg[0].tt"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.rp" "L_fingers2_parentConstraint1.tg[0].trp"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.rpt" "L_fingers2_parentConstraint1.tg[0].trt"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.r" "L_fingers2_parentConstraint1.tg[0].tr"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.ro" "L_fingers2_parentConstraint1.tg[0].tro"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.s" "L_fingers2_parentConstraint1.tg[0].ts"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.pm" "L_fingers2_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_fingers2_parentConstraint1.w0" "L_fingers2_parentConstraint1.tg[0].tw"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.ro" "L_fingers1_parentConstraint1.cro"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.pim" "L_fingers1_parentConstraint1.cpim"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.rp" "L_fingers1_parentConstraint1.crp"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.rpt" "L_fingers1_parentConstraint1.crt"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.jo" "L_fingers1_parentConstraint1.cjo"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.t" "L_fingers1_parentConstraint1.tg[0].tt"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.rp" "L_fingers1_parentConstraint1.tg[0].trp"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.rpt" "L_fingers1_parentConstraint1.tg[0].trt"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.r" "L_fingers1_parentConstraint1.tg[0].tr"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.ro" "L_fingers1_parentConstraint1.tg[0].tro"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.s" "L_fingers1_parentConstraint1.tg[0].ts"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.pm" "L_fingers1_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_fingers1_parentConstraint1.w0" "L_fingers1_parentConstraint1.tg[0].tw"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.s" "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.is"
		;
connectAttr "L_thumb_parentConstraint1.ctx" "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.tx"
		;
connectAttr "L_thumb_parentConstraint1.cty" "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.ty"
		;
connectAttr "L_thumb_parentConstraint1.ctz" "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.tz"
		;
connectAttr "L_thumb_parentConstraint1.crx" "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.rx"
		;
connectAttr "L_thumb_parentConstraint1.cry" "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.ry"
		;
connectAttr "L_thumb_parentConstraint1.crz" "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.rz"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.ro" "L_thumb_parentConstraint1.cro"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.pim" "L_thumb_parentConstraint1.cpim"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.rp" "L_thumb_parentConstraint1.crp"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.rpt" "L_thumb_parentConstraint1.crt"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.jo" "L_thumb_parentConstraint1.cjo"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.t" "L_thumb_parentConstraint1.tg[0].tt"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.rp" "L_thumb_parentConstraint1.tg[0].trp"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.rpt" "L_thumb_parentConstraint1.tg[0].trt"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.r" "L_thumb_parentConstraint1.tg[0].tr"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.ro" "L_thumb_parentConstraint1.tg[0].tro"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.s" "L_thumb_parentConstraint1.tg[0].ts"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.pm" "L_thumb_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_thumb_parentConstraint1.w0" "L_thumb_parentConstraint1.tg[0].tw";
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.ro" "L_wrist_parentConstraint1.cro"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.pim" "L_wrist_parentConstraint1.cpim"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.rp" "L_wrist_parentConstraint1.crp"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.rpt" "L_wrist_parentConstraint1.crt"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.jo" "L_wrist_parentConstraint1.cjo"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist.t" "L_wrist_parentConstraint1.tg[0].tt"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist.rp" "L_wrist_parentConstraint1.tg[0].trp"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist.rpt" "L_wrist_parentConstraint1.tg[0].trt"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist.r" "L_wrist_parentConstraint1.tg[0].tr"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist.ro" "L_wrist_parentConstraint1.tg[0].tro"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist.s" "L_wrist_parentConstraint1.tg[0].ts"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist.pm" "L_wrist_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_wrist_parentConstraint1.w0" "L_wrist_parentConstraint1.tg[0].tw";
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow.ro" "L_elbow_parentConstraint1.cro"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow.pim" "L_elbow_parentConstraint1.cpim"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow.rp" "L_elbow_parentConstraint1.crp"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow.rpt" "L_elbow_parentConstraint1.crt"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow.jo" "L_elbow_parentConstraint1.cjo"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow.t" "L_elbow_parentConstraint1.tg[0].tt"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow.rp" "L_elbow_parentConstraint1.tg[0].trp"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow.rpt" "L_elbow_parentConstraint1.tg[0].trt"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow.r" "L_elbow_parentConstraint1.tg[0].tr"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow.ro" "L_elbow_parentConstraint1.tg[0].tro"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow.s" "L_elbow_parentConstraint1.tg[0].ts"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder|L_elbow.pm" "L_elbow_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_elbow_parentConstraint1.w0" "L_elbow_parentConstraint1.tg[0].tw";
connectAttr "|Keso|master|root1|root|chest|L_shoulder.ro" "L_shoulder_parentConstraint1.cro"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder.pim" "L_shoulder_parentConstraint1.cpim"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder.rp" "L_shoulder_parentConstraint1.crp"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder.rpt" "L_shoulder_parentConstraint1.crt"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder.jo" "L_shoulder_parentConstraint1.cjo"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder.t" "L_shoulder_parentConstraint1.tg[0].tt"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder.rp" "L_shoulder_parentConstraint1.tg[0].trp"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder.rpt" "L_shoulder_parentConstraint1.tg[0].trt"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder.r" "L_shoulder_parentConstraint1.tg[0].tr"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder.ro" "L_shoulder_parentConstraint1.tg[0].tro"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder.s" "L_shoulder_parentConstraint1.tg[0].ts"
		;
connectAttr "|Keso|master|root1|chest|L_shoulder.pm" "L_shoulder_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_shoulder_parentConstraint1.w0" "L_shoulder_parentConstraint1.tg[0].tw"
		;
connectAttr "|Keso|master|root1|root|chest.s" "|Keso|master|root1|root|chest|R_shoulder.is"
		;
connectAttr "R_shoulder_parentConstraint1.ctx" "|Keso|master|root1|root|chest|R_shoulder.tx"
		;
connectAttr "R_shoulder_parentConstraint1.cty" "|Keso|master|root1|root|chest|R_shoulder.ty"
		;
connectAttr "R_shoulder_parentConstraint1.ctz" "|Keso|master|root1|root|chest|R_shoulder.tz"
		;
connectAttr "R_shoulder_parentConstraint1.crx" "|Keso|master|root1|root|chest|R_shoulder.rx"
		;
connectAttr "R_shoulder_parentConstraint1.cry" "|Keso|master|root1|root|chest|R_shoulder.ry"
		;
connectAttr "R_shoulder_parentConstraint1.crz" "|Keso|master|root1|root|chest|R_shoulder.rz"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder.s" "|Keso|master|root1|root|chest|R_shoulder|R_elbow.is"
		;
connectAttr "R_elbow_parentConstraint1.ctx" "|Keso|master|root1|root|chest|R_shoulder|R_elbow.tx"
		;
connectAttr "R_elbow_parentConstraint1.cty" "|Keso|master|root1|root|chest|R_shoulder|R_elbow.ty"
		;
connectAttr "R_elbow_parentConstraint1.ctz" "|Keso|master|root1|root|chest|R_shoulder|R_elbow.tz"
		;
connectAttr "R_elbow_parentConstraint1.crx" "|Keso|master|root1|root|chest|R_shoulder|R_elbow.rx"
		;
connectAttr "R_elbow_parentConstraint1.cry" "|Keso|master|root1|root|chest|R_shoulder|R_elbow.ry"
		;
connectAttr "R_elbow_parentConstraint1.crz" "|Keso|master|root1|root|chest|R_shoulder|R_elbow.rz"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow.s" "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist.is"
		;
connectAttr "R_wrist_parentConstraint1.ctx" "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist.tx"
		;
connectAttr "R_wrist_parentConstraint1.cty" "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist.ty"
		;
connectAttr "R_wrist_parentConstraint1.ctz" "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist.tz"
		;
connectAttr "R_wrist_parentConstraint1.crx" "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist.rx"
		;
connectAttr "R_wrist_parentConstraint1.cry" "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist.ry"
		;
connectAttr "R_wrist_parentConstraint1.crz" "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist.rz"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist.s" "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.is"
		;
connectAttr "R_fingers1_parentConstraint1.ctx" "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.tx"
		;
connectAttr "R_fingers1_parentConstraint1.cty" "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.ty"
		;
connectAttr "R_fingers1_parentConstraint1.ctz" "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.tz"
		;
connectAttr "R_fingers1_parentConstraint1.crx" "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.rx"
		;
connectAttr "R_fingers1_parentConstraint1.cry" "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.ry"
		;
connectAttr "R_fingers1_parentConstraint1.crz" "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.rz"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.s" "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.is"
		;
connectAttr "R_fingers2_parentConstraint1.ctx" "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.tx"
		;
connectAttr "R_fingers2_parentConstraint1.cty" "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.ty"
		;
connectAttr "R_fingers2_parentConstraint1.ctz" "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.tz"
		;
connectAttr "R_fingers2_parentConstraint1.crx" "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.rx"
		;
connectAttr "R_fingers2_parentConstraint1.cry" "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.ry"
		;
connectAttr "R_fingers2_parentConstraint1.crz" "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.rz"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.ro" "R_fingers2_parentConstraint1.cro"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.pim" "R_fingers2_parentConstraint1.cpim"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.rp" "R_fingers2_parentConstraint1.crp"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.rpt" "R_fingers2_parentConstraint1.crt"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.jo" "R_fingers2_parentConstraint1.cjo"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.t" "R_fingers2_parentConstraint1.tg[0].tt"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.rp" "R_fingers2_parentConstraint1.tg[0].trp"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.rpt" "R_fingers2_parentConstraint1.tg[0].trt"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.r" "R_fingers2_parentConstraint1.tg[0].tr"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.ro" "R_fingers2_parentConstraint1.tg[0].tro"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.s" "R_fingers2_parentConstraint1.tg[0].ts"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.pm" "R_fingers2_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_fingers2_parentConstraint1.w0" "R_fingers2_parentConstraint1.tg[0].tw"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.ro" "R_fingers1_parentConstraint1.cro"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.pim" "R_fingers1_parentConstraint1.cpim"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.rp" "R_fingers1_parentConstraint1.crp"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.rpt" "R_fingers1_parentConstraint1.crt"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.jo" "R_fingers1_parentConstraint1.cjo"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.t" "R_fingers1_parentConstraint1.tg[0].tt"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.rp" "R_fingers1_parentConstraint1.tg[0].trp"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.rpt" "R_fingers1_parentConstraint1.tg[0].trt"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.r" "R_fingers1_parentConstraint1.tg[0].tr"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.ro" "R_fingers1_parentConstraint1.tg[0].tro"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.s" "R_fingers1_parentConstraint1.tg[0].ts"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.pm" "R_fingers1_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_fingers1_parentConstraint1.w0" "R_fingers1_parentConstraint1.tg[0].tw"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist.s" "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_thumb.is"
		;
connectAttr "R_thumb_parentConstraint1.ctx" "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_thumb.tx"
		;
connectAttr "R_thumb_parentConstraint1.cty" "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_thumb.ty"
		;
connectAttr "R_thumb_parentConstraint1.ctz" "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_thumb.tz"
		;
connectAttr "R_thumb_parentConstraint1.crx" "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_thumb.rx"
		;
connectAttr "R_thumb_parentConstraint1.cry" "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_thumb.ry"
		;
connectAttr "R_thumb_parentConstraint1.crz" "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_thumb.rz"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_thumb.ro" "R_thumb_parentConstraint1.cro"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_thumb.pim" "R_thumb_parentConstraint1.cpim"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_thumb.rp" "R_thumb_parentConstraint1.crp"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_thumb.rpt" "R_thumb_parentConstraint1.crt"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_thumb.jo" "R_thumb_parentConstraint1.cjo"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.t" "R_thumb_parentConstraint1.tg[0].tt"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.rp" "R_thumb_parentConstraint1.tg[0].trp"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.rpt" "R_thumb_parentConstraint1.tg[0].trt"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.r" "R_thumb_parentConstraint1.tg[0].tr"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.ro" "R_thumb_parentConstraint1.tg[0].tro"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.s" "R_thumb_parentConstraint1.tg[0].ts"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.pm" "R_thumb_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_thumb_parentConstraint1.w0" "R_thumb_parentConstraint1.tg[0].tw";
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist.ro" "R_wrist_parentConstraint1.cro"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist.pim" "R_wrist_parentConstraint1.cpim"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist.rp" "R_wrist_parentConstraint1.crp"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist.rpt" "R_wrist_parentConstraint1.crt"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist.jo" "R_wrist_parentConstraint1.cjo"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist.t" "R_wrist_parentConstraint1.tg[0].tt"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist.rp" "R_wrist_parentConstraint1.tg[0].trp"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist.rpt" "R_wrist_parentConstraint1.tg[0].trt"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist.r" "R_wrist_parentConstraint1.tg[0].tr"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist.ro" "R_wrist_parentConstraint1.tg[0].tro"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist.s" "R_wrist_parentConstraint1.tg[0].ts"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist.pm" "R_wrist_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_wrist_parentConstraint1.w0" "R_wrist_parentConstraint1.tg[0].tw";
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow.ro" "R_elbow_parentConstraint1.cro"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow.pim" "R_elbow_parentConstraint1.cpim"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow.rp" "R_elbow_parentConstraint1.crp"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow.rpt" "R_elbow_parentConstraint1.crt"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow.jo" "R_elbow_parentConstraint1.cjo"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow.t" "R_elbow_parentConstraint1.tg[0].tt"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow.rp" "R_elbow_parentConstraint1.tg[0].trp"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow.rpt" "R_elbow_parentConstraint1.tg[0].trt"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow.r" "R_elbow_parentConstraint1.tg[0].tr"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow.ro" "R_elbow_parentConstraint1.tg[0].tro"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow.s" "R_elbow_parentConstraint1.tg[0].ts"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow.pm" "R_elbow_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_elbow_parentConstraint1.w0" "R_elbow_parentConstraint1.tg[0].tw";
connectAttr "|Keso|master|root1|root|chest|R_shoulder.ro" "R_shoulder_parentConstraint1.cro"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder.pim" "R_shoulder_parentConstraint1.cpim"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder.rp" "R_shoulder_parentConstraint1.crp"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder.rpt" "R_shoulder_parentConstraint1.crt"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder.jo" "R_shoulder_parentConstraint1.cjo"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder.t" "R_shoulder_parentConstraint1.tg[0].tt"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder.rp" "R_shoulder_parentConstraint1.tg[0].trp"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder.rpt" "R_shoulder_parentConstraint1.tg[0].trt"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder.r" "R_shoulder_parentConstraint1.tg[0].tr"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder.ro" "R_shoulder_parentConstraint1.tg[0].tro"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder.s" "R_shoulder_parentConstraint1.tg[0].ts"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder.pm" "R_shoulder_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_shoulder_parentConstraint1.w0" "R_shoulder_parentConstraint1.tg[0].tw"
		;
connectAttr "|Keso|master|root1|root|chest.ro" "chest_parentConstraint1.cro";
connectAttr "|Keso|master|root1|root|chest.pim" "chest_parentConstraint1.cpim";
connectAttr "|Keso|master|root1|root|chest.rp" "chest_parentConstraint1.crp";
connectAttr "|Keso|master|root1|root|chest.rpt" "chest_parentConstraint1.crt";
connectAttr "|Keso|master|root1|root|chest.jo" "chest_parentConstraint1.cjo";
connectAttr "|Keso|master|root1|chest.t" "chest_parentConstraint1.tg[0].tt";
connectAttr "|Keso|master|root1|chest.rp" "chest_parentConstraint1.tg[0].trp";
connectAttr "|Keso|master|root1|chest.rpt" "chest_parentConstraint1.tg[0].trt";
connectAttr "|Keso|master|root1|chest.r" "chest_parentConstraint1.tg[0].tr";
connectAttr "|Keso|master|root1|chest.ro" "chest_parentConstraint1.tg[0].tro";
connectAttr "|Keso|master|root1|chest.s" "chest_parentConstraint1.tg[0].ts";
connectAttr "|Keso|master|root1|chest.pm" "chest_parentConstraint1.tg[0].tpm";
connectAttr "chest_parentConstraint1.w0" "chest_parentConstraint1.tg[0].tw";
connectAttr "root.s" "L_Leg.is";
connectAttr "L_Leg.s" "|Keso|master|root1|root|L_Leg|L_knee.is";
connectAttr "|Keso|master|root1|root|L_Leg|L_knee.s" "L_ankle.is";
connectAttr "L_ankle.s" "|Keso|master|root1|root|L_Leg|L_knee|L_ankle|L_foot.is"
		;
connectAttr "|Keso|master|root1|root|L_Leg|L_knee|L_ankle|L_foot.tx" "effector2.tx"
		;
connectAttr "|Keso|master|root1|root|L_Leg|L_knee|L_ankle|L_foot.ty" "effector2.ty"
		;
connectAttr "|Keso|master|root1|root|L_Leg|L_knee|L_ankle|L_foot.tz" "effector2.tz"
		;
connectAttr "L_ankle.tx" "effector1.tx";
connectAttr "L_ankle.ty" "effector1.ty";
connectAttr "L_ankle.tz" "effector1.tz";
connectAttr "root.s" "R_Leg.is";
connectAttr "R_Leg.s" "R_knee.is";
connectAttr "R_knee.s" "R_ankle.is";
connectAttr "R_ankle.s" "|Keso|master|root1|root|R_Leg|R_knee|R_ankle|R_foot.is"
		;
connectAttr "|Keso|master|root1|root|R_Leg|R_knee|R_ankle|R_foot.tx" "effector4.tx"
		;
connectAttr "|Keso|master|root1|root|R_Leg|R_knee|R_ankle|R_foot.ty" "effector4.ty"
		;
connectAttr "|Keso|master|root1|root|R_Leg|R_knee|R_ankle|R_foot.tz" "effector4.tz"
		;
connectAttr "R_ankle.tx" "effector3.tx";
connectAttr "R_ankle.ty" "effector3.ty";
connectAttr "R_ankle.tz" "effector3.tz";
connectAttr "chest_translateX.o" "|Keso|master|root1|chest.tx";
connectAttr "chest_translateY.o" "|Keso|master|root1|chest.ty";
connectAttr "chest_translateZ.o" "|Keso|master|root1|chest.tz";
connectAttr "chest_rotateX.o" "|Keso|master|root1|chest.rx";
connectAttr "chest_rotateY.o" "|Keso|master|root1|chest.ry";
connectAttr "chest_rotateZ.o" "|Keso|master|root1|chest.rz";
connectAttr "chest_scaleX.o" "|Keso|master|root1|chest.sx";
connectAttr "chest_scaleY.o" "|Keso|master|root1|chest.sy";
connectAttr "chest_scaleZ.o" "|Keso|master|root1|chest.sz";
connectAttr "chest_visibility.o" "|Keso|master|root1|chest.v";
connectAttr "R_shoulder_translateX.o" "|Keso|master|root1|chest|R_shoulder.tx";
connectAttr "R_shoulder_translateY.o" "|Keso|master|root1|chest|R_shoulder.ty";
connectAttr "R_shoulder_translateZ.o" "|Keso|master|root1|chest|R_shoulder.tz";
connectAttr "R_shoulder_rotateX.o" "|Keso|master|root1|chest|R_shoulder.rx";
connectAttr "R_shoulder_rotateY.o" "|Keso|master|root1|chest|R_shoulder.ry";
connectAttr "R_shoulder_rotateZ.o" "|Keso|master|root1|chest|R_shoulder.rz";
connectAttr "R_shoulder_scaleX.o" "|Keso|master|root1|chest|R_shoulder.sx";
connectAttr "R_shoulder_scaleY.o" "|Keso|master|root1|chest|R_shoulder.sy";
connectAttr "R_shoulder_scaleZ.o" "|Keso|master|root1|chest|R_shoulder.sz";
connectAttr "R_shoulder_visibility.o" "|Keso|master|root1|chest|R_shoulder.v";
connectAttr "R_elbow_translateX.o" "|Keso|master|root1|chest|R_shoulder|R_elbow.tx"
		;
connectAttr "R_elbow_translateY.o" "|Keso|master|root1|chest|R_shoulder|R_elbow.ty"
		;
connectAttr "R_elbow_translateZ.o" "|Keso|master|root1|chest|R_shoulder|R_elbow.tz"
		;
connectAttr "R_elbow_rotateX.o" "|Keso|master|root1|chest|R_shoulder|R_elbow.rx"
		;
connectAttr "R_elbow_rotateY.o" "|Keso|master|root1|chest|R_shoulder|R_elbow.ry"
		;
connectAttr "R_elbow_rotateZ.o" "|Keso|master|root1|chest|R_shoulder|R_elbow.rz"
		;
connectAttr "R_elbow_scaleX.o" "|Keso|master|root1|chest|R_shoulder|R_elbow.sx";
connectAttr "R_elbow_scaleY.o" "|Keso|master|root1|chest|R_shoulder|R_elbow.sy";
connectAttr "R_elbow_scaleZ.o" "|Keso|master|root1|chest|R_shoulder|R_elbow.sz";
connectAttr "R_elbow_visibility.o" "|Keso|master|root1|chest|R_shoulder|R_elbow.v"
		;
connectAttr "R_wrist_translateX.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist.tx"
		;
connectAttr "R_wrist_translateY.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist.ty"
		;
connectAttr "R_wrist_translateZ.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist.tz"
		;
connectAttr "R_wrist_rotateX.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist.rx"
		;
connectAttr "R_wrist_rotateY.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist.ry"
		;
connectAttr "R_wrist_rotateZ.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist.rz"
		;
connectAttr "R_wrist_scaleX.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist.sx"
		;
connectAttr "R_wrist_scaleY.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist.sy"
		;
connectAttr "R_wrist_scaleZ.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist.sz"
		;
connectAttr "R_wrist_visibility.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist.v"
		;
connectAttr "R_fingers1_translateX.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.tx"
		;
connectAttr "R_fingers1_translateY.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.ty"
		;
connectAttr "R_fingers1_translateZ.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.tz"
		;
connectAttr "R_fingers1_rotateX.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.rx"
		;
connectAttr "R_fingers1_rotateY.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.ry"
		;
connectAttr "R_fingers1_rotateZ.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.rz"
		;
connectAttr "R_fingers1_scaleX.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.sx"
		;
connectAttr "R_fingers1_scaleY.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.sy"
		;
connectAttr "R_fingers1_scaleZ.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.sz"
		;
connectAttr "R_fingers1_visibility.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.v"
		;
connectAttr "R_fingers2_translateX.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.tx"
		;
connectAttr "R_fingers2_translateY.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.ty"
		;
connectAttr "R_fingers2_translateZ.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.tz"
		;
connectAttr "R_fingers2_rotateX.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.rx"
		;
connectAttr "R_fingers2_rotateY.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.ry"
		;
connectAttr "R_fingers2_rotateZ.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.rz"
		;
connectAttr "R_fingers2_scaleX.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.sx"
		;
connectAttr "R_fingers2_scaleY.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.sy"
		;
connectAttr "R_fingers2_scaleZ.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.sz"
		;
connectAttr "R_fingers2_visibility.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.v"
		;
connectAttr "R_thumb_translateX.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.tx"
		;
connectAttr "R_thumb_translateY.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.ty"
		;
connectAttr "R_thumb_translateZ.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.tz"
		;
connectAttr "R_thumb_rotateX.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.rx"
		;
connectAttr "R_thumb_rotateY.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.ry"
		;
connectAttr "R_thumb_rotateZ.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.rz"
		;
connectAttr "R_thumb_scaleX.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.sx"
		;
connectAttr "R_thumb_scaleY.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.sy"
		;
connectAttr "R_thumb_scaleZ.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.sz"
		;
connectAttr "R_thumb_visibility.o" "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.v"
		;
connectAttr "L_shoulder_translateX.o" "|Keso|master|root1|chest|L_shoulder.tx";
connectAttr "L_shoulder_translateY.o" "|Keso|master|root1|chest|L_shoulder.ty";
connectAttr "L_shoulder_translateZ.o" "|Keso|master|root1|chest|L_shoulder.tz";
connectAttr "L_shoulder_rotateX.o" "|Keso|master|root1|chest|L_shoulder.rx";
connectAttr "L_shoulder_rotateY.o" "|Keso|master|root1|chest|L_shoulder.ry";
connectAttr "L_shoulder_rotateZ.o" "|Keso|master|root1|chest|L_shoulder.rz";
connectAttr "L_shoulder_scaleX.o" "|Keso|master|root1|chest|L_shoulder.sx";
connectAttr "L_shoulder_scaleY.o" "|Keso|master|root1|chest|L_shoulder.sy";
connectAttr "L_shoulder_scaleZ.o" "|Keso|master|root1|chest|L_shoulder.sz";
connectAttr "L_shoulder_visibility.o" "|Keso|master|root1|chest|L_shoulder.v";
connectAttr "L_elbow_translateX.o" "|Keso|master|root1|chest|L_shoulder|L_elbow.tx"
		;
connectAttr "L_elbow_translateY.o" "|Keso|master|root1|chest|L_shoulder|L_elbow.ty"
		;
connectAttr "L_elbow_translateZ.o" "|Keso|master|root1|chest|L_shoulder|L_elbow.tz"
		;
connectAttr "L_elbow_rotateX.o" "|Keso|master|root1|chest|L_shoulder|L_elbow.rx"
		;
connectAttr "L_elbow_rotateY.o" "|Keso|master|root1|chest|L_shoulder|L_elbow.ry"
		;
connectAttr "L_elbow_rotateZ.o" "|Keso|master|root1|chest|L_shoulder|L_elbow.rz"
		;
connectAttr "L_elbow_scaleX.o" "|Keso|master|root1|chest|L_shoulder|L_elbow.sx";
connectAttr "L_elbow_scaleY.o" "|Keso|master|root1|chest|L_shoulder|L_elbow.sy";
connectAttr "L_elbow_scaleZ.o" "|Keso|master|root1|chest|L_shoulder|L_elbow.sz";
connectAttr "L_elbow_visibility.o" "|Keso|master|root1|chest|L_shoulder|L_elbow.v"
		;
connectAttr "L_wrist_translateX.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist.tx"
		;
connectAttr "L_wrist_translateY.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist.ty"
		;
connectAttr "L_wrist_translateZ.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist.tz"
		;
connectAttr "L_wrist_rotateX.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist.rx"
		;
connectAttr "L_wrist_rotateY.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist.ry"
		;
connectAttr "L_wrist_rotateZ.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist.rz"
		;
connectAttr "L_wrist_scaleX.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist.sx"
		;
connectAttr "L_wrist_scaleY.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist.sy"
		;
connectAttr "L_wrist_scaleZ.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist.sz"
		;
connectAttr "L_wrist_visibility.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist.v"
		;
connectAttr "L_fingers1_translateX.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.tx"
		;
connectAttr "L_fingers1_translateY.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.ty"
		;
connectAttr "L_fingers1_translateZ.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.tz"
		;
connectAttr "L_fingers1_rotateX.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.rx"
		;
connectAttr "L_fingers1_rotateY.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.ry"
		;
connectAttr "L_fingers1_rotateZ.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.rz"
		;
connectAttr "L_fingers1_scaleX.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.sx"
		;
connectAttr "L_fingers1_scaleY.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.sy"
		;
connectAttr "L_fingers1_scaleZ.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.sz"
		;
connectAttr "L_fingers1_visibility.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.v"
		;
connectAttr "L_fingers2_translateX.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.tx"
		;
connectAttr "L_fingers2_translateY.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.ty"
		;
connectAttr "L_fingers2_translateZ.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.tz"
		;
connectAttr "L_fingers2_rotateX.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.rx"
		;
connectAttr "L_fingers2_rotateY.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.ry"
		;
connectAttr "L_fingers2_rotateZ.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.rz"
		;
connectAttr "L_fingers2_scaleX.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.sx"
		;
connectAttr "L_fingers2_scaleY.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.sy"
		;
connectAttr "L_fingers2_scaleZ.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.sz"
		;
connectAttr "L_fingers2_visibility.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.v"
		;
connectAttr "L_thumb_translateX.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.tx"
		;
connectAttr "L_thumb_translateY.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.ty"
		;
connectAttr "L_thumb_translateZ.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.tz"
		;
connectAttr "L_thumb_rotateX.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.rx"
		;
connectAttr "L_thumb_rotateY.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.ry"
		;
connectAttr "L_thumb_rotateZ.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.rz"
		;
connectAttr "L_thumb_scaleX.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.sx"
		;
connectAttr "L_thumb_scaleY.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.sy"
		;
connectAttr "L_thumb_scaleZ.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.sz"
		;
connectAttr "L_thumb_visibility.o" "|Keso|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.v"
		;
connectAttr "neck_translateX.o" "|Keso|master|root1|chest|neck.tx";
connectAttr "neck_translateY.o" "|Keso|master|root1|chest|neck.ty";
connectAttr "neck_translateZ.o" "|Keso|master|root1|chest|neck.tz";
connectAttr "neck_rotateX.o" "|Keso|master|root1|chest|neck.rx";
connectAttr "neck_rotateY.o" "|Keso|master|root1|chest|neck.ry";
connectAttr "neck_rotateZ.o" "|Keso|master|root1|chest|neck.rz";
connectAttr "neck_scaleX.o" "|Keso|master|root1|chest|neck.sx";
connectAttr "neck_scaleY.o" "|Keso|master|root1|chest|neck.sy";
connectAttr "neck_scaleZ.o" "|Keso|master|root1|chest|neck.sz";
connectAttr "neck_visibility.o" "|Keso|master|root1|chest|neck.v";
connectAttr "feather1_translateX.o" "|Keso|master|root1|chest|neck|feather1.tx";
connectAttr "feather1_translateY.o" "|Keso|master|root1|chest|neck|feather1.ty";
connectAttr "feather1_translateZ.o" "|Keso|master|root1|chest|neck|feather1.tz";
connectAttr "feather1_rotateX.o" "|Keso|master|root1|chest|neck|feather1.rx";
connectAttr "feather1_rotateY.o" "|Keso|master|root1|chest|neck|feather1.ry";
connectAttr "feather1_rotateZ.o" "|Keso|master|root1|chest|neck|feather1.rz";
connectAttr "feather1_scaleX.o" "|Keso|master|root1|chest|neck|feather1.sx";
connectAttr "feather1_scaleY.o" "|Keso|master|root1|chest|neck|feather1.sy";
connectAttr "feather1_scaleZ.o" "|Keso|master|root1|chest|neck|feather1.sz";
connectAttr "feather1_visibility.o" "|Keso|master|root1|chest|neck|feather1.v";
connectAttr "feather2_translateX.o" "|Keso|master|root1|chest|neck|feather1|feather2.tx"
		;
connectAttr "feather2_translateY.o" "|Keso|master|root1|chest|neck|feather1|feather2.ty"
		;
connectAttr "feather2_translateZ.o" "|Keso|master|root1|chest|neck|feather1|feather2.tz"
		;
connectAttr "feather2_rotateX.o" "|Keso|master|root1|chest|neck|feather1|feather2.rx"
		;
connectAttr "feather2_rotateY.o" "|Keso|master|root1|chest|neck|feather1|feather2.ry"
		;
connectAttr "feather2_rotateZ.o" "|Keso|master|root1|chest|neck|feather1|feather2.rz"
		;
connectAttr "feather2_scaleX.o" "|Keso|master|root1|chest|neck|feather1|feather2.sx"
		;
connectAttr "feather2_scaleY.o" "|Keso|master|root1|chest|neck|feather1|feather2.sy"
		;
connectAttr "feather2_scaleZ.o" "|Keso|master|root1|chest|neck|feather1|feather2.sz"
		;
connectAttr "feather2_visibility.o" "|Keso|master|root1|chest|neck|feather1|feather2.v"
		;
connectAttr "feather3_translateX.o" "|Keso|master|root1|chest|neck|feather1|feather2|feather3.tx"
		;
connectAttr "feather3_translateY.o" "|Keso|master|root1|chest|neck|feather1|feather2|feather3.ty"
		;
connectAttr "feather3_translateZ.o" "|Keso|master|root1|chest|neck|feather1|feather2|feather3.tz"
		;
connectAttr "feather3_rotateX.o" "|Keso|master|root1|chest|neck|feather1|feather2|feather3.rx"
		;
connectAttr "feather3_rotateY.o" "|Keso|master|root1|chest|neck|feather1|feather2|feather3.ry"
		;
connectAttr "feather3_rotateZ.o" "|Keso|master|root1|chest|neck|feather1|feather2|feather3.rz"
		;
connectAttr "feather3_scaleX.o" "|Keso|master|root1|chest|neck|feather1|feather2|feather3.sx"
		;
connectAttr "feather3_scaleY.o" "|Keso|master|root1|chest|neck|feather1|feather2|feather3.sy"
		;
connectAttr "feather3_scaleZ.o" "|Keso|master|root1|chest|neck|feather1|feather2|feather3.sz"
		;
connectAttr "feather3_visibility.o" "|Keso|master|root1|chest|neck|feather1|feather2|feather3.v"
		;
connectAttr "joint1_parentConstraint1.ctx" "joint1.tx";
connectAttr "joint1_parentConstraint1.cty" "joint1.ty";
connectAttr "joint1_parentConstraint1.ctz" "joint1.tz";
connectAttr "joint1_parentConstraint1.crx" "joint1.rx";
connectAttr "joint1_parentConstraint1.cry" "joint1.ry";
connectAttr "joint1_parentConstraint1.crz" "joint1.rz";
connectAttr "knife_translateX.o" "knife.tx";
connectAttr "knife_translateY.o" "knife.ty";
connectAttr "knife_translateZ.o" "knife.tz";
connectAttr "knife_visibility.o" "knife.v";
connectAttr "knife_rotateX.o" "knife.rx";
connectAttr "knife_rotateY.o" "knife.ry";
connectAttr "knife_rotateZ.o" "knife.rz";
connectAttr "knife_scaleX.o" "knife.sx";
connectAttr "knife_scaleY.o" "knife.sy";
connectAttr "knife_scaleZ.o" "knife.sz";
connectAttr "joint1.ro" "joint1_parentConstraint1.cro";
connectAttr "joint1.pim" "joint1_parentConstraint1.cpim";
connectAttr "joint1.rp" "joint1_parentConstraint1.crp";
connectAttr "joint1.rpt" "joint1_parentConstraint1.crt";
connectAttr "joint1.jo" "joint1_parentConstraint1.cjo";
connectAttr "root1.t" "joint1_parentConstraint1.tg[0].tt";
connectAttr "root1.rp" "joint1_parentConstraint1.tg[0].trp";
connectAttr "root1.rpt" "joint1_parentConstraint1.tg[0].trt";
connectAttr "root1.r" "joint1_parentConstraint1.tg[0].tr";
connectAttr "root1.ro" "joint1_parentConstraint1.tg[0].tro";
connectAttr "root1.s" "joint1_parentConstraint1.tg[0].ts";
connectAttr "root1.pm" "joint1_parentConstraint1.tg[0].tpm";
connectAttr "joint1_parentConstraint1.w0" "joint1_parentConstraint1.tg[0].tw";
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist.t" "joint1_parentConstraint1.tg[1].tt"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist.rp" "joint1_parentConstraint1.tg[1].trp"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist.rpt" "joint1_parentConstraint1.tg[1].trt"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist.r" "joint1_parentConstraint1.tg[1].tr"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist.ro" "joint1_parentConstraint1.tg[1].tro"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist.s" "joint1_parentConstraint1.tg[1].ts"
		;
connectAttr "|Keso|master|root1|chest|R_shoulder|R_elbow|R_wrist.pm" "joint1_parentConstraint1.tg[1].tpm"
		;
connectAttr "joint1_parentConstraint1.w1" "joint1_parentConstraint1.tg[1].tw";
connectAttr "joint1_parentConstraint1_root1W0.o" "joint1_parentConstraint1.w0";
connectAttr "joint1_parentConstraint1_R_wristW1.o" "joint1_parentConstraint1.w1"
		;
connectAttr "layer1.di" "kesoMesh.do";
connectAttr "skinCluster1GroupId.id" "kesoMeshShape.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "kesoMeshShape.iog.og[0].gco";
connectAttr "groupId2.id" "kesoMeshShape.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "kesoMeshShape.iog.og[1].gco";
connectAttr "skinCluster1.og[0]" "kesoMeshShape.i";
connectAttr "tweak1.vl[0].vt[2]" "kesoMeshShape.twl";
connectAttr "layer1.di" "KesoFeather.do";
connectAttr "skinCluster4GroupId.id" "KesoFeatherShape.iog.og[0].gid";
connectAttr "skinCluster4Set.mwc" "KesoFeatherShape.iog.og[0].gco";
connectAttr "groupId8.id" "KesoFeatherShape.iog.og[1].gid";
connectAttr "tweakSet4.mwc" "KesoFeatherShape.iog.og[1].gco";
connectAttr "skinCluster4.og[0]" "KesoFeatherShape.i";
connectAttr "tweak4.vl[0].vt[0]" "KesoFeatherShape.twl";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "hyperView1.msg" "nodeEditorPanel1Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "root.wm" "skinCluster1.ma[0]";
connectAttr "|Keso|master|root1|root|chest.wm" "skinCluster1.ma[1]";
connectAttr "|Keso|master|root1|root|chest|neck.wm" "skinCluster1.ma[2]";
connectAttr "jaw.wm" "skinCluster1.ma[3]";
connectAttr "L_eye.wm" "skinCluster1.ma[4]";
connectAttr "R_eye.wm" "skinCluster1.ma[5]";
connectAttr "|Keso|master|root1|root|chest|neck|feather1.wm" "skinCluster1.ma[6]"
		;
connectAttr "|Keso|master|root1|root|chest|neck|feather1|feather2.wm" "skinCluster1.ma[7]"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder.wm" "skinCluster1.ma[9]";
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow.wm" "skinCluster1.ma[10]"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.wm" "skinCluster1.ma[11]"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.wm" "skinCluster1.ma[12]"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.wm" "skinCluster1.ma[13]"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.wm" "skinCluster1.ma[14]"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder.wm" "skinCluster1.ma[15]";
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow.wm" "skinCluster1.ma[16]"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist.wm" "skinCluster1.ma[17]"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.wm" "skinCluster1.ma[18]"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.wm" "skinCluster1.ma[19]"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_thumb.wm" "skinCluster1.ma[20]"
		;
connectAttr "L_Leg.wm" "skinCluster1.ma[21]";
connectAttr "|Keso|master|root1|root|L_Leg|L_knee.wm" "skinCluster1.ma[22]";
connectAttr "L_ankle.wm" "skinCluster1.ma[23]";
connectAttr "|Keso|master|root1|root|L_Leg|L_knee|L_ankle|L_foot.wm" "skinCluster1.ma[24]"
		;
connectAttr "R_Leg.wm" "skinCluster1.ma[25]";
connectAttr "R_knee.wm" "skinCluster1.ma[26]";
connectAttr "R_ankle.wm" "skinCluster1.ma[27]";
connectAttr "|Keso|master|root1|root|R_Leg|R_knee|R_ankle|R_foot.wm" "skinCluster1.ma[28]"
		;
connectAttr "root.liw" "skinCluster1.lw[0]";
connectAttr "|Keso|master|root1|root|chest.liw" "skinCluster1.lw[1]";
connectAttr "|Keso|master|root1|root|chest|neck.liw" "skinCluster1.lw[2]";
connectAttr "jaw.liw" "skinCluster1.lw[3]";
connectAttr "L_eye.liw" "skinCluster1.lw[4]";
connectAttr "R_eye.liw" "skinCluster1.lw[5]";
connectAttr "|Keso|master|root1|root|chest|neck|feather1.liw" "skinCluster1.lw[6]"
		;
connectAttr "|Keso|master|root1|root|chest|neck|feather1|feather2.liw" "skinCluster1.lw[7]"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder.liw" "skinCluster1.lw[9]";
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow.liw" "skinCluster1.lw[10]"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.liw" "skinCluster1.lw[11]"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.liw" "skinCluster1.lw[12]"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.liw" "skinCluster1.lw[13]"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.liw" "skinCluster1.lw[14]"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder.liw" "skinCluster1.lw[15]"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow.liw" "skinCluster1.lw[16]"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist.liw" "skinCluster1.lw[17]"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.liw" "skinCluster1.lw[18]"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.liw" "skinCluster1.lw[19]"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_thumb.liw" "skinCluster1.lw[20]"
		;
connectAttr "L_Leg.liw" "skinCluster1.lw[21]";
connectAttr "|Keso|master|root1|root|L_Leg|L_knee.liw" "skinCluster1.lw[22]";
connectAttr "L_ankle.liw" "skinCluster1.lw[23]";
connectAttr "|Keso|master|root1|root|L_Leg|L_knee|L_ankle|L_foot.liw" "skinCluster1.lw[24]"
		;
connectAttr "R_Leg.liw" "skinCluster1.lw[25]";
connectAttr "R_knee.liw" "skinCluster1.lw[26]";
connectAttr "R_ankle.liw" "skinCluster1.lw[27]";
connectAttr "|Keso|master|root1|root|R_Leg|R_knee|R_ankle|R_foot.liw" "skinCluster1.lw[28]"
		;
connectAttr "|Keso|master|root1|root|chest.msg" "skinCluster1.ptt";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "kesoMeshShape.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "kesoMeshShape.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "kesoMeshShapeOrig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "master.msg" "bindPose1.m[0]";
connectAttr "root1.msg" "bindPose1.m[1]";
connectAttr "root.msg" "bindPose1.m[2]";
connectAttr "|Keso|master|root1|root|chest.msg" "bindPose1.m[3]";
connectAttr "|Keso|master|root1|root|chest|neck.msg" "bindPose1.m[4]";
connectAttr "jaw.msg" "bindPose1.m[5]";
connectAttr "L_eye.msg" "bindPose1.m[6]";
connectAttr "R_eye.msg" "bindPose1.m[7]";
connectAttr "|Keso|master|root1|root|chest|neck|feather1.msg" "bindPose1.m[8]";
connectAttr "|Keso|master|root1|root|chest|neck|feather1|feather2.msg" "bindPose1.m[9]"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder.msg" "bindPose1.m[11]";
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow.msg" "bindPose1.m[12]"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.msg" "bindPose1.m[13]"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.msg" "bindPose1.m[14]"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.msg" "bindPose1.m[15]"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.msg" "bindPose1.m[16]"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder.msg" "bindPose1.m[17]";
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow.msg" "bindPose1.m[18]"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist.msg" "bindPose1.m[19]"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.msg" "bindPose1.m[20]"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.msg" "bindPose1.m[21]"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_thumb.msg" "bindPose1.m[22]"
		;
connectAttr "L_Leg.msg" "bindPose1.m[23]";
connectAttr "|Keso|master|root1|root|L_Leg|L_knee.msg" "bindPose1.m[24]";
connectAttr "L_ankle.msg" "bindPose1.m[25]";
connectAttr "|Keso|master|root1|root|L_Leg|L_knee|L_ankle|L_foot.msg" "bindPose1.m[26]"
		;
connectAttr "R_Leg.msg" "bindPose1.m[27]";
connectAttr "R_knee.msg" "bindPose1.m[28]";
connectAttr "R_ankle.msg" "bindPose1.m[29]";
connectAttr "|Keso|master|root1|root|R_Leg|R_knee|R_ankle|R_foot.msg" "bindPose1.m[30]"
		;
connectAttr "|Keso|master|root1|root|chest|neck|feather1|feather2|feather3.msg" "bindPose1.m[33]"
		;
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[4]" "bindPose1.p[6]";
connectAttr "bindPose1.m[4]" "bindPose1.p[7]";
connectAttr "bindPose1.m[4]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[3]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[13]" "bindPose1.p[16]";
connectAttr "bindPose1.m[3]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[20]" "bindPose1.p[21]";
connectAttr "bindPose1.m[19]" "bindPose1.p[22]";
connectAttr "bindPose1.m[2]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[24]";
connectAttr "bindPose1.m[24]" "bindPose1.p[25]";
connectAttr "bindPose1.m[25]" "bindPose1.p[26]";
connectAttr "bindPose1.m[2]" "bindPose1.p[27]";
connectAttr "bindPose1.m[27]" "bindPose1.p[28]";
connectAttr "bindPose1.m[28]" "bindPose1.p[29]";
connectAttr "bindPose1.m[29]" "bindPose1.p[30]";
connectAttr "bindPose1.m[9]" "bindPose1.p[33]";
connectAttr "root.bps" "bindPose1.wm[2]";
connectAttr "|Keso|master|root1|root|chest.bps" "bindPose1.wm[3]";
connectAttr "|Keso|master|root1|root|chest|neck.bps" "bindPose1.wm[4]";
connectAttr "jaw.bps" "bindPose1.wm[5]";
connectAttr "L_eye.bps" "bindPose1.wm[6]";
connectAttr "R_eye.bps" "bindPose1.wm[7]";
connectAttr "|Keso|master|root1|root|chest|neck|feather1.bps" "bindPose1.wm[8]";
connectAttr "|Keso|master|root1|root|chest|neck|feather1|feather2.bps" "bindPose1.wm[9]"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder.bps" "bindPose1.wm[11]";
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow.bps" "bindPose1.wm[12]"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.bps" "bindPose1.wm[13]"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.bps" "bindPose1.wm[14]"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.bps" "bindPose1.wm[15]"
		;
connectAttr "|Keso|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.bps" "bindPose1.wm[16]"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder.bps" "bindPose1.wm[17]";
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow.bps" "bindPose1.wm[18]"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist.bps" "bindPose1.wm[19]"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.bps" "bindPose1.wm[20]"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.bps" "bindPose1.wm[21]"
		;
connectAttr "|Keso|master|root1|root|chest|R_shoulder|R_elbow|R_wrist|R_thumb.bps" "bindPose1.wm[22]"
		;
connectAttr "L_Leg.bps" "bindPose1.wm[23]";
connectAttr "|Keso|master|root1|root|L_Leg|L_knee.bps" "bindPose1.wm[24]";
connectAttr "L_ankle.bps" "bindPose1.wm[25]";
connectAttr "|Keso|master|root1|root|L_Leg|L_knee|L_ankle|L_foot.bps" "bindPose1.wm[26]"
		;
connectAttr "R_Leg.bps" "bindPose1.wm[27]";
connectAttr "R_knee.bps" "bindPose1.wm[28]";
connectAttr "R_ankle.bps" "bindPose1.wm[29]";
connectAttr "|Keso|master|root1|root|R_Leg|R_knee|R_ankle|R_foot.bps" "bindPose1.wm[30]"
		;
connectAttr "|Keso|master|root1|root|chest|neck|feather1|feather2|feather3.bps" "bindPose1.wm[33]"
		;
connectAttr "skinCluster4GroupParts.og" "skinCluster4.ip[0].ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4.ip[0].gi";
connectAttr "|Keso|master|root1|root|chest|neck.wm" "skinCluster4.ma[2]";
connectAttr "|Keso|master|root1|root|chest|neck|feather1.wm" "skinCluster4.ma[6]"
		;
connectAttr "|Keso|master|root1|root|chest|neck|feather1|feather2.wm" "skinCluster4.ma[7]"
		;
connectAttr "|Keso|master|root1|root|chest|neck|feather1|feather2|feather3.wm" "skinCluster4.ma[8]"
		;
connectAttr "|Keso|master|root1|root|chest|neck.liw" "skinCluster4.lw[2]";
connectAttr "|Keso|master|root1|root|chest|neck|feather1.liw" "skinCluster4.lw[6]"
		;
connectAttr "|Keso|master|root1|root|chest|neck|feather1|feather2.liw" "skinCluster4.lw[7]"
		;
connectAttr "|Keso|master|root1|root|chest|neck|feather1|feather2|feather3.liw" "skinCluster4.lw[8]"
		;
connectAttr "bindPose1.msg" "skinCluster4.bp";
connectAttr "groupParts8.og" "tweak4.ip[0].ig";
connectAttr "groupId8.id" "tweak4.ip[0].gi";
connectAttr "skinCluster4GroupId.msg" "skinCluster4Set.gn" -na;
connectAttr "KesoFeatherShape.iog.og[0]" "skinCluster4Set.dsm" -na;
connectAttr "skinCluster4.msg" "skinCluster4Set.ub[0]";
connectAttr "tweak4.og[0]" "skinCluster4GroupParts.ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4GroupParts.gi";
connectAttr "groupId8.msg" "tweakSet4.gn" -na;
connectAttr "KesoFeatherShape.iog.og[1]" "tweakSet4.dsm" -na;
connectAttr "tweak4.msg" "tweakSet4.ub[0]";
connectAttr "KesoFeatherShapeOrig.w" "groupParts8.ig";
connectAttr "groupId8.id" "groupParts8.gi";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "place2dTexture3.c" "file3.c";
connectAttr "place2dTexture3.tf" "file3.tf";
connectAttr "place2dTexture3.rf" "file3.rf";
connectAttr "place2dTexture3.mu" "file3.mu";
connectAttr "place2dTexture3.mv" "file3.mv";
connectAttr "place2dTexture3.s" "file3.s";
connectAttr "place2dTexture3.wu" "file3.wu";
connectAttr "place2dTexture3.wv" "file3.wv";
connectAttr "place2dTexture3.re" "file3.re";
connectAttr "place2dTexture3.of" "file3.of";
connectAttr "place2dTexture3.r" "file3.ro";
connectAttr "place2dTexture3.n" "file3.n";
connectAttr "place2dTexture3.vt1" "file3.vt1";
connectAttr "place2dTexture3.vt2" "file3.vt2";
connectAttr "place2dTexture3.vt3" "file3.vt3";
connectAttr "place2dTexture3.vc1" "file3.vc1";
connectAttr "place2dTexture3.o" "file3.uv";
connectAttr "place2dTexture3.ofs" "file3.fs";
connectAttr "place2dTexture4.c" "file4.c";
connectAttr "place2dTexture4.tf" "file4.tf";
connectAttr "place2dTexture4.rf" "file4.rf";
connectAttr "place2dTexture4.mu" "file4.mu";
connectAttr "place2dTexture4.mv" "file4.mv";
connectAttr "place2dTexture4.s" "file4.s";
connectAttr "place2dTexture4.wu" "file4.wu";
connectAttr "place2dTexture4.wv" "file4.wv";
connectAttr "place2dTexture4.re" "file4.re";
connectAttr "place2dTexture4.of" "file4.of";
connectAttr "place2dTexture4.r" "file4.ro";
connectAttr "place2dTexture4.n" "file4.n";
connectAttr "place2dTexture4.vt1" "file4.vt1";
connectAttr "place2dTexture4.vt2" "file4.vt2";
connectAttr "place2dTexture4.vt3" "file4.vt3";
connectAttr "place2dTexture4.vc1" "file4.vc1";
connectAttr "place2dTexture4.o" "file4.uv";
connectAttr "place2dTexture4.ofs" "file4.fs";
connectAttr "place2dTexture5.c" "file5.c";
connectAttr "place2dTexture5.tf" "file5.tf";
connectAttr "place2dTexture5.rf" "file5.rf";
connectAttr "place2dTexture5.mu" "file5.mu";
connectAttr "place2dTexture5.mv" "file5.mv";
connectAttr "place2dTexture5.s" "file5.s";
connectAttr "place2dTexture5.wu" "file5.wu";
connectAttr "place2dTexture5.wv" "file5.wv";
connectAttr "place2dTexture5.re" "file5.re";
connectAttr "place2dTexture5.of" "file5.of";
connectAttr "place2dTexture5.r" "file5.ro";
connectAttr "place2dTexture5.n" "file5.n";
connectAttr "place2dTexture5.vt1" "file5.vt1";
connectAttr "place2dTexture5.vt2" "file5.vt2";
connectAttr "place2dTexture5.vt3" "file5.vt3";
connectAttr "place2dTexture5.vc1" "file5.vc1";
connectAttr "place2dTexture5.o" "file5.uv";
connectAttr "place2dTexture5.ofs" "file5.fs";
connectAttr "place2dTexture6.c" "file6.c";
connectAttr "place2dTexture6.tf" "file6.tf";
connectAttr "place2dTexture6.rf" "file6.rf";
connectAttr "place2dTexture6.mu" "file6.mu";
connectAttr "place2dTexture6.mv" "file6.mv";
connectAttr "place2dTexture6.s" "file6.s";
connectAttr "place2dTexture6.wu" "file6.wu";
connectAttr "place2dTexture6.wv" "file6.wv";
connectAttr "place2dTexture6.re" "file6.re";
connectAttr "place2dTexture6.of" "file6.of";
connectAttr "place2dTexture6.r" "file6.ro";
connectAttr "place2dTexture6.n" "file6.n";
connectAttr "place2dTexture6.vt1" "file6.vt1";
connectAttr "place2dTexture6.vt2" "file6.vt2";
connectAttr "place2dTexture6.vt3" "file6.vt3";
connectAttr "place2dTexture6.vc1" "file6.vc1";
connectAttr "place2dTexture6.o" "file6.uv";
connectAttr "place2dTexture6.ofs" "file6.fs";
connectAttr "file7.oc" "lambert5.c";
connectAttr "lambert5.oc" "lambert5SG.ss";
connectAttr "kesoMeshShape.iog" "lambert5SG.dsm" -na;
connectAttr "knifeShape.iog" "lambert5SG.dsm" -na;
connectAttr "KesoFeatherShape.iog" "lambert5SG.dsm" -na;
connectAttr "lambert5SG.msg" "materialInfo4.sg";
connectAttr "lambert5.msg" "materialInfo4.m";
connectAttr "file7.msg" "materialInfo4.t" -na;
connectAttr "place2dTexture7.c" "file7.c";
connectAttr "place2dTexture7.tf" "file7.tf";
connectAttr "place2dTexture7.rf" "file7.rf";
connectAttr "place2dTexture7.mu" "file7.mu";
connectAttr "place2dTexture7.mv" "file7.mv";
connectAttr "place2dTexture7.s" "file7.s";
connectAttr "place2dTexture7.wu" "file7.wu";
connectAttr "place2dTexture7.wv" "file7.wv";
connectAttr "place2dTexture7.re" "file7.re";
connectAttr "place2dTexture7.of" "file7.of";
connectAttr "place2dTexture7.r" "file7.ro";
connectAttr "place2dTexture7.n" "file7.n";
connectAttr "place2dTexture7.vt1" "file7.vt1";
connectAttr "place2dTexture7.vt2" "file7.vt2";
connectAttr "place2dTexture7.vt3" "file7.vt3";
connectAttr "place2dTexture7.vc1" "file7.vc1";
connectAttr "place2dTexture7.o" "file7.uv";
connectAttr "place2dTexture7.ofs" "file7.fs";
connectAttr "root1.KnifeAttach" "joint1_parentConstraint1_root1W0.i";
connectAttr "root1.KnifeAttach" "joint1_parentConstraint1_R_wristW1.i";
connectAttr "layerManager.dli[2]" "layer1.id";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of keso_anims_01.ma
