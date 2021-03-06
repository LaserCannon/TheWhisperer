//Maya ASCII 2011 scene
//Name: niabi_anims_01.ma
//Last modified: Thu, Jan 16, 2014 12:22:46 AM
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
	setAttr ".t" -type "double3" 36.655904992873971 40.775854402622727 84.954736455161495 ;
	setAttr ".r" -type "double3" -18.938352725505847 -335.80000000000615 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 98.525028255957992;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 5.2263098712241902 14.481157564288168 -0.39520589310364129 ;
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
	setAttr ".t" -type "double3" 1.2413313993413544 17.571966826419047 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 98.513372480290343;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".t" -type "double3" 100.1 15.359221737365877 -3.4516864810364583 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 20.196065847332175;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Niabi";
createNode transform -n "master" -p "Niabi";
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
createNode transform -n "root1" -p "master";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".rp" -type "double3" 4.4408899999999997e-016 9 0 ;
	setAttr ".sp" -type "double3" 4.4408899999999997e-016 9 0 ;
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
		 0 0 1 0 -2.9582283945787969e-031 12.720345888709035 0 1;
	setAttr ".radi" 0.60344827586206906;
createNode joint -n "neck" -p "|Niabi|master|root1|root|chest";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.999999999999929 -52.931923557157589 -5.2766212017509739e-014 ;
	setAttr ".bps" -type "matrix" -1.8935153519773896e-016 0.60276350335856854 0.79791989511410533 0
		 -1.2873968324975906e-015 0.79791989511410533 -0.60276350335856843 0 -0.99999999999999989 -1.1657341758564144e-015 6.6613381477509392e-016 0
		 -6.0971907355316288e-016 15.745930592454712 -0.25139103931195717 1;
	setAttr ".radi" 0.60344827586206895;
createNode joint -n "jaw" -p "|Niabi|master|root1|root|chest|neck";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 2.4475785825388741 3.5527136788005009e-015 -9.1497545500987709e-016 ;
	setAttr ".r" -type "double3" 2.5444437451708122e-014 -4.4527765540489241e-014 3.1805546814635155e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 37.068076442842376 89.999999999999972 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999999967 1.5003351357726168e-015 -2.2319929509400889e-016 0
		 -1.4744406476663684e-015 0.99999999999999989 -6.106226635438359e-016 0 1.808192580142339e-016 6.106226635438356e-016 0.99999999999999989 0
		 -2.2328475818434993e-017 17.221241633611246 1.7015806065509895 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_eye" -p "|Niabi|master|root1|root|chest|neck";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 3.4700752724608241 1.2819433029682694 -1.155955014245357 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 37.068076442842376 89.999999999999972 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999999967 1.5003351357726168e-015 -2.2319929509400889e-016 0
		 -1.4744406476663684e-015 0.99999999999999989 -6.106226635438359e-016 0 1.808192580142339e-016 6.106226635438356e-016 0.99999999999999989 0
		 1.1559550142453541 18.860453386447809 1.744742421723825 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_eye" -p "|Niabi|master|root1|root|chest|neck";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 3.470106098975354 1.2819784348837366 1.1559599999999974 ;
	setAttr ".r" -type "double3" 9.1219106120803147e-012 -1.2724849496332978e-014 -6.7550873735500101e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 37.068076442842376 89.999999999999972 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999999967 1.5003351357726168e-015 -2.2319929509400889e-016 0
		 -1.4744406476663684e-015 0.99999999999999989 -6.106226635438359e-016 0 1.808192580142339e-016 6.106226635438356e-016 0.99999999999999989 0
		 -1.1559600000000001 18.860500000000005 1.7447458425766194 1;
	setAttr ".radi" 0.5;
createNode joint -n "feather1" -p "|Niabi|master|root1|root|chest|neck";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 133.10133788852761 4.6329380111491894 57.254609852443409 ;
	setAttr ".bps" -type "matrix" 0.080771936040842388 0.99389727126906724 -0.07512728207592978 0
		 -0.7277606482613902 0.1103096286092116 0.6769019313595277 0 0.68105824507921142 4.6086596465008297e-016 0.73222924471071549 0
		 2.7531891960201036 20.633564520004292 -0.97700499666320673 1;
	setAttr ".radi" 0.59394752026124598;
createNode joint -n "feather2" -p "|Niabi|master|root1|root|chest|neck|feather1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.0102499908327309 0.54319490177060803 -3.8863295282957591 ;
	setAttr ".bps" -type "matrix" 0.12344927098026168 0.98409107324371325 -0.12776946840492989 0
		 -0.68378973849070124 0.17766473921979109 0.70771945993647922 0 0.71916053216876441 -2.9618092644698618e-018 0.69484396015993377 0
		 3.1172781288239584 23.500400404685429 -1.1937050464569108 1;
	setAttr ".radi" 0.61135742792272796;
createNode joint -n "feather3" -p "|Niabi|master|root1|root|chest|neck|feather1|feather2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 6.4083115193573874e-014 -45.985215844186499 -79.766233081329744 ;
	setAttr ".bps" -type "matrix" 1 -1.958898097228657e-015 -2.4757973449140991e-014 0
		 2.095545958979983e-015 0.99999999999999989 -2.248201624865942e-015 0 2.4868995751603507e-014 2.1073657515092346e-015 1 0
		 3.2686707012869811 24.707244948466357 -1.3503957125941619 1;
	setAttr ".radi" 0.61135742792272796;
createNode parentConstraint -n "feather3_parentConstraint1" -p "|Niabi|master|root1|root|chest|neck|feather1|feather2|feather3";
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-015 3.5527136788005009e-015 
		-6.6613381477509392e-016 ;
	setAttr ".tg[0].tor" -type "double3" -1.0910942464084969e-013 1.4344301613400453e-012 
		-9.7259350079963962e-014 ;
	setAttr ".lr" -type "double3" -11.14589655098758 5.5988250788632055 -10.460652387419914 ;
	setAttr ".rst" -type "double3" 1.2263545281464587 -2.2204460492503131e-016 2.2204460492503131e-016 ;
	setAttr ".rsrr" -type "double3" 1.0813885916975828e-013 -1.4280690519771192e-012 
		1.0336802714756292e-013 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "feather2_parentConstraint1" -p "|Niabi|master|root1|root|chest|neck|feather1|feather2";
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
	setAttr ".tg[0].tot" -type "double3" 2.2204460492503131e-015 3.5527136788005009e-015 
		-1.3322676295501878e-015 ;
	setAttr ".tg[0].tor" -type "double3" 45.525959157343891 7.3407173706418494 82.849882593258741 ;
	setAttr ".lr" -type "double3" 5.8521784322775279 -7.7087056000581473 -5.7953322482213334 ;
	setAttr ".rst" -type "double3" 2.8950286167211523 -0.095414678270458075 0.089291655838937833 ;
	setAttr ".rsrr" -type "double3" -7.9327506410720975e-015 1.452370477590176e-014 
		-4.0999337690740658e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "feather1_parentConstraint1" -p "|Niabi|master|root1|root|chest|neck|feather1";
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
	setAttr ".tg[0].tot" -type "double3" -4.4408920985006262e-016 0 1.1102230246251563e-016 ;
	setAttr ".tg[0].tor" -type "double3" 42.751526529242675 4.3085356632822212 85.35390316603079 ;
	setAttr ".lr" -type "double3" 6.5478704496685056 12.980323802470361 -11.742324486376962 ;
	setAttr ".rst" -type "double3" 2.3671055365609455 4.3373139618454157 -2.7531891960201107 ;
	setAttr ".rsrr" -type "double3" -4.2937488199757412e-014 7.9513867036587922e-014 
		7.6333312355124352e-014 ;
	setAttr -k on ".w0";
createNode joint -n "R_braid1" -p "|Niabi|master|root1|root|chest|neck";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.5094091139296949e-013 -6.0674095710467843e-014 -119.87466004236416 ;
	setAttr ".bps" -type "matrix" 1.210640656653086e-015 -0.99212909624126766 0.12521923331295959 0
		 4.7706792877446125e-016 0.1252192333129597 0.99212909624126766 0 -0.99999999999999989 -1.1657341758564144e-015 6.6613381477509392e-016 0
		 -1.4697400000000005 17.6816 -2.9761100000000007 1;
	setAttr ".radi" 0.53340136696000362;
createNode joint -n "R_braid2" -p "|Niabi|master|root1|root|chest|neck|R_braid1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 0.081516111020837181 ;
	setAttr ".bps" -type "matrix" 1.2113181674132396e-015 -0.99194993971996437 0.12663063250872206 0
		 4.7534503836813179e-016 0.12663063250872217 0.99194993971996437 0 -0.99999999999999989 -1.1657341758564144e-015 6.6613381477509392e-016 0
		 -1.4697399999999985 16.0488 -2.7700300000000007 1;
	setAttr ".radi" 0.60367863903771968;
createNode joint -n "R_braid3" -p "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -6.7679742096135778 ;
	setAttr ".bps" -type "matrix" 1.1468582374041828e-015 -0.99996085589344508 0.0088479760877079039 0
		 6.1478515881951931e-016 0.0088479760877080149 0.99996085589344508 0 -0.99999999999999989 -1.1657341758564144e-015 6.6613381477509392e-016 0
		 -1.4697399999999958 13.0685 -2.38957 1;
	setAttr ".radi" 0.54098893532858983;
createNode joint -n "R_braid4" -p "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.493041768254415 89.999999999999972 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999999989 6.1113555422671921e-016 -6.0571322309130178e-016 0
		 -5.3075107749998176e-016 1.0000000000000002 -1.2241729158146697e-009 0 6.2490846646705864e-016 1.2241729713258207e-009 1.0000000000000002 0
		 -1.4697399999999947 11.277199999999995 -2.3737199999999996 1;
	setAttr ".radi" 0.54098893532858983;
createNode parentConstraint -n "R_braid4_parentConstraint1" -p "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4";
	addAttr -ci true -k true -sn "w0" -ln "R_braid4W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -4.4671135821516827e-006 -6.8584898684775908e-006 
		-2.4966861147390773e-006 ;
	setAttr ".tg[0].tor" -type "double3" -7.0139930139678303e-008 3.4704811278397683e-014 
		4.4557152011970008e-014 ;
	setAttr ".lr" -type "double3" -32.640923387912707 4.5298088932717331 3.6210733021325097 ;
	setAttr ".rst" -type "double3" 1.7913701215829221 4.4408920985006262e-016 6.6613381477509392e-016 ;
	setAttr ".rsrr" -type "double3" 7.0139939084988396e-008 -3.180554654208675e-015 
		-4.4527765542436005e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_braid3_parentConstraint1" -p "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3";
	addAttr -ci true -k true -sn "w0" -ln "R_braid3W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -4.4671135852603072e-006 -3.7659705357739881e-005 
		-1.171961017121248e-008 ;
	setAttr ".tg[0].tor" -type "double3" 89.999999999999957 -0.50695830188551783 -89.999999999999929 ;
	setAttr ".lr" -type "double3" -7.8955589846232064 -3.981938745042676 22.382530377885839 ;
	setAttr ".rst" -type "double3" 3.004486295791672 1.1468603844377867e-013 1.1102230246251563e-015 ;
	setAttr ".rsrr" -type "double3" -3.3610919671420658e-014 -2.4290200755527356e-014 
		-3.1805546814635097e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_braid2_parentConstraint1" -p "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2";
	addAttr -ci true -k true -sn "w0" -ln "R_braid2W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -4.4671135914775562e-006 -4.8334090081425529e-006 
		-3.7252340057136735e-007 ;
	setAttr ".tg[0].tor" -type "double3" 89.999999999999957 -7.2749325114990961 -89.999999999999929 ;
	setAttr ".lr" -type "double3" 2.1195414371238771e-014 -1.191579551353924e-013 -14.228116430478792 ;
	setAttr ".rst" -type "double3" 1.6457535679438775 -3.3306690738754696e-016 8.8817841970012523e-016 ;
	setAttr ".rsrr" -type "double3" -3.4983830117588355e-014 3.2054416670431509e-015 
		-2.9941940555965156e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_braid1_parentConstraint1" -p "|Niabi|master|root1|root|chest|neck|R_braid1";
	addAttr -ci true -k true -sn "w0" -ln "R_braid1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -4.4671135948082252e-006 -1.0784959410869988e-005 
		1.9320412132373117e-006 ;
	setAttr ".tg[0].tor" -type "double3" 89.999999999999957 -7.1934164004782577 -89.999999999999929 ;
	setAttr ".lr" -type "double3" -0.43354061413021289 0.39238253497776976 2.3107375133635526 ;
	setAttr ".rst" -type "double3" -1.0073565938916147 3.1868702770559629 1.4697399999999947 ;
	setAttr ".rsrr" -type "double3" 3.9753911606654664e-014 1.25823955281708e-013 4.3650635690597286e-029 ;
	setAttr -k on ".w0";
createNode joint -n "L_braid1" -p "|Niabi|master|root1|root|chest|neck";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.41769914515807e-014 -5.4363087411657327e-014 -119.87460638754686 ;
	setAttr ".bps" -type "matrix" 1.210641103404354e-015 -0.9921289789788782 0.12522016239539252 0
		 4.7706679506590979e-016 0.12522016239539263 0.9921289789788782 0 -0.99999999999999989 -1.1657341758564144e-015 6.6613381477509392e-016 0
		 1.4697355328864052 17.68161078495941 -2.9761119320412135 1;
	setAttr ".radi" 0.53340136696000362;
createNode joint -n "L_braid2" -p "|Niabi|master|root1|root|chest|neck|L_braid1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 0.081534902590591471 ;
	setAttr ".bps" -type "matrix" 1.2113187684518405e-015 -0.991949779603856 0.12663188675788417 0
		 4.7534350674316252e-016 0.12663188675788428 0.991949779603856 0 -0.99999999999999989 -1.1657341758564144e-015 6.6613381477509392e-016 0
		 1.4697355328864077 16.048804833409005 -2.7700296274765983 1;
	setAttr ".radi" 0.60367863903771968;
createNode joint -n "L_braid3" -p "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -6.7679758969714312 ;
	setAttr ".bps" -type "matrix" 1.1468589966494755e-015 -0.99996084496562654 0.0088492110173936656 0
		 6.1478374247431846e-016 0.0088492110173937766 0.99996084496562643 0 -0.99999999999999989 -1.1657341758564144e-015 6.6613381477509392e-016 0
		 1.4697355328864106 13.068537659705356 -2.3895699882803889 1;
	setAttr ".radi" 0.54098893532858983;
createNode joint -n "L_braid4" -p "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.492970939085296 89.999999999999972 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999999989 7.2166235433462831e-016 -6.622039756465831e-016 0
		 -6.9728453042875905e-016 1 -2.9582283945787969e-031 0 6.2490846786429696e-016 1.1102230246251563e-016 1 0
		 1.4697355328864126 11.277206858489862 -2.3737175033138822 1;
	setAttr ".radi" 0.54098893532858983;
createNode parentConstraint -n "L_braid4_parentConstraint1" -p "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4";
	addAttr -ci true -k true -sn "w0" -ln "L_braid4W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-016 -1.7763568394002505e-015 
		1.7763568394002505e-015 ;
	setAttr ".tg[0].tor" -type "double3" 4.1446603192821412e-014 3.7941492981333175e-014 
		5.0889871181239306e-014 ;
	setAttr ".lr" -type "double3" -2.2263882770244621e-014 3.1805546814634963e-015 -1.0495830448829606e-013 ;
	setAttr ".rst" -type "double3" 1.7914009435810172 4.4408920985006262e-016 -2.2204460492503131e-016 ;
	setAttr ".rsrr" -type "double3" -4.1347210859025721e-014 3.1805546814634974e-015 
		-5.4069429584879795e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_braid3_parentConstraint1" -p "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3";
	addAttr -ci true -k true -sn "w0" -ln "L_braid3W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 -1.7763568394002505e-015 1.7763568394002505e-015 ;
	setAttr ".tg[0].tor" -type "double3" 89.999999999999957 -0.50702906091466116 -89.999999999999929 ;
	setAttr ".lr" -type "double3" 4.6546992374613163 0.001679132626424546 33.006486067927511 ;
	setAttr ".rst" -type "double3" 3.0044536880625792 1.6608936448392342e-013 4.4408920985006262e-016 ;
	setAttr ".rsrr" -type "double3" -3.3986399061497268e-014 -1.794018335392542e-014 
		5.5659706925611599e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_braid2_parentConstraint1" -p "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2";
	addAttr -ci true -k true -sn "w0" -ln "L_braid2W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 0 8.8817841970012523e-016 ;
	setAttr ".tg[0].tor" -type "double3" 89.999999999999957 -7.2750049578860905 -89.999999999999929 ;
	setAttr ".lr" -type "double3" 4.1638198543864755 -15.635101790492726 -16.819073515171763 ;
	setAttr ".rst" -type "double3" 1.6457597612267385 5.5511151231257827e-016 2.2204460492503131e-016 ;
	setAttr ".rsrr" -type "double3" -3.4992881783788753e-014 -9.5167681014680399e-015 
		-1.2424041724466837e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_braid1_parentConstraint1" -p "|Niabi|master|root1|root|chest|neck|L_braid1";
	addAttr -ci true -k true -sn "w0" -ln "L_braid1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -2.2204460492503131e-016 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 89.999999999999957 -7.193470055295502 -89.999999999999929 ;
	setAttr ".lr" -type "double3" -0.53475484052461231 8.0282442176725173 1.1514210959456461 ;
	setAttr ".rst" -type "double3" -1.0073516347258185 3.1868800471535721 -1.4697355328864099 ;
	setAttr ".rsrr" -type "double3" 4.1130320179557581e-014 1.2502729142860955e-013 
		6.3611093629270785e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "neck_parentConstraint1" -p "|Niabi|master|root1|root|chest|neck";
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
	setAttr ".tg[0].tot" -type "double3" 0 1.7763568394002505e-015 0 ;
	setAttr ".tg[0].tor" -type "double3" -89.999999999999929 -52.931923557157603 90.000000000000014 ;
	setAttr ".lr" -type "double3" -40.532605785539964 -30.917590540506005 35.977090035190557 ;
	setAttr ".rst" -type "double3" 3.0255847037456736 -6.2095686657263384e-017 -0.25139103931195717 ;
	setAttr ".rsrr" -type "double3" -2.0673605429512861e-014 -3.1805546814635187e-015 
		-1.272221872585407e-014 ;
	setAttr -k on ".w0";
createNode joint -n "L_shoulder" -p "|Niabi|master|root1|root|chest";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -91.950467536173619 ;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 0.99942062433366718 -0.034035505821170098 0 0 0.034035505821170098 0.99942062433366718 0 0
		 0 0 1 0 1.7597946336367152 14.60890621900726 -0.39520589310364118 1;
	setAttr ".radi" 0.65517241379310343;
createNode joint -n "L_elbow" -p "|Niabi|master|root1|root|chest|L_shoulder";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.5545298617996184e-018 3.1024861364351687e-015 0.27902901272499508 ;
	setAttr ".bps" -type "matrix" 0.99957452430598348 -0.029167968020874631 0 0 0.029167968020874631 0.99957452430598348 0 0
		 0 0 1 0 5.2263098712241893 14.481157564288166 -0.39520589310364096 1;
	setAttr ".radi" 0.60344827586206895;
createNode joint -n "L_wrist" -p "|Niabi|master|root1|root|chest|L_shoulder|L_elbow";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.8284280858534633e-016 1.3646376107426215e-014 1.5352785718788864 ;
	setAttr ".bps" -type "matrix" 0.99999717626906548 -0.0023764372274386013 0 0 0.0023764372274386013 0.99999717626906548 0 0
		 0 0 1 0 8.8254002394234732 14.391451780128714 -0.39520589310364101 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_fingers1" -p "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.025807958339997977 0.36954259147712915 -3.8587798564096754 ;
	setAttr ".bps" -type "matrix" 0.99754945812272355 -0.069666922531362224 -0.0064496902305469436 0
		 0.069665466429175996 0.99757030825150828 -0.00045042446223481645 0 0.0064653991575301991 -7.1920347823918596e-015 0.99997909908844285 0
		 9.7576757902057114 14.389236279547619 -0.39520589310364129 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_fingers2" -p "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -0.37044266546064314 3.9948565804438534 ;
	setAttr ".bps" -type "matrix" 1 -3.4881907519609893e-015 -1.3010426069826052e-017 0
		 3.4972023523242482e-015 1 7.1697476520502249e-015 0 1.3010426069826052e-017 -7.1696041076643797e-015 1 0
		 10.36095303380108 14.339522757130682 -0.3998083185906357 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "L_fingers2_parentConstraint1" -p "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2";
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
	setAttr ".tg[0].tot" -type "double3" -5.3290705182007514e-015 -3.5527136788005009e-015 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 4.1054469379138874e-013 1.0933156717530838e-015 
		-1.8157034572053827e-013 ;
	setAttr ".lr" -type "double3" 0.85651744364460325 8.0958256480550261 -19.222354032335843 ;
	setAttr ".rst" -type "double3" 0.60529195978001482 -0.0075630702755304924 -0.0007019011096073835 ;
	setAttr ".rsrr" -type "double3" 1.2967593549912274e-015 -7.4631606890176548e-016 
		2.0037285201501648e-013 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_fingers1_parentConstraint1" -p "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1";
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
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-015 -7.1054273576010019e-015 
		5.5511151231257827e-017 ;
	setAttr ".tg[0].tor" -type "double3" -0.025807958339997987 0.36954259147712926 -3.994939807979407 ;
	setAttr ".lr" -type "double3" 0.16934268298903674 0.054670215189300361 -27.794344122422736 ;
	setAttr ".rst" -type "double3" 0.9322781832849838 -5.3290705182007514e-015 -1.6653345369377348e-016 ;
	setAttr ".rsrr" -type "double3" 9.6286323364618131e-017 2.0237599215244845e-016 
		-1.5902579281665636e-014 ;
	setAttr -k on ".w0";
createNode joint -n "L_thumb" -p "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 0.13615995156952257 ;
	setAttr ".bps" -type "matrix" 1 -3.3757718842508666e-015 0 0 3.3757718842508666e-015 1 0 0
		 0 0 1 0 9.7435457045994021 14.259602437683323 0.046516711647870419 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "L_thumb_parentConstraint1" -p "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb";
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
	setAttr ".tg[0].tot" -type "double3" -5.3290705182007514e-015 -7.1054273576010019e-015 
		5.5511151231257827e-017 ;
	setAttr ".tg[0].tor" -type "double3" 2.7679645564904619e-019 1.1647506227171164e-016 
		-2.0772997763308608e-013 ;
	setAttr ".lr" -type "double3" 27.459467912268259 -20.355879274135095 -32.548311537716025 ;
	setAttr ".rst" -type "double3" 0.91845620426597741 -0.1296670550746768 0.44172260475151154 ;
	setAttr ".rsrr" -type "double3" 0 0 1.9341748156650012e-013 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_wrist_parentConstraint1" -p "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist";
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
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-015 -1.7763568394002505e-015 
		1.1102230246251563e-016 ;
	setAttr ".tg[0].tor" -type "double3" 2.0903229709348341e-016 3.7968110291991868e-016 
		-0.13615995156974164 ;
	setAttr ".lr" -type "double3" -18.651530244584368 2.6676939415969625 19.945015273856935 ;
	setAttr ".rst" -type "double3" 3.6001755781706972 0.015310536235194403 -5.5511151231257827e-017 ;
	setAttr ".rsrr" -type "double3" 0 0 -2.544443745170814e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_elbow_parentConstraint1" -p "|Niabi|master|root1|root|chest|L_shoulder|L_elbow";
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
	setAttr ".tg[0].tot" -type "double3" 0 0 5.5511151231257827e-017 ;
	setAttr ".tg[0].tor" -type "double3" -2.0619411565870199e-016 -1.5209589910271746e-015 
		-1.671438523448568 ;
	setAttr ".lr" -type "double3" -6.2065531639624458 -38.755760060052559 22.664841128504154 ;
	setAttr ".rst" -type "double3" 3.4688548130931824 -0.0096900407090600993 1.6653345369377348e-016 ;
	setAttr ".rsrr" -type "double3" 0 0 3.4290355159528549e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_shoulder_parentConstraint1" -p "|Niabi|master|root1|root|chest|L_shoulder";
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
	setAttr ".tg[0].tot" -type "double3" -2.2204460492503131e-016 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -1.9504675361735975 ;
	setAttr ".lr" -type "double3" 23.530092640753075 -27.518062460633281 -57.113375824571371 ;
	setAttr ".rst" -type "double3" 1.8885603302982223 -1.7597946336367156 -0.39520589310364118 ;
	setAttr ".rsrr" -type "double3" 0 0 6.3611093629270335e-015 ;
	setAttr -k on ".w0";
createNode joint -n "R_shoulder1" -p "|Niabi|master|root1|root|chest";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 7.016709298534876e-015 92.109713502631777 ;
	setAttr ".bps" -type "matrix" -0.99932216711437172 -0.03681312692282579 0 0 -0.036813126922825679 0.99932216711437172 1.2246467991473532e-016 0
		 -4.5083078052643808e-018 1.2238166932736116e-016 -1 0 -1.75979 14.608900000000002 -0.395206 1;
	setAttr ".radi" 0.65517241379310343;
createNode joint -n "R_elbow" -p "R_shoulder1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 0.68202825659580413 ;
	setAttr ".bps" -type "matrix" -0.99968956747934079 -0.024915229739435076 1.457740872721711e-018 0
		 -0.024915229739434965 0.99968956747934079 1.2245600360197361e-016 0 -4.5083078052643808e-018 1.2238166932736116e-016 -1 0
		 -5.2263100000000007 14.481200000000005 -0.39520599999999922 1;
	setAttr ".radi" 0.60344827586206895;
createNode joint -n "R_wrist" -p "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.5583764482244594e-016 -1.3882043669866262e-014 
		1.2863328352541428 ;
	setAttr ".bps" -type "matrix" -0.99999695679675116 -0.0024670624711807532 4.2063708620094403e-018 0
		 -0.0024670624711806421 0.99999695679675116 1.2239241917206234e-016 0 -4.5083078052643808e-018 1.2238166932736116e-016 -1 0
		 -8.8254000000000037 14.391500000000006 -0.39520599999999967 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_fingers1" -p "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.035879715381129905 -0.4355565637510922 -4.567898100922462 ;
	setAttr ".bps" -type "matrix" -0.99659534797150251 -0.082097044344934145 -0.0076018228989005437 0
		 -0.082094656113783263 0.99662434011508383 -0.00062620103300385925 0 0.0076275709842638494 3.3652854348471024e-013 -0.99997090965731605 0
		 -9.7576800000000006 14.38920000000001 -0.39520599999999995 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_fingers2" -p "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 180.43703186314519 4.7091141341087948 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 -2.3735971059214517e-015 1.6740081543176188e-016 0
		 2.4841240175987882e-015 1.0000000000000002 3.3655641207969156e-013 0 -1.6740081543176188e-016 -3.3655637556944262e-013 1.0000000000000002 0
		 -10.361000000000001 14.339500000000008 -0.39980799999999994 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "R_fingers2_parentConstraint1" -p "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1|R_fingers2";
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
	setAttr ".tg[0].tot" -type "double3" 0 8.8817841970012523e-015 2.7755575615628914e-016 ;
	setAttr ".tg[0].tor" -type "double3" 1.9283398644691051e-011 -9.1440947092076072e-015 
		-1.3758779115286837e-013 ;
	setAttr ".lr" -type "double3" -1.316827610102469 -3.8141079060934397 99.75673034061208 ;
	setAttr ".rst" -type "double3" 0.60538111203108969 -1.7763568394002505e-015 1.6653345369377348e-016 ;
	setAttr ".rsrr" -type "double3" -1.1585418908065343e-015 1.5354488593358757e-030 
		1.5187148603988287e-013 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_fingers1_parentConstraint1" -p "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1";
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
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-015 7.1054273576010019e-015 
		2.7755575615628914e-016 ;
	setAttr ".tg[0].tor" -type "double3" 0.035879715381109456 179.56444343624895 4.709250511704302 ;
	setAttr ".lr" -type "double3" -1.989399681130256e-014 4.236161445326324e-014 -2.3231016768233651e-015 ;
	setAttr ".rst" -type "double3" 0.93228283712615589 3.5527136788005009e-015 2.2204460492503131e-016 ;
	setAttr ".rsrr" -type "double3" -1.9890890800871444e-014 -8.5086243875663229e-015 
		-1.5120325701447577e-015 ;
	setAttr -k on ".w0";
createNode transform -n "bow" -p "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1";
	setAttr ".rp" -type "double3" -9.757679999999997 13.982578796606436 -0.39520599999999984 ;
	setAttr ".rpt" -type "double3" 18.337214389493564 0.7541004321425312 0.71597310648029877 ;
	setAttr ".sp" -type "double3" -9.75768 13.982578796606441 -0.39520599999999995 ;
	setAttr ".spt" -type "double3" 3.5527136788004997e-015 -5.3290705182007498e-015 
		1.1102230246251564e-016 ;
createNode mesh -n "bowShape" -p "bow";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:79]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.38519889890595382 0.26058075456849988 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 107 ".uvst[0].uvsp[0:106]" -type "float2" 0.54678744 0.50578856 
		0.54673898 0.50396991 0.58594441 0.50416911 0.58594513 0.50606978 0.99187893 0.50793302 
		0.99194628 0.50603771 0.99198502 0.50417852 0.99197716 0.50981057 0.58592802 0.50797486 
		0.58594292 0.50234783 0.54665118 0.50943291 0.54667825 0.50758839 0.95108455 0.50980926 
		0.95108479 0.50783312 0.95112294 0.50397003 0.95110208 0.50586104 0.90977782 0.50958419 
		0.90978724 0.50763297 0.90980577 0.50374126 0.90979612 0.50569534 0.86872095 0.5093739 
		0.86872977 0.50743508 0.86874831 0.50356269 0.86873835 0.50550747 0.82783645 0.50916868 
		0.82784522 0.50723767 0.82786369 0.50338125 0.82785398 0.5053184 0.78711802 0.50896412 
		0.78712821 0.5070411 0.7871455 0.50320065 0.78713715 0.50512958 0.74656737 0.50876075 
		0.74657714 0.50684547 0.74659413 0.50302064 0.74658614 0.50494182 0.70618159 0.5085578 
		0.7061919 0.50665057 0.70620823 0.50284123 0.70620066 0.50475478 0.66596103 0.50835621 
		0.66597116 0.50645649 0.66598707 0.50266266 0.66597986 0.50456822 0.62589896 0.50815904 
		0.62590975 0.5062629 0.62592542 0.50248146 0.62591845 0.50438023 0.43435532 0.50300151 
		0.43438193 0.50309026 0.42674783 0.49111775 0.42967975 0.49037936 0.32349476 0.017135262 
		0.32323688 0.017074287 0.32082558 0.016756058 0.32438055 0.016844749 0.43448946 0.49025026 
		0.42187196 0.49200925 0.43702006 0.50268954 0.43516085 0.50290459 0.42183015 0.25337732 
		0.41437343 0.25512046 0.39199147 0.17631102 0.39846691 0.1750623 0.43392876 0.25069612 
		0.40831169 0.1705896 0.38253477 0.18012071 0.44172752 0.24899608 0.35446024 0.098027706 
		0.34933108 0.099319637 0.32210863 0.031953454 0.32484585 0.03137368 0.36195815 0.093972027 
		0.3290264 0.029594362 0.31815723 0.033215702 0.36513919 0.090744615 0.43426603 0.33361712 
		0.42778072 0.33535889 0.44528848 0.33348158 0.41773137 0.3361108 0.42783329 0.42029604 
		0.42254457 0.42138946 0.4360339 0.42073905 0.41403764 0.42143944 0.43779421 0.49076155 
		0.43162042 0.50477743 0.33080876 0.02830863 0.34230429 0.10269064 0.44179773 0.42248979 
		0.45224059 0.33496818 0.41405204 0.16631356 0.40415001 0.25756919 0.32579616 0.016384125 
		0.58589303 0.5098263 0.54550886 0.50560033 0.62588942 0.51007128 0.66595107 0.51027584 
		0.70617187 0.51048541 0.74655741 0.51069582 0.78710848 0.51090747 0.82782561 0.51111966 
		0.86870992 0.51133323 0.9097681 0.51155186 0.95109755 0.5117296 0.99198002 0.51173115 
		0.54672021 0.50218523 0.99322838 0.50775111;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 84 ".pt[0:83]" -type "float3"  -48.502277 13.996867 -7.5407181 
		-48.561684 14.058531 -7.541678 -48.882202 -0.083730131 6.7697816 -48.941608 -0.022066116 
		6.7688208 -48.943848 -0.08144781 6.8298159 -49.003254 -0.019784242 6.8288565 -48.563923 
		13.999149 -7.4806814 -48.623329 14.060813 -7.4816413 -48.847664 1.1963242 5.4688272 
		-48.909309 1.1986065 5.5288615 -48.968716 1.2602701 5.5279021 -48.90707 1.2579882 
		5.4678664 -48.813126 2.4763794 4.167872 -48.874771 2.4786615 4.2279062 -48.934177 
		2.5403244 4.2269478 -48.872532 2.5380435 4.1669111 -48.778587 3.7564335 2.8669171 
		-48.840233 3.7587156 2.9269528 -48.899639 3.820379 2.9259932 -48.837994 3.8180976 
		2.8659568 -48.744049 5.0364876 1.565962 -48.805695 5.0387697 1.6259986 -48.865101 
		5.1004333 1.6250391 -48.803455 5.0981522 1.5650024 -48.709511 6.3165417 0.26500854 
		-48.771156 6.3188238 0.32504421 -48.830563 6.3804874 0.32408467 -48.768913 6.3782063 
		0.26404718 -48.674973 7.5965967 -1.0359467 -48.736618 7.5988784 -0.97590965 -48.796024 
		7.660542 -0.9768697 -48.734375 7.6582599 -1.0369056 -48.64043 8.8766508 -2.3369009 
		-48.70208 8.878932 -2.2768645 -48.761482 8.9405956 -2.2778239 -48.699837 8.9383144 
		-2.3378606 -48.605892 10.156705 -3.6378553 -48.667538 10.158986 -3.5778189 -48.726944 
		10.22065 -3.5787783 -48.665298 10.218369 -3.6388149 -48.571354 11.436759 -4.9388094 
		-48.632999 11.439041 -4.8787727 -48.692406 11.500704 -4.8797326 -48.63076 11.498423 
		-4.9397693 -48.536816 12.716813 -6.2397637 -48.598461 12.719095 -6.1797271 -48.657867 
		12.780759 -6.180687 -48.596222 12.778477 -6.2407236 -48.421497 14.719381 -8.3369608 
		-48.506908 14.808039 -8.3383389 -48.87429 -0.72074163 7.3918309 -48.932171 -0.66066444 
		7.3908958 -48.966839 -0.71731591 7.4819613 -49.024715 -0.65723813 7.4810262 -48.558071 
		14.724437 -8.2039518 -48.643482 14.813093 -8.2053299 -47.284161 5.757225 -0.62210768 
		-46.995766 5.4578681 -0.61744952 -47.456917 5.4749365 -0.16833758 -47.745312 5.7742929 
		-0.17299575 -48.473869 1.5731276 4.7184262 -48.339153 1.4332927 4.7206011 -48.554569 
		1.4412659 4.9303918 -48.689285 1.5811008 4.928216 -47.562157 3.3362763 2.0532765 
		-47.350601 3.1166806 2.0566936 -47.688885 3.1292014 2.3861449 -47.90044 3.3487968 
		2.3827279 -47.420403 8.4925117 -3.1898024 -47.199669 8.2633877 -3.1862371 -47.552628 
		8.2764511 -2.8424926 -47.773361 8.5055761 -2.8460584 -48.190365 11.885599 -5.7677321 
		-48.037289 11.726707 -5.7652588 -48.282055 11.735766 -5.5268836 -48.435131 11.894659 
		-5.5293565 -48.908283 -0.22724643 6.9380813 -49.021606 -0.2230517 7.0484476 -49.092476 
		-0.14948902 7.0473027 -48.979153 -0.15368274 6.9369354 -48.577595 14.440538 -7.9034295 
		-48.480682 14.339944 -7.9018645 -48.635643 14.345679 -7.750947 -48.732555 14.446274 
		-7.7525125;
	setAttr -s 84 ".vt[0:83]"  39.016281 1.2704363 0.030855505 39.077995 
		1.2704363 0.030855505 39.016281 15.587937 0.030855505 39.077995 15.587937 0.030855505 
		39.016281 15.587937 -0.030855505 39.077995 15.587937 -0.030855505 39.016281 1.2704363 
		-0.030855505 39.077995 1.2704363 -0.030855505 39.016281 14.286346 0.030855505 39.016281 
		14.286346 -0.030855505 39.077995 14.286346 -0.030855505 39.077995 14.286346 0.030855505 
		39.016281 12.984755 0.030855505 39.016281 12.984755 -0.030855505 39.077995 12.984755 
		-0.030855505 39.077995 12.984755 0.030855505 39.016281 11.683164 0.030855505 39.016281 
		11.683164 -0.030855505 39.077995 11.683164 -0.030855505 39.077995 11.683164 0.030855505 
		39.016281 10.381573 0.030855505 39.016281 10.381573 -0.030855505 39.077995 10.381573 
		-0.030855505 39.077995 10.381573 0.030855505 39.016281 9.0799818 0.030855505 39.016281 
		9.0799818 -0.030855505 39.077995 9.0799818 -0.030855505 39.077995 9.0799818 0.030855505 
		39.016281 7.7783909 0.030855505 39.016281 7.7783909 -0.030855505 39.077995 7.7783909 
		-0.030855505 39.077995 7.7783909 0.030855505 39.016281 6.4768 0.030855505 39.016281 
		6.4768 -0.030855505 39.077995 6.4768 -0.030855505 39.077995 6.4768 0.030855505 39.016281 
		5.175209 0.030855505 39.016281 5.175209 -0.030855505 39.077995 5.175209 -0.030855505 
		39.077995 5.175209 0.030855505 39.016281 3.8736181 0.030855505 39.016281 3.8736181 
		-0.030855505 39.077995 3.8736181 -0.030855505 39.077995 3.8736181 0.030855505 39.016281 
		2.5720272 0.030855505 39.016281 2.5720272 -0.030855505 39.077995 2.5720272 -0.030855505 
		39.077995 2.5720272 0.030855505 38.992245 0.50993538 0.068358883 39.080975 0.50993538 
		0.068358883 39.006546 16.225195 0.046321929 39.066673 16.225195 0.046321929 39.006546 
		16.225195 -0.046321929 39.066673 16.225195 -0.046321929 38.992245 0.50993538 -0.068358883 
		39.080975 0.50993538 -0.068358883 37.762699 8.3675652 0.23081872 37.463097 8.3675652 
		0.23081872 37.463097 8.3675652 -0.23081872 37.762699 8.3675652 -0.23081872 38.726589 
		13.605986 0.10782087 38.586639 13.605986 0.10782087 38.586639 13.605986 -0.10782087 
		38.726589 13.605986 -0.10782087 37.915474 10.986775 0.16931979 37.695698 10.986775 
		0.16931979 37.695698 10.986775 -0.16931979 37.915474 10.986775 -0.16931979 37.920242 
		5.7483549 0.17666543 37.690929 5.7483549 0.17666543 37.690929 5.7483549 -0.17666543 
		37.920242 5.7483549 -0.17666543 38.736126 3.1291451 0.12251215 38.577103 3.1291451 
		0.12251215 38.577103 3.1291451 -0.12251215 38.736126 3.1291451 -0.12251215 39.064861 
		15.782253 0.056722209 39.064861 15.782253 -0.056722209 39.138485 15.782253 -0.056722209 
		39.138485 15.782253 0.056722209 39.151688 0.95511627 0.077563189 39.05101 0.95511627 
		0.077563189 39.05101 0.95511627 -0.077563182 39.151688 0.95511627 -0.077563182;
	setAttr -s 160 ".ed[0:159]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 44 0 1 47 0 
		2 4 0 3 5 0 4 9 0 5 10 0 
		6 0 0 7 1 0 8 2 0 9 13 0 
		8 9 1 10 14 0 9 10 1 11 3 0 
		10 11 1 11 8 1 12 8 0 13 17 0 
		12 13 1 14 18 0 13 14 1 15 11 0 
		14 15 1 15 12 1 16 12 0 17 21 0 
		16 17 1 18 22 0 17 18 1 19 15 0 
		18 19 1 19 16 1 20 16 0 21 25 0 
		20 21 1 22 26 0 21 22 1 23 19 0 
		22 23 1 23 20 1 24 20 0 25 29 0 
		24 25 1 26 30 0 25 26 1 27 23 0 
		26 27 1 27 24 1 28 24 0 29 33 0 
		28 29 1 30 34 0 29 30 1 31 27 0 
		30 31 1 31 28 1 32 28 0 33 37 0 
		32 33 1 34 38 0 33 34 1 35 31 0 
		34 35 1 35 32 1 36 32 0 37 41 0 
		36 37 1 38 42 0 37 38 1 39 35 0 
		38 39 1 39 36 1 40 36 0 41 45 0 
		40 41 1 42 46 0 41 42 1 43 39 0 
		42 43 1 43 40 1 44 40 0 45 6 0 
		44 45 1 46 7 0 45 46 1 47 43 0 
		46 47 1 47 44 1 48 49 0 50 51 0 
		52 53 0 54 55 0 48 81 0 49 80 0 
		50 52 0 51 53 0 52 77 0 53 78 0 
		54 48 0 55 49 0 56 64 0 57 65 0 
		56 57 1 58 70 0 57 58 1 59 71 0 
		58 59 1 59 56 1 60 79 0 61 76 0 
		60 61 1 62 66 0 61 62 1 63 67 0 
		62 63 1 63 60 1 64 60 0 65 61 0 
		64 65 1 66 58 0 65 66 1 67 59 0 
		66 67 1 67 64 1 68 56 0 69 57 0 
		68 69 1 70 74 0 69 70 1 71 75 0 
		70 71 1 71 68 1 72 68 0 73 69 0 
		72 73 1 74 82 0 73 74 1 75 83 0 
		74 75 1 75 72 1 76 50 0 77 62 0 
		76 77 1 78 63 0 77 78 1 79 51 0 
		78 79 1 79 76 1 80 72 0 81 73 0 
		80 81 1 82 54 0 81 82 1 83 55 0 
		82 83 1 83 80 1;
	setAttr -s 80 ".fc[0:79]" -type "polyFaces" 
		f 4 0 5 91 -5 
		mu 0 4 0 1 2 3 
		f 4 1 7 -3 -7 
		mu 0 4 4 5 106 7 
		f 4 88 87 -4 -86 
		mu 0 4 8 93 10 11 
		f 4 3 11 -1 -11 
		mu 0 4 11 94 1 0 
		f 4 -12 -88 90 -6 
		mu 0 4 1 105 9 2 
		f 4 10 4 86 85 
		mu 0 4 11 0 3 8 
		f 4 -15 12 6 8 
		mu 0 4 12 13 4 7 
		f 4 2 9 -17 -9 
		mu 0 4 7 104 103 12 
		f 4 -19 -10 -8 -18 
		mu 0 4 15 14 6 5 
		f 4 -20 17 -2 -13 
		mu 0 4 13 15 5 4 
		f 4 -23 20 14 13 
		mu 0 4 16 17 13 12 
		f 4 16 15 -25 -14 
		mu 0 4 12 103 102 16 
		f 4 -27 -16 18 -26 
		mu 0 4 19 18 14 15 
		f 4 -28 25 19 -21 
		mu 0 4 17 19 15 13 
		f 4 -31 28 22 21 
		mu 0 4 20 21 17 16 
		f 4 24 23 -33 -22 
		mu 0 4 16 102 101 20 
		f 4 -35 -24 26 -34 
		mu 0 4 23 22 18 19 
		f 4 -36 33 27 -29 
		mu 0 4 21 23 19 17 
		f 4 -39 36 30 29 
		mu 0 4 24 25 21 20 
		f 4 32 31 -41 -30 
		mu 0 4 20 101 100 24 
		f 4 -43 -32 34 -42 
		mu 0 4 27 26 22 23 
		f 4 -44 41 35 -37 
		mu 0 4 25 27 23 21 
		f 4 -47 44 38 37 
		mu 0 4 28 29 25 24 
		f 4 40 39 -49 -38 
		mu 0 4 24 100 99 28 
		f 4 -51 -40 42 -50 
		mu 0 4 31 30 26 27 
		f 4 -52 49 43 -45 
		mu 0 4 29 31 27 25 
		f 4 -55 52 46 45 
		mu 0 4 32 33 29 28 
		f 4 48 47 -57 -46 
		mu 0 4 28 99 98 32 
		f 4 -59 -48 50 -58 
		mu 0 4 35 34 30 31 
		f 4 -60 57 51 -53 
		mu 0 4 33 35 31 29 
		f 4 -63 60 54 53 
		mu 0 4 36 37 33 32 
		f 4 56 55 -65 -54 
		mu 0 4 32 98 97 36 
		f 4 -67 -56 58 -66 
		mu 0 4 39 38 34 35 
		f 4 -68 65 59 -61 
		mu 0 4 37 39 35 33 
		f 4 -71 68 62 61 
		mu 0 4 40 41 37 36 
		f 4 64 63 -73 -62 
		mu 0 4 36 97 96 40 
		f 4 -75 -64 66 -74 
		mu 0 4 43 42 38 39 
		f 4 -76 73 67 -69 
		mu 0 4 41 43 39 37 
		f 4 -79 76 70 69 
		mu 0 4 44 45 41 40 
		f 4 72 71 -81 -70 
		mu 0 4 40 96 95 44 
		f 4 -83 -72 74 -82 
		mu 0 4 47 46 42 43 
		f 4 -84 81 75 -77 
		mu 0 4 45 47 43 41 
		f 4 -87 84 78 77 
		mu 0 4 8 3 45 44 
		f 4 80 79 -89 -78 
		mu 0 4 44 95 93 8 
		f 4 -91 -80 82 -90 
		mu 0 4 2 9 46 47 
		f 4 -92 89 83 -85 
		mu 0 4 3 2 47 45 
		f 4 92 97 154 -97 
		mu 0 4 48 49 50 51 
		f 4 93 99 -95 -99 
		mu 0 4 52 53 92 55 
		f 4 158 157 -96 -156 
		mu 0 4 56 84 58 59 
		f 4 95 103 -93 -103 
		mu 0 4 59 58 49 48 
		f 4 -104 -158 159 -98 
		mu 0 4 49 85 57 50 
		f 4 102 96 156 155 
		mu 0 4 59 48 51 56 
		f 4 -107 104 122 -106 
		mu 0 4 60 61 62 63 
		f 4 -109 105 124 123 
		mu 0 4 64 60 63 65 
		f 4 126 125 -111 -124 
		mu 0 4 65 90 67 64 
		f 4 -112 -126 127 -105 
		mu 0 4 61 91 66 62 
		f 4 -115 112 151 -114 
		mu 0 4 68 69 70 71 
		f 4 -117 113 146 145 
		mu 0 4 72 68 71 73 
		f 4 148 147 -119 -146 
		mu 0 4 73 86 75 72 
		f 4 -120 -148 150 -113 
		mu 0 4 69 87 74 70 
		f 4 -123 120 114 -122 
		mu 0 4 63 62 69 68 
		f 4 -125 121 116 115 
		mu 0 4 65 63 68 72 
		f 4 118 117 -127 -116 
		mu 0 4 72 75 90 65 
		f 4 -128 -118 119 -121 
		mu 0 4 62 66 87 69 
		f 4 -131 128 106 -130 
		mu 0 4 76 77 61 60 
		f 4 -133 129 108 107 
		mu 0 4 78 76 60 64 
		f 4 110 109 -135 -108 
		mu 0 4 64 67 89 78 
		f 4 -136 -110 111 -129 
		mu 0 4 77 79 91 61 
		f 4 -139 136 130 -138 
		mu 0 4 80 81 77 76 
		f 4 -141 137 132 131 
		mu 0 4 82 80 76 78 
		f 4 134 133 -143 -132 
		mu 0 4 78 89 88 82 
		f 4 -144 -134 135 -137 
		mu 0 4 81 83 79 77 
		f 4 -147 144 98 100 
		mu 0 4 73 71 52 55 
		f 4 94 101 -149 -101 
		mu 0 4 55 92 86 73 
		f 4 -151 -102 -100 -150 
		mu 0 4 70 74 54 53 
		f 4 -152 149 -94 -145 
		mu 0 4 71 70 53 52 
		f 4 -155 152 138 -154 
		mu 0 4 51 50 81 80 
		f 4 -157 153 140 139 
		mu 0 4 56 51 80 82 
		f 4 142 141 -159 -140 
		mu 0 4 82 88 84 56 
		f 4 -160 -142 143 -153 
		mu 0 4 50 57 83 81 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bw" 3;
createNode joint -n "R_thumb" -p "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 180 0.14135241078333777 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 -2.6139247016887524e-014 1.1795637210946771e-016 0
		 2.6250269319350039e-014 1.0000000000000002 1.2238166932736103e-016 0 -1.1795637210947097e-016 -1.2238166932735798e-016 1 0
		 -9.6919110241130841 14.259600000000017 0.061668190450150817 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "R_thumb_parentConstraint1" -p "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_thumb";
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
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-015 8.8817841970012523e-015 
		2.7755575615628914e-016 ;
	setAttr ".tg[0].tor" -type "double3" 6.9562161572431591e-015 -6.502584645147248e-015 
		-1.4865117442490111e-012 ;
	setAttr ".lr" -type "double3" 81.288735509405456 27.499400137276705 28.02929003575786 ;
	setAttr ".rst" -type "double3" 0.86683379268386496 -0.12976186177302829 -0.45687419045015054 ;
	setAttr ".rsrr" -type "double3" 1.83847473388098e-028 1.3470148943537181e-036 1.5012218096507802e-012 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_wrist_parentConstraint1" -p "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist";
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
	setAttr ".tg[0].tot" -type "double3" 0 5.3290705182007514e-015 2.2204460492503131e-016 ;
	setAttr ".tg[0].tor" -type "double3" 0 180 0.14135241078183655 ;
	setAttr ".lr" -type "double3" -1.3240162225051224 1.4526783135506158 11.064968721177234 ;
	setAttr ".rst" -type "double3" 3.6002076215268497 8.8817841970012523e-015 4.4408920985006262e-016 ;
	setAttr ".rsrr" -type "double3" 1.7310660181600008e-017 -1.4033397243797218e-014 
		-5.1684013573782151e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_elbow_parentConstraint1" -p "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow";
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
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-016 5.3290705182007514e-015 
		3.3306690738754696e-016 ;
	setAttr ".tg[0].tor" -type "double3" 0 180 1.4276852460359486 ;
	setAttr ".lr" -type "double3" -24.350556122440761 69.951688249292218 -11.180363360110094 ;
	setAttr ".rst" -type "double3" 3.4688713150533568 1.0658141036401504e-014 -7.2164496600635165e-016 ;
	setAttr ".rsrr" -type "double3" 1.7482292418782262e-016 -1.4031240382315476e-014 
		3.7172732839604851e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_shoulder1_parentConstraint1" -p "R_shoulder1";
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
	setAttr ".tg[0].tot" -type "double3" 0 1.7763568394002505e-015 0 ;
	setAttr ".tg[0].tor" -type "double3" 0 180 2.1097135026317901 ;
	setAttr ".lr" -type "double3" 4.7883261595847282 -17.488046053449636 -49.616516459653539 ;
	setAttr ".rst" -type "double3" 1.888554111290965 1.7597899999999995 -0.395206 ;
	setAttr ".rsrr" -type "double3" 7.0167092985348775e-015 -7.0167092985348736e-015 
		-1.9083328088781101e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "chest_parentConstraint1" -p "|Niabi|master|root1|root|chest";
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
	setAttr ".tg[0].tot" -type "double3" -1.9721522630525326e-031 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 90.000000000000014 ;
	setAttr ".lr" -type "double3" 29.054582878114317 -27.773695206432805 -1.283899909934582 ;
	setAttr ".rst" -type "double3" 3.720345888709037 -3.8199373304286241e-016 0 ;
	setAttr -k on ".w0";
createNode transform -n "Case" -p "|Niabi|master|root1|root|chest";
	setAttr ".t" -type "double3" 10.522503207142794 30.556322074742042 -1.3227030184724651 ;
	setAttr ".r" -type "double3" -0.84698260419229165 -4.7792150591207925 -139.45638554710789 ;
	setAttr ".rp" -type "double3" 32.102044657312689 4.6545883354637523 0 ;
	setAttr ".rpt" -type "double3" -42.908136055618769 -35.239467809546838 0 ;
	setAttr ".sp" -type "double3" 32.102044657312689 4.6545883354637523 0 ;
createNode mesh -n "CaseShape" -p "Case";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.72309505939483643 0.76463188031851403 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 61 ".uvst[0].uvsp[0:60]" -type "float2" 0.012731329 0.90028602 
		0.99265224 0.59483576 0.6451118 0.61164892 0.65312535 0.64919603 0.68495673 0.64829504 
		0.69242871 0.60983443 0.96228784 0.5932377 0.96616197 0.61666715 0.97598481 0.62418979 
		0.9774729 0.594033 0.98874962 0.57126391 0.012731314 0.84760767 0.66806 0.56108171 
		0.65243423 0.57296711 0.66921192 0.66033256 0.68410689 0.5722428 0.96854979 0.57023752 
		0.70166075 0.7804808 0.70166087 0.76463187 0.74452937 0.76463175 0.74452925 0.78048062 
		0.70166099 0.78606611 0.74452931 0.78606594 0.70166087 0.74878299 0.74452937 0.74878287 
		0.70166087 0.74319768 0.74452937 0.74319756 0.70166099 0.73761237 0.74452931 0.73761237 
		0.70166075 0.80750036 0.74452925 0.80750012 0.70166087 0.79165137 0.74452937 0.79165125 
		0.66901344 0.65265739 0.68215978 0.64231098 0.68847907 0.60988259 0.68153113 0.57820183 
		0.66823649 0.56871885 0.65525365 0.57895666 0.64906651 0.61160254 0.65572482 0.64326751 
		0.97919655 0.5633859 0.15521616 0.84760743 0.15521619 0.90028584 0.9862687 0.61776006 
		0.15521616 0.93741411 0.15521616 0.99009246 0.012731373 0.99009258 0.012731329 0.93741423 
		0.012731314 0.79492933 0.012731314 0.77636534 0.15521616 0.77636498 0.15521616 0.79492933 
		0.012731329 0.91885 0.15521617 0.91884995 0.15521616 0.75780088 0.15521622 0.70512277 
		0.012731314 0.75780112 0.012731433 0.70512277 0.70166081 0.72176361 0.74452931 0.72176349;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 33 ".vt[0:32]"  31.343706 0.19248438 0.32897687 32.860374 
		0.19248438 0.32897687 31.343706 9.1166916 0.32897687 32.860374 9.1166916 0.32897687 
		31.343706 9.1166916 -0.32897687 32.860374 9.1166916 -0.32897687 31.343706 0.19248438 
		-0.32897687 32.860374 0.19248438 -0.32897687 32.102043 9.1166916 0.49567288 32.102043 
		9.1166916 -0.49567288 32.102043 0.19248438 -0.49567288 32.102043 0.19248438 0.49567288 
		33.094765 9.1166916 0 31.109318 9.1166916 0 31.109318 0.19248438 0 32.102043 0.19248438 
		0 33.094765 0.19248438 0 31.464432 9.1166916 0.27660334 32.102043 9.1166916 0.4167611 
		31.267361 9.1166916 0 32.739647 9.1166916 0.27660334 32.936722 9.1166916 0 32.739647 
		9.1166916 -0.27660334 32.102043 9.1166916 -0.4167611 31.464432 9.1166916 -0.27660334 
		31.464432 1.8448822 0.27660334 32.102043 1.8448822 0.4167611 31.267361 1.8448822 
		0 32.739647 1.8448822 0.27660334 32.936722 1.8448822 0 32.739647 1.8448822 -0.27660334 
		32.102043 1.8448822 -0.4167611 31.464432 1.8448822 -0.27660334;
	setAttr -s 60 ".ed[0:59]"  0 11 1 2 8 1 
		4 9 1 6 10 1 0 2 1 1 3 1 
		2 13 1 3 12 1 4 6 1 5 7 1 
		6 14 1 7 16 1 8 3 1 9 5 1 
		10 7 1 9 10 1 11 1 1 10 15 1 
		11 8 1 12 5 1 13 4 1 14 0 1 
		13 14 1 15 11 1 14 15 1 16 1 1 
		15 16 1 16 12 1 2 17 0 8 18 0 
		17 18 1 13 19 0 17 19 1 3 20 0 
		18 20 1 12 21 0 20 21 1 5 22 0 
		21 22 1 9 23 0 23 22 1 4 24 0 
		24 23 1 19 24 1 17 25 1 18 26 1 
		25 26 0 19 27 1 25 27 0 20 28 1 
		26 28 0 21 29 1 28 29 0 22 30 1 
		29 30 0 23 31 1 31 30 0 24 32 1 
		32 31 0 27 32 0;
	setAttr -s 28 ".fc[0:27]" -type "polyFaces" 
		f 4 0 18 -2 -5 
		mu 0 4 0 11 42 43 
		f 4 2 15 -4 -9 
		mu 0 4 45 46 47 48 
		f 4 24 23 -1 -22 
		mu 0 4 8 9 1 44 
		f 4 -26 27 -8 -6 
		mu 0 4 49 50 51 52 
		f 4 21 4 6 22 
		mu 0 4 53 0 43 54 
		f 4 -16 13 9 -15 
		mu 0 4 58 56 55 57 
		f 4 -24 26 25 -17 
		mu 0 4 1 9 41 10 
		f 4 -19 16 5 -13 
		mu 0 4 42 11 49 52 
		f 4 10 -23 20 8 
		mu 0 4 48 53 54 45 
		f 4 3 17 -25 -11 
		mu 0 4 7 6 9 8 
		f 4 -27 -18 14 11 
		mu 0 4 41 9 6 16 
		f 4 -28 -12 -10 -20 
		mu 0 4 51 50 57 55 
		f 4 1 29 -31 -29 
		mu 0 4 3 2 39 40 
		f 4 -7 28 32 -32 
		mu 0 4 14 3 40 33 
		f 4 12 33 -35 -30 
		mu 0 4 2 13 38 39 
		f 4 7 35 -37 -34 
		mu 0 4 13 12 37 38 
		f 4 19 37 -39 -36 
		mu 0 4 12 15 36 37 
		f 4 -14 39 40 -38 
		mu 0 4 15 5 35 36 
		f 4 -3 41 42 -40 
		mu 0 4 5 4 34 35 
		f 4 -21 31 43 -42 
		mu 0 4 4 14 33 34 
		f 4 30 45 -47 -45 
		mu 0 4 17 18 19 20 
		f 4 -33 44 48 -48 
		mu 0 4 21 17 20 22 
		f 4 34 49 -51 -46 
		mu 0 4 18 23 24 19 
		f 4 36 51 -53 -50 
		mu 0 4 23 25 26 24 
		f 4 38 53 -55 -52 
		mu 0 4 25 27 28 26 
		f 4 -41 55 56 -54 
		mu 0 4 27 59 60 28 
		f 4 -43 57 58 -56 
		mu 0 4 29 31 32 30 
		f 4 -44 47 59 -58 
		mu 0 4 31 21 22 32 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bw" 3;
createNode transform -n "arrow2" -p "Case";
	setAttr ".t" -type "double3" 22.102044657312689 0 0 ;
	setAttr ".rp" -type "double3" 9.7806187771463904 5.9354750503477964 0 ;
	setAttr ".sp" -type "double3" 9.7806187771463904 5.9354750503477964 0 ;
createNode mesh -n "arrowShape2" -p "arrow2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.79797888945596795 0.5362551326472913 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 33 ".uvst[0].uvsp[0:32]" -type "float2" 0.6045742 0.53460687 
		0.64607865 0.54930645 0.64604276 0.53537917 0.99138361 0.5247528 0.97598195 0.53740638 
		0.97589821 0.53790623 0.6463992 0.54948765 0.64670426 0.53519881 0.93593353 0.53449637 
		0.93975759 0.53860384 0.93977332 0.55133766 0.93991345 0.53761071 0.64909524 0.53777111 
		0.64930612 0.53522032 0.93590391 0.53757757 0.64864808 0.53540766 0.93574095 0.53855997 
		0.64913696 0.53256178 0.93582797 0.54015881 0.93965286 0.55035061 0.99085855 0.55080169 
		0.9758085 0.53899997 0.99091935 0.5259102 0.64881426 0.53757793 0.64662999 0.5207985 
		0.64887291 0.53236288 0.93576628 0.54113871 0.60490662 0.53468144 0.64639789 0.52058059 
		0.99094558 0.55192965 0.93978214 0.52537972 0.94014263 0.5243631 0.9357686 0.53548247;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt[0:20]" -type "float3"  -25.13271 0.010503502 0 -25.569761 
		-0.0029204278 0 -25.569925 0.0044173962 0 -25.574684 -0.016202381 0 -25.575436 0.017466523 
		0 -25.641056 -0.017683553 0 -25.641808 0.015985351 0 -25.188005 -0.009602244 0 -25.188847 
		0.028122544 0 -25.191826 0.0057580299 0 -25.191978 0.012607119 0 -25.188427 0.0092601497 
		0 -25.191902 0.0091825742 0 -25.569843 0.00074848422 0 -25.57506 0.00063207134 0 
		-25.621796 -0.00041087196 0 -25.621796 -0.00041087196 0 -25.57506 0.00063207134 0 
		-25.569843 0.00074848422 0 -25.191902 0.0091825742 0 -25.188427 0.0092601497 0;
	setAttr -s 21 ".vt[0:20]"  35.16769 0.22871208 0 35.085445 10.027783 
		0 35.249935 10.027783 0 34.790318 10.144722 0 35.545063 10.144722 0 34.790318 11.632584 
		0 35.545063 11.632584 0 34.744858 1.4776793 7.4505806e-009 35.590523 1.4776793 7.4505806e-009 
		35.090923 1.5556049 3.7252903e-009 35.244457 1.5556049 3.7252903e-009 35.16769 1.4776797 
		0.078363605 35.16769 1.5556054 0.078363605 35.16769 10.027783 0.078363597 35.16769 
		10.144722 0.078363635 35.16769 11.192375 0.078363635 35.16769 11.192375 -0.078363635 
		35.16769 10.144722 -0.078363635 35.16769 10.027783 -0.078363597 35.16769 1.5556049 
		-0.078363597 35.16769 1.4776793 -0.078363597;
	setAttr -s 49 ".ed[0:48]"  1 13 0 1 18 0 
		0 7 0 2 10 0 1 3 0 2 4 0 
		3 14 0 3 17 0 3 5 0 4 6 0 
		5 15 0 5 16 0 7 9 0 8 0 0 
		7 20 1 8 11 1 9 1 0 10 8 0 
		9 19 1 10 12 1 11 7 1 12 9 1 
		11 12 1 13 2 0 12 13 1 14 4 0 
		13 14 1 15 6 0 14 15 1 16 6 0 
		15 16 1 17 4 0 16 17 1 18 2 0 
		17 18 1 19 10 1 18 19 1 20 8 1 
		19 20 1 10 20 0 20 9 0 10 11 0 
		11 9 0 11 0 0 20 0 0 1 14 0 
		14 2 0 17 1 0 17 2 0;
	setAttr -s 30 ".fc[0:29]" -type "polyFaces" 
		f 3 -14 15 43 
		mu 0 3 27 24 2 
		f 3 10 30 -12 
		mu 0 3 3 4 5 
		f 3 14 44 2 
		mu 0 3 28 7 0 
		f 3 45 -7 -5 
		mu 0 3 26 9 10 
		f 3 47 4 7 
		mu 0 3 11 8 31 
		f 4 6 28 -11 -9 
		mu 0 4 10 9 21 29 
		f 4 -8 8 11 32 
		mu 0 4 11 31 3 5 
		f 3 18 38 40 
		mu 0 3 25 13 7 
		f 3 -21 42 -13 
		mu 0 3 6 2 12 
		f 4 1 36 -19 16 
		mu 0 4 8 14 13 25 
		f 4 -22 24 -1 -17 
		mu 0 4 12 15 16 26 
		f 3 -16 -18 41 
		mu 0 3 2 24 17 
		f 4 -25 -20 -4 -24 
		mu 0 4 16 15 17 32 
		f 3 46 5 -26 
		mu 0 3 9 32 30 
		f 4 -29 25 9 -28 
		mu 0 4 21 9 30 22 
		f 3 -31 27 -30 
		mu 0 3 5 4 20 
		f 4 -32 -33 29 -10 
		mu 0 4 19 11 5 20 
		f 3 -34 -35 48 
		mu 0 3 18 14 11 
		f 4 -37 33 3 -36 
		mu 0 4 13 14 18 23 
		f 3 -39 35 39 
		mu 0 3 7 13 23 
		f 3 -40 17 -38 
		mu 0 3 7 23 1 
		f 3 -41 -15 12 
		mu 0 3 25 7 28 
		f 3 -42 19 -23 
		mu 0 3 2 17 15 
		f 3 -43 22 21 
		mu 0 3 12 2 15 
		f 3 -44 20 -3 
		mu 0 3 27 2 6 
		f 3 -45 37 13 
		mu 0 3 0 7 1 
		f 3 0 26 -46 
		mu 0 3 26 16 9 
		f 3 -27 23 -47 
		mu 0 3 9 16 32 
		f 3 -2 -48 34 
		mu 0 3 14 8 11 
		f 3 -49 31 -6 
		mu 0 3 18 11 19 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "arrow3" -p "Case";
	setAttr ".t" -type "double3" 22.102044657312689 0 0 ;
	setAttr ".rp" -type "double3" 10.034652393308047 6.5601441761523871 0 ;
	setAttr ".sp" -type "double3" 10.034652393308047 6.5601441761523871 0 ;
createNode mesh -n "arrowShape3" -p "arrow3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.79797888945596795 0.5362551326472913 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 33 ".uvst[0].uvsp[0:32]" -type "float2" 0.6045742 0.53460687 
		0.64607865 0.54930645 0.64604276 0.53537917 0.99138361 0.5247528 0.97598195 0.53740638 
		0.97589821 0.53790623 0.6463992 0.54948765 0.64670426 0.53519881 0.93593353 0.53449637 
		0.93975759 0.53860384 0.93977332 0.55133766 0.93991345 0.53761071 0.64909524 0.53777111 
		0.64930612 0.53522032 0.93590391 0.53757757 0.64864808 0.53540766 0.93574095 0.53855997 
		0.64913696 0.53256178 0.93582797 0.54015881 0.93965286 0.55035061 0.99085855 0.55080169 
		0.9758085 0.53899997 0.99091935 0.5259102 0.64881426 0.53757793 0.64662999 0.5207985 
		0.64887291 0.53236288 0.93576628 0.54113871 0.60490662 0.53468144 0.64639789 0.52058059 
		0.99094558 0.55192965 0.93978214 0.52537972 0.94014263 0.5243631 0.9357686 0.53548247;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt[0:20]" -type "float3"  -25.353424 0.63375705 0 -24.974617 
		0.62961364 0 -24.974739 0.62325591 0 -24.969877 0.64093333 0 -24.97044 0.61176145 
		0 -24.912369 0.63982153 0 -24.912933 0.6106497 0 -25.304834 0.64916676 0 -25.305468 
		0.61648077 0 -25.302082 0.63573265 0 -25.302197 0.62979841 0 -25.305151 0.63282377 
		0 -25.302139 0.63276553 0 -24.974678 0.6264348 0 -24.97016 0.62634742 0 -24.929665 
		0.62556458 0 -24.929665 0.62556458 0 -24.97016 0.62634742 0 -24.974678 0.6264348 
		0 -25.302139 0.63276553 0 -25.305151 0.63282377 0;
	setAttr -s 21 ".vt[0:20]"  35.16769 0.22871208 0 35.085445 10.027783 
		0 35.249935 10.027783 0 34.790318 10.144722 0 35.545063 10.144722 0 34.790318 11.632584 
		0 35.545063 11.632584 0 34.744858 1.4776793 7.4505806e-009 35.590523 1.4776793 7.4505806e-009 
		35.090923 1.5556049 3.7252903e-009 35.244457 1.5556049 3.7252903e-009 35.16769 1.4776797 
		0.078363605 35.16769 1.5556054 0.078363605 35.16769 10.027783 0.078363597 35.16769 
		10.144722 0.078363635 35.16769 11.192375 0.078363635 35.16769 11.192375 -0.078363635 
		35.16769 10.144722 -0.078363635 35.16769 10.027783 -0.078363597 35.16769 1.5556049 
		-0.078363597 35.16769 1.4776793 -0.078363597;
	setAttr -s 49 ".ed[0:48]"  1 13 0 1 18 0 
		0 7 0 2 10 0 1 3 0 2 4 0 
		3 14 0 3 17 0 3 5 0 4 6 0 
		5 15 0 5 16 0 7 9 0 8 0 0 
		7 20 1 8 11 1 9 1 0 10 8 0 
		9 19 1 10 12 1 11 7 1 12 9 1 
		11 12 1 13 2 0 12 13 1 14 4 0 
		13 14 1 15 6 0 14 15 1 16 6 0 
		15 16 1 17 4 0 16 17 1 18 2 0 
		17 18 1 19 10 1 18 19 1 20 8 1 
		19 20 1 10 20 0 20 9 0 10 11 0 
		11 9 0 11 0 0 20 0 0 1 14 0 
		14 2 0 17 1 0 17 2 0;
	setAttr -s 30 ".fc[0:29]" -type "polyFaces" 
		f 3 -14 15 43 
		mu 0 3 27 24 2 
		f 3 10 30 -12 
		mu 0 3 3 4 5 
		f 3 14 44 2 
		mu 0 3 28 7 0 
		f 3 45 -7 -5 
		mu 0 3 26 9 10 
		f 3 47 4 7 
		mu 0 3 11 8 31 
		f 4 6 28 -11 -9 
		mu 0 4 10 9 21 29 
		f 4 -8 8 11 32 
		mu 0 4 11 31 3 5 
		f 3 18 38 40 
		mu 0 3 25 13 7 
		f 3 -21 42 -13 
		mu 0 3 6 2 12 
		f 4 1 36 -19 16 
		mu 0 4 8 14 13 25 
		f 4 -22 24 -1 -17 
		mu 0 4 12 15 16 26 
		f 3 -16 -18 41 
		mu 0 3 2 24 17 
		f 4 -25 -20 -4 -24 
		mu 0 4 16 15 17 32 
		f 3 46 5 -26 
		mu 0 3 9 32 30 
		f 4 -29 25 9 -28 
		mu 0 4 21 9 30 22 
		f 3 -31 27 -30 
		mu 0 3 5 4 20 
		f 4 -32 -33 29 -10 
		mu 0 4 19 11 5 20 
		f 3 -34 -35 48 
		mu 0 3 18 14 11 
		f 4 -37 33 3 -36 
		mu 0 4 13 14 18 23 
		f 3 -39 35 39 
		mu 0 3 7 13 23 
		f 3 -40 17 -38 
		mu 0 3 7 23 1 
		f 3 -41 -15 12 
		mu 0 3 25 7 28 
		f 3 -42 19 -23 
		mu 0 3 2 17 15 
		f 3 -43 22 21 
		mu 0 3 12 2 15 
		f 3 -44 20 -3 
		mu 0 3 27 2 6 
		f 3 -45 37 13 
		mu 0 3 0 7 1 
		f 3 0 26 -46 
		mu 0 3 26 16 9 
		f 3 -27 23 -47 
		mu 0 3 9 16 32 
		f 3 -2 -48 34 
		mu 0 3 14 8 11 
		f 3 -49 31 -6 
		mu 0 3 18 11 19 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "arrow4" -p "Case";
	setAttr ".t" -type "double3" 22.102044657312689 0 0 ;
	setAttr ".rp" -type "double3" 10.255777912554599 5.5847978568389758 0 ;
	setAttr ".sp" -type "double3" 10.255777912554599 5.5847978568389758 0 ;
createNode mesh -n "arrowShape4" -p "arrow4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.79797888945596795 0.5362551326472913 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 33 ".uvst[0].uvsp[0:32]" -type "float2" 0.6045742 0.53460687 
		0.64607865 0.54930645 0.64604276 0.53537917 0.99138361 0.5247528 0.97598195 0.53740638 
		0.97589821 0.53790623 0.6463992 0.54948765 0.64670426 0.53519881 0.93593353 0.53449637 
		0.93975759 0.53860384 0.93977332 0.55133766 0.93991345 0.53761071 0.64909524 0.53777111 
		0.64930612 0.53522032 0.93590391 0.53757757 0.64864808 0.53540766 0.93574095 0.53855997 
		0.64913696 0.53256178 0.93582797 0.54015881 0.93965286 0.55035061 0.99085855 0.55080169 
		0.9758085 0.53899997 0.99091935 0.5259102 0.64881426 0.53757793 0.64662999 0.5207985 
		0.64887291 0.53236288 0.93576628 0.54113871 0.60490662 0.53468144 0.64639789 0.52058059 
		0.99094558 0.55192965 0.93978214 0.52537972 0.94014263 0.5243631 0.9357686 0.53548247;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt[0:20]" -type "float3"  -25.468115 0.11544436 0 -24.644819 
		-0.76880068 0 -24.646749 -0.79392833 0 -24.623491 -0.72508913 0 -24.632349 -0.8403849 
		0 -24.396204 -0.74255198 0 -24.405062 -0.85784769 0 -25.27236 0.1653778 0 -25.282286 
		0.036193073 0 -25.264517 0.11159784 0 -25.266319 0.088143826 0 -25.277323 0.10078543 
		0 -25.265419 0.099870801 0 -24.645784 -0.7813645 0 -24.62792 -0.78273702 0 -24.46788 
		-0.79503316 0 -24.46788 -0.79503316 0 -24.62792 -0.78273702 0 -24.645784 -0.7813645 
		0 -25.265419 0.099870861 0 -25.277323 0.10078543 0;
	setAttr -s 21 ".vt[0:20]"  35.16769 0.22871208 0 35.085445 10.027783 
		0 35.249935 10.027783 0 34.790318 10.144722 0 35.545063 10.144722 0 34.790318 11.632584 
		0 35.545063 11.632584 0 34.744858 1.4776793 7.4505806e-009 35.590523 1.4776793 7.4505806e-009 
		35.090923 1.5556049 3.7252903e-009 35.244457 1.5556049 3.7252903e-009 35.16769 1.4776797 
		0.078363605 35.16769 1.5556054 0.078363605 35.16769 10.027783 0.078363597 35.16769 
		10.144722 0.078363635 35.16769 11.192375 0.078363635 35.16769 11.192375 -0.078363635 
		35.16769 10.144722 -0.078363635 35.16769 10.027783 -0.078363597 35.16769 1.5556049 
		-0.078363597 35.16769 1.4776793 -0.078363597;
	setAttr -s 49 ".ed[0:48]"  1 13 0 1 18 0 
		0 7 0 2 10 0 1 3 0 2 4 0 
		3 14 0 3 17 0 3 5 0 4 6 0 
		5 15 0 5 16 0 7 9 0 8 0 0 
		7 20 1 8 11 1 9 1 0 10 8 0 
		9 19 1 10 12 1 11 7 1 12 9 1 
		11 12 1 13 2 0 12 13 1 14 4 0 
		13 14 1 15 6 0 14 15 1 16 6 0 
		15 16 1 17 4 0 16 17 1 18 2 0 
		17 18 1 19 10 1 18 19 1 20 8 1 
		19 20 1 10 20 0 20 9 0 10 11 0 
		11 9 0 11 0 0 20 0 0 1 14 0 
		14 2 0 17 1 0 17 2 0;
	setAttr -s 30 ".fc[0:29]" -type "polyFaces" 
		f 3 -14 15 43 
		mu 0 3 27 24 2 
		f 3 10 30 -12 
		mu 0 3 3 4 5 
		f 3 14 44 2 
		mu 0 3 28 7 0 
		f 3 45 -7 -5 
		mu 0 3 26 9 10 
		f 3 47 4 7 
		mu 0 3 11 8 31 
		f 4 6 28 -11 -9 
		mu 0 4 10 9 21 29 
		f 4 -8 8 11 32 
		mu 0 4 11 31 3 5 
		f 3 18 38 40 
		mu 0 3 25 13 7 
		f 3 -21 42 -13 
		mu 0 3 6 2 12 
		f 4 1 36 -19 16 
		mu 0 4 8 14 13 25 
		f 4 -22 24 -1 -17 
		mu 0 4 12 15 16 26 
		f 3 -16 -18 41 
		mu 0 3 2 24 17 
		f 4 -25 -20 -4 -24 
		mu 0 4 16 15 17 32 
		f 3 46 5 -26 
		mu 0 3 9 32 30 
		f 4 -29 25 9 -28 
		mu 0 4 21 9 30 22 
		f 3 -31 27 -30 
		mu 0 3 5 4 20 
		f 4 -32 -33 29 -10 
		mu 0 4 19 11 5 20 
		f 3 -34 -35 48 
		mu 0 3 18 14 11 
		f 4 -37 33 3 -36 
		mu 0 4 13 14 18 23 
		f 3 -39 35 39 
		mu 0 3 7 13 23 
		f 3 -40 17 -38 
		mu 0 3 7 23 1 
		f 3 -41 -15 12 
		mu 0 3 25 7 28 
		f 3 -42 19 -23 
		mu 0 3 2 17 15 
		f 3 -43 22 21 
		mu 0 3 12 2 15 
		f 3 -44 20 -3 
		mu 0 3 27 2 6 
		f 3 -45 37 13 
		mu 0 3 0 7 1 
		f 3 0 26 -46 
		mu 0 3 26 16 9 
		f 3 -27 23 -47 
		mu 0 3 9 16 32 
		f 3 -2 -48 34 
		mu 0 3 14 8 11 
		f 3 -49 31 -6 
		mu 0 3 18 11 19 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "L_Leg" -p "root";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.73481635450118254 -0.99999999999999989 -0.22090419113652263 ;
	setAttr ".r" -type "double3" 14.589600462392676 -6.1224640322488488 42.449827290781009 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 94.227339836792723 -1.9946625170984995 179.85259428604039 ;
	setAttr ".bps" -type "matrix" 0.0012289328746442267 -0.9993924531988756 0.034831224685949645 0
		 -0.036801889042053955 0.034762455960651459 0.99871777425783292 0 -0.99932182538305725 -0.0025092119713681286 -0.036736809447157626 0
		 1.0000000000000004 8.2651836454988175 -0.22090419113652263 1;
	setAttr ".radi" 0.60344827586206895;
createNode joint -n "L_knee" -p "L_Leg";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 3.1692424049239754 -0.16683380515970619 0.013395986760232972 ;
	setAttr ".r" -type "double3" 0.038511180066845965 -1.7389887336469829 52.854316375657092 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 177.24553635461686 -0.27088961268119399 -7.6125097294148114 ;
	setAttr ".bps" -type "matrix" 0.0013685915226807482 -0.99519026857044124 -0.097951295550070178 0
		 -0.011751417161443343 0.097928618134140791 -0.99512405756520417 0 0.99993001312688978 0.0025129848847121085 -0.01156087172437395 0
		 0.99664768342303589 5.0920335374849826 -0.27762760921941032 1;
	setAttr ".radi" 0.65517241379310331;
createNode joint -n "L_ankle" -p "|Niabi|master|root1|root|L_Leg|L_knee";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 3.7099844953325198 0.046240348119031376 -0.0011818228067143526 ;
	setAttr ".r" -type "double3" -1.4608634768173758 -10.292039081726955 22.084260691174229 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 178.74452393343006 -0.73946563935886667 -36.111971384026653 ;
	setAttr ".bps" -type "matrix" -2.7598078336521503e-009 -0.8616189680204217 0.50755566586082312 0
		 1.3063505980084876e-008 0.5075556658608229 0.8616189680204217 0 -0.99999999999999989 9.0083592560290298e-009 9.8550085158438611e-009 0
		 1.0000000070375563 1.4044183546733278 -0.68702661694947265 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_foot" -p "L_ankle";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.3255697192831399 0.28004024613595985 3.4633278474808624e-009 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -59.498849401738767 89.999999999999972 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999999989 -9.0083596104897147e-009 -9.8550082426144101e-009 0
		 9.0083596978540809e-009 1 6.1062265916733312e-016 0 9.8550082165874964e-009 -8.8817841769986763e-016 1.0000000000000002 0
		 1.0000000035742185 0.40441835470083431 0.22706179244607649 1;
	setAttr ".radi" 0.5;
createNode ikEffector -n "effector2" -p "L_ankle";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector1" -p "|Niabi|master|root1|root|L_Leg|L_knee";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "R_Leg" -p "root";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.73481798564250589 1.0000000000000002 -0.22090444357948991 ;
	setAttr ".r" -type "double3" -2.8693034193919185 -30.324023454079601 54.704810058781725 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 85.772732228583195 -1.994667819288948 -179.8525964163982 ;
	setAttr ".bps" -type "matrix" -0.0012288865393847302 -0.99939245004825039 0.0348313167197064 0
		 0.036801460303621074 0.034762550710996182 0.99871778675839473 0 -0.99932184122903789 0.0025091541643746285 0.036736382347545837 0
		 -0.99999999999999956 8.2651820143574941 -0.22090444357948991 1;
	setAttr ".radi" 0.60344827586206895;
createNode joint -n "R_knee" -p "R_Leg";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 3.1692401121634899 -0.1668337837612654 -0.013395767930606688 ;
	setAttr ".r" -type "double3" -0.035946245518166484 1.6231659625136567 49.334744661415861 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -177.24558725360905 0.27088447666291721 -7.612512337088801 ;
	setAttr ".bps" -type "matrix" -0.0013685799597947064 -0.99519027346559596 -0.097951245976587498 0
		 0.011750948215998938 0.097928569876152602 -0.9951240678518618 0 0.99993001865376507 -0.0025129268759348966 0.011560406290336209 0
		 -0.99664767991121772 5.0920341939560352 -0.27762761679904291 1;
	setAttr ".radi" 0.65517241379310331;
createNode joint -n "R_ankle" -p "R_knee";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 3.7099834813565198 0.046240348703376663 0.0011818084268853941 ;
	setAttr ".r" -type "double3" 2.502166189921315 14.981723131164745 1.8581412519268026 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -178.74454124261374 0.73945388517939825 -36.111915924051225 ;
	setAttr ".bps" -type "matrix" -3.2827186125655716e-009 -0.86161943671569263 0.50755487020984502 0
		 3.840757603450206e-008 0.50755487020984447 0.8616194367156923 0 -0.99999999999999967 2.2322406428073455e-008 3.1426554183630606e-008 0
		 -0.99999999528952788 1.4044200000129343 -0.68702634306549237 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_foot" -p "R_ankle";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.3255711501878895 0.28004039851657631 2.300648373648405e-008 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -59.498902335193478 89.999999999999545 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999999967 -2.2322413248035545e-008 -3.1426550230616462e-008 0
		 2.2322413356622678e-008 0.99999999999999989 -4.2615400097667113e-010 0 3.1426550221836542e-008 4.2615327933157634e-010 1 0
		 -1.0000000118918158 0.40441800038406672 0.22706200044952807 1;
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
createNode nurbsCurve -n "chestShape" -p "|Niabi|master|root1|chest";
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
createNode transform -n "L_shoulder" -p "|Niabi|master|root1|chest";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" 1.7597946336367154 14.60890621900726 -0.39520589310364118 ;
	setAttr ".sp" -type "double3" 1.7597946336367154 14.60890621900726 -0.39520589310364118 ;
createNode nurbsCurve -n "L_shoulderShape" -p "|Niabi|master|root1|chest|L_shoulder";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.7597946336367158 13.622407586666132 -1.3817045254447669
		1.7597946336367154 14.60890621900726 -1.7903256382229715
		1.759794633636715 15.595404851348386 -1.3817045254447673
		1.759794633636715 16.004025964126591 -0.39520589310364174
		1.759794633636715 15.595404851348386 0.59129273923748449
		1.7597946336367154 14.60890621900726 0.99991385201568939
		1.7597946336367158 13.622407586666132 0.59129273923748493
		1.7597946336367158 13.213786473887929 -0.39520589310364063
		1.7597946336367158 13.622407586666132 -1.3817045254447669
		1.7597946336367154 14.60890621900726 -1.7903256382229715
		1.759794633636715 15.595404851348386 -1.3817045254447673
		;
createNode transform -n "L_elbow" -p "|Niabi|master|root1|chest|L_shoulder";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" 5.2263098712241902 14.481157564288164 -0.39520589310364101 ;
	setAttr ".sp" -type "double3" 5.2263098712241902 14.481157564288164 -0.39520589310364101 ;
createNode nurbsCurve -n "L_elbowShape" -p "|Niabi|master|root1|chest|L_shoulder|L_elbow";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.2263098712241902 13.766906351687531 -1.109457105704275
		5.2263098712241902 14.481157564288164 -1.4053096449048872
		5.2263098712241902 15.195408776888801 -1.109457105704275
		5.2263098712241902 15.491261316089412 -0.39520589310364146
		5.2263098712241902 15.195408776888801 0.31904531949699277
		5.2263098712241902 14.481157564288164 0.61489785869760472
		5.2263098712241902 13.766906351687531 0.31904531949699311
		5.2263098712241902 13.471053812486922 -0.39520589310364057
		5.2263098712241902 13.766906351687531 -1.109457105704275
		5.2263098712241902 14.481157564288164 -1.4053096449048872
		5.2263098712241902 15.195408776888801 -1.109457105704275
		;
createNode transform -n "L_wrist" -p "|Niabi|master|root1|chest|L_shoulder|L_elbow";
	addAttr -ci true -sn "Arrow" -ln "Arrow" -min 0 -max 1 -at "double";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" 8.8254002394234767 14.391451780128715 -0.39520589310364113 ;
	setAttr ".sp" -type "double3" 8.8254002394234767 14.391451780128715 -0.39520589310364113 ;
	setAttr -k on ".Arrow";
createNode nurbsCurve -n "L_wristShape" -p "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		8.8254002394234767 13.860508019754496 -0.92614965347785982
		8.8254002394234767 14.391451780128715 -1.1460737598822319
		8.8254002394234767 14.922395540502936 -0.92614965347786016
		8.8254002394234767 15.142319646907309 -0.39520589310364146
		8.8254002394234767 14.922395540502936 0.13573786727057741
		8.8254002394234767 14.391451780128715 0.35566197367494984
		8.8254002394234767 13.860508019754496 0.13573786727057763
		8.8254002394234767 13.640583913350124 -0.3952058931036409
		8.8254002394234767 13.860508019754496 -0.92614965347785982
		8.8254002394234767 14.391451780128715 -1.1460737598822319
		8.8254002394234767 14.922395540502936 -0.92614965347786016
		;
createNode transform -n "L_fingers1" -p "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" 9.7576757902057132 14.389236279547626 -0.39520589310364129 ;
	setAttr ".sp" -type "double3" 9.7576757902057132 14.389236279547626 -0.39520589310364129 ;
createNode nurbsCurve -n "L_fingers1Shape" -p "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		9.7576757902057132 13.968988400860502 -0.92614965347785982
		9.7576757902057132 14.389236279547626 -1.1460737598822319
		9.7576757902057132 14.809484158234747 -0.92614965347786016
		9.7576757902057132 14.98355652914548 -0.39520589310364163
		9.7576757902057132 14.809484158234747 0.13573786727057727
		9.7576757902057132 14.389236279547626 0.35566197367494973
		9.7576757902057132 13.968988400860502 0.13573786727057752
		9.7576757902057132 13.794916029949771 -0.39520589310364101
		9.7576757902057132 13.968988400860502 -0.92614965347785982
		9.7576757902057132 14.389236279547626 -1.1460737598822319
		9.7576757902057132 14.809484158234747 -0.92614965347786016
		;
createNode transform -n "L_fingers2" -p "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" 10.360953033801083 14.339522757130686 -0.39980831859063559 ;
	setAttr ".sp" -type "double3" 10.360953033801083 14.339522757130686 -0.39980831859063559 ;
createNode nurbsCurve -n "L_fingers2Shape" -p "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		10.360953033801083 14.012335734364692 -0.93075207896485423
		10.360953033801083 14.339522757130686 -1.1506761853692264
		10.360953033801083 14.66670977989668 -0.93075207896485435
		10.360953033801083 14.80223508215883 -0.39980831859063581
		10.360953033801083 14.66670977989668 0.131135441783583
		10.360953033801083 14.339522757130686 0.35105954818795543
		10.360953033801083 14.012335734364692 0.13113544178358322
		10.360953033801083 13.876810432102539 -0.39980831859063526
		10.360953033801083 14.012335734364692 -0.93075207896485423
		10.360953033801083 14.339522757130686 -1.1506761853692264
		10.360953033801083 14.66670977989668 -0.93075207896485435
		;
createNode transform -n "L_thumb" -p "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" 9.7435457045994074 14.259602437683329 0.046516711647870357 ;
	setAttr ".sp" -type "double3" 9.7435457045994074 14.259602437683329 0.046516711647870357 ;
createNode nurbsCurve -n "L_thumbShape" -p "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		10.078525740889669 14.014118567712378 -0.010646955943476026
		10.217279015045328 14.259602437683329 -0.034324922334799099
		10.078525740889669 14.505086307654272 -0.010646955943476049
		9.7435457045994074 14.606769055940072 0.046516711647870315
		9.4085656683091461 14.505086307654272 0.10368037923921672
		9.2698123941534885 14.259602437683329 0.12735834563053983
		9.4085656683091461 14.014118567712378 0.10368037923921672
		9.7435457045994074 13.912435819426578 0.046516711647870385
		10.078525740889669 14.014118567712378 -0.010646955943476026
		10.217279015045328 14.259602437683329 -0.034324922334799099
		10.078525740889669 14.505086307654272 -0.010646955943476049
		;
createNode transform -n "R_shoulder" -p "|Niabi|master|root1|chest";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" -1.75979 14.6089 -0.395206 ;
	setAttr ".sp" -type "double3" -1.75979 14.6089 -0.395206 ;
createNode nurbsCurve -n "R_shoulderShape" -p "R_shoulder";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.7597900000000004 13.622401367658872 -1.3817046323411262
		-1.7597900000000004 14.6089 -1.7903257451193304
		-1.75979 15.595398632341126 -1.3817046323411264
		-1.7597899999999995 16.004019745119329 -0.39520600000000056
		-1.7597899999999995 15.595398632341126 0.59129263234112561
		-1.7597899999999995 14.6089 0.99991374511933051
		-1.75979 13.622401367658872 0.59129263234112606
		-1.7597900000000004 13.213780254880668 -0.39520599999999945
		-1.7597900000000004 13.622401367658872 -1.3817046323411262
		-1.7597900000000004 14.6089 -1.7903257451193304
		-1.75979 15.595398632341126 -1.3817046323411264
		;
createNode transform -n "R_elbow" -p "R_shoulder";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" -5.2263100000000007 14.4812 -0.3952059999999995 ;
	setAttr ".sp" -type "double3" -5.2263100000000007 14.4812 -0.3952059999999995 ;
createNode nurbsCurve -n "R_elbowShape" -p "|Niabi|master|root1|chest|R_shoulder|R_elbow";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-5.2263100000000007 13.766948787399366 -1.1094572126006337
		-5.2263100000000007 14.481199999999999 -1.4053097518012452
		-5.2263100000000007 15.195451212600636 -1.1094572126006339
		-5.2263100000000007 15.491303751801247 -0.39520599999999995
		-5.2263100000000007 15.195451212600636 0.31904521260063429
		-5.2263100000000007 14.481199999999999 0.61489775180124628
		-5.2263100000000007 13.766948787399368 0.31904521260063462
		-5.2263100000000007 13.471096248198757 -0.39520599999999922
		-5.2263100000000007 13.766948787399366 -1.1094572126006337
		-5.2263100000000007 14.481199999999999 -1.4053097518012452
		-5.2263100000000007 15.195451212600636 -1.1094572126006339
		;
createNode transform -n "R_wrist" -p "|Niabi|master|root1|chest|R_shoulder|R_elbow";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" -8.8254000000000019 14.3915 -0.395206 ;
	setAttr ".sp" -type "double3" -8.8254000000000019 14.3915 -0.395206 ;
createNode nurbsCurve -n "R_wristShape" -p "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-8.8254000000000019 13.86055623962578 -0.92614976037421859
		-8.8254000000000019 14.391500000000001 -1.146073866778591
		-8.8254000000000019 14.922443760374222 -0.92614976037421892
		-8.8254000000000019 15.142367866778594 -0.39520600000000033
		-8.8254000000000019 14.922443760374222 0.13573776037421856
		-8.8254000000000019 14.391500000000001 0.35566186677859102
		-8.8254000000000019 13.86055623962578 0.13573776037421881
		-8.8254000000000019 13.640632133221407 -0.39520599999999967
		-8.8254000000000019 13.86055623962578 -0.92614976037421859
		-8.8254000000000019 14.391500000000001 -1.146073866778591
		-8.8254000000000019 14.922443760374222 -0.92614976037421892
		;
createNode transform -n "R_fingers1" -p "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" -9.75768 14.389200000000002 -0.39520600000000022 ;
	setAttr ".sp" -type "double3" -9.75768 14.389200000000002 -0.39520600000000022 ;
createNode nurbsCurve -n "R_fingers1Shape" -p "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-9.7576800000000006 13.968952121312878 -0.92614976037421892
		-9.7576800000000006 14.389200000000002 -1.1460738667785912
		-9.7576800000000006 14.809447878687124 -0.92614976037421903
		-9.7576800000000006 14.983520249597856 -0.3952060000000005
		-9.7576800000000006 14.809447878687124 0.13573776037421836
		-9.7576800000000006 14.389200000000002 0.3556618667785908
		-9.7576800000000006 13.968952121312878 0.13573776037421861
		-9.7576800000000006 13.794879750402147 -0.39520599999999995
		-9.7576800000000006 13.968952121312878 -0.92614976037421892
		-9.7576800000000006 14.389200000000002 -1.1460738667785912
		-9.7576800000000006 14.809447878687124 -0.92614976037421903
		;
createNode transform -n "R_fingers2" -p "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" -10.361 14.3395 -0.39980800000000022 ;
	setAttr ".sp" -type "double3" -10.361 14.3395 -0.39980800000000022 ;
createNode nurbsCurve -n "R_fingers2Shape" -p "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-10.361000000000001 14.012312977234004 -0.93075176037421892
		-10.361000000000001 14.339499999999999 -1.1506758667785912
		-10.361000000000001 14.666687022765991 -0.93075176037421903
		-10.361000000000001 14.802212325028144 -0.3998080000000005
		-10.361000000000001 14.666687022765991 0.1311357603742184
		-10.361000000000001 14.339499999999999 0.3510598667785908
		-10.361000000000001 14.012312977234004 0.13113576037421859
		-10.361000000000001 13.876787674971856 -0.39980799999999994
		-10.361000000000001 14.012312977234004 -0.93075176037421892
		-10.361000000000001 14.339499999999999 -1.1506758667785912
		-10.361000000000001 14.666687022765991 -0.93075176037421903
		;
createNode transform -n "R_thumb" -p "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".rp" -type "double3" -9.6919110241130806 14.259600000000006 0.061668190450150477 ;
	setAttr ".sp" -type "double3" -9.6919110241130806 14.259600000000006 0.061668190450150477 ;
createNode nurbsCurve -n "R_thumbShape" -p "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-10.02689106040334 14.014116130029056 0.0045045228588041705
		-10.165644334559 14.259600000000006 -0.019173443532518875
		-10.02689106040334 14.505083869970951 0.0045045228588041497
		-9.6919110241130806 14.606766618256753 0.061668190450150442
		-9.3569309878228193 14.505083869970951 0.11883185804149678
		-9.2181777136671617 14.259600000000006 0.14250982443281984
		-9.3569309878228193 14.014116130029056 0.1188318580414968
		-9.6919110241130806 13.912433381743256 0.061668190450150526
		-10.02689106040334 14.014116130029056 0.0045045228588041705
		-10.165644334559 14.259600000000006 -0.019173443532518875
		-10.02689106040334 14.505083869970951 0.0045045228588041497
		;
createNode transform -n "neck" -p "|Niabi|master|root1|chest";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".rp" -type "double3" -6.0971907355316298e-016 15.745930592454709 -0.25139103931195717 ;
	setAttr ".sp" -type "double3" -6.0971907355316298e-016 15.745930592454709 -0.25139103931195717 ;
createNode nurbsCurve -n "neckShape" -p "|Niabi|master|root1|chest|neck";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.487455202434574 16.031779915801099 -1.7111215430667035
		-8.4971232146464179e-016 16.150182582326345 -2.315761715131631
		-1.4874552024345735 16.031779915801099 -1.7111215430667044
		-2.103579320705391 15.745930592454709 -0.25139103931195794
		-1.4874552024345744 15.460081269108318 1.2083394644427892
		-1.243568576584671e-015 15.341678602583071 1.8129796365077171
		1.4874552024345715 15.460081269108318 1.2083394644427898
		2.1035793207053901 15.745930592454709 -0.25139103931195622
		1.487455202434574 16.031779915801099 -1.7111215430667035
		-8.4971232146464179e-016 16.150182582326345 -2.315761715131631
		-1.4874552024345735 16.031779915801099 -1.7111215430667044
		;
createNode transform -n "feather1" -p "|Niabi|master|root1|chest|neck";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".rp" -type "double3" 2.753189196020104 20.633564520004292 -0.97700499666320573 ;
	setAttr ".sp" -type "double3" 2.753189196020104 20.633564520004292 -0.97700499666320573 ;
createNode nurbsCurve -n "feather1Shape" -p "|Niabi|master|root1|chest|neck|feather1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.2290438031671442 20.509668091487885 0.30946428961779926
		4.5144429031929274 20.048594333535831 -1.1037299412799868
		4.0004825082568853 20.425101897064991 -2.4767726783617041
		2.5915719544722835 20.573767190468729 -2.9471720507141574
		2.0706579743083342 22.447202082975316 -2.379838397441417
		1.7852588742825493 22.908275840927363 -0.96664416654363261
		2.2992192692185913 22.531768277398207 0.40639857053808504
		2.9148064375679255 20.693361849539855 0.99316205738774643
		4.2290438031671442 20.509668091487885 0.30946428961779926
		4.5144429031929274 20.048594333535831 -1.1037299412799868
		4.0004825082568853 20.425101897064991 -2.4767726783617041
		;
createNode transform -n "feather2" -p "|Niabi|master|root1|chest|neck|feather1";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".rp" -type "double3" 3.1172781288239562 23.500400404685426 -1.1937050464569099 ;
	setAttr ".sp" -type "double3" 3.1172781288239562 23.500400404685426 -1.1937050464569099 ;
createNode nurbsCurve -n "feather2Shape" -p "|Niabi|master|root1|chest|neck|feather1|feather2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.4065764724480143 23.464289306807999 -0.62818918381477429
		3.8639582837944841 23.372373864720945 -1.7705410731493092
		2.883944987114063 23.355454633401383 -2.5749902413128436
		2.040615080296174 23.423442669091383 -2.570301275834936
		1.827979785199898 23.536511502562849 -1.7592209090990447
		2.3705979738534277 23.628426944649902 -0.61686901976451114
		3.3506112705338489 23.645346175969468 0.18758014839902337
		4.1939411773517383 23.577358140279468 0.18289118292111639
		4.4065764724480143 23.464289306807999 -0.62818918381477429
		3.8639582837944841 23.372373864720945 -1.7705410731493092
		2.883944987114063 23.355454633401383 -2.5749902413128436
		;
createNode transform -n "feather3" -p "|Niabi|master|root1|chest|neck|feather1|feather2";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".rp" -type "double3" 3.2686707012869793 24.707244948466357 -1.3503957125941617 ;
	setAttr ".sp" -type "double3" 3.2686707012869793 24.707244948466357 -1.3503957125941617 ;
createNode nurbsCurve -n "feather3Shape" -p "|Niabi|master|root1|chest|neck|feather1|feather2|feather3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.3972837114561045 24.726925879302129 -0.50822722861963232
		4.1312840740577101 24.615501391516965 -1.7430063840331078
		3.3599772219746198 24.557819035132404 -2.7477995328500544
		2.5351842484058098 24.58766835220889 -2.9340124758730743
		2.1400576911178546 24.687564017630585 -2.1925641965686906
		2.4060573285162481 24.79898850541575 -0.95778504115521601
		3.1773641805993385 24.85667086180031 0.047008107661730358
		4.0021571541681489 24.826821544723828 0.23322105068475071
		4.3972837114561045 24.726925879302129 -0.50822722861963232
		4.1312840740577101 24.615501391516965 -1.7430063840331078
		3.3599772219746198 24.557819035132404 -2.7477995328500544
		;
createNode transform -n "R_braid1" -p "|Niabi|master|root1|chest|neck";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".rp" -type "double3" -1.4697355328864052 17.68161078495941 -2.9761119320412126 ;
	setAttr ".sp" -type "double3" -1.4697355328864052 17.68161078495941 -2.9761119320412126 ;
createNode nurbsCurve -n "R_braid1Shape" -p "|Niabi|master|root1|chest|neck|R_braid1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.3696315690628071 18.14193884578809 -3.749358951007149
		-1.469735532886405 18.332612971724235 -4.0696483533274055
		-0.56983949671000411 18.14193884578809 -3.749358951007149
		-0.19709035379994932 17.68161078495941 -2.9761119320412135
		-0.56983949671000411 17.221282724130731 -2.2028649130752771
		-1.469735532886405 17.030608598194586 -1.8825755107550199
		-2.3696315690628058 17.221282724130731 -2.2028649130752771
		-2.7423807119728609 17.68161078495941 -2.976111932041213
		-2.3696315690628071 18.14193884578809 -3.749358951007149
		-1.469735532886405 18.332612971724235 -4.0696483533274055
		-0.56983949671000411 18.14193884578809 -3.749358951007149
		;
createNode transform -n "R_braid2" -p "|Niabi|master|root1|chest|neck|R_braid1";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".rp" -type "double3" -1.469735532886407 16.048804833409005 -2.7700296274765996 ;
	setAttr ".sp" -type "double3" -1.469735532886407 16.048804833409005 -2.7700296274765996 ;
createNode nurbsCurve -n "R_braid2Shape" -p "|Niabi|master|root1|chest|neck|R_braid1|R_braid2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.1187221749931826 16.048804833409005 -3.4190162695833739
		-1.469735532886407 16.048804833409005 -3.6878353385429734
		-0.82074889077963276 16.048804833409005 -3.4190162695833739
		-0.55192982182003303 16.048804833409005 -2.7700296274766001
		-0.82074889077963298 16.048804833409005 -2.1210429853698254
		-1.469735532886407 16.048804833409005 -1.8522239164102261
		-2.1187221749931808 16.048804833409005 -2.1210429853698254
		-2.3875412439527812 16.048804833409005 -2.7700296274765996
		-2.1187221749931826 16.048804833409005 -3.4190162695833739
		-1.469735532886407 16.048804833409005 -3.6878353385429734
		-0.82074889077963276 16.048804833409005 -3.4190162695833739
		;
createNode transform -n "R_braid3" -p "|Niabi|master|root1|chest|neck|R_braid1|R_braid2";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".rp" -type "double3" -1.4697355328864106 13.068537659705356 -2.3895699882803898 ;
	setAttr ".sp" -type "double3" -1.4697355328864106 13.068537659705356 -2.3895699882803898 ;
createNode nurbsCurve -n "R_braid3Shape" -p "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.1187221749931853 13.068537659705356 -3.0385566303871641
		-1.4697355328864103 13.068537659705356 -3.307375699346764
		-0.82074889077963653 13.068537659705356 -3.0385566303871641
		-0.55192982182003658 13.068537659705356 -2.3895699882803902
		-0.82074889077963653 13.068537659705356 -1.740583346173616
		-1.4697355328864103 13.068537659705356 -1.471764277214016
		-2.1187221749931848 13.068537659705356 -1.7405833461736158
		-2.3875412439527848 13.068537659705356 -2.3895699882803898
		-2.1187221749931853 13.068537659705356 -3.0385566303871641
		-1.4697355328864103 13.068537659705356 -3.307375699346764
		-0.82074889077963653 13.068537659705356 -3.0385566303871641
		;
createNode transform -n "R_braid4" -p "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".rp" -type "double3" -1.4697355328864123 11.277206858489864 -2.3737175033138844 ;
	setAttr ".sp" -type "double3" -1.4697355328864123 11.277206858489864 -2.3737175033138844 ;
createNode nurbsCurve -n "R_braid4Shape" -p "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.118722174993187 11.277206858489864 -3.0227041454206587
		-1.4697355328864119 11.277206858489864 -3.2915232143802582
		-0.8207488907796382 11.277206858489864 -3.0227041454206587
		-0.55192982182003836 11.277206858489864 -2.3737175033138849
		-0.8207488907796382 11.277206858489864 -1.7247308612071106
		-1.4697355328864119 11.277206858489864 -1.4559117922475109
		-2.1187221749931866 11.277206858489864 -1.7247308612071104
		-2.3875412439527866 11.277206858489864 -2.3737175033138844
		-2.118722174993187 11.277206858489864 -3.0227041454206587
		-1.4697355328864119 11.277206858489864 -3.2915232143802582
		-0.8207488907796382 11.277206858489864 -3.0227041454206587
		;
createNode transform -n "L_braid1" -p "|Niabi|master|root1|chest|neck";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".rp" -type "double3" 1.4697355328864057 17.68161078495941 -2.9761119320412126 ;
	setAttr ".sp" -type "double3" 1.4697355328864057 17.68161078495941 -2.9761119320412126 ;
createNode nurbsCurve -n "L_braid1Shape" -p "|Niabi|master|root1|chest|neck|L_braid1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.3696315690628076 18.14193884578809 -3.749358951007149
		1.4697355328864057 18.332612971724235 -4.0696483533274055
		0.56983949671000467 18.14193884578809 -3.749358951007149
		0.19709035379994977 17.68161078495941 -2.9761119320412135
		0.56983949671000445 17.221282724130731 -2.2028649130752771
		1.4697355328864052 17.030608598194586 -1.8825755107550195
		2.3696315690628063 17.221282724130731 -2.2028649130752767
		2.7423807119728618 17.68161078495941 -2.9761119320412126
		2.3696315690628076 18.14193884578809 -3.749358951007149
		1.4697355328864057 18.332612971724235 -4.0696483533274055
		0.56983949671000467 18.14193884578809 -3.749358951007149
		;
createNode transform -n "L_braid2" -p "|Niabi|master|root1|chest|neck|L_braid1";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".rp" -type "double3" 1.4697355328864077 16.048804833409005 -2.7700296274765996 ;
	setAttr ".sp" -type "double3" 1.4697355328864077 16.048804833409005 -2.7700296274765996 ;
createNode nurbsCurve -n "L_braid2Shape" -p "|Niabi|master|root1|chest|neck|L_braid1|L_braid2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.1187221749931826 16.048804833409005 -3.4190162695833735
		1.4697355328864077 16.048804833409005 -3.6878353385429734
		0.82074889077963342 16.048804833409005 -3.4190162695833739
		0.55192982182003347 16.048804833409005 -2.7700296274766001
		0.82074889077963331 16.048804833409005 -2.1210429853698254
		1.4697355328864072 16.048804833409005 -1.8522239164102257
		2.1187221749931813 16.048804833409005 -2.1210429853698254
		2.3875412439527817 16.048804833409005 -2.7700296274765992
		2.1187221749931826 16.048804833409005 -3.4190162695833735
		1.4697355328864077 16.048804833409005 -3.6878353385429734
		0.82074889077963342 16.048804833409005 -3.4190162695833739
		;
createNode transform -n "L_braid3" -p "|Niabi|master|root1|chest|neck|L_braid1|L_braid2";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".rp" -type "double3" 1.4697355328864106 13.068537659705356 -2.3895699882803898 ;
	setAttr ".sp" -type "double3" 1.4697355328864106 13.068537659705356 -2.3895699882803898 ;
createNode nurbsCurve -n "L_braid3Shape" -p "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.1187221749931853 13.068537659705356 -3.0385566303871636
		1.4697355328864106 13.068537659705356 -3.307375699346764
		0.82074889077963653 13.068537659705356 -3.0385566303871641
		0.55192982182003658 13.068537659705356 -2.3895699882803902
		0.82074889077963653 13.068537659705356 -1.740583346173616
		1.4697355328864103 13.068537659705356 -1.4717642772140158
		2.1187221749931844 13.068537659705356 -1.7405833461736155
		2.3875412439527848 13.068537659705356 -2.3895699882803898
		2.1187221749931853 13.068537659705356 -3.0385566303871636
		1.4697355328864106 13.068537659705356 -3.307375699346764
		0.82074889077963653 13.068537659705356 -3.0385566303871641
		;
createNode transform -n "L_braid4" -p "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".rp" -type "double3" 1.4697355328864123 11.277206858489864 -2.3737175033138844 ;
	setAttr ".sp" -type "double3" 1.4697355328864123 11.277206858489864 -2.3737175033138844 ;
createNode nurbsCurve -n "L_braid4Shape" -p "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.118722174993187 11.277206858489864 -3.0227041454206582
		1.4697355328864123 11.277206858489864 -3.2915232143802582
		0.8207488907796382 11.277206858489864 -3.0227041454206587
		0.55192982182003836 11.277206858489864 -2.3737175033138849
		0.8207488907796382 11.277206858489864 -1.7247308612071106
		1.4697355328864119 11.277206858489864 -1.4559117922475104
		2.1187221749931866 11.277206858489864 -1.7247308612071102
		2.3875412439527866 11.277206858489864 -2.373717503313884
		2.118722174993187 11.277206858489864 -3.0227041454206582
		1.4697355328864123 11.277206858489864 -3.2915232143802582
		0.8207488907796382 11.277206858489864 -3.0227041454206587
		;
createNode transform -n "L_foot" -p "master";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".rp" -type "double3" 1.0000000000000004 1.4044183546926503 -0.36201027382568973 ;
	setAttr ".sp" -type "double3" 1.0000000000000004 1.4044183546926503 -0.36201027382568973 ;
createNode nurbsCurve -n "L_footShape" -p "|Niabi|master|L_foot";
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
createNode ikHandle -n "ikHandle1" -p "|Niabi|master|L_foot";
	setAttr ".t" -type "double3" 1.0000000070375561 1.4044183546733289 -0.68702661694947276 ;
	setAttr ".roc" yes;
createNode ikHandle -n "ikHandle2" -p "ikHandle1";
	setAttr ".t" -type "double3" -3.4633294010433247e-009 -0.999999999972494 0.91408840939554858 ;
	setAttr ".pv" -type "double3" -1.7539918123648272e-008 -0.88631984469243907 -0.96962157659798853 ;
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
	setAttr ".rst" -type "double3" -0.0092251392093327667 -3.1731343014166153 0.22158164301290387 ;
	setAttr -k on ".w0";
createNode transform -n "L_knee" -p "|Niabi|master|L_foot";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".rp" -type "double3" 0.99077486079066768 5.0920493440822021 0.00067745187638124094 ;
	setAttr ".sp" -type "double3" 0.99077486079066768 5.0920493440822021 0.00067745187638834636 ;
createNode nurbsCurve -n "L_kneeShape" -p "|Niabi|master|L_foot|L_knee";
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
createNode nurbsCurve -n "R_footShape" -p "|Niabi|master|R_foot";
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
createNode ikHandle -n "ikHandle3" -p "|Niabi|master|R_foot";
	setAttr ".t" -type "double3" -1.0000000107664877 1.4044199999866098 -0.68702634267804352 ;
	setAttr ".roc" yes;
createNode ikHandle -n "ikHandle4" -p "ikHandle3";
	setAttr ".t" -type "double3" -1.1253304954550458e-009 -1.0000019999497165 0.91408834344491796 ;
	setAttr ".pv" -type "double3" -4.0825052322588435e-008 -0.88631884397681227 -0.96962249133959499 ;
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
	setAttr ".rst" -type "double3" 0.0092251392093317675 -3.1731326702752902 0.22158189545587115 ;
	setAttr -k on ".w0";
createNode transform -n "L_knee1" -p "|Niabi|master|R_foot";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".rp" -type "double3" 4.6285016035452172e-014 -16.857904555169821 1.0152842227131405e-013 ;
	setAttr ".rpt" -type "double3" -9.2570032070904305e-014 16.85790455516992 -16.857904555169924 ;
	setAttr ".sp" -type "double3" 3.854694341498543e-013 -140.39547755274074 -8.4554585555451922e-013 ;
	setAttr ".spt" -type "double3" -3.3918441811440222e-013 123.53757299757092 9.4707427782583312e-013 ;
createNode nurbsCurve -n "L_knee1Shape" -p "L_knee1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.0357752977430463 2.4711996502294852e-016 -4.0357752977430401
		-6.5115159095950656e-016 3.4948040606861888e-016 -5.7074481607585268
		-4.0357752977430419 2.4711996502294867e-016 -4.0357752977430419
		-5.7074481607585295 3.8043546257299798 -8.2060392195030244e-015
		-4.0357752977430437 -2.4711996502294857e-016 4.035775297743041
		-1.7197655180703042e-015 -3.4948040606861897e-016 5.7074481607585277
		4.0357752977430401 -2.4711996502294867e-016 4.0357752977430428
		5.7074481607585241 3.8043546257299798 -3.4866819907349266e-015
		4.0357752977430463 2.4711996502294852e-016 -4.0357752977430401
		-6.5115159095950656e-016 3.4948040606861888e-016 -5.7074481607585268
		-4.0357752977430419 2.4711996502294867e-016 -4.0357752977430419
		;
createNode transform -n "Mesh" -p "Niabi";
createNode transform -n "niabiMesh" -p "Mesh";
	setAttr ".t" -type "double3" -26.543416023254395 0 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 26.543416023254395 11.391817092895508 -0.56372451782226563 ;
	setAttr ".sp" -type "double3" 26.543416023254395 11.391817092895508 -0.56372451782226563 ;
createNode mesh -n "niabiMeshShape" -p "niabiMesh";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.21087765693664551 0.37532566536792977 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 3;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape1" -p "niabiMesh";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.3125 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 275 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0 0.375 0.25 0.375 0.5 
		0.375 0.75 0.375 1 0.125 0 0.125 0.25 0.375 0.75 0.375 1 0.375 0.75 0.375 1 0.375 
		0.75 0.375 1 0.5 0.75 0.5 0.75 0.5 0.75 0.5 0.75 0.5 1 0.5 1 0.5 1 0.5 0 0.5 1 0.5 
		0.125 0.375 0.125 0.125 0.125 0.375 0.625 0.375 0.125 0.5 0.125 0.5 0.25 0.375 0.25 
		0.25 0.25 0.375 0.375 0.25 0.125 0.25 0 0.375 0.875 0.375 0.875 0.375 0.875 0.375 
		0.875 0.5 0.875 0.125 0 0.125 0 0.25 0 0.25 0.125 0.125 0.125 0.4375 0.15625 0.4375 
		0.25 0.5 0.14652793 0.375 0 0.5 0 0.5 0.125 0.375 0.125 0.375 0 0.5 0 0.5 0.125 0.375 
		0.125 0.375 0 0.5 0 0.5 0.125 0.375 0.125 0.46099865 0.125 0.46099865 0.125 0.5 0.125 
		0.5 0.14652793 0.375 0.1875 0.375 0.1875 0.25 0.1875 0.125 0.1875 0.375 0.5625 0.5 
		0.19826397 0.5 0.1875 0.25 0.125 0.25 0 0.125 0 0.125 0.125 0.375 1 0.375 0.875 0.5 
		1 0.375 0.75 0.5 0.75 0.5 1 0.5 0.75 0.375 0.75 0.375 0.875 0.375 1 0.375 1 0.375 
		0.875 0.375 0.875 0.375 1 0.375 0.75 0.375 0.75 0.375 1 0.375 0.875 0.375 0.875 0.375 
		1 0.375 0.75 0.375 0.75 0.375 1 0.375 0.875 0.5 1 0.375 0.75 0.5 0.75 0.375 1 0.375 
		0.875 0.5 0.875 0.5 1 0.375 0.75 0.5 0.75 0.375 0.875 0.5 0.875 0.375 0.75 0.5 0.75 
		0.375 1 0.375 0.875 0.5 0.875 0.5 1 0.5 1 0.5 0.875 0.5 0.75 0.375 0.75 0.375 0.875 
		0.375 1 0.5 1 0.5 0.875 0.5 0.75 0.375 0.75 0.375 0.875 0.375 1 0.375 1 0.5 1 0.5 
		0.875 0.5 0.75 0.375 0.75 0.375 0.875 0.375 1 0.5 1 0.5 0.875 0.5 0.75 0.375 0.75 
		0.375 0.875 0.5 1 0.375 1 0.375 1 0.5 1 0.5 0.875 0.5 0.875 0.5 0.75 0.5 0.75 0.375 
		0.75 0.375 0.75 0.375 0.875 0.375 0.875 0.5 0.875 0.5 0.75 0.375 0.75 0.375 0.875 
		0.375 1 0.5 1 0.5 0.22784641 0.5 0.25 0.375 0.25 0.3110505 0.25 0.375 0.3139495 0.3110505 
		0.1875 0.30675328 0.13997532 0.31491816 0 0.375 0.93991816 0.375 1 0.5 1 0.18210927 
		0.25 0.375 0.44289073 0.19068721 0.1875 0.16643015 0.125 0.43438521 0.25 0.43407965 
		0.25 0.42951158 0.125 0.5 0.25 0.5 0.3139495 0.5 0.625 0.5 0.75 0.375 0.75 0.5 0.5625 
		0.5 0.375 0.5 0.44215727 0.16643015 0.125 0.25 0.125 0.125 0 0.125 0 0.5 0.5 0.46703982 
		0.25 0.5 0.22784641 0.375 0.25 0.375 0.1875 0.30675328 0.13997532 0.375 1 0.375 0.875 
		0.375 0.875 0.375 1 0.375 0.75 0.375 0.75 0.375 1 0.375 1 0.375 1 0.375 1 0.375 1 
		0.375 1 0.375 1 0.375 1 0.375 1 0.375 0.875 0.375 0.75 0.375 0.75 0.375 0.875 0.375 
		1 0.375 1 0.375 0.875 0.375 0.75 0.375 0.75 0.375 0.875 0.375 0.875 0.375 0.75 0.375 
		0.75 0.375 0.875 0.375 1 0.375 1 0.375 1 0.375 1 0.375 0.875 0.375 0.75 0.375 0.75 
		0.375 0.875 0.375 1 0.5 1 0.5 0.87500006 0.5 0.75 0.375 0.75 0.375 0.87500006 0.375 
		1 0.5 1 0.5 0.875 0.5 0.75 0.375 0.75 0.375 0.875 0.375 0.875 0.375 0.75 0.375 0.75 
		0.375 0.875 0.375 1 0.375 0.875 0.375 0.875 0.375 1;
	setAttr ".uvst[0].uvsp[250:274]" 0.375 1 0.375 1 0.375 1 0.5 0.75 0.375 0.75 
		0.375 0.875 0.375 1 0.5 1 0.5 0.75 0.375 0.75 0.375 0.875 0.375 1 0.5 1 0.42719269 
		0.25 0.43517095 0.3139495 0.44173151 0.375 0.44420826 0.44248462 0.44173515 0.5 0.5 
		0.75 0.375 0.75 0.375 0.875 0.375 1 0.5 1 0.375 0.1875 0.375 0.1875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".pt";
	setAttr ".pt[69]" -type "float3" 0 0 0.019733975 ;
	setAttr ".pt[71:79]" -type "float3" 0 0 0.021111963  0 0 -0.023111053  0 
		-0.0068791616 -0.022699239  -0.038888596 0 0  -0.038888596 0 0  -0.038888596 0 0  
		-0.038888596 0 0  -0.038888596 0 0  -0.038888596 0 0 ;
	setAttr ".pt[180:192]" -type "float3" -0.038888596 0 0  -0.038888596 -0.013660575 
		0  -0.038888596 0 0  -0.038888596 -0.013660575 0  -0.038888596 -0.012272035 0  -0.038888596 
		-0.012272035 0  -0.038888596 -0.0081032403 0  -0.038888596 -0.0081032403 0  -0.038888596 
		-0.013660575 0  -0.038888596 -0.0081032403 0  -0.038888596 -0.0081032403 0  -0.038888596 
		-0.0081032403 0  -0.038888596 -0.0081032403 0 ;
	setAttr ".pt[205:210]" -type "float3" -0.038888596 0 0  -0.038888596 0 0  
		-0.038888596 0 0  -0.038888596 0 0  -0.038888596 0 0  -0.038888596 0 0 ;
	setAttr ".pt[229:239]" -type "float3" -0.038888596 0 0  -0.038888596 -0.012272035 
		0  -0.038888596 -0.012272035 0  -0.038888596 0 0  -0.038888596 -0.013660575 0  -0.038888596 
		0 0  -0.038888596 0 0  -0.038888596 -0.0081032403 0  -0.038888596 -0.0081032403 0  
		-0.038888596 -0.0081032403 0  -0.038888596 -0.0081032403 0 ;
	setAttr -s 260 ".vt";
	setAttr ".vt[0:165]"  -0.40997881 -0.58288479 0.50319254 -0.41774216 -0.49999952 
		-0.44749439 -0.11135883 -0.68419504 -0.12523752 -0.10750303 -0.68419504 0.11967616 
		-0.12645349 -0.97166538 -0.17898864 -0.12210915 -0.97166538 0.096953809 -0.32078308 
		-1.1053305 -0.24283563 -0.32078308 -1.1053305 0.079854719 0.0077849622 -0.49999952 
		-0.49999994 0.0077849622 -0.68419504 -0.15206423 0.0077849664 -0.97166538 -0.20921403 
		0.0077849622 -1.0793869 -0.33292717 0.0077849622 -1.0793869 0.16994627 0.0077849664 
		-0.97166538 0.1334452 0.0077849622 -0.68419504 0.15206423 0.0077849622 -0.70366859 
		0.57287055 0.0077849622 -0.40583801 0.69590622 -0.48188278 -0.40583801 0.50942856 
		-0.15587424 -0.26977912 0.60491157 -0.36560562 -0.26302186 0.54342926 -0.14757732 
		-0.11953939 0.5902856 -0.36486918 -0.1195096 0.53674376 -0.49999994 -0.26569748 -0.040934369 
		-0.49999994 -0.51412201 -0.037814856 -0.15206423 -0.68419504 0 -0.17231596 -0.97166538 
		-0.037884451 -0.34013724 -1.0517497 -0.08149045 -0.49999994 -0.46404076 -0.28922349 
		-0.69056368 -0.391819 -0.28758106 -0.69056368 -0.391819 -0.22159286 -0.71561158 -0.193748 
		-0.22380452 -0.71561158 -0.193748 -0.28758106 -0.23601237 -0.19112968 0.22038901 
		0.0063805915 -0.27319655 0.64104021 -0.16419269 -0.55768681 0.63616425 0.0077849426 
		-0.61383152 0.64527845 0.0077849426 -0.53702879 0.68088543 -0.16419269 -0.53233504 
		0.63991809 -0.083352715 -0.56509972 0.6535266 0.0077849412 -0.58909607 0.64174831 
		0.0077849412 -0.55857348 0.6668492 -0.083352715 -0.54878354 0.65605932 -0.083352715 
		-0.56509972 0.46160388 0.0077849412 -0.58909607 0.44868004 0.0077849412 -0.53332329 
		0.45476755 -0.083352715 -0.53332329 0.45975393 -0.15064946 -0.40556744 0.67530984 
		0.0078031919 -0.27878857 0.77092087 0.0078031919 -0.3522563 0.77231991 -0.079996169 
		-0.3522563 0.76301926 -0.3981916 -0.17558315 0.52846932 -0.51005167 -0.11987066 0.47701758 
		0.001699137 -0.18206617 0.62357366 -0.12723976 -0.17836992 0.60624212 -0.60780573 
		-0.183671 -0.117288 -0.57705116 -0.49244905 -0.11507631 -0.57705116 -0.48106861 -0.23874243 
		-0.60780573 -0.16900682 -0.23874243 -0.28988007 -1.9721808 -0.054999132 -0.24230748 
		-1.9721808 0.11249242 0.0077849762 -1.9721808 0.13717364 -0.21298781 -1.9721808 -0.25150779 
		0.0077849762 -1.9721808 -0.276189 0.0077849664 -1.3200648 0.16520511 0.0077849664 
		-1.3200648 -0.30047804 -0.30132255 -1.2611499 -0.23378472 -0.35901803 -1.3416576 
		-0.067636475 -0.30132255 -1.2611499 0.098511793 -0.37884733 -1.0657598 -0.08149045 
		-0.37884733 -1.1032608 0.0063568978 -0.36229396 -1.2644467 -0.071491525 -0.36229396 
		-1.2213671 -0.0001398874 -0.37884733 -1.1032608 -0.16933779 -0.36229396 -1.2213671 
		-0.1628409 -1.9651 -1.1601567 -0.08149045 -1.9620596 -1.1745961 -0.014381675 -1.9485468 
		-1.2387415 -0.08149045 -1.9515874 -1.2243021 -0.019344717 -1.9620596 -1.1745961 -0.14859922 
		-1.9515874 -1.2243021 -0.14363612 -0.36227939 -2.6108372 -0.08149045 -0.30754012 
		-2.6263974 0.12613519 0.0077849645 -2.5346909 -0.08149045 0.0077849645 -2.6244094 
		0.1545345 -0.27822044 -2.5982084 -0.29721466 0.0077849645 -2.5962205 -0.32561401 
		-0.2344927 -2.5346909 -0.081490457 -0.20332932 -2.5346909 0.021864191 -0.058708046 
		-2.5346909 -0.081490457 -0.086444445 -2.5346909 0.019594545 -0.20332932 -2.5346909 
		-0.18484509 -0.084428221 -2.5346909 -0.19168201 -0.30241984 -4.4368238 -0.081490457 
		0.068757147 -4.4368238 -0.081490457 -0.24717207 -4.4368238 -0.26472223 0.0092191026 
		-4.4368238 -0.29338539 -0.30241984 -4.4368238 0.35384229 -0.24717207 -4.3062453 0.29871616 
		-0.0025783088 -4.4368238 0.39758882 -0.032757346 -4.3062453 0.33178926 -0.0057783388 
		-4.1129379 0.12839589 0.053584792 -4.1460791 -0.096945636 -0.00034005428 -4.1460791 
		-0.27391297 -0.23851436 -4.1460791 -0.24997453 -0.28983673 -4.1460791 -0.096945636 
		-0.24621874 -4.1129379 0.1000044 -0.060412414 -3.2476487 0.076687582 -0.029390141 
		-3.2600584 -0.062185735 -0.049582317 -3.2600584 -0.18294537 -0.20470423 -3.2600584 
		-0.16661014 -0.23813026 -3.2600584 -0.062185735 -0.20758913 -3.2476487 0.058684953 
		-0.22763442 -3.6966562 0.08012604 -0.018380146 -3.6966562 0.10351955 0.013666417 
		-3.7198238 -0.080223016 -0.024029994 -3.7198238 -0.23014943 -0.22224867 -3.7198238 
		-0.20986876 -0.2649613 -3.7198238 -0.080223016 -0.23431234 -3.8462391 0.087268978 
		-0.0089936182 -3.8462391 0.11245841 0.028010331 -3.8729908 -0.086231977 -0.015517459 
		-3.8729908 -0.24587506 -0.22809343 -3.8729908 -0.22428006 -0.27389982 -3.8729908 
		-0.086231977 -0.25744873 -3.7240596 0.12194264 0.011398554 -3.7240596 0.15199834 
		-0.26602843 -3.9162421 0.13111979 0.023458229 -3.9162421 0.16348286 0.052571557 -3.7538249 
		-0.08407183 0.071000442 -3.9506121 -0.091792069 0.0041396888 -3.7538249 -0.27669537 
		0.015076485 -3.9506121 -0.29689953 -0.2505292 -3.7538249 -0.25063908 -0.2580384 -3.9506121 
		-0.26915452 -0.30540586 -3.7538249 -0.08407183 -0.31688994 -3.9506121 -0.091792069 
		-0.022913309 -3.3292191 -0.064898998 -0.045738582 -3.3292191 -0.19004609 -0.20734337 
		-3.3292191 -0.17311737 -0.24216634 -3.3292191 -0.064898998 -0.21060443 -3.3151913 
		0.061910246 -0.056174036 -3.3151913 0.080723822 0.0077849636 0.072524548 0.60013169 
		-0.085986771 0.045631409 0.58336025 -0.38074794 -0.03293848 0.51700264 -0.56049842 
		-0.23732233 0.23381613 -0.47257793 -0.56296539 0.26520222 -0.28293425 -0.6318748 
		0.31773794 0.0077849622 -0.69478345 0.38086489 -0.49999994 -0.21964598 -0.29447871 
		-0.25582027 -0.078760147 0.56218046 -0.24155296 -0.0055298805 0.57492703 -0.26492718 
		-0.29073796 0.58592552 -0.44890025 0.31840304 0.50992835 -0.48807964 0.47105139 0.25081053 
		-0.020062029 0.46308738 0.5855478 -0.020062029 0.56469929 0.28774348 -0.61101967 
		-0.19127035 -0.60309029 -0.44701993 -0.63929582 -0.51735246 -0.020062031 -0.1380024 
		-0.7313416 -0.020062029 -0.63929582 -0.57845813 -0.57156157 0.039405435 -0.51617211 
		-0.020062042 0.13825941 -0.618002 -0.52548313 0.50290829 0.0034394327 -0.48388895 
		0.47818929 -0.24729258 -0.020062029 0.60847116 0.0034394327;
	setAttr ".vt[166:259]" -0.020062029 0.58146262 -0.28509778 -0.75244808 -0.14477664 
		-0.044199795 -0.75712734 -0.1653021 -0.31759131 -0.66502249 -0.0029948987 0.005782879 
		-0.6451928 0.012613758 -0.24188599 -0.57296765 -0.53447676 -0.42118818 -0.54751766 
		-0.13393307 0.49220136 -0.64461166 -0.017208541 0.27577624 -0.44890025 0.44554263 
		-0.45820683 -0.020062029 0.54228443 -0.53361553 0.0019315723 0.052452087 0.63141304 
		-0.21971671 -0.0086169243 0.6319949 -0.40165401 -0.032762051 0.54696506 -0.63396549 
		-0.23044458 0.17928173 -2.3772957 -1.1850747 -0.08149045 -2.2962041 -1.1904588 -0.0033802942 
		-2.3607426 -1.2143773 -0.08149045 -2.2857325 -1.2089932 -0.009156947 -2.270438 -1.1904588 
		-0.1596006 -2.2599664 -1.2089932 -0.15382388 -2.0935209 -1.1929761 0.058287501 -2.0895875 
		-1.2522416 0.039148964 -2.1760802 -1.1821666 0.0096908445 -2.2291861 -1.2524 0.083702244 
		-2.2260652 -1.271261 0.07060241 -2.2369618 -1.2413911 0.056962643 -2.2347574 -1.2502116 
		0.051159933 -1.2019371 -1.1377254 0.0011911428 -1.1886098 -1.226598 -0.0049235993 
		-1.1869967 -1.2580448 -0.08149045 -1.1886098 -1.226598 -0.15805721 -1.2019371 -1.1377254 
		-0.16417204 -1.2035501 -1.1067073 -0.08149045 -1.1302043 -1.134847 0.020673195 -1.1166077 
		-1.2261611 0.013814844 -1.1151292 -1.2579947 -0.072063245 -1.1166077 -1.2261611 -0.15794124 
		-1.1302043 -1.134847 -0.16479968 -1.1316826 -1.1030078 -0.072063245 -1.890895 -1.2387134 
		-0.08149045 -1.8938277 -1.2240256 -0.14391147 -1.904516 -1.1727746 -0.14889656 -1.9074483 
		-1.1580867 -0.08149045 -1.904516 -1.1727746 -0.014084345 -1.8938277 -1.2240256 -0.019069379 
		-0.42877483 -1.1052641 0.0060566301 -0.41240898 -1.2216711 -0.00041794844 -0.41231522 
		-1.255692 -0.073138423 -0.41240898 -1.2216711 -0.16256285 -0.42877483 -1.1052641 
		-0.16903754 -0.42886859 -1.0712434 -0.08149045 -0.20383479 -2.6192896 0.026233301 
		-0.085002489 -2.6192896 0.024181364 -0.055229217 -2.6207621 -0.079199784 -0.083345369 
		-2.6207621 -0.18953814 -0.20349248 -2.6207621 -0.18268135 -0.23492433 -2.6207621 
		-0.079199784 -0.24375817 -4.0578222 0.097372502 -0.0092369318 -4.0578222 0.12510225 
		0.048299581 -4.089643 -0.094731554 -0.0034766127 -4.089643 -0.26811865 -0.23636077 
		-4.089643 -0.24466452 -0.28654322 -4.089643 -0.094731554 -2.1660986 -1.1663327 -0.08149045 
		-2.1301918 -1.1812317 -0.17813987 -2.1319256 -1.2174966 -0.17236316 -2.1661401 -1.2318487 
		-0.08149045 -2.1728091 -1.2170525 0.0056127752 -2.2740314 -1.1766593 -0.08149045 
		-2.266438 -1.2220917 -0.08149045 -2.1496542 -1.213816 0.077741206 -2.1457779 -1.2447994 
		0.073053405 -2.1917877 -1.2282655 0.030416051 -2.1951528 -1.2049965 0.035101332 0.0077849757 
		-1.9279624 -0.24173042 -0.21897759 -1.9239676 -0.2142005 -0.26723656 -1.9279624 -0.055856042 
		-0.21897759 -1.9239676 0.10248838 0.0077849757 -1.9279624 0.13001834 0.0077849696 
		-2.3078365 -0.3470031 -0.24807484 -2.3089058 -0.3170267 -0.3288219 -2.3089058 -0.08463569 
		-0.2773945 -2.3089058 0.12779559 0.0077849696 -2.3078365 0.15777197 -0.26984245 0.43326616 
		0.54150259 -0.26279119 0.57058185 0.26858884 -0.25566289 0.61371464 0.0034394325 
		-0.22708373 0.58981967 -0.26822403 -0.2199516 0.55164266 -0.4984661 0.007784971 -1.6330875 
		-0.27022734 -0.25892094 -1.6024524 -0.22370028 -0.3117573 -1.6435616 -0.061570413 
		-0.25892094 -1.6024524 0.10055944 0.007784971 -1.6330875 0.1470865;
	setAttr -s 515 ".ed";
	setAttr ".ed[0:165]"  0 17 1 1 23 1 1 2 
		1 0 147 1 2 24 1 2 4 1 3 5 
		1 4 25 1 4 6 1 5 7 1 6 26 
		1 8 9 0 9 10 0 10 11 0 12 13 
		0 13 14 0 14 148 0 17 51 1 16 46 
		1 17 145 1 17 19 1 18 152 1 18 53 
		1 19 50 1 22 149 1 23 146 1 22 23 
		1 24 3 1 23 24 1 25 5 1 24 25 
		1 26 7 1 25 26 1 1 27 1 27 23 
		1 149 27 1 27 56 1 23 55 1 28 29 
		1 22 54 1 30 29 1 149 57 1 30 31 
		1 31 28 1 18 32 1 19 32 1 20 32 
		1 21 32 1 33 52 0 18 33 1 0 34 
		1 15 35 0 16 36 0 17 37 1 36 37 
		1 34 37 1 34 38 1 35 39 0 36 40 
		0 37 41 1 40 41 1 38 41 1 38 42 
		1 39 43 0 40 44 0 43 44 0 41 45 
		1 44 45 1 42 45 1 46 17 1 18 46 
		1 46 37 1 46 33 1 33 47 0 16 48 
		0 48 47 0 46 49 1 49 47 1 50 21 
		1 50 51 1 52 142 0 53 20 1 52 53 
		1 53 32 1 32 50 1 21 150 1 1 8 
		1 2 9 1 4 10 1 6 11 1 7 12 
		1 5 13 1 3 14 1 0 15 1 34 35 
		1 38 39 1 42 43 1 48 49 1 54 30 
		1 55 29 1 54 55 1 56 28 1 55 56 
		1 57 31 1 56 57 1 57 54 1 7 67 
		1 58 59 0 12 63 0 59 60 0 6 65 
		1 61 58 0 11 64 0 61 62 0 63 259 
		0 64 255 0 65 256 1 64 65 1 66 257 
		1 65 66 1 67 258 1 66 67 1 67 63 
		1 26 68 1 7 69 1 68 69 1 66 70 
		1 67 71 1 70 71 1 69 71 1 6 72 
		1 72 68 1 65 73 1 72 73 1 73 70 
		1 68 216 1 69 211 1 74 75 1 70 213 
		1 71 212 1 76 77 1 75 77 1 72 215 
		1 78 74 1 73 214 1 78 79 1 79 76 
		1 58 247 1 59 248 1 80 81 1 60 249 
		0 82 83 0 81 83 1 61 246 1 84 80 
		1 62 245 0 84 85 1 85 82 0 80 86 
		1 81 87 1 86 87 1 82 88 1 83 89 
		1 88 89 1 87 89 1 84 90 1;
	setAttr ".ed[166:331]" 90 86 1 85 91 1 90 91 
		1 91 88 1 86 222 1 87 217 1 92 105 
		1 88 219 1 92 93 1 89 218 1 93 100 
		1 90 221 1 94 92 1 91 220 1 94 95 
		1 95 93 1 92 96 1 105 97 1 96 97 
		1 93 98 1 96 98 1 100 99 1 98 99 
		1 97 99 1 101 93 1 100 101 1 102 95 
		1 101 102 1 103 94 1 102 103 1 104 92 
		1 103 104 1 104 105 1 105 100 1 106 141 
		1 107 136 1 106 107 1 108 137 1 107 108 
		1 109 138 1 108 109 1 110 139 1 109 110 
		1 111 140 1 110 111 1 111 106 1 112 113 
		0 113 114 0 114 115 0 115 116 0 116 117 
		0 117 112 0 118 223 1 119 224 1 118 119 
		0 120 225 1 119 120 0 121 226 1 120 121 
		0 122 227 1 121 122 0 123 228 1 122 123 
		0 123 118 0 112 124 0 113 125 0 124 125 
		0 118 126 0 124 126 1 119 127 0 126 127 
		0 125 127 1 114 128 0 125 128 0 120 129 
		0 127 129 0 128 129 1 115 130 0 128 130 
		0 121 131 0 129 131 0 130 131 1 116 132 
		0 130 132 0 122 133 0 131 133 0 132 133 
		1 117 134 0 132 134 0 123 135 0 133 135 
		0 134 135 1 134 124 0 135 126 0 136 114 
		1 137 115 1 136 137 1 138 116 1 137 138 
		1 139 117 1 138 139 1 140 112 1 139 140 
		1 141 113 1 140 141 1 141 136 1 143 20 
		1 142 143 1 144 21 1 143 151 1 144 51 
		1 51 145 1 145 22 1 146 0 1 145 146 
		1 147 3 1 146 147 1 148 15 0 147 148 
		1 150 20 1 32 150 1 151 144 1 150 151 
		1 152 19 1 46 152 1 152 32 1 153 154 
		1 153 250 1 155 156 0 156 251 1 1 158 
		1 157 158 1 157 159 1 8 160 0 159 160 
		0 158 160 1 161 157 1 161 162 1 162 159 
		0 163 164 1 165 252 1 165 166 0 166 253 
		1 22 167 1 149 168 1 167 168 1 169 167 
		1 169 170 1 170 168 1 27 171 1 158 171 
		1 168 171 1 168 157 1 51 172 1 172 173 
		1 172 153 1 154 173 1 163 169 1 164 170 
		1 174 161 1 174 254 1 175 162 0 142 176 
		0 143 177 1 176 177 1 176 155 0;
	setAttr ".ed[332:497]" 144 178 1 153 178 1 151 177 
		1 177 178 1 177 155 1 178 172 1 145 179 
		1 172 179 1 173 179 1 154 163 1 156 165 
		0 173 169 1 179 167 1 164 174 1 166 175 
		0 170 161 1 74 229 1 180 181 1 76 232 
		1 180 182 1 77 233 1 182 183 1 181 183 
		1 78 230 1 184 180 1 79 231 1 184 185 
		1 185 182 1 75 186 1 77 187 1 186 187 
		1 186 188 1 188 233 1 187 233 1 187 237 
		1 189 190 1 188 239 1 189 191 1 233 238 
		1 191 192 1 190 192 1 193 209 1 193 194 
		1 194 195 1 195 196 1 196 197 1 197 198 
		1 198 193 1 199 193 1 200 194 1 199 200 
		1 201 195 1 200 201 1 202 196 1 201 202 
		1 203 197 1 202 203 1 204 198 1 203 204 
		1 204 199 1 205 76 1 206 79 1 205 206 
		1 207 78 1 206 207 1 208 74 1 207 208 
		1 209 75 1 208 209 1 210 77 1 209 210 
		1 210 205 1 211 199 1 212 200 1 211 212 
		1 213 201 1 212 213 1 214 202 1 213 214 
		1 215 203 1 214 215 1 216 204 1 215 216 
		1 216 211 1 217 111 1 218 106 1 217 218 
		1 219 107 1 218 219 1 220 108 1 219 220 
		1 221 109 1 220 221 1 222 110 1 221 222 
		1 222 217 1 223 105 1 224 100 1 223 224 
		1 225 101 1 224 225 1 226 102 1 225 226 
		1 227 103 1 226 227 1 228 104 1 227 228 
		1 228 223 1 75 188 1 188 181 1 229 234 
		1 188 229 1 230 184 1 229 230 1 231 185 
		1 230 231 1 232 235 1 231 232 1 233 183 
		1 232 233 1 234 180 1 181 234 1 234 184 
		1 235 182 1 185 235 1 235 183 1 186 236 
		1 236 189 1 237 190 1 236 237 1 238 192 
		1 237 238 1 239 191 1 238 239 1 239 236 
		1 194 210 1 195 205 1 196 206 1 197 207 
		1 198 208 1 240 62 0 241 61 0 240 241 
		0 242 58 0 241 242 0 243 59 0 242 243 
		0 244 60 0 243 244 0 245 85 0 246 84 
		1 245 246 1 247 80 1 246 247 1 248 81 
		1 247 248 1 249 83 0 248 249 1 250 155 
		1 177 250 1 251 154 1 250 251 1 252 163 
		1 251 252 1 253 164 1 252 253 1;
	setAttr ".ed[498:514]" 254 175 1 253 254 1 162 254 
		1 250 178 1 154 172 1 157 170 1 157 171 
		1 169 179 1 255 240 0 256 241 1 255 256 
		1 257 242 1 256 257 1 258 243 1 257 258 
		1 259 244 0 258 259 1;
	setAttr -s 316 ".n";
	setAttr ".n[0:165]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[166:315]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 0.51302624 0.61359978 0.60024947 -0.58680314 0.56279415 0.58217257 
		-0.58719188 0.56451571 0.58011007 0.51862139 0.61131763 0.59776467 -0.13061172 -0.9562434 
		0.26179972 0.082171097 -0.95368278 0.28937355 0.096397378 -0.96290857 0.25202128 
		-0.12553872 -0.95560282 0.26657686 0.88666177 0.46003905 -0.046850178 0.51302624 
		0.61359978 0.60024947 0.51862139 0.61131763 0.59776467 0.88734633 0.45692843 -0.061910402 
		0.082171097 -0.95368278 0.28937355 0.2525726 -0.96394765 0.083738349 0.27655828 -0.95937413 
		0.055827685 0.096397378 -0.96290857 0.25202128 0.48329082 0.57492203 -0.66022313 
		0.88666177 0.46003905 -0.046850178 0.88734633 0.45692843 -0.061910402 0.47691691 
		0.57120508 -0.66803825 0.2525726 -0.96394765 0.083738349 0.11714422 -0.96842802 -0.22005542 
		0.12360546 -0.97287744 -0.19552825 0.27655828 -0.95937413 0.055827685 -0.53715324 
		0.52997518 -0.65619564 0.48329082 0.57492203 -0.66022313 0.47691691 0.57120508 -0.66803825 
		-0.53606433 0.52982169 -0.65720934 0.11714422 -0.96842802 -0.22005542 -0.1475649 
		-0.96669644 -0.20909953 -0.14936762 -0.96698916 -0.20644951 0.12360546 -0.97287744 
		-0.19552825 -0.88705742 0.45653278 -0.068607196 -0.53715324 0.52997518 -0.65619564 
		-0.53606433 0.52982169 -0.65720934 -0.88683814 0.45637119 -0.072411083 -0.1475649 
		-0.96669644 -0.20909953 -0.25253302 -0.96609628 0.053712964 -0.25193629 -0.96573395 
		0.062338617 -0.14936762 -0.96698916 -0.20644951 -0.58680314 0.56279415 0.58217257 
		-0.88705742 0.45653278 -0.068607196 -0.88683814 0.45637119 -0.072411083 -0.58719188 
		0.56451571 0.58011007 -0.25253302 -0.96609628 0.053712964 -0.13061172 -0.9562434 
		0.26179972 -0.12553872 -0.95560282 0.26657686 -0.25193629 -0.96573395 0.062338617 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 -0.67135358 0.11461294 
		-0.73222154 -0.14320761 0.28641233 -0.94734341 -0.10190023 0.41566744 -0.9037903 
		-0.6594488 0.28461981 -0.69578654 -0.99480414 -0.10167988 0.0050950684 -0.67135358 
		0.11461294 -0.73222154 -0.6594488 0.28461981 -0.69578654 -0.9995023 0.028854324 0.012758047 
		-0.64619374 -0.024646433 0.76277542 -0.99480414 -0.10167988 0.0050950684 -0.9995023 
		0.028854324 0.012758047 -0.64885509 0.071443856 0.7575506 -0.14572743 0.069759011 
		0.9868623 -0.64619374 -0.024646433 0.76277542 -0.64885509 0.071443856 0.7575506 -0.11340629 
		0.11679943 0.98665953;
	setAttr -s 256 ".fc[0:255]" -type "polyFaces" 
		f 4 -69 96 65 67 
		mu 0 4 58 55 56 57 
		f 4 -293 293 493 492 
		mu 0 4 161 1 263 264 
		f 4 -298 298 300 -302 
		mu 0 4 179 25 177 178 
		f 4 -185 186 188 -190 
		mu 0 4 111 112 113 114 
		f 4 279 0 19 280 
		mu 0 4 164 0 23 163 
		f 4 -3 86 11 -88 
		mu 0 4 7 3 13 14 
		f 4 3 284 283 -94 
		mu 0 4 4 166 167 21 
		f 3 -280 282 -4 
		mu 0 3 4 165 166 
		f 4 -6 87 12 -89 
		mu 0 4 9 7 14 15 
		f 4 6 91 15 -93 
		mu 0 4 8 10 18 19 
		f 4 -28 30 29 -7 
		mu 0 4 8 35 36 10 
		f 4 -9 88 13 -90 
		mu 0 4 11 9 15 16 
		f 4 9 90 14 -92 
		mu 0 4 10 12 17 18 
		f 4 -30 32 31 -10 
		mu 0 4 10 36 37 12 
		f 3 -20 17 277 
		mu 0 3 163 23 64 
		f 4 -303 303 304 -299 
		mu 0 4 25 67 180 177 
		f 3 70 72 -50 
		mu 0 3 27 59 46 
		f 4 48 82 -23 49 
		mu 0 4 46 68 69 27 
		f 4 274 85 288 287 
		mu 0 4 159 29 172 173 
		f 4 -18 20 23 79 
		mu 0 4 64 23 26 63 
		f 4 -306 -495 497 496 
		mu 0 4 169 31 265 266 
		f 4 -312 -313 313 314 
		mu 0 4 183 184 65 170 
		f 4 38 -41 42 43 
		mu 0 4 40 41 42 43 
		f 4 -29 -2 2 4 
		mu 0 4 35 34 3 7 
		f 4 -31 -5 5 7 
		mu 0 4 36 35 7 9 
		f 4 -33 -8 8 10 
		mu 0 4 37 36 9 11 
		f 4 -179 180 181 -175 
		mu 0 4 107 109 110 108 
		f 3 1 -35 -34 
		mu 0 3 5 33 39 
		f 3 504 -318 318 
		mu 0 3 24 186 183 
		f 4 34 37 102 -37 
		mu 0 4 39 33 71 72 
		f 4 -27 39 100 -38 
		mu 0 4 33 32 70 71 
		f 4 24 41 105 -40 
		mu 0 4 32 171 73 70 
		f 4 35 36 104 -42 
		mu 0 4 171 39 72 73 
		f 3 -46 -290 291 
		mu 0 3 44 26 174 
		f 3 22 83 -45 
		mu 0 3 27 69 44 
		f 3 47 286 -86 
		mu 0 3 29 45 172 
		f 3 84 -24 45 
		mu 0 3 44 63 26 
		f 4 -51 93 51 -95 
		mu 0 4 47 0 20 48 
		f 4 71 -55 -53 18 
		mu 0 4 59 50 49 22 
		f 4 -1 50 55 -54 
		mu 0 4 23 0 47 50 
		f 4 -57 94 57 -96 
		mu 0 4 51 47 48 52 
		f 4 59 -61 -59 54 
		mu 0 4 50 54 53 49 
		f 4 -56 56 61 -60 
		mu 0 4 50 47 51 54 
		f 4 -63 95 63 -97 
		mu 0 4 55 51 52 56 
		f 4 66 -68 -65 60 
		mu 0 4 54 58 57 53 
		f 4 -62 62 68 -67 
		mu 0 4 54 51 55 58 
		f 4 -21 -70 290 289 
		mu 0 4 26 23 59 174 
		f 3 -72 69 53 
		mu 0 3 50 59 23 
		f 3 -98 75 -78 
		mu 0 3 60 61 62 
		f 4 97 -77 -19 74 
		mu 0 4 61 60 59 22 
		f 4 -73 76 77 -74 
		mu 0 4 46 59 60 62 
		f 4 276 -80 78 -275 
		mu 0 4 159 64 63 29 
		f 3 502 321 292 
		mu 0 3 160 273 1 
		f 4 -314 -324 305 324 
		mu 0 4 170 65 30 168 
		f 3 500 498 327 
		mu 0 3 180 267 187 
		f 5 -83 80 273 272 -82 
		mu 0 5 69 68 157 158 28 
		f 3 -84 81 46 
		mu 0 3 44 69 28 
		f 3 -79 -85 -48 
		mu 0 3 29 63 44 
		f 4 -101 98 40 -100 
		mu 0 4 71 70 42 41 
		f 4 -103 99 -39 -102 
		mu 0 4 72 71 41 40 
		f 4 -105 101 -44 -104 
		mu 0 4 73 72 40 43 
		f 4 -106 103 -43 -99 
		mu 0 4 70 73 43 42 
		f 4 -350 351 353 -355 
		mu 0 4 193 194 195 196 
		f 4 -91 106 122 -109 
		mu 0 4 17 12 83 79 
		f 4 -357 358 359 -352 
		mu 0 4 194 197 198 195 
		f 4 89 112 117 -111 
		mu 0 4 11 16 80 81 
		f 4 -118 115 508 -117 
		mu 0 4 81 80 268 269 
		f 4 -120 116 510 -119 
		mu 0 4 82 81 269 270 
		f 4 -122 118 512 -121 
		mu 0 4 83 82 270 271 
		f 4 -123 120 514 -115 
		mu 0 4 79 83 271 272 
		f 4 -32 123 125 -125 
		mu 0 4 12 37 85 84 
		f 4 121 127 -129 -127 
		mu 0 4 82 83 87 86 
		f 4 -107 124 129 -128 
		mu 0 4 83 12 84 87 
		f 4 -11 130 131 -124 
		mu 0 4 37 11 88 85 
		f 4 110 132 -134 -131 
		mu 0 4 11 81 89 88 
		f 4 119 126 -135 -133 
		mu 0 4 81 82 86 89 
		f 4 -126 135 415 -137 
		mu 0 4 84 85 229 224 
		f 4 128 139 408 -139 
		mu 0 4 86 87 225 226 
		f 4 -130 136 406 -140 
		mu 0 4 87 84 224 225 
		f 4 -132 142 414 -136 
		mu 0 4 85 88 228 229 
		f 4 133 144 412 -143 
		mu 0 4 88 89 227 228 
		f 4 134 138 410 -145 
		mu 0 4 89 86 226 227 
		f 4 -108 147 487 -149 
		mu 0 4 74 75 260 261 
		f 4 -110 148 489 -151 
		mu 0 4 76 74 261 262 
		f 4 -112 153 485 -148 
		mu 0 4 75 77 259 260 
		f 4 113 155 483 -154 
		mu 0 4 77 78 258 259 
		f 4 -150 158 160 -160 
		mu 0 4 96 97 102 101 
		f 4 151 162 -164 -162 
		mu 0 4 38 98 104 103 
		f 4 -153 159 164 -163 
		mu 0 4 98 96 101 104 
		f 4 -155 165 166 -159 
		mu 0 4 97 99 105 102 
		f 4 156 167 -169 -166 
		mu 0 4 99 100 106 105 
		f 4 157 161 -170 -168 
		mu 0 4 100 38 103 106 
		f 4 -161 170 427 -172 
		mu 0 4 101 102 235 230 
		f 4 163 175 420 -174 
		mu 0 4 103 104 231 232 
		f 4 -165 171 418 -176 
		mu 0 4 104 101 230 231 
		f 4 -167 177 426 -171 
		mu 0 4 102 105 234 235 
		f 4 168 179 424 -178 
		mu 0 4 105 106 233 234 
		f 4 169 173 422 -180 
		mu 0 4 106 103 232 233 
		f 4 -173 182 184 -184 
		mu 0 4 120 107 112 111 
		f 4 174 185 -187 -183 
		mu 0 4 107 108 113 112 
		f 4 176 187 -189 -186 
		mu 0 4 108 115 114 113 
		f 4 -200 183 189 -188 
		mu 0 4 115 120 111 114 
		f 3 -192 -177 -191 
		mu 0 3 116 115 108 
		f 4 -194 190 -182 -193 
		mu 0 4 117 116 108 110 
		f 4 -196 192 -181 -195 
		mu 0 4 118 117 110 109 
		f 4 -198 194 178 -197 
		mu 0 4 119 118 109 107 
		f 3 -199 196 172 
		mu 0 3 120 119 107 
		f 4 -203 200 271 -202 
		mu 0 4 122 121 156 151 
		f 4 -205 201 262 -204 
		mu 0 4 123 122 151 152 
		f 4 -207 203 264 -206 
		mu 0 4 124 123 152 153 
		f 4 -209 205 266 -208 
		mu 0 4 125 124 153 154 
		f 4 -211 207 268 -210 
		mu 0 4 126 125 154 155 
		f 4 -212 209 270 -201 
		mu 0 4 121 126 155 156 
		f 4 -233 234 236 -238 
		mu 0 4 139 140 141 142 
		f 4 -240 237 241 -243 
		mu 0 4 143 139 142 144 
		f 4 -245 242 246 -248 
		mu 0 4 145 143 144 146 
		f 4 -250 247 251 -253 
		mu 0 4 147 145 146 148 
		f 4 -255 252 256 -258 
		mu 0 4 149 147 148 150 
		f 4 -259 257 259 -235 
		mu 0 4 140 149 150 141 
		f 4 -221 218 430 -220 
		mu 0 4 134 133 236 237 
		f 4 -223 219 432 -222 
		mu 0 4 135 134 237 238 
		f 4 -225 221 434 -224 
		mu 0 4 136 135 238 239 
		f 4 -227 223 436 -226 
		mu 0 4 137 136 239 240 
		f 4 -229 225 438 -228 
		mu 0 4 138 137 240 241 
		f 4 -230 227 439 -219 
		mu 0 4 133 138 241 236 
		f 4 -213 230 232 -232 
		mu 0 4 128 127 140 139 
		f 4 220 235 -237 -234 
		mu 0 4 133 134 142 141 
		f 4 -214 231 239 -239 
		mu 0 4 129 128 139 143 
		f 4 222 240 -242 -236 
		mu 0 4 134 135 144 142 
		f 4 -215 238 244 -244 
		mu 0 4 130 129 143 145 
		f 4 224 245 -247 -241 
		mu 0 4 135 136 146 144 
		f 4 -216 243 249 -249 
		mu 0 4 131 130 145 147 
		f 4 226 250 -252 -246 
		mu 0 4 136 137 148 146 
		f 4 -217 248 254 -254 
		mu 0 4 132 131 147 149 
		f 4 228 255 -257 -251 
		mu 0 4 137 138 150 148 
		f 4 -218 253 258 -231 
		mu 0 4 127 132 149 140 
		f 4 229 233 -260 -256 
		mu 0 4 138 133 141 150 
		f 4 -263 260 214 -262 
		mu 0 4 152 151 129 130 
		f 4 -265 261 215 -264 
		mu 0 4 153 152 130 131 
		f 4 -267 263 216 -266 
		mu 0 4 154 153 131 132 
		f 4 -269 265 217 -268 
		mu 0 4 155 154 132 127 
		f 4 -271 267 212 -270 
		mu 0 4 156 155 127 128 
		f 4 -272 269 213 -261 
		mu 0 4 151 156 128 129 
		f 3 -331 331 -337 
		mu 0 3 188 189 175 
		f 3 501 -336 491 
		mu 0 3 263 190 188 
		f 3 -322 -338 -334 
		mu 0 3 1 191 190 
		f 3 -340 320 340 
		mu 0 3 192 191 162 
		f 4 -342 -493 495 494 
		mu 0 4 31 161 264 265 
		f 4 -344 -323 341 323 
		mu 0 4 65 162 160 30 
		f 3 505 -341 343 
		mu 0 3 65 192 162 
		f 4 25 -281 278 26 
		mu 0 4 33 164 163 32 
		f 5 -283 -26 28 27 -282 
		mu 0 5 166 165 34 35 8 
		f 4 -285 281 92 16 
		mu 0 4 167 166 8 19 
		f 4 -346 -497 499 -327 
		mu 0 4 2 169 266 267 
		f 4 -348 -325 345 325 
		mu 0 4 66 170 168 6 
		f 3 503 347 302 
		mu 0 3 24 170 66 
		f 3 -287 -47 -286 
		mu 0 3 172 45 28 
		f 4 -289 285 -273 275 
		mu 0 4 173 172 28 158 
		f 3 -291 -71 21 
		mu 0 3 174 59 27 
		f 3 -292 -22 44 
		mu 0 3 44 174 27 
		f 4 -87 296 301 -300 
		mu 0 4 13 3 179 178 
		f 4 -25 309 311 -311 
		mu 0 4 171 32 184 183 
		f 4 33 315 -317 -297 
		mu 0 4 5 39 186 185 
		f 4 -36 310 317 -316 
		mu 0 4 39 171 183 186 
		f 4 -274 328 330 -330 
		mu 0 4 158 157 189 188 
		f 4 -288 334 335 -333 
		mu 0 4 159 173 188 190 
		f 4 -277 332 337 -320 
		mu 0 4 64 159 190 191 
		f 4 -278 319 339 -339 
		mu 0 4 163 64 191 192 
		f 4 -279 338 344 -310 
		mu 0 4 32 163 192 184 
		f 3 -276 329 -335 
		mu 0 3 173 158 188 
		f 3 453 452 349 
		mu 0 3 193 247 194 
		f 3 457 -354 -456 
		mu 0 3 248 196 195 
		f 4 -368 369 371 -373 
		mu 0 4 202 203 204 205 
		f 3 454 356 -453 
		mu 0 3 247 197 194 
		f 4 447 446 -359 -445 
		mu 0 4 243 244 198 197 
		f 3 456 455 -360 
		mu 0 3 198 248 195 
		f 4 -142 360 362 -362 
		mu 0 4 93 90 200 199 
		f 4 354 -451 -365 441 
		mu 0 4 193 196 246 201 
		f 4 -363 458 461 -367 
		mu 0 4 199 200 249 250 
		f 4 363 368 466 -459 
		mu 0 4 200 201 252 249 
		f 4 364 370 465 -369 
		mu 0 4 201 246 251 252 
		f 4 -366 366 463 -371 
		mu 0 4 246 199 250 251 
		f 4 -375 373 402 -468 
		mu 0 4 207 206 222 223 
		f 4 -376 467 403 -469 
		mu 0 4 208 207 223 218 
		f 4 -377 468 394 -470 
		mu 0 4 209 208 218 219 
		f 4 -378 469 396 -471 
		mu 0 4 210 209 219 220 
		f 4 -379 470 398 -472 
		mu 0 4 211 210 220 221 
		f 4 -374 -380 471 400 
		mu 0 4 222 206 211 221 
		f 4 -383 380 374 -382 
		mu 0 4 213 212 206 207 
		f 4 -385 381 375 -384 
		mu 0 4 214 213 207 208 
		f 4 -387 383 376 -386 
		mu 0 4 215 214 208 209 
		f 4 -389 385 377 -388 
		mu 0 4 216 215 209 210 
		f 4 -391 387 378 -390 
		mu 0 4 217 216 210 211 
		f 4 -392 389 379 -381 
		mu 0 4 212 217 211 206 
		f 4 -395 392 -147 -394 
		mu 0 4 219 218 92 95 
		f 4 -397 393 -146 -396 
		mu 0 4 220 219 95 94 
		f 4 -399 395 143 -398 
		mu 0 4 221 220 94 91 
		f 4 -401 397 137 -400 
		mu 0 4 222 221 91 90 
		f 4 -403 399 141 -402 
		mu 0 4 223 222 90 93 
		f 4 -404 401 -141 -393 
		mu 0 4 218 223 93 92 
		f 4 -407 404 382 -406 
		mu 0 4 225 224 212 213 
		f 4 -409 405 384 -408 
		mu 0 4 226 225 213 214 
		f 4 -411 407 386 -410 
		mu 0 4 227 226 214 215 
		f 4 -413 409 388 -412 
		mu 0 4 228 227 215 216 
		f 4 -415 411 390 -414 
		mu 0 4 229 228 216 217 
		f 4 -416 413 391 -405 
		mu 0 4 224 229 217 212 
		f 4 -419 416 211 -418 
		mu 0 4 231 230 126 121 
		f 4 -421 417 202 -420 
		mu 0 4 232 231 121 122 
		f 4 -423 419 204 -422 
		mu 0 4 233 232 122 123 
		f 4 -425 421 206 -424 
		mu 0 4 234 233 123 124 
		f 4 -427 423 208 -426 
		mu 0 4 235 234 124 125 
		f 4 -428 425 210 -417 
		mu 0 4 230 235 125 126 
		f 4 -431 428 199 -430 
		mu 0 4 237 236 120 115 
		f 4 -433 429 191 -432 
		mu 0 4 238 237 115 116 
		f 4 -435 431 193 -434 
		mu 0 4 239 238 116 117 
		f 4 -437 433 195 -436 
		mu 0 4 240 239 117 118 
		f 4 -439 435 197 -438 
		mu 0 4 241 240 118 119 
		f 4 -440 437 198 -429 
		mu 0 4 236 241 119 120 
		f 3 440 -364 -361 
		mu 0 3 90 201 200 
		f 4 -138 348 -444 -441 
		mu 0 4 90 91 242 201 
		f 4 -144 355 -446 -349 
		mu 0 4 91 94 243 242 
		f 4 145 357 -448 -356 
		mu 0 4 94 95 244 243 
		f 4 146 350 -450 -358 
		mu 0 4 95 92 245 244 
		f 4 140 352 -452 -351 
		mu 0 4 92 93 246 245 
		f 3 -353 361 365 
		mu 0 3 246 93 199 
		f 4 443 442 -454 -442 
		mu 0 4 201 242 247 193 
		f 4 445 444 -455 -443 
		mu 0 4 242 243 197 247 
		f 4 449 448 -457 -447 
		mu 0 4 244 245 248 198 
		f 4 451 450 -458 -449 
		mu 0 4 245 246 196 248 
		f 4 -462 459 367 -461 
		mu 0 4 250 249 203 202 
		f 4 -464 460 372 -463 
		mu 0 4 251 250 202 205 
		f 4 -466 462 -372 -465 
		mu 0 4 252 251 205 204 
		f 4 -467 464 -370 -460 
		mu 0 4 249 252 204 203 
		f 4 -475 472 -114 -474 
		mu 0 4 254 253 78 77 
		f 4 -477 473 111 -476 
		mu 0 4 255 254 77 75 
		f 4 -479 475 107 -478 
		mu 0 4 256 255 75 74 
		f 4 -481 477 109 -480 
		mu 0 4 257 256 74 76 
		f 4 -484 481 -157 -483 
		mu 0 4 259 258 100 99 
		f 4 -486 482 154 -485 
		mu 0 4 260 259 99 97 
		f 4 -488 484 149 -487 
		mu 0 4 261 260 97 96 
		f 4 -490 486 152 -489 
		mu 0 4 262 261 96 98 
		f 3 -492 336 -491 
		mu 0 3 263 188 175 
		f 4 -494 490 294 295 
		mu 0 4 264 263 175 176 
		f 4 -496 -296 342 306 
		mu 0 4 265 264 176 181 
		f 4 -498 -307 307 308 
		mu 0 4 266 265 181 182 
		f 4 -500 -309 346 -499 
		mu 0 4 267 266 182 187 
		f 4 -304 -326 326 -501 
		mu 0 4 180 67 2 267 
		f 3 333 -502 -294 
		mu 0 3 1 190 263 
		f 3 -321 -503 322 
		mu 0 3 162 274 160 
		f 3 -319 -315 -504 
		mu 0 3 24 183 170 
		f 3 297 316 -505 
		mu 0 3 24 185 186 
		f 3 -345 -506 312 
		mu 0 3 184 192 65 
		f 4 -509 506 474 -508 
		mu 0 4 269 268 253 254 
		f 4 -511 507 476 -510 
		mu 0 4 270 269 254 255 
		f 4 -513 509 478 -512 
		mu 0 4 271 270 255 256 
		f 4 -515 511 480 -514 
		mu 0 4 272 271 256 257 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode mesh -n "niabiMeshShapeOrig" -p "niabiMesh";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 814 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.81782687 0.7573868 0.31594384 
		0.41006786 0.83906507 0.70496076 0.86087322 0.7471478 0.83086324 0.88351309 0.83513784 
		0.86749434 0.87674427 0.86395121 0.87689757 0.88593686 0.14057267 0.58314306 0.67232335 
		0.2824654 0.15887678 0.61123294 0.14179885 0.60916692 0.11503327 0.38372642 0.13712358 
		0.34534231 0.16358876 0.36029145 0.16980517 0.42982852 0.85402203 0.96491683 0.82515264 
		0.90493965 0.87728524 0.91060042 0.8773284 0.96349823 0.094418526 0.34042531 0.086860538 
		0.2775577 0.11519814 0.27764422 0.73855048 0.96187401 0.73578352 0.82670605 0.03229022 
		0.32969165 0.74158937 0.92178929 0.74166065 0.90238893 0.75577396 0.90231645 0.7549991 
		0.94167101 0.74056095 0.9416157 0.6246686 0.43747169 0.71658272 0.96023643 0.71583623 
		0.82847023 0.56318915 0.44282359 0.71871096 0.92175031 0.90375328 0.077746123 0.83274031 
		0.075195104 0.83278155 0.050135702 0.71826166 0.94101262 0.64800811 0.46333647 0.21785165 
		0.3730613 0.83692789 0.84759057 0.87659872 0.84284401 0.19282699 0.32561427 0.30632234 
		0.094802499 0.83827853 0.80485582 0.82511222 0.78093433 0.86630893 0.76882416 0.87136126 
		0.79261875 0.29001546 0.06220156 0.29596788 0.056621253 0.35139698 0.043585718 0.30151761 
		0.096520066 0.40827864 0.018207252 0.13278115 0.533135 0.12669528 0.51189882 0.11910176 
		0.48798323 0.13595009 0.66089004 0.79744649 0.89199185 0.79446912 0.84335983 0.26971143 
		0.041826546 0.27229619 0.056025624 0.13500667 0.48462158 0.29753339 0.10475019 0.28943592 
		0.10100436 0.1507346 0.3040621 0.15097076 0.27770329 0.17452228 0.30372429 0.17541409 
		0.27770746 0.18200135 0.28932369 0.18380356 0.27772969 0.19110739 0.27773607 0.20227456 
		0.27765352 0.77297163 0.76994908 0.19631481 0.49161032 0.87229705 0.81489813 0.87875104 
		0.81670481 0.35632032 0.49563107 0.38180298 0.50024343 0.034508824 0.14564857 0.051411152 
		0.12106873 0.887501 0.11486149 0.83265615 0.1272313 0.39475566 0.4776172 0.013261795 
		0.1172677 0.56329572 0.39419365 0.62835658 0.40547401 0.56333494 0.3211143 0.61600387 
		0.32712799 0.93678463 0.12626183 0.91843271 0.18281078 0.88342273 0.18213433 0.8325876 
		0.1896047 0.3443327 0.52870429 0.36043072 0.5283972 0.3603735 0.53644574 0.34487057 
		0.53670919 0.32866573 0.52737486 0.3352313 0.52702224 0.33433628 0.53504336 0.32862043 
		0.53530681 0.37235689 0.52870429 0.37186289 0.53670919 0.31930542 0.52707851 0.32024956 
		0.53504336 0.88402462 0.26623577 0.92219138 0.25935388 0.95842743 0.33421493 0.90454006 
		0.34064883 0.83258533 0.2665894 0.83239269 0.34050059 0.61310565 0.23472875 0.62353909 
		0.15077013 0.56308234 0.23399419 0.56251895 0.14897525 0.92025447 0.47874212 0.99152386 
		0.47276378 0.26479089 0.81529814 0.24634117 0.8113085 0.56079811 0.61013317 0.62506562 
		0.60965502 0.22930431 0.80779445 0.21116763 0.80642623 0.64116776 0.030496776 0.28478622 
		0.81669879 0.49128002 0.61093044 0.18920964 0.81185001 0.26549649 0.82163107 0.24422473 
		0.81833911 0.23240262 0.81692642 0.2102319 0.81729883 0.28545475 0.82252342 0.30644512 
		0.81813759 0.1016798 0.57546926 0.10317862 0.61732364 0.10046196 0.65314186 0.08584404 
		0.49994904 0.091762543 0.52286333 0.096771479 0.54409528 0.20615911 0.91980177 0.23243171 
		0.91683882 0.23220569 0.92906946 0.20520586 0.93123341 0.31523067 0.91559333 0.31518149 
		0.92474192 0.29034781 0.91836065 0.29216349 0.9297179 0.27151263 0.91885287 0.27311909 
		0.93074799 0.24823391 0.91680843 0.24952477 0.92891061 0.2262702 0.95812237 0.25459188 
		0.95784527 0.25866377 0.98771137 0.95589238 0.57160407 0.20016497 0.9558776 0.91900474 
		0.55832338 0.32453108 0.94394654 0.89164901 0.57282835 0.29919404 0.95534152 0.89173287 
		0.61187136 0.27936053 0.95678461 0.91622221 0.62873155 0.93904239 0.58040196 0.93885028 
		0.60179734 0.091914058 0.57695085 0.092977166 0.61623412 0.92182678 0.57170939 0.09264791 
		0.65153259 0.90984988 0.58456165 0.07942915 0.50265831 0.91040462 0.59930187 0.084589481 
		0.52489501 0.92111242 0.60903645 0.089506388 0.54640698 0.22995675 0.94954491 0.25183713 
		0.94897318 0.20192343 0.94944662 0.31877136 0.93985534 0.29668498 0.94812185 0.27770889 
		0.94999939 0.27189159 0.38164318 0.29497564 0.33485752 0.84599733 0.82463288 0.238426 
		0.3633976 0.25001094 0.33487439 0.23484772 0.27744877 0.31433046 0.27743509 0.37931424 
		0.47897691 0.032230496 0.11781108 0.071008801 0.10428637 0.32387215 0.46966714 0.32795149 
		0.47218758 0.32769912 0.47386092 0.39359158 0.44396511 0.40304083 0.44390976 0.33636379 
		0.65928006 0.34822148 0.41145459 0.34097141 0.44245899 0.052858353 0.07530994 0.051168799 
		0.094030015 0.34650558 0.46407467 0.33018988 0.45661247 0.066446424 0.086650893 0.33752722 
		0.46583211 0.33753973 0.46947333 0.34563971 0.6606853 0.34607697 0.72317004 0.3378396 
		0.72171283 0.32866716 0.65927935 0.32934809 0.72151399 0.31844091 0.65928006 0.31681633 
		0.72171283 0.37078905 0.6606853 0.37011242 0.72317004 0.35917187 0.66068959 0.35851097 
		0.72337055 0.33696461 0.64775586 0.34497452 0.64918411 0.32950735 0.64777994 0.31870556 
		0.64775586 0.35767889 0.64916003 0.31462336 0.77832031 0.33111382 0.77797127 0.33147478 
		0.78719616 0.31415367 0.78756428 0.35744095 0.77996016 0.3573761 0.78920174 0.34635735 
		0.77961111 0.34648609 0.78883314 0.33967161 0.77832031 0.33999395 0.78756428 0.34518099 
		0.59187168 0.3356843 0.59018892 0.32897282 0.59034771 0.31939507 0.59018892 0.37121058 
		0.59187168 0.36892074 0.43323106 0.37234026 0.45566329 0.38788313 0.42542106 0.01352632 
		0.064612269 0.030471087 0.070627488 0.031158686 0.09400323 0.61731887 0.25153726 
		0.56312513 0.24868226 0.91797733 0.24958277 0.88068819 0.25443375 0.83239436 0.25708264 
		0.56206179 0.077266395;
	setAttr ".uvst[0].uvsp[250:499]" 0.63364601 0.081608355 0.98199487 0.4123888 
		0.91761744 0.41706431 0.83232856 0.42315519 0.39028811 0.2767224 0.88378036 0.73869812 
		0.88303041 0.76672256 0.8805598 0.79418266 0.56315517 0.2585879 0.61641216 0.2616753 
		0.91783011 0.24237311 0.87934542 0.24534702 0.83264256 0.24766612 0.68104535 0.97796994 
		0.66389102 0.98823768 0.6465289 0.9896155 0.66438812 0.98112124 0.62650138 0.97098452 
		0.64642376 0.9817189 0.64674383 0.95209402 0.62790114 0.95059884 0.62923235 0.94569474 
		0.64596361 0.94500142 0.66482276 0.95161575 0.66540068 0.94486707 0.66673201 0.93708688 
		0.68712527 0.93931133 0.64531475 0.93721622 0.61340195 0.89373195 0.64286643 0.89675385 
		0.66955131 0.89551431 0.61960691 0.84143597 0.66691726 0.84649926 0.66681713 0.83959836 
		0.68596226 0.83626086 0.64418191 0.84832567 0.64387542 0.84073383 0.62057811 0.83274847 
		0.64422208 0.83718532 0.66640013 0.83555651 0.66635758 0.80935168 0.62145036 0.8048476 
		0.64354795 0.81119508 0.63001889 0.74724156 0.65932626 0.74653512 0.6515215 0.71741968 
		0.64702147 0.74693745 0.63387626 0.77139509 0.66138095 0.77186006 0.64634603 0.77268958 
		0.20456426 0.27754119 0.94071901 0.75808311 0.90379477 0.74519145 0.92554736 0.70656097 
		0.31471765 0.14378119 0.92295432 0.8838886 0.91849697 0.86714292 0.18459988 0.66672808 
		0.1831224 0.69266301 0.16609883 0.69471401 0.52055871 0.78982311 0.11512244 0.17183065 
		0.1692903 0.1261394 0.16335595 0.19509995 0.13705921 0.2100822 0.90083075 0.96600139 
		0.92965567 0.90532988 0.094531775 0.21485093 0.73832744 0.84431601 0.032663703 0.22522041 
		0.74148518 0.8831265 0.74036735 0.8637408 0.75435036 0.86350882 0.50186467 0.4371323 
		0.71742922 0.84580028 0.71893638 0.88306272 0.76165617 0.077602983 0.74075341 0.043737203 
		0.71877068 0.86421764 0.21717739 0.18140478 0.91633439 0.84860754 0.19261576 0.22941579 
		0.30056685 0.12104195 0.91595697 0.80400562 0.89300871 0.79164672 0.89846301 0.7685138 
		0.93140101 0.7810204 0.23826182 0.044937104 0.22138917 0.032986864 0.22306812 0.029014096 
		0.41294253 0.083909035 0.083807707 0.10660648 0.19279051 0.6166476 0.18869543 0.74442816 
		0.19218779 0.77391458 0.1990993 0.59552759 0.95724428 0.89248037 0.96008885 0.84403801 
		0.24075413 0.073271841 0.25457716 0.080799386 0.38984001 0.10593499 0.13497996 0.072281033 
		0.20935202 0.037249558 0.15065593 0.2513023 0.17438209 0.25159127 0.18195105 0.26612246 
		0.24304092 0.11160246 0.19484413 0.065146208 0.88438272 0.81556618 0.27362633 0.46727073 
		0.27013731 0.46462801 0.058622599 0.072395176 0.29617691 0.47037831 0.7778573 0.11477554 
		0.093991995 0.075656317 0.30206227 0.49259993 0.49835885 0.40524298 0.51076591 0.32723475 
		0.46839619 0.37678593 0.74686706 0.18262172 0.78185105 0.18201399 0.43650413 0.52942944 
		0.43568897 0.53742552 0.42393398 0.53737068 0.42390203 0.52935266 0.45426416 0.52711058 
		0.45430422 0.53509951 0.44740248 0.53504467 0.44651031 0.52702212 0.4144485 0.53742552 
		0.41365385 0.52942944 0.40149498 0.53504467 0.40240836 0.52703619 0.78104854 0.26604694 
		0.76014447 0.34136844 0.70674264 0.33291602 0.46835339 0.25230813 0.50156724 0.15013576 
		0.51308036 0.23526996 0.74432766 0.47827023 0.41229403 0.98768151 0.43112469 0.982324 
		0.4228431 0.038038552 0.3773061 0.9900831 0.39483714 0.99147367 0.45059812 0.9812814 
		0.48253667 0.031794965 0.47081709 0.98630333 0.4097501 0.98016918 0.43148696 0.97634077 
		0.37646949 0.98074985 0.39788747 0.98201871 0.45101774 0.97564834 0.47151744 0.97912472 
		0.2234807 0.6591683 0.22178674 0.7011252 0.22429395 0.7369678 0.22856975 0.76565093 
		0.23379993 0.60672754 0.22863555 0.62778407 0.37182105 0.87945968 0.37072003 0.86799061 
		0.39804614 0.86984313 0.39827132 0.88222581 0.35067225 0.87877405 0.48139846 0.87492204 
		0.45632994 0.88095522 0.4582876 0.86965168 0.43737578 0.8802312 0.43906415 0.86814415 
		0.41411269 0.88216138 0.41485512 0.8696723 0.39092135 0.8406955 0.98777318 0.68778139 
		0.98579687 0.64192474 0.42033422 0.84078461 0.36502254 0.84347862 0.95137364 0.70186651 
		0.34304178 0.84484541 0.92372108 0.68823391 0.46593261 0.8435694 0.92255986 0.6491819 
		0.44534123 0.84200835 0.94665849 0.63154626 0.97076678 0.67941368 0.23197961 0.70005614 
		0.23333836 0.66081947 0.97003341 0.65806442 0.95384169 0.68845904 0.23197293 0.73536873 
		0.94154191 0.6759634 0.24625802 0.58668947 0.94162327 0.66119987 0.24101138 0.60884941 
		0.95205253 0.65117478 0.23595786 0.63037133 0.39498615 0.84922683 0.41748846 0.84968555 
		0.36687434 0.8498022 0.34784675 0.85091519 0.46328628 0.85086828 0.44354689 0.84878039 
		0.27102745 0.17293379 0.29455709 0.21959412 0.90746284 0.82315028 0.25004035 0.21979973 
		0.23779498 0.1910004 0.28879142 0.48787272 0.083564043 0.05978924 0.23120403 0.48359141 
		0.076323867 0.026518889 0.23770928 0.48386192 0.23369622 0.48484242 0.29584026 0.52294487 
		0.12193429 0.062288657 0.44721413 0.65930128 0.10874701 0.019858897 0.24303269 0.51516283 
		0.44701433 0.72174978 0.25404716 0.49443913 0.093793869 0.031175904 0.091951251 0.014336184 
		0.23607111 0.49803662 0.24515724 0.49092376 0.24549007 0.48745379 0.43922234 0.72366691 
		0.43799925 0.66125226 0.45472383 0.72140026 0.40146399 0.65930128 0.40159607 0.72174978 
		0.4127202 0.66125226 0.41164017 0.72366691 0.42439127 0.66144681 0.42494941 0.7240169 
		0.44642138 0.64777517 0.43839788 0.6497643 0.40142107 0.64777517 0.4128902 0.6497643 
		0.42587709 0.64993536 0.4012866 0.77840519 0.40129948 0.78765154 0.45438766 0.78719425 
		0.28956819 0.56827414 0.14564347 0.024313234 0.40980387 0.7800107 0.27814364 0.56095529 
		0.40962672 0.78922558 0.26206303 0.55536592 0.42744088 0.78045034 0.42784262 0.78968287;
	setAttr ".uvst[0].uvsp[500:749]" 0.44098186 0.7800107 0.44113111 0.78922558 
		0.44699478 0.77840519 0.44696498 0.78765154 0.44686985 0.59017164 0.43695974 0.59254867 
		0.27739382 0.50835264 0.26993394 0.53000253 0.28800607 0.54035318 0.13865054 0.04756552 
		0.10434484 0.048156388 0.12456405 0.036369421 0.50907338 0.25204527 0.47183454 0.26022273 
		0.78441894 0.25429577 0.4908756 0.085831225 0.68354249 0.40844357 0.74705839 0.41667914 
		0.5100745 0.26212484 0.747334 0.24212164 0.78575122 0.24519277 0.58660281 0.98218292 
		0.55429935 0.99029392 0.57007372 0.99121588 0.58817327 0.97736639 0.5538497 0.98435825 
		0.5700295 0.98472553 0.57078505 0.95859355 0.57161403 0.95145929 0.58948481 0.95285779 
		0.53480327 0.95889634 0.5522629 0.9581266 0.55189681 0.95120424 0.59594643 0.94523811 
		0.55070555 0.94288653 0.57198906 0.94322997 0.57498038 0.90105182 0.60493875 0.89639884 
		0.54789329 0.89949912 0.52969146 0.84544164 0.59399879 0.84146684 0.55185032 0.84466952 
		0.55138719 0.85141009 0.57319677 0.85325539 0.57301521 0.84578627 0.57275867 0.84235519 
		0.59618092 0.83712918 0.5523113 0.84081215 0.59481657 0.80978912 0.55263507 0.81488931 
		0.57334888 0.81672764 0.54053044 0.7489444 0.56650412 0.71925318 0.55809021 0.74966902 
		0.57143807 0.75009751 0.54416013 0.77632827 0.55627131 0.7772333 0.57167029 0.77806729 
		0.75205153 0.8430506 0.014139533 0.18576317 0.75577348 0.88309479 0.033858538 0.27741244 
		0.74948829 0.98354238 0.75607449 0.92164195 0.752994 0.96303558 0.83913434 0.98286343 
		0.53152394 0.47012109 0.50740504 0.4906317 0.80262327 0.048706084 0.71897572 0.90235281 
		0.5631038 0.4696312 0.86295128 0.04879567 0.59468603 0.47035682 0.8865943 0.029488176 
		0.73594934 0.98054063 0.71475881 0.97862184 0.74847537 0.82374954 0.6438936 0.41128546 
		0.94092357 0.10931545 0.64525414 0.43795758 0.65606344 0.45908678 0.92094016 0.073099822 
		0.92237818 0.1005944 0.39124769 0.39847302 0.029525876 0.04636547 0.38029033 0.40494895 
		0.36485165 0.40864462 0.35912991 0.59171289 0.042519808 0.046370268 0.48284662 0.41093647 
		0.46592391 0.39241618 0.48132932 0.43747795 0.73283768 0.048685998 0.74441123 0.072906613 
		0.74293756 0.10048562 0.45419526 0.59011084 0.23188615 0.55096972 0.40160227 0.59017164 
		0.24463177 0.55011988 0.41380739 0.59254867 0.42462444 0.59260947 0.47840881 0.4627077 
		0.4704386 0.45839113 0.77904224 0.029258817 0.92467105 0.044073641 0.93253446 0.049017102 
		0.61872375 0.49112332 0.47134292 0.26597852 0.74716139 0.24933338 0.42674625 0.099497736 
		0.4849354 0.32156944 0.44328105 0.17477018 0.74291515 0.2590726 0.72856784 0.12616825 
		0.72440898 0.10927594 0.65534079 0.26529139 0.65478969 0.25945294 0.69815481 0.094294608 
		0.64201081 0.32139331 0.68262064 0.17221814 0.65822923 0.25138831 0.65852964 0.3769753 
		0.66098845 0.39271051 0.50939184 0.54862249 0.56174183 0.028968871 0.55676299 0.52751291 
		0.67315817 0.47222406 0.60651332 0.54679549 0.83228445 0.48764551 0.51030928 0.67215943 
		0.55771667 0.69246858 0.70114005 0.035869539 0.6071803 0.67281002 0.54622966 0.62730992 
		0.55953699 0.62284756 0.5473401 0.64571208 0.55870312 0.64898324 0.56884283 0.64220506 
		0.57007343 0.62876552 0.54457957 0.59315455 0.55900699 0.59756422 0.54685599 0.57470644 
		0.55826205 0.57029641 0.56858164 0.57735145 0.56907207 0.59132373 0.28459001 0.98987836 
		0.95496511 0.61754376 0.30756533 0.98933184 0.16430163 0.9858759 0.1933828 0.98729551 
		0.22651744 0.98718888 0.45118916 0.80827236 0.42428148 0.81006324 0.47472715 0.80928606 
		0.50999081 0.82731408 0.35769725 0.81324327 0.39044785 0.81195301 0.15210092 0.036803775 
		0.29693961 0.54869163 0.087711692 0.028011739 0.23786879 0.48248702 0.2304976 0.49766317 
		0.074581742 0.019800983 0.30466866 0.52425122 0.24803805 0.48769373 0.23080778 0.51485515 
		0.070726037 0.045180328 0.13875365 0.013300985 0.30662727 0.49377164 0.29755449 0.46764413 
		0.39757651 0.41784358 0.0098901987 0.086548999 0.057078123 0.097490788 0.064387083 
		0.10636886 0.32470006 0.45536959 0.32075042 0.47007328 0.33929521 0.46856213 0.3522101 
		0.49733859 0.39995044 0.47754449 0.3302204 0.44011495 0.38236767 0.50355911 0.015517235 
		0.04751002 0.33711499 0.40906379 0.29233873 0.11361906 0.26564908 0.078409553 0.083174944 
		0.44948506 0.39339119 0.047084808 0.20224905 0.019987732 0.19907594 0.027987748 0.3833046 
		0.054700591 0.21755946 0.069957882 0.46602154 0.52703619 0.46507692 0.65930128 0.45488906 
		0.65910769 0.46503401 0.64777517 0.46491241 0.78765154 0.46489954 0.77840519 0.46510792 
		0.53504467 0.45396543 0.64760375 0.46521521 0.59017164 0.45441771 0.77796602 0.46520901 
		0.72174978 0.38297033 0.52707851 0.38391447 0.53504336 0.38210583 0.65928006 0.38048172 
		0.72171283 0.38237047 0.64775586 0.37828827 0.77832031 0.37781906 0.78756428 0.36916924 
		0.78883314 0.38305998 0.59018892 0.37091684 0.64918411 0.36935759 0.77961111 0.91390347 
		0.90338206 0.90001464 0.88897777 0.91779733 0.89001 0.84071457 0.90305567 0.85377288 
		0.88797045 0.83610737 0.88951826 0.68207246 0.97186166 0.6822688 0.95151085 0.68680555 
		0.8036468 0.67305928 0.77034914 0.69692737 0.89324039 0.68933135 0.84103018 0.67544478 
		0.74557513 0.68859535 0.8318283 0.62267166 0.83679241 0.6234203 0.93894821 0.68122441 
		0.94624394 0.62741858 0.97734159 0.53747332 0.97777051 0.58991706 0.95843071 0.53273308 
		0.80870557 0.58454847 0.77746528 0.52072597 0.8955074 0.59704614 0.84621638 0.59012258 
		0.75087214 0.53062749 0.83641559 0.53293681 0.84078783 0.52836251 0.94507688 0.53517497 
		0.9530586 0.53905499 0.9826358 0.96986866 0.95144904 0.9162848 0.98489898 0.78612781 
		0.94975984 0.013391852 0.36927408 0.37059379 0.19676933 0.87919354 0.69199359 0.98594284 
		0.77148628;
	setAttr ".uvst[0].uvsp[750:813]" 0.98083371 0.81591874 0.16859019 0.031367451 
		0.96420395 0.72757542 0.37340045 0.34858114 0.24468637 0.44369408 0.77543068 0.81410378 
		0.79652429 0.72665799 0.1621809 0.52907038 0.29804277 0.64002156 0.30400062 0.66659123 
		0.3043108 0.62043065 0.30353761 0.76181054 0.29756665 0.73165047 0.30393696 0.70056236 
		0.027228236 0.55583519 0.021175027 0.58236474 0.021015167 0.53615379 0.017488003 
		0.51595867 0.027300477 0.64734596 0.021091461 0.61629152 0.15832531 0.57936394 0.71230471 
		0.29478776 0.73218888 0.23093581 0.6815477 0.22307086 0.72120982 0.19962448 0.69296879 
		0.19924343 0.48101628 0.72144556 0.47874963 0.78828269 0.53141987 0.73070681 0.16676998 
		0.6627416 0.50169814 0.6954987 0.52848971 0.7044459 0.23549771 0.7649622 0.23992133 
		0.58395499 0.35475945 0.97771472 0.48112905 0.88393486 0.35039556 0.86758757 0.48498678 
		0.85985589 0.4908452 0.85588729 0.30791068 0.60035181 0.3292104 0.8147971 0.20689178 
		0.57176304 0.35578811 0.98498178 0.089014649 0.68101853 0.095893383 0.68177134 0.18818963 
		0.82014066 0.18517375 0.92054373 0.18467534 0.93167752 0.1827482 0.94874811 0.17787933 
		0.95434719 0.34204388 0.97191924 0.021144629 0.67735529 0.13216817 0.69033444 0.30563939 
		0.80944079 0.21240747 0.027591571 0.26124227 0.10160089 0.37379849 0.087646052 0.40745878 
		0.11126852 0.24622548 0.044103198 0.3993032 0.063905433 0.25397116 0.028513968 0.39168644 
		0.013252169 0.36898273 0.016682208 0.36954778 0.050277233;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 562 ".vt";
	setAttr ".vt[0:165]"  24.908222 17.127796 1.929857 24.648064 17.488674 -2.2768593 
		25.908094 16.553606 -0.89392221 25.927811 16.553606 0.35848802 25.923695 15.398608 
		-0.93954867 25.943016 15.398608 0.28776622 25.288969 14.874802 -1.3507925 25.1112 
		14.874802 0.51678932 26.543415 17.49497 -2.5600467 26.543415 16.553606 -1.0311056 
		26.543415 15.398608 -1.0739828 26.543415 14.919493 -1.4151052 26.543415 14.919493 
		0.68076682 26.543415 15.398608 0.45006984 26.543415 16.553606 0.52411044 26.543415 
		16.637535 2.0640779 26.543415 17.915251 2.7119706 24.342844 17.915251 1.88257 24.262264 
		18.538557 -0.62467492 24.262264 17.433634 -0.5055306 25.699938 16.553606 -0.2534976 
		25.719711 15.398608 -0.3119567 24.999189 15.184902 -0.4722333 24.094391 18.094734 
		-1.8356032 23.41469 17.977602 -1.6682466 23.41469 17.977602 -1.3747494 23.303284 
		18.858566 -1.4685186 23.303284 18.858566 -1.7521789 26.543415 18.505201 2.4117353 
		25.755842 17.296247 2.5135775 26.543415 17.237501 2.672555 25.816078 17.916452 2.6202493 
		26.543415 18.480331 2.8471386 26.543415 18.153566 2.8844934 26.237543 18.153566 2.8012197 
		24.474405 19.187153 1.7939675 26.543415 18.707952 2.1271315 23.782774 18.903389 -1.1326466 
		23.919561 17.530029 -0.99196523 23.919561 17.580647 -1.4132067 23.782774 18.968609 
		-1.5454423 25.318863 10.948595 0.25838038 25.498001 10.948595 1.0224065 26.543415 
		10.948595 1.1349919 25.608406 10.948595 -0.63800961 26.543415 10.948595 -0.75059474 
		26.543415 13.849025 1.2570964 26.543415 13.849025 -1.220889 25.223829 13.972991 -1.1377892 
		24.889313 13.752986 -0.16816917 25.145926 14.111061 1.0287108 24.775152 15.103819 
		-0.45779148 24.775152 14.886781 0.20349559 24.870956 13.953913 -0.19511336 24.870956 
		14.203237 0.29561597 24.775152 14.886781 -1.0613103 24.870956 14.163422 -0.89248919 
		17.572941 14.56025 -0.37356904 17.586468 14.496029 -0.063649513 17.646568 14.210728 
		-0.31131583 17.633043 14.274951 -0.04634773 17.586468 14.496029 -0.66061169 17.633043 
		14.274951 -0.59916103 24.542597 6.7924824 -0.43661961 24.866837 6.7096572 0.84686625 
		26.543415 8.2776766 -0.24373095 26.543415 6.5618396 0.95587367 25.031096 6.859705 
		-1.4936448 26.543415 6.9144354 -1.8437486 25.19717 8.1320457 -0.26750588 25.354145 
		8.2324896 0.29250035 26.065872 8.3617535 -0.23014568 25.92886 8.2858381 0.2878454 
		25.349159 8.0914583 -0.82150668 25.937626 8.2237587 -0.83227712 24.755747 -0.013448715 
		-0.69264197 26.406639 -0.013448715 -0.69264197 25.001474 -0.013448715 -1.5076054 
		25.902367 -0.013448715 -1.6350914 24.755747 -0.013448715 1.2435964 25.001474 0.56732798 
		0.99841082 26.089359 -0.013448715 1.4381689 25.955132 0.56732798 1.1455108 26.075127 
		1.4271054 0.24087393 26.339157 1.2797027 -0.76138234 25.834497 1.2797027 -1.5484834 
		25.03998 1.2797027 -1.4420123 24.811714 1.2797027 -0.76138234 25.005714 1.4271054 
		0.11459649 25.796385 5.2756696 0.18470761 26.084932 5.2204752 -0.49090171 25.990902 
		5.2204752 -1.0724355 25.268555 5.2204752 -0.99377108 25.112904 5.2204752 -0.49090171 
		25.365175 5.2753963 0.097539939 25.274559 4.4510093 0.022410668 25.860443 4.4510093 
		0.11754709 26.120705 4.3602653 -0.63657302 25.970284 4.3602653 -1.2432134 25.179323 
		4.3602653 -1.1611526 25.008888 4.3602653 -0.63657302 25.021851 3.8128121 0.10998938 
		26.094494 3.8114231 0.22627449 26.317724 3.561094 -0.72567046 25.773148 3.2588847 
		-1.4722629 25.05607 3.259552 -1.3730768 24.790281 3.561094 -0.72567046 25.023283 
		4.341732 0.20267712 26.131783 4.3414221 0.33227843 24.817478 3.1484849 0.5653367 
		26.247126 3.1484849 0.76037604 26.295036 4.2225738 -0.66441345 26.533676 2.9413521 
		-0.77806497 26.104044 4.2204108 -1.4678073 26.196651 2.9413521 -2.0141666 25.05658 
		4.2211447 -1.3561748 24.550638 2.9413521 -1.8469579 24.836208 4.2223816 -0.66451669 
		24.196003 2.9413521 -0.77806497 26.081074 4.9021063 -0.53112519 25.978609 4.9028578 
		-1.1118319 25.248856 4.9021063 -1.0325456 25.093138 4.9008241 -0.53121418 25.349701 
		4.9570518 0.056437492 25.782213 4.9598026 0.14654443 26.543415 19.347338 2.0762031 
		24.792664 19.573803 1.885632 23.993183 18.664761 0.58531493 24.38423 17.216391 0.86290216 
		25.227713 16.842611 1.1321775 26.543415 16.6301 1.4331951 23.677837 19.387018 -1.622159 
		25.411764 19.750185 1.9458938 24.489542 21.136473 1.7818909 24.315283 21.815407 0.62940693 
		26.543415 21.779985 2.1182246 26.719803 22.231928 0.77784407 24.336731 18.873905 
		-3.4309049 24.319397 18.056206 -3.1993651 26.543415 19.106508 -4.0119424 26.543415 
		18.036831 -3.4679179 24.29822 19.895569 -3.3600395 26.543415 20.335243 -3.8129497 
		24.148922 21.9571 -0.47083068 24.333921 21.847157 -1.8434057 26.793653 22.426615 
		-0.48277378 26.761959 22.306488 -2.0187595 23.605385 19.533794 -0.37864357 23.834995 
		20.186354 0.89850688 24.489542 21.334421 -3.0399563 26.695478 21.7647 -3.1614094 
		26.543415 20.710011 2.3222201 25.508884 20.490303 2.3248086 24.647482 20.269281 1.9466195 
		15.739611 14.449423 -0.35382965 16.100285 14.364717 0.0086694853 15.813237 14.319093 
		-0.33061665 16.146858 14.282282 -0.0023410819 16.214886 14.370893 -0.68725479 16.261461 
		14.288458 -0.64687926 17.021965 14.410136 0.14386539 16.634563 14.4016 0.060236983 
		16.398361 14.113937 0.44065431 16.412243 14.03005 0.39733103 16.363779 14.162903 
		0.31300291 16.373581 14.123672 0.2941815;
	setAttr ".vt[166:331]" 21.140245 14.660019 -0.023594134 21.19952 14.264739 
		0.019612208 21.206696 14.124871 -0.29602399 21.19952 14.264739 -0.66148323 21.140245 
		14.660019 -0.75908345 21.13307 14.797979 -0.41591078 21.459291 14.67282 0.06077658 
		21.519768 14.266682 0.10260956 21.52634 14.125094 -0.25413418 21.519768 14.266682 
		-0.66131347 21.459291 14.67282 -0.76415473 21.452717 14.814434 -0.37691194 17.902985 
		14.210853 -0.3113381 17.889942 14.27618 -0.60060477 17.842403 14.504131 -0.66337734 
		17.829361 14.569458 -0.37520903 17.842403 14.504131 -0.063770212 17.889942 14.27618 
		-0.045342062 24.486198 14.875186 0.089611776 24.580912 14.201477 0.17213389 24.581453 
		14.00458 -0.2136693 24.580912 14.201477 -0.766285 24.486198 14.875186 -0.92375165 
		24.485651 15.072083 -0.45213896 25.448105 8.0118761 0.28530219 25.78665 8.0442705 
		0.27888668 26.078711 8.0578852 -0.26758149 25.938864 7.9952488 -0.86496198 25.342484 
		7.9253407 -0.84196138 25.187742 7.949285 -0.28556535 25.016657 1.6722445 0.10289049 
		26.059744 1.6722445 0.22622478 26.315649 1.5307145 -0.7515347 25.812229 1.5307145 
		-1.5227121 25.049559 1.5307145 -1.4183946 24.826363 1.5307145 -0.7515347 16.678959 
		14.532782 -0.3686766 16.838659 14.411934 -0.777022 16.830948 14.250636 -0.72260034 
		16.678772 14.241385 -0.31677628 16.649109 14.246436 0.069734968 16.198898 14.486852 
		-0.36049607 16.232677 14.284782 -0.32450566 16.752098 14.285549 0.38357568 16.769339 
		14.147742 0.38727036 16.564701 14.221281 0.18453337 16.549734 14.324776 0.18693881 
		26.543415 11.145266 -0.56134528 25.592489 11.163034 -0.43441272 25.411373 11.145266 
		0.27714473 25.592489 11.163034 0.99274343 26.543415 11.145266 1.1156346 26.543415 
		9.4061852 -1.4946686 25.21524 9.4345427 -1.3400487 24.832758 9.4291277 -0.082200177 
		25.077044 9.4474192 0.971416 26.543415 9.4488688 1.1198372 25.609114 21.647348 1.9223239 
		25.927515 22.605242 0.6440804 26.051519 22.797083 -0.52912056 26.293076 22.690807 
		-1.9803283 26.244841 21.972271 -3.2564154 26.543415 12.456787 -0.6451562 25.543318 
		12.593044 -0.46248552 25.355268 12.550982 0.072898887 25.543318 12.593044 0.78651547 
		26.543415 12.456787 1.0177236 17.103788 14.545835 -0.37100145 17.191469 14.451609 
		-0.72210026 17.274872 14.264093 -0.65428287 17.143555 14.226663 -0.314154 17.025888 
		14.186095 0.13343456 26.543415 16.110229 -1.0003091 25.96106 16.110229 -0.87428814 
		25.769844 16.110229 -0.28597361 25.979174 16.110229 0.27621606 26.543415 16.110229 
		0.42836213 23.04797 14.837174 0.15299647 23.120468 14.20175 0.21038561 23.124197 
		14.042598 -0.25008351 23.120468 14.20175 -0.7019785 23.04797 14.837174 -0.82373166 
		23.044241 14.996342 -0.41693056 20.177164 14.688739 0.11125306 20.25658 14.160842 
		0.15640733 20.271912 13.987871 -0.27657014 20.25658 14.160842 -0.76320153 20.177164 
		14.688739 -0.88179761 20.161833 14.860153 -0.41185799 26.543415 7.9134521 -1.9179572 
		25.002062 7.9314084 -1.6083347 24.555601 7.915823 -0.30812165 24.842375 7.9061084 
		0.91408724 26.543415 7.8028011 1.0735793 26.543415 11.264635 -0.70291787 25.514709 
		11.309912 -0.53466916 25.30023 11.254951 0.28496295 25.514709 11.309912 1.1169193 
		26.543415 11.264635 1.2750218 25.171223 17.391777 -2.5235684 24.701353 17.813049 
		-3.1348004 25.458401 17.846685 -3.3434947 24.990299 9.1854401 -2.5593934 25.162289 
		16.309584 -2.4491997 25.423552 16.309584 -3.1546683 24.716383 16.309584 -2.9549708 
		24.834585 16.112255 -2.873029 25.141571 16.112255 -2.530247 25.321442 16.112255 -3.0083728 
		25.436081 15.891214 -3.1148088 24.701881 15.891214 -2.9151113 25.164829 15.891214 
		-2.4093401 24.757156 13.24324 -2.5092504 25.153135 13.24324 -2.0426035 25.385145 
		13.24324 -2.6924396 25.306133 13.108485 -2.5899124 24.847958 13.111298 -2.4578469 
		25.136759 13.111819 -2.1220605 24.754715 13.030077 -2.502084 25.152733 13.024384 
		-2.050144 25.385639 13.032016 -2.6788161 24.696672 10.38261 -2.6710267 25.109816 
		10.38261 -2.1285324 25.281239 10.38261 -2.8307464 24.873341 11.285475 -2.4702101 
		25.123991 11.285475 -2.2200775 25.270855 11.285475 -2.5689721 24.650187 14.579333 
		-2.7692564 25.1798 14.579333 -2.164295 25.49011 14.579333 -3.0081184 24.746162 12.314871 
		-2.521903 25.159151 12.31356 -2.078191 25.401102 12.314871 -2.6952193 25.453472 17.504154 
		-3.3285232 24.679094 17.504147 -3.0948544 25.16968 17.142683 -2.4589493 25.335369 
		18.478258 2.0882351 28.771549 21.815407 0.62940693 28.59729 21.136473 1.7818909 27.608547 
		21.647348 1.9223239 27.41608 22.56315 0.76106751 28.767433 18.056206 -3.1993651 28.750099 
		18.873905 -3.4309049 28.085358 0.56732798 0.99841082 28.331085 -0.013448715 1.2435964 
		26.997473 -0.013448715 1.4381689 27.131701 0.56732798 1.1455108 28.702602 17.216391 
		0.86290216 28.178608 17.127796 1.929857 28.743988 17.915251 1.88257 29.093649 18.664761 
		0.58531493 27.178738 16.553606 -0.89392221 28.438766 17.488674 -2.2768593 27.859119 
		16.842611 1.1321775 27.125772 16.110229 -0.87428814 27.159021 16.553606 0.35848802 
		27.107658 16.110229 0.27621606 27.386894 16.553606 -0.2534976 27.316988 16.110229 
		-0.28597361 27.797863 14.874802 -1.3507925 27.163137 15.398608 -0.93954867 27.143814 
		15.398608 0.28776622 27.975632 14.874802 0.51678932 27.367121 15.398608 -0.3119567 
		28.087643 15.184902 -0.4722333 28.612427 19.187153 1.7939675;
	setAttr ".vt[332:497]" 28.78861 19.895569 -3.3600395 27.751463 18.478258 2.0882351 
		28.752909 21.847157 -1.8434057 28.93791 21.9571 -0.47083068 27.476871 22.754993 -0.41710159 
		27.464983 22.648714 -1.8882275 29.672142 17.977602 -1.6682466 29.672142 17.977602 
		-1.3747494 29.783546 18.858566 -1.4685186 29.783546 18.858566 -1.7521789 28.824566 
		17.433634 -0.5055306 28.331085 -0.013448715 -0.69264197 28.085358 -0.013448715 -1.5076054 
		27.184465 -0.013448715 -1.6350914 26.680193 -0.013448715 -0.69264197 28.992439 18.094734 
		-1.8356032 29.408995 19.387018 -1.622159 29.167271 17.530029 -0.99196523 29.167271 
		17.580647 -1.4132067 28.824566 18.538557 -0.62467492 29.304058 18.903389 -1.1326466 
		29.304058 18.968609 -1.5454423 27.33099 17.296247 2.5135775 27.270754 17.916452 2.6202493 
		26.849287 18.153566 2.8012197 29.251835 20.186354 0.89850688 29.481447 19.533794 
		-0.37864357 27.08975 21.909334 -3.1692858 36.986549 14.364717 0.0086694853 37.347221 
		14.449423 -0.35382965 37.273594 14.319093 -0.33061665 36.939972 14.282282 -0.0023410819 
		27.940905 14.111061 1.0287108 36.871944 14.370893 -0.68725479 36.825371 14.288458 
		-0.64687926 27.863001 13.972991 -1.1377892 27.543512 12.593044 -0.46248552 28.197519 
		13.752986 -0.16816917 27.731564 12.550982 0.072898887 27.543512 12.593044 0.78651547 
		28.31168 15.103819 -0.45779148 28.31168 14.886781 0.20349559 28.215876 14.203237 
		0.29561597 28.215876 13.953913 -0.19511336 28.31168 14.886781 -1.0613103 28.215876 
		14.163422 -0.89248919 28.601177 15.072083 -0.45213896 28.600634 14.875186 0.089611776 
		28.50592 14.201477 0.17213389 28.505377 14.00458 -0.2136693 28.600634 14.875186 -0.92375165 
		28.50592 14.201477 -0.766285 27.588829 10.948595 1.0224065 27.767969 10.948595 0.25838038 
		28.253017 9.4491177 -0.079279825 28.01062 9.429018 0.96973175 27.478426 10.948595 
		-0.63800961 27.872774 9.405652 -1.3461642 28.220329 6.7162952 0.84794265 28.544632 
		6.7991204 -0.43596146 27.891142 8.0949497 -0.27361131 27.733053 8.2220907 0.29108217 
		27.157591 8.306613 0.29066989 27.021667 8.3120022 -0.23817216 28.056034 6.866343 
		-1.4933287 27.738276 8.0743427 -0.82478571 27.150417 8.1564941 -0.84517682 27.900105 
		7.92379 -0.28981212 27.63909 8.0006752 0.28375119 27.300045 8.0502548 0.27971494 
		27.008387 8.0385084 -0.27077764 27.744884 7.9101853 -0.84489286 27.148605 7.9593897 
		-0.8719303 28.081118 1.4271054 0.11459649 27.011705 1.4271054 0.24087393 26.747675 
		1.2797027 -0.76138234 27.252335 1.2797027 -1.5484834 28.04685 1.2797027 -1.4420123 
		28.275118 1.2797027 -0.76138234 27.0019 5.2204752 -0.49090171 27.290447 5.2756696 
		0.18470761 27.304619 4.9598026 0.14654443 27.005756 4.9021063 -0.53112519 27.095928 
		5.2204752 -1.0724355 27.108223 4.9028578 -1.1118319 27.818275 5.2204752 -0.99377108 
		27.837976 4.9021063 -1.0325456 27.973928 5.2204752 -0.49090171 27.993692 4.9008241 
		-0.53121418 27.721657 5.2753963 0.097539939 27.737129 4.9570518 0.056437492 26.955048 
		4.3414221 0.33227843 28.063547 4.341732 0.20267712 28.269354 3.1484849 0.5653367 
		26.839706 3.1484849 0.76037604 26.791794 4.2225738 -0.66441345 26.553156 2.9413521 
		-0.77806497 26.982786 4.2204108 -1.4678073 26.890181 2.9413521 -2.0141666 28.030252 
		4.2211447 -1.3561748 28.536194 2.9413521 -1.8469579 28.250622 4.2223816 -0.66451669 
		28.890827 2.9413521 -0.77806497 26.992338 3.8114231 0.22627449 28.064981 3.8128121 
		0.10998938 28.070173 1.6722445 0.10289049 27.027088 1.6722445 0.22622478 26.769108 
		3.561094 -0.72567046 26.771183 1.5307145 -0.7515347 27.313684 3.2588847 -1.4722629 
		27.274603 1.5307145 -1.5227121 28.030762 3.259552 -1.3730768 28.037271 1.5307145 
		-1.4183946 28.296551 3.561094 -0.72567046 28.260469 1.5307145 -0.7515347 27.226387 
		4.4510093 0.11754709 27.812271 4.4510093 0.022410668 26.966125 4.3602653 -0.63657302 
		27.116547 4.3602653 -1.2432134 27.907507 4.3602653 -1.1611526 28.077944 4.3602653 
		-0.63657302 28.43935 20.269281 1.9466195 27.577946 20.490303 2.3248086 28.59729 21.334421 
		-3.0399563 28.294167 19.573803 1.885632 27.675068 19.750185 1.945894 36.887932 14.486852 
		-0.36049607 36.854153 14.284782 -0.32450566 36.674591 14.03005 0.39733103 36.688469 
		14.113937 0.44065431 36.723053 14.162903 0.31300291 36.713249 14.123672 0.2941815 
		36.248173 14.411934 -0.777022 36.255882 14.250636 -0.72260034 35.453789 14.274951 
		-0.04634773 35.500362 14.496029 -0.063649513 36.064865 14.410136 0.14386539 36.060944 
		14.186095 0.13343456 36.437721 14.246436 0.069734968 36.452267 14.4016 0.060236983 
		36.334732 14.285549 0.38357568 36.31749 14.147742 0.38727036 36.537094 14.324776 
		0.18693881 36.522129 14.221281 0.18453337 31.88731 14.264739 0.019612208 31.946587 
		14.660019 -0.023594134 32.909664 14.688739 0.11125306 32.83025 14.160842 0.15640733 
		31.880136 14.124871 -0.29602399 32.814919 13.987871 -0.27657014 31.88731 14.264739 
		-0.66148323 32.83025 14.160842 -0.76320153 31.946587 14.660019 -0.75908345 32.909664 
		14.688739 -0.88179761 31.95376 14.797979 -0.41591078 32.924995 14.860153 -0.41185799 
		31.567064 14.266682 0.10260956 31.627541 14.67282 0.06077658 31.56049 14.125094 -0.25413418 
		31.567064 14.266682 -0.66131347 31.627541 14.67282 -0.76415473 31.634115 14.814434 
		-0.37691194 35.196888 14.27618 -0.60060477 35.183846 14.210853 -0.3113381 35.440262 
		14.210728 -0.31131583 35.453789 14.274951 -0.59916103;
	setAttr ".vt[498:561]" 35.244427 14.504131 -0.66337734 35.500362 14.496029 
		-0.66061169 35.257469 14.569458 -0.37520903 35.513889 14.56025 -0.37356904 35.244427 
		14.504131 -0.063770212 35.196888 14.27618 -0.045342062 30.03886 14.837174 0.15299647 
		29.966364 14.20175 0.21038561 29.962633 14.042598 -0.25008351 29.966364 14.20175 
		-0.7019785 30.03886 14.837174 -0.82373166 30.042591 14.996342 -0.41693056 35.98304 
		14.545835 -0.37100145 36.407871 14.532782 -0.3686766 35.895363 14.451609 -0.72210026 
		35.811958 14.264093 -0.65428287 35.943275 14.226663 -0.314154 36.408058 14.241385 
		-0.31677628 27.494343 11.163034 -0.43441272 27.675459 11.145266 0.27714473 27.494343 
		11.163034 0.99274343 28.081585 8.0016041 -1.592213 28.527094 7.9864941 -0.29630706 
		28.244238 7.9104404 0.91455919 27.572123 11.309912 -0.53466916 27.7866 11.254951 
		0.28496295 27.572123 11.309912 1.1169193 27.915609 17.391777 -2.5235684 28.385479 
		17.813049 -3.1348004 27.628431 17.846685 -3.3434947 28.407738 17.504147 -3.0948544 
		27.917152 17.142683 -2.4589493 27.63336 17.504154 -3.3285232 27.663279 16.309584 
		-3.1546683 27.924543 16.309584 -2.4491997 27.945259 16.112255 -2.530247 27.765388 
		16.112255 -3.0083728 28.370449 16.309584 -2.9549708 28.252247 16.112255 -2.873029 
		28.384951 15.891214 -2.9151113 27.922003 15.891214 -2.4093401 27.650751 15.891214 
		-3.1148088 27.907032 14.579333 -2.164295 27.59672 14.579333 -3.0081184 28.436644 
		14.579333 -2.7692564 27.933697 13.24324 -2.0426035 28.329674 13.24324 -2.5092504 
		28.238874 13.111298 -2.4578469 27.950073 13.111819 -2.1220605 27.701685 13.24324 
		-2.6924396 27.780697 13.108485 -2.5899124 27.934099 13.024384 -2.050144 27.701193 
		13.032016 -2.6788161 28.332117 13.030077 -2.502084 28.34067 12.314871 -2.521903 27.927681 
		12.31356 -2.078191 27.68573 12.314871 -2.6952193 27.977016 10.38261 -2.1285324 28.390158 
		10.38261 -2.6710267 28.096533 9.1854401 -2.5593934 27.805593 10.38261 -2.8307464 
		27.962839 11.285475 -2.2200775 28.213491 11.285475 -2.4702101 27.815977 11.285475 
		-2.5689721;
	setAttr -s 1150 ".ed";
	setAttr ".ed[0:165]"  0 17 1 1 19 1 1 2 
		1 0 129 1 2 20 1 2 239 1 3 241 
		1 4 21 1 4 6 1 5 7 1 6 22 
		0 8 9 1 9 238 1 10 11 1 12 13 
		1 13 242 1 14 130 1 17 35 1 16 31 
		1 17 127 1 17 302 1 18 131 1 19 128 
		1 18 19 1 20 3 1 19 20 1 21 5 
		1 20 240 1 22 7 0 21 22 1 1 23 
		1 23 19 0 131 23 1 23 39 0 19 38 
		0 24 25 0 18 37 1 26 25 0 131 40 
		1 26 27 0 27 24 0 28 36 1 0 29 
		1 15 30 1 16 30 1 17 29 1 31 17 
		1 31 29 1 31 28 1 28 32 1 16 33 
		1 33 32 1 31 34 1 34 32 1 36 125 
		1 36 302 1 1 8 1 2 9 1 4 10 
		1 6 11 1 7 12 1 5 13 1 3 14 
		1 0 15 1 29 30 1 33 34 1 37 26 
		0 38 25 0 37 38 1 39 24 0 38 39 
		0 40 27 0 39 40 1 40 37 0 7 50 
		0 41 42 1 12 46 1 42 43 1 6 48 
		0 44 41 1 11 47 1 44 45 1 46 232 
		1 47 228 1 48 229 1 47 48 1 49 230 
		1 48 49 0 50 231 1 49 50 0 50 46 
		1 22 51 0 7 52 0 51 52 0 49 53 
		0 50 54 0 53 54 0 52 54 0 6 55 
		0 55 51 0 48 56 0 55 56 0 56 53 
		0 51 189 1 52 184 1 57 58 1 53 186 
		1 54 185 1 59 60 1 58 60 1 55 188 
		1 61 57 1 56 187 1 61 62 1 62 59 
		1 41 220 1 42 221 1 63 64 0 43 222 
		1 65 66 0 64 66 0 44 219 1 67 63 
		0 45 218 1 67 68 0 68 65 0 63 69 
		0 64 70 0 69 70 0 65 71 0 66 72 
		0 71 72 0 70 72 0 67 73 0 73 69 
		0 68 74 0 73 74 0 74 71 0 69 195 
		1 70 190 1 75 88 1 71 192 1 75 76 
		0 72 191 1 76 83 1 73 194 1 77 75 
		0 74 193 1 77 78 0 78 76 0 75 79 
		0 88 80 1 79 80 1 76 81 0 79 81 
		0 83 82 1 81 82 1 80 82 1 84 76 
		1 83 84 1 85 78 1 84 85 1 86 77 
		1 85 86 1 87 75 1 86 87 1;
	setAttr ".ed[166:331]" 87 88 1 88 83 1 89 124 
		1 90 119 1 89 90 1 91 120 1 90 91 
		1 92 121 1 91 92 1 93 122 1 92 93 
		1 94 123 1 93 94 1 94 89 1 95 96 
		0 96 97 0 97 98 0 98 99 0 99 100 
		0 100 95 0 101 196 1 102 197 1 101 102 
		0 103 198 1 102 103 0 104 199 1 103 104 
		0 105 200 1 104 105 0 106 201 1 105 106 
		0 106 101 0 95 107 0 96 108 0 107 108 
		0 101 109 0 107 109 0 102 110 0 109 110 
		0 108 110 0 97 111 0 108 111 0 103 112 
		0 110 112 0 111 112 0 98 113 0 111 113 
		0 104 114 0 112 114 0 113 114 0 99 115 
		0 113 115 0 105 116 0 114 116 0 115 116 
		0 100 117 0 115 117 0 106 118 0 116 118 
		0 117 118 0 117 107 0 118 109 0 119 97 
		1 120 98 1 119 120 1 121 99 1 120 121 
		1 122 100 1 121 122 1 123 95 1 122 123 
		1 124 96 1 123 124 1 124 119 1 125 132 
		1 126 302 1 126 35 1 35 127 1 127 18 
		1 128 0 1 127 128 1 129 3 1 128 129 
		1 130 15 1 129 130 1 132 126 1 31 302 
		1 133 134 1 133 223 1 135 136 1 136 224 
		1 1 138 1 137 138 1 137 139 1 8 140 
		1 139 140 1 138 140 1 141 137 1 141 142 
		1 142 139 1 143 144 1 145 225 1 145 146 
		1 146 226 1 18 147 1 147 131 1 138 23 
		1 35 148 1 148 133 1 143 147 1 144 131 
		1 149 141 1 149 227 1 150 142 1 125 151 
		1 151 152 1 151 135 1 126 153 1 133 153 
		1 132 152 1 152 153 1 153 148 1 127 147 
		1 148 147 1 134 143 1 136 145 1 144 149 
		1 146 150 1 131 141 1 57 233 1 154 155 
		1 59 236 1 154 156 1 60 237 1 156 157 
		1 155 157 1 61 234 1 158 154 1 62 235 
		1 158 159 1 159 156 1 160 237 1 161 206 
		1 237 210 1 162 163 1 161 212 1 162 164 
		1 206 211 1 164 165 1 163 165 1 166 249 
		1 166 167 1 167 168 1 168 169 1 169 170 
		1 170 171 1 171 166 1 172 166 1 173 167 
		1 172 173 1 174 168 1 173 174 1 175 169 
		1 174 175 1 176 170 1 175 176 1;
	setAttr ".ed[332:497]" 177 171 1 176 177 1 177 172 
		1 178 59 1 179 62 1 178 179 1 180 61 
		1 179 180 1 181 57 1 180 181 1 182 58 
		1 181 182 1 183 60 1 182 183 1 183 178 
		1 184 243 1 185 244 1 184 185 1 186 245 
		1 185 186 1 187 246 1 186 187 1 188 247 
		1 187 188 1 189 248 1 188 189 1 189 184 
		1 190 94 1 191 89 1 190 191 1 192 90 
		1 191 192 1 193 91 1 192 193 1 194 92 
		1 193 194 1 195 93 1 194 195 1 195 190 
		1 196 88 1 197 83 1 196 197 1 198 84 
		1 197 198 1 199 85 1 198 199 1 200 86 
		1 199 200 1 201 87 1 200 201 1 201 196 
		1 58 160 1 161 155 1 202 207 1 161 202 
		1 203 158 1 202 203 1 204 159 1 203 204 
		1 205 208 1 204 205 1 206 157 1 205 206 
		1 207 154 1 155 207 1 207 158 1 208 156 
		1 159 208 1 208 157 1 160 209 1 209 162 
		1 210 163 1 209 210 1 211 165 1 210 211 
		1 212 164 1 211 212 1 212 209 1 167 250 
		1 168 251 1 169 252 1 170 253 1 171 254 
		1 213 45 1 214 44 1 213 214 0 215 41 
		1 214 215 0 216 42 1 215 216 0 217 43 
		1 216 217 0 218 255 1 219 256 1 218 219 
		1 220 257 1 219 220 1 221 258 1 220 221 
		1 222 259 1 221 222 1 223 135 1 152 223 
		1 224 134 1 223 224 1 225 143 1 224 225 
		1 226 144 1 225 226 1 227 150 1 226 227 
		1 142 227 1 134 148 1 137 23 1 228 260 
		1 229 261 1 228 229 1 230 262 1 229 230 
		1 231 263 1 230 231 1 232 264 1 231 232 
		1 160 161 1 233 202 1 160 233 1 234 203 
		1 233 234 1 235 204 1 234 235 1 236 205 
		1 235 236 1 237 206 1 236 237 1 238 10 
		1 239 4 1 238 239 1 240 21 1 239 240 
		1 241 5 1 240 241 1 242 14 1 241 242 
		1 243 172 1 244 173 1 243 244 1 245 174 
		1 244 245 1 246 175 1 245 246 1 247 176 
		1 246 247 1 248 177 1 247 248 1 248 243 
		1 249 182 1 250 183 1 249 250 1 251 178 
		1 250 251 1 252 179 1 251 252 1 253 180 
		1 252 253 1 254 181 1 253 254 1;
	setAttr ".ed[498:663]" 254 249 1 255 68 1 256 67 
		1 255 256 1 257 63 1 256 257 1 258 64 
		1 257 258 1 259 66 1 258 259 1 260 213 
		0 261 214 0 260 261 0 262 215 0 261 262 
		0 263 216 0 262 263 0 264 217 0 263 264 
		0 1 265 1 8 265 1 138 266 1 265 266 
		1 140 267 1 266 267 1 265 267 1 265 301 
		1 266 300 1 267 299 1 269 273 0 270 274 
		0 269 270 0 271 272 0 270 271 0 271 269 
		0 272 276 0 273 277 0 272 273 0 274 275 
		0 273 274 0 274 272 0 275 295 1 277 275 
		0 276 293 1 275 276 0 277 294 1 276 277 
		0 278 282 0 279 283 0 278 279 0 280 281 
		0 279 280 0 280 278 0 281 286 0 283 281 
		0 282 284 0 281 282 0 283 285 0 282 283 
		0 284 296 1 285 297 1 284 285 0 286 298 
		1 285 286 0 286 284 0 287 268 1 288 268 
		1 287 288 1 289 268 1 288 289 1 289 287 
		1 290 287 1 291 288 1 290 291 1 292 289 
		1 291 292 1 292 290 1 293 278 1 294 279 
		1 293 294 1 295 280 1 294 295 1 295 293 
		1 296 290 1 297 291 1 296 297 1 298 292 
		1 297 298 1 298 296 1 299 270 1 300 271 
		1 299 300 1 301 269 1 300 301 1 301 299 
		1 302 28 1 302 132 1 302 35 1 304 303 
		1 304 305 1 305 306 1 306 303 1 308 307 
		1 308 139 1 307 140 1 310 309 1 310 311 
		0 311 312 1 309 312 1 313 314 1 314 315 
		1 315 316 1 316 313 1 318 317 1 318 8 
		1 317 9 1 314 319 1 319 130 1 314 15 
		1 313 319 1 317 320 1 238 320 1 321 322 
		1 322 242 1 321 14 1 323 321 1 323 324 
		1 324 322 1 326 325 1 326 10 1 325 11 
		1 327 328 1 328 12 1 327 13 1 329 327 
		1 329 330 1 330 328 0 315 331 1 331 316 
		1 332 308 1 332 142 1 335 334 1 336 335 
		1 336 337 1 337 334 1 338 339 0 340 339 
		0 340 341 0 341 338 0 342 323 1 318 342 
		1 317 323 1 320 324 1 326 329 1 325 330 
		0 344 343 0 344 345 0 345 346 0 343 346 
		0 347 342 0 318 347 1 308 347 1 348 347 
		1 348 332 1 342 349 0 349 350 0;
	setAttr ".ed[664:829]" 347 350 0 351 342 1 351 352 
		1 352 349 1 351 348 1 348 353 1 353 352 
		0 350 353 1 314 354 1 354 30 1 355 354 
		1 16 355 1 315 354 1 355 315 1 33 356 
		1 356 32 1 355 356 1 355 28 1 303 357 
		1 357 304 1 358 348 1 335 358 1 334 348 
		1 142 359 1 359 150 1 352 340 0 349 339 
		0 350 338 0 353 341 0 361 360 1 361 362 
		1 362 363 1 360 363 1 328 364 0 364 46 
		1 365 361 1 365 366 1 366 362 1 47 367 
		1 325 367 0 228 368 1 367 368 1 367 369 
		0 368 370 1 369 370 1 369 364 0 370 371 
		1 364 371 1 371 232 1 330 372 0 372 373 
		0 328 373 0 364 374 0 375 374 0 369 375 
		0 373 374 0 325 376 0 376 372 0 367 377 
		0 376 377 0 377 375 0 372 378 1 378 379 
		1 373 379 1 374 380 1 380 381 1 375 381 
		1 379 380 1 376 382 1 382 378 1 377 383 
		1 383 382 1 381 383 1 385 384 1 385 386 
		1 386 387 1 384 387 1 384 43 1 387 222 
		1 388 385 1 388 389 1 389 386 1 388 45 
		1 218 389 1 391 390 0 391 392 0 392 393 
		0 390 393 0 66 394 0 395 394 0 65 395 
		0 390 66 0 393 394 0 396 391 0 396 397 
		0 397 392 0 396 68 0 68 398 0 397 398 
		0 398 395 0 392 399 1 399 400 1 393 400 
		1 394 401 1 401 402 1 395 402 1 400 401 
		1 397 403 1 403 399 1 398 404 1 404 403 
		1 402 404 1 343 405 1 343 310 0 405 309 
		1 346 311 0 346 406 1 406 312 1 405 406 
		1 406 407 1 407 346 1 407 408 1 408 345 
		1 408 409 1 409 344 1 409 410 1 410 343 
		1 410 405 1 412 411 1 412 413 1 413 414 
		1 411 414 1 411 415 1 414 416 1 415 416 
		1 415 417 1 416 418 1 417 418 1 417 419 
		1 418 420 1 419 420 1 419 421 1 420 422 
		1 421 422 1 421 412 1 422 413 1 424 423 
		0 424 425 0 425 426 0 423 426 0 423 427 
		0 426 428 0 427 428 0 427 429 0 428 430 
		0 429 430 0 429 431 0 430 432 0 431 432 
		0 431 433 0 432 434 0 433 434 0 433 424 
		0 434 425 0 436 435 0 436 437 1;
	setAttr ".ed[830:995]" 437 438 1 435 438 1 435 439 
		0 438 440 1 439 440 1 439 441 0 440 442 
		1 441 442 1 441 443 0 442 444 1 443 444 
		1 443 445 0 444 446 1 445 446 1 445 436 
		0 446 437 1 448 447 0 448 424 0 447 423 
		0 435 426 0 436 425 0 447 449 0 449 427 
		0 439 428 0 449 450 0 450 429 0 441 430 
		0 450 451 0 451 431 0 443 432 0 451 452 
		0 452 433 0 445 434 0 452 448 0 414 449 
		1 416 450 1 418 451 1 420 452 1 422 448 
		1 413 447 1 454 453 1 454 305 1 304 453 
		1 453 357 1 303 335 1 306 336 1 357 358 
		1 342 313 1 316 351 1 319 321 1 334 455 
		1 337 359 1 455 359 1 455 332 1 351 358 
		1 307 347 1 318 307 1 125 457 1 151 454 
		1 457 456 1 457 454 1 456 453 1 456 331 
		1 331 357 1 316 358 1 360 458 1 458 361 
		1 459 363 1 459 362 1 461 460 1 461 462 
		1 462 463 1 460 463 1 458 365 1 464 465 
		1 465 366 1 464 365 1 366 459 1 467 466 
		1 467 468 1 468 469 1 466 469 1 470 363 
		1 471 470 1 471 360 1 468 472 1 472 473 
		1 469 473 1 468 471 1 471 474 1 474 472 
		1 470 475 1 475 474 1 469 470 1 473 475 
		1 477 476 1 477 478 1 478 479 1 476 479 
		1 476 480 1 479 481 1 480 481 1 480 482 
		1 481 483 1 482 483 1 482 484 1 483 485 
		1 484 485 1 484 486 1 485 487 1 486 487 
		1 487 478 1 486 477 1 489 488 1 489 477 
		1 488 476 1 488 490 1 490 480 1 490 491 
		1 491 482 1 491 492 1 492 484 1 492 493 
		1 493 486 1 493 489 1 495 494 1 495 496 
		1 497 496 1 494 497 1 494 498 1 499 497 
		1 498 499 1 498 500 1 499 501 1 500 501 
		1 500 502 1 501 467 1 502 467 1 502 503 
		1 503 466 1 503 495 1 496 466 1 379 504 
		1 504 505 1 380 505 1 505 506 1 381 506 
		1 506 507 1 383 507 1 507 508 1 382 508 
		1 508 509 1 378 509 1 509 504 1 400 421 
		1 401 412 1 402 411 1 404 415 1 403 417 
		1 399 419 1 437 405 1 438 406 1 440 407 
		1 442 408 1 444 409 1 446 410 1;
	setAttr ".ed[996:1149]" 468 510 1 510 511 1 471 511 
		1 510 512 1 512 464 1 511 464 1 512 513 
		1 513 465 1 513 514 1 514 515 1 465 515 
		1 514 469 1 515 470 1 511 458 1 515 459 
		1 472 461 1 473 460 1 475 463 1 474 462 
		1 213 516 0 516 388 1 516 517 0 517 385 
		1 517 518 0 518 384 1 518 217 0 255 519 
		1 389 519 1 519 520 1 386 520 1 520 521 
		1 387 521 1 521 259 1 305 135 1 136 306 
		1 145 336 1 146 337 1 260 522 0 368 522 
		1 522 523 0 370 523 1 523 524 0 371 524 
		1 524 264 0 501 510 1 499 512 1 497 513 
		1 496 514 1 320 326 1 324 329 1 322 327 
		1 504 489 1 505 488 1 506 490 1 507 491 
		1 508 492 1 509 493 1 478 502 1 479 503 
		1 481 495 1 483 494 1 485 498 1 487 500 
		1 519 396 1 520 391 1 521 390 1 522 516 
		0 523 517 0 524 518 0 318 525 1 8 525 
		1 307 526 1 525 526 1 140 527 1 526 527 
		1 525 527 1 526 528 1 528 529 0 525 529 
		1 527 530 1 530 528 0 529 530 0 532 531 
		0 532 533 0 533 534 0 531 534 0 531 535 
		0 534 536 0 535 536 0 535 532 0 536 533 
		0 536 537 0 537 538 0 533 538 0 538 539 
		0 534 539 0 539 537 0 538 540 1 540 541 
		1 539 541 1 541 542 1 537 542 1 542 540 
		1 544 543 0 544 545 0 545 546 0 543 546 
		0 543 547 0 546 548 0 547 548 0 547 544 
		0 548 545 0 546 549 0 549 550 0 548 550 
		0 550 551 0 545 551 0 551 549 0 551 552 
		1 552 553 1 549 553 1 553 554 1 550 554 
		1 554 552 1 556 555 1 556 557 1 555 557 
		1 555 558 1 558 557 1 558 556 1 560 559 
		1 560 556 1 559 555 1 559 561 1 561 558 
		1 561 560 1 542 544 1 540 543 1 541 547 
		1 552 560 1 553 559 1 554 561 1 530 531 
		0 528 535 0 529 532 0 333 355 1 333 28 
		1 36 333 1 333 457 1 456 333 1 333 331 
		1 315 333 1 333 125 1 302 125 1;
	setAttr -s 950 ".n";
	setAttr ".n[0:165]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 -0.87080288 -0.49071881 -0.029955983 -0.87080288 
		-0.49071881 -0.029955983 -0.8152377 0.57580948 0.061895195 -0.8152377 0.57580948 
		0.061895195 1e+020 1e+020 1e+020 0 -1 0 0 -1 0 0 -1 0 0 -1 0 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 0.61468202 -0.7084353 -0.34682187 0.61468202 -0.7084353 -0.34682187 
		-0.0032736764 -0.96548527 -0.26043725 -0.0032736764 -0.96548527 -0.26043725 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 -0.0032736764 -0.96548527 
		-0.26043725 -0.0032736764 -0.96548527 -0.26043725 -0.87080288 -0.49071881 -0.029955983 
		-0.87080288 -0.49071881 -0.029955983 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 -0.20883408 
		0.97369146 0.091178253 -0.20883408 0.97369146 0.091178253 -0.8152377 0.57580948 0.061895195 
		-0.8152377 0.57580948 0.061895195 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 -0.64693511 0.60033214 0.47018746 -0.27230406 
		0.96173716 -0.030202413 -0.27230406 0.96173716 -0.030202413 -0.64693511 0.60033214 
		0.47018746 -0.8928138 -0.44950873 -0.028730989 -0.91730958 -0.079658218 0.39012539 
		-0.91730958 -0.079658218 0.39012539 -0.8928138 -0.44950873 -0.028730989 -0.91730958 
		-0.079658218 0.39012539 -0.64693511 0.60033214 0.47018746 -0.64693511 0.60033214 
		0.47018746 -0.91730958 -0.079658218 0.39012539 -0.27230406 0.96173716 -0.030202413 
		-0.4962658 0.44308889 -0.74658728 -0.4962658 0.44308889 -0.74658728 -0.27230406 0.96173716 
		-0.030202413 -0.4962658 0.44308889 -0.74658728 -0.69883364 -0.40527439 -0.58939314 
		-0.69883364 -0.40527439 -0.58939314 -0.4962658 0.44308889 -0.74658728 -0.69883364 
		-0.40527439 -0.58939314 -0.8928138 -0.44950873 -0.028730989 -0.8928138 -0.44950873 
		-0.028730989 -0.69883364 -0.40527439 -0.58939314 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 0.55553806 -0.44503817 -0.70236635 0.90434414 -0.42369592 0.051412463 0.90434414 
		-0.42369592 0.051412463 0.55553806 -0.44503817 -0.70236635 -0.01943252 -0.99764442 
		-0.065788232 0.0008522711 -0.50685787 -0.86202925 -0.27627099 -0.48338932 -0.83066779 
		-0.60911864 -0.79059237 -0.062754281 0.0008522711 -0.50685787 -0.86202925 0.55553806 
		-0.44503817 -0.70236635 0.55553806 -0.44503817 -0.70236635 -0.27627099 -0.48338932 
		-0.83066779;
	setAttr ".n[166:331]" -type "float3"  0.90434414 -0.42369592 0.051412463 0.5671922 
		-0.52397329 0.63540936 0.5671922 -0.52397329 0.63540936 0.90434414 -0.42369592 0.051412463 
		0.5671922 -0.52397329 0.63540936 -0.013013413 -0.68418455 0.72919273 -0.13618146 
		-0.67459863 0.72551447 0.5671922 -0.52397329 0.63540936 -0.013013413 -0.68418455 
		0.72919273 -0.01943252 -0.99764442 -0.065788232 -0.60911864 -0.79059237 -0.062754281 
		-0.13618146 -0.67459863 0.72551447 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 0 -1 
		0 0 -1 0 0 -1 0 0 -1 0 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 0.58275461 0.32394633 0.74528915 -0.59331352 0.379361 0.709975 
		-0.59331352 0.379361 0.709975 0.58275461 0.32394633 0.74528915 0.98316538 0.17633653 
		-0.047865547 0.58275461 0.32394633 0.74528915 0.58275461 0.32394633 0.74528915 0.98316538 
		0.17633653 -0.047865547 0.55083275 0.36904636 -0.74859071 0.98316538 0.17633653 -0.047865547 
		0.98316538 0.17633653 -0.047865547 0.55083275 0.36904636 -0.74859071 -0.54429042 
		0.47979477 -0.68814605 0.55083275 0.36904636 -0.74859071 0.55083275 0.36904636 -0.74859071 
		-0.54429042 0.47979477 -0.68814605 -0.91299671 0.40796652 0.00069405633 -0.54429042 
		0.47979477 -0.68814605 -0.54429042 0.47979477 -0.68814605 -0.91299671 0.40796652 
		0.00069405633 -0.59331352 0.379361 0.709975 -0.91299671 0.40796652 0.00069405633 
		-0.91299671 0.40796652 0.00069405633 -0.59331352 0.379361 0.709975 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 0.22369431 
		0.93739921 0.26691517 -0.29518437 0.91629481 0.27068421 -0.29518437 0.91629481 0.27068421 
		0.22369431 0.93739921 0.26691517 0.5091306 -0.65372622 -0.55984658 -0.5408445 -0.59074742 
		-0.59875256 -0.5408445 -0.59074742 -0.59875256 0.5091306 -0.65372622 -0.55984658 
		0.54072785 0.83851516 -0.067123808 0.22369431 0.93739921 0.26691517 0.22369431 0.93739921 
		0.26691517 0.54072785 0.83851516 -0.067123808 -0.5408445 -0.59074742 -0.59875256 
		-0.83736998 -0.53009111 0.13347216 -0.83736998 -0.53009111 0.13347216 -0.5408445 
		-0.59074742 -0.59875256 0.29041293 0.87880445 -0.37863329 0.54072785 0.83851516 -0.067123808 
		0.54072785 0.83851516 -0.067123808 0.29041293 0.87880445 -0.37863329 -0.83736998 
		-0.53009111 0.13347216 -0.30715185 -0.81691998 0.4881593 -0.30715185 -0.81691998 
		0.4881593 -0.83736998 -0.53009111 0.13347216 -0.34293041 0.85303295 -0.39336187 0.29041293 
		0.87880445 -0.37863329 0.29041293 0.87880445 -0.37863329 -0.34293041 0.85303295 -0.39336187 
		-0.30715185 -0.81691998 0.4881593 0.29826152 -0.8468042 0.44041187 0.29826152 -0.8468042 
		0.44041187 -0.30715185 -0.81691998 0.4881593 -0.54790097 0.83249742 -0.082174078 
		-0.34293041 0.85303295 -0.39336187 -0.34293041 0.85303295 -0.39336187 -0.54790097 
		0.83249742 -0.082174078 0.29826152 -0.8468042 0.44041187 0.69743651 -0.71336651 0.068486519 
		0.69743651 -0.71336651 0.068486519 0.29826152 -0.8468042 0.44041187 -0.29518437 0.91629481 
		0.27068421 -0.54790097 0.83249742 -0.082174078 -0.54790097 0.83249742 -0.082174078 
		-0.29518437 0.91629481 0.27068421 0.69743651 -0.71336651 0.068486519 0.5091306 -0.65372622 
		-0.55984658 0.5091306 -0.65372622 -0.55984658 0.69743651 -0.71336651 0.068486519 
		0.19935195 0.10343254 -0.010533526 0.10866033 0.12926215 -0.14844073 -0.12077045 
		0.11915658 -0.14753526 -0.19944088 0.10264421 -0.015425248 -0.13193345 0.1265354 
		0.13089232 0.11534587 0.13795826 0.13495661 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[332:497]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 -0.67135358 0.11461293 -0.73222142 -0.14320761 0.28641233 -0.94734335 
		-0.99480408 -0.10167985 0.0050950684 -0.64619374 -0.024646429 0.76277536 -0.14572741 
		0.069759004 0.9868623 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		-0.47564229 -0.71640813 -0.51041526 -5.259015e-007 -0.69282633 -0.72110444 -5.259015e-007 
		-0.69282633 -0.72110444 -0.47564229 -0.71640813 -0.51041526 -0.75579566 -0.65480167 
		-0.0027798752 -0.47564229 -0.71640813 -0.51041526 -0.47564229 -0.71640813 -0.51041526 
		-0.75579566 -0.65480167 -0.0027798752 -0.45808879 -0.75098252 0.47558367 -0.75579566 
		-0.65480167 -0.0027798752 -0.75579566 -0.65480167 -0.0027798752 -0.45808879 -0.75098252 
		0.47558367 -4.0514195e-007 -0.74501717 0.6670453 -0.45808879 -0.75098252 0.47558367 
		-0.45808879 -0.75098252 0.47558367 -4.0514195e-007 -0.74501717 0.6670453 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 0.61166984 -0.6514262 -0.44889212 0.16238643 -0.37504286 
		0.91267389 0.17955545 0.085384592 0.98003536 0.77504778 -0.066861697 -0.62835532 
		-0.81156236 -0.56355006 -0.15420069 0.61166984 -0.6514262 -0.44889212 0.77504778 
		-0.066861697 -0.62835532 -0.97268641 -0.033483423 -0.22969575 0.16238643 -0.37504286 
		0.91267389 -0.81156236 -0.56355006 -0.15420069 -0.97268641 -0.033483423 -0.22969575 
		0.17955545 0.085384592 0.98003536 0.17955545 0.085384592 0.98003536 -0.97268641 -0.033483423 
		-0.22969575 -0.82175553 0.52029306 -0.23240702 0.16031246 0.50139916 0.85023451 0.77504778 
		-0.066861697 -0.62835532 0.17955545 0.085384592 0.98003536 0.16031246 0.50139916 
		0.85023451 0.61005217 0.57614523 -0.54396057 -0.97268641 -0.033483423 -0.22969575 
		0.77504778 -0.066861697 -0.62835532 0.61005217 0.57614523 -0.54396057 -0.82175553 
		0.52029306 -0.23240702 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 0.14993387 -0.5076713 
		0.84840417 -0.77528143 -0.60899723 -0.16751438 -0.97197658 0.14962317 -0.18131313 
		0.16662297 0.15714614 0.9734177 0.57255417 -0.68746126 -0.44674236 0.14993387 -0.5076713 
		0.84840417 0.16662297 0.15714614 0.9734177 0.79128659 0.19079208 -0.58091646 -0.77528143 
		-0.60899723 -0.16751438 0.57255417 -0.68746126 -0.44674236 0.79128659 0.19079208 
		-0.58091646 -0.97197658 0.14962317 -0.18131313 0.79128659 0.19079208 -0.58091646 
		0.16662297 0.15714614 0.9734177 0.11878019 0.68558967 0.71823257 0.46985179 0.82181448 
		-0.32227346 -0.97197658 0.14962317 -0.18131313 0.79128659 0.19079208 -0.58091646 
		0.46985179 0.82181448 -0.32227346 -0.64370984 0.75879419 -0.099342562 0.16662297 
		0.15714614 0.9734177 -0.97197658 0.14962317 -0.18131313 -0.64370984 0.75879419 -0.099342562 
		0.11878019 0.68558967 0.71823257 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020;
	setAttr ".n[498:663]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 0.87080479 -0.49071535 -0.02995606 0.81523645 
		0.57581073 0.061899353 0.81523645 0.57581073 0.061899353 0.87080479 -0.49071535 -0.02995606 
		1e+020 1e+020 1e+020 0 -1 -1.0307938e-010 0 -1 -1.0307938e-010 0 -1 -2.0615876e-010 
		0 -1 -2.0615876e-010 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 -0.61468029 -0.70843631 
		-0.34682316 0.003275451 -0.9654851 -0.26043802 0.003275451 -0.9654851 -0.26043802 
		-0.61468029 -0.70843631 -0.34682316 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 0.003275451 -0.9654851 -0.26043802 
		0.87080479 -0.49071535 -0.02995606 0.87080479 -0.49071535 -0.02995606 0.003275451 
		-0.9654851 -0.26043802 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 0.20883621 0.97369033 
		0.09118475 0.81523645 0.57581073 0.061899353 0.81523645 0.57581073 0.061899353 0.20883621 
		0.97369033 0.09118475 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 0.64693439 0.6003328 0.4701876 0.64693439 0.6003328 0.4701876 
		0.27230382 0.96173722 -0.030201338 0.27230382 0.96173722 -0.030201338 0.8928138 -0.44950855 
		-0.02873205 0.8928138 -0.44950855 -0.02873205 0.91730881 -0.079660214 0.39012668 
		0.91730881 -0.079660214 0.39012668 0.91730881 -0.079660214 0.39012668 0.91730881 
		-0.079660214 0.39012668 0.64693439 0.6003328 0.4701876 0.64693439 0.6003328 0.4701876 
		0.27230382 0.96173722 -0.030201338 0.27230382 0.96173722 -0.030201338 0.49626508 
		0.44309002 -0.7465871 0.49626508 0.44309002 -0.7465871 0.49626508 0.44309002 -0.7465871 
		0.49626508 0.44309002 -0.7465871 0.69883424 -0.40527096 -0.58939481 0.69883424 -0.40527096 
		-0.58939481 0.69883424 -0.40527096 -0.58939481 0.69883424 -0.40527096 -0.58939481 
		0.8928138 -0.44950855 -0.02873205 0.8928138 -0.44950855 -0.02873205 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 -0.55747539 -0.44885364 -0.69839209 -0.55747539 -0.44885364 
		-0.69839209 -0.9010787 -0.43054041 0.051884588 -0.9010787 -0.43054041 0.051884588 
		-0.01943252 -0.99764442 -0.065788232 0.58033818 -0.81324154 -0.04296425 0.27911851 
		-0.49046177 -0.82555443 0.0008522711 -0.50685787 -0.86202925 0.0008522711 -0.50685787 
		-0.86202925 0.27911851 -0.49046177 -0.82555443 -0.55747539 -0.44885364 -0.69839209 
		-0.55747539 -0.44885364 -0.69839209 -0.9010787 -0.43054041 0.051884588 -0.9010787 
		-0.43054041 0.051884588 -0.56153595 -0.53536838 0.6309185 -0.56153595 -0.53536838 
		0.6309185 -0.56153595 -0.53536838 0.6309185 -0.56153595 -0.53536838 0.6309185 0.10875724 
		-0.68339741 0.72190011 -0.013013413 -0.68418455 0.72919273 -0.013013413 -0.68418455 
		0.72919273 0.10875724 -0.68339741 0.72190011 0.58033818 -0.81324154 -0.04296425 -0.01943252 
		-0.99764442 -0.065788232 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 0 -1 -1.0307938e-010 
		0 -1 0 0 -1 0 0 -1 -1.0307938e-010 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[664:829]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 -0.58275402 0.32394758 0.74528903 -0.58275402 
		0.32394758 0.74528903 0.59331369 0.37936124 0.70997465 0.59331369 0.37936124 0.70997465 
		-0.98316532 0.17633745 -0.047865506 -0.98316532 0.17633745 -0.047865506 -0.58275402 
		0.32394758 0.74528903 -0.58275402 0.32394758 0.74528903 -0.55083287 0.36904526 -0.74859113 
		-0.55083287 0.36904526 -0.74859113 -0.98316532 0.17633745 -0.047865506 -0.98316532 
		0.17633745 -0.047865506 0.54429138 0.47979376 -0.68814594 0.54429138 0.47979376 -0.68814594 
		-0.55083287 0.36904526 -0.74859113 -0.55083287 0.36904526 -0.74859113 0.91299683 
		0.40796605 0.00069436693 0.91299683 0.40796605 0.00069436693 0.54429138 0.47979376 
		-0.68814594 0.54429138 0.47979376 -0.68814594 0.59331369 0.37936124 0.70997465 0.59331369 
		0.37936124 0.70997465 0.91299683 0.40796605 0.00069436693 0.91299683 0.40796605 0.00069436693 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		-0.22369482 0.93739897 0.26691523 -0.22369482 0.93739897 0.26691523 0.29518431 0.91629475 
		0.27068481 0.29518431 0.91629475 0.27068481 -0.50913262 -0.65372384 -0.55984741 -0.50913262 
		-0.65372384 -0.55984741 0.54084289 -0.59074926 -0.59875214 0.54084289 -0.59074926 
		-0.59875214 -0.54072475 0.83851731 -0.067122757 -0.54072475 0.83851731 -0.067122757 
		-0.22369482 0.93739897 0.26691523 -0.22369482 0.93739897 0.26691523 0.54084289 -0.59074926 
		-0.59875214 0.54084289 -0.59074926 -0.59875214 0.83736765 -0.53009504 0.13347147 
		0.83736765 -0.53009504 0.13347147 -0.29040882 0.87880623 -0.37863195 -0.29040882 
		0.87880623 -0.37863195 -0.54072475 0.83851731 -0.067122757 -0.54072475 0.83851731 
		-0.067122757 0.83736765 -0.53009504 0.13347147 0.83736765 -0.53009504 0.13347147 
		0.30715042 -0.81692106 0.48815838 0.30715042 -0.81692106 0.48815838 0.34292135 0.85303795 
		-0.39335877 0.34292135 0.85303795 -0.39335877 -0.29040882 0.87880623 -0.37863195 
		-0.29040882 0.87880623 -0.37863195 0.30715042 -0.81692106 0.48815838 0.30715042 -0.81692106 
		0.48815838 -0.29826224 -0.8468039 0.44041207 -0.29826224 -0.8468039 0.44041207 0.54789245 
		0.83250332 -0.082171038 0.54789245 0.83250332 -0.082171038 0.34292135 0.85303795 
		-0.39335877 0.34292135 0.85303795 -0.39335877 -0.29826224 -0.8468039 0.44041207 -0.29826224 
		-0.8468039 0.44041207 -0.69743901 -0.71336424 0.068486422 -0.69743901 -0.71336424 
		0.068486422 0.29518431 0.91629475 0.27068481 0.29518431 0.91629475 0.27068481 0.54789245 
		0.83250332 -0.082171038 0.54789245 0.83250332 -0.082171038 -0.69743901 -0.71336424 
		0.068486422 -0.69743901 -0.71336424 0.068486422 -0.50913262 -0.65372384 -0.55984741 
		-0.50913262 -0.65372384 -0.55984741 -0.10866034 0.12926215 -0.14844079 -0.19935195 
		0.10343254 -0.010533526 0.12077045 0.11915658 -0.14753526 0.19944088 0.10264423 -0.01542525 
		0.13193347 0.1265354 0.13089232 -0.11534587 0.13795827 0.13495661 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[830:949]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 0.15094329 0.025768911 -0.16462845 0.22366603 -0.022861116 0.001145546 
		0.1452865 -0.0055413619 0.17149803 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 0.47563109 -0.71641868 -0.51041108 
		0.47563109 -0.71641868 -0.51041108 -5.259015e-007 -0.69282633 -0.72110444 -5.259015e-007 
		-0.69282633 -0.72110444 0.75579047 -0.65480769 -0.0027758481 0.75579047 -0.65480769 
		-0.0027758481 0.47563109 -0.71641868 -0.51041108 0.47563109 -0.71641868 -0.51041108 
		0.45809388 -0.75097829 0.47558561 0.45809388 -0.75097829 0.47558561 0.75579047 -0.65480769 
		-0.0027758481 0.75579047 -0.65480769 -0.0027758481 -4.0514195e-007 -0.74501717 0.6670453 
		-4.0514195e-007 -0.74501717 0.6670453 0.45809388 -0.75097829 0.47558561 0.45809388 
		-0.75097829 0.47558561 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 -0.61166888 -0.6514281 
		-0.44889033 -0.77504909 -0.066870533 -0.62835288 -0.17955542 0.08537557 0.9800362 
		-0.16238227 -0.3750388 0.91267622 0.81156641 -0.56354368 -0.15420255 0.97268677 -0.033480007 
		-0.22969455 -0.77504909 -0.066870533 -0.62835288 -0.61166888 -0.6514281 -0.44889033 
		-0.16238227 -0.3750388 0.91267622 -0.17955542 0.08537557 0.9800362 0.97268677 -0.033480007 
		-0.22969455 0.81156641 -0.56354368 -0.15420255 -0.17955542 0.08537557 0.9800362 -0.16031797 
		0.50138372 0.85024261 0.82175744 0.52029115 -0.23240426 0.97268677 -0.033480007 -0.22969455 
		-0.77504909 -0.066870533 -0.62835288 -0.61005968 0.57613558 -0.54396224 -0.16031797 
		0.50138372 0.85024261 -0.17955542 0.08537557 0.9800362 0.97268677 -0.033480007 -0.22969455 
		0.82175744 0.52029115 -0.23240426 -0.61005968 0.57613558 -0.54396224 -0.77504909 
		-0.066870533 -0.62835288 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 -0.14993611 
		-0.50765693 0.84841239 -0.16662222 0.157152 0.97341681 0.9719758 0.14962524 -0.18131554 
		0.77528423 -0.60899282 -0.16751733 -0.57256401 -0.68745142 -0.44674486 -0.79128933 
		0.1908019 -0.58090949 -0.16662222 0.157152 0.97341681 -0.14993611 -0.50765693 0.84841239 
		0.77528423 -0.60899282 -0.16751733 0.9719758 0.14962524 -0.18131554 -0.79128933 0.1908019 
		-0.58090949 -0.57256401 -0.68745142 -0.44674486 -0.79128933 0.1908019 -0.58090949 
		-0.46985644 0.82181317 -0.3222703 -0.11877919 0.68558645 0.71823585 -0.16662222 0.157152 
		0.97341681 0.9719758 0.14962524 -0.18131554 0.64371079 0.75879329 -0.099344112 -0.46985644 
		0.82181317 -0.3222703 -0.79128933 0.1908019 -0.58090949 -0.16662222 0.157152 0.97341681 
		-0.11877919 0.68558645 0.71823585 0.64371079 0.75879329 -0.099344112 0.9719758 0.14962524 
		-0.18131554 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 0.95511496 -0.082153037 -0.28461593 0.95511496 -0.082153037 -0.28461593 
		-0.7246899 -0.12350032 -0.67791766 -0.7246899 -0.12350032 -0.67791766 -0.1792718 
		0.049056295 0.98257577 -0.1792718 0.049056295 0.98257577 0.95511496 -0.082153037 
		-0.28461593 0.95511496 -0.082153037 -0.28461593 -0.7246899 -0.12350032 -0.67791766 
		-0.7246899 -0.12350032 -0.67791766 -0.1792718 0.049056295 0.98257577 -0.1792718 0.049056295 
		0.98257577 1e+020 1e+020 1e+020;
	setAttr -s 590 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 -254 254 436 435 
		mu 0 4 0 756 2 3 
		f 4 -259 259 261 -263 
		mu 0 4 4 5 6 7 
		f 4 -153 154 156 -158 
		mu 0 4 8 770 10 11 
		f 4 245 0 19 246 
		mu 0 4 12 13 14 15 
		f 4 -3 56 11 -58 
		mu 0 4 16 17 18 19 
		f 4 3 250 249 -64 
		mu 0 4 13 20 21 22 
		f 3 -246 248 -4 
		mu 0 3 13 12 20 
		f 4 -6 57 12 468 
		mu 0 4 23 564 562 574 
		f 4 6 474 473 -63 
		mu 0 4 563 26 27 28 
		f 4 -25 27 472 -7 
		mu 0 4 563 29 30 26 
		f 4 -9 58 13 -60 
		mu 0 4 31 572 570 34 
		f 4 9 60 14 -62 
		mu 0 4 571 36 37 38 
		f 4 -27 29 28 -10 
		mu 0 4 571 573 604 36 
		f 3 -20 17 243 
		mu 0 3 15 14 41 
		f 4 -264 264 265 -260 
		mu 0 4 5 42 43 6 
		f 4 -267 -438 440 439 
		mu 0 4 46 47 48 49 
		f 4 35 -38 39 40 
		mu 0 4 50 51 45 53 
		f 4 -26 -2 2 4 
		mu 0 4 565 745 17 16 
		f 4 -28 -5 5 470 
		mu 0 4 30 29 564 23 
		f 4 -30 -8 8 10 
		mu 0 4 40 606 572 31 
		f 4 -147 148 149 -143 
		mu 0 4 773 775 774 772 
		f 3 1 -32 -31 
		mu 0 3 17 745 59 
		f 4 445 -33 294 263 
		mu 0 4 5 59 60 42 
		f 4 31 34 70 -34 
		mu 0 4 684 810 61 62 
		f 4 -24 36 68 -35 
		mu 0 4 54 686 813 811 
		f 4 21 38 73 -37 
		mu 0 4 332 683 65 64 
		f 4 32 33 72 -39 
		mu 0 4 683 684 62 65 
		f 4 -43 63 43 -65 
		mu 0 4 66 13 22 67 
		f 4 47 64 -45 18 
		mu 0 4 68 66 67 69 
		f 3 -1 42 -46 
		mu 0 3 14 13 66 
		f 3 -48 46 45 
		mu 0 3 66 68 14 
		f 3 -66 51 -54 
		mu 0 3 70 71 72 
		f 4 65 -53 -19 50 
		mu 0 4 71 70 68 69 
		f 4 -49 52 53 -50 
		mu 0 4 73 68 70 72 
		f 3 444 274 253 
		mu 0 3 0 74 756 
		f 4 -272 -276 266 276 
		mu 0 4 60 755 47 46 
		f 3 443 441 279 
		mu 0 3 43 76 77 
		f 4 -69 66 37 -68 
		mu 0 4 811 813 52 812 
		f 4 -71 67 -36 -70 
		mu 0 4 62 61 51 50 
		f 4 -73 69 -41 -72 
		mu 0 4 65 62 50 53 
		f 4 -74 71 -40 -67 
		mu 0 4 64 65 53 45 
		f 4 -297 298 300 -302 
		mu 0 4 78 79 680 677 
		f 4 -61 74 90 -77 
		mu 0 4 37 36 82 83 
		f 4 -304 305 306 -299 
		mu 0 4 79 84 678 680 
		f 4 59 80 85 -79 
		mu 0 4 31 34 86 87 
		f 4 -86 83 448 -85 
		mu 0 4 87 86 88 89 
		f 4 -88 84 450 -87 
		mu 0 4 621 87 89 618 
		f 4 -90 86 452 -89 
		mu 0 4 82 90 91 92 
		f 4 -91 88 454 -83 
		mu 0 4 83 82 92 93 
		f 4 -29 91 93 -93 
		mu 0 4 36 604 605 581 
		f 4 89 95 -97 -95 
		mu 0 4 90 82 582 578 
		f 4 -75 92 97 -96 
		mu 0 4 82 36 581 582 
		f 4 -11 98 99 -92 
		mu 0 4 40 31 579 580 
		f 4 78 100 -102 -99 
		mu 0 4 31 87 577 579 
		f 4 87 94 -103 -101 
		mu 0 4 87 621 622 577 
		f 4 -94 103 358 -105 
		mu 0 4 94 95 96 97 
		f 4 96 107 351 -107 
		mu 0 4 98 99 100 101 
		f 4 -98 104 349 -108 
		mu 0 4 99 94 97 100 
		f 4 -100 110 357 -104 
		mu 0 4 95 102 103 96 
		f 4 101 112 355 -111 
		mu 0 4 102 702 703 103 
		f 4 102 106 353 -113 
		mu 0 4 104 98 101 105 
		f 4 -76 115 430 -117 
		mu 0 4 106 107 108 109 
		f 4 -78 116 432 -119 
		mu 0 4 110 106 109 111 
		f 4 -80 121 428 -116 
		mu 0 4 620 112 113 619 
		f 4 81 123 426 -122 
		mu 0 4 112 114 115 113 
		f 4 -118 126 128 -128 
		mu 0 4 632 630 636 637 
		f 4 119 130 -132 -130 
		mu 0 4 120 121 638 634 
		f 4 -121 127 132 -131 
		mu 0 4 121 632 637 638 
		f 4 -123 133 134 -127 
		mu 0 4 630 629 635 636 
		f 4 124 135 -137 -134 
		mu 0 4 629 126 633 635 
		f 4 125 129 -138 -136 
		mu 0 4 126 120 634 633 
		f 4 -129 138 370 -140 
		mu 0 4 119 118 128 129 
		f 4 131 143 363 -142 
		mu 0 4 123 122 130 131 
		f 4 -133 139 361 -144 
		mu 0 4 122 119 129 130 
		f 4 -135 145 369 -139 
		mu 0 4 118 125 132 128 
		f 4 136 147 367 -146 
		mu 0 4 125 803 133 132 
		f 4 137 141 365 -148 
		mu 0 4 127 123 131 795 
		f 4 -141 150 152 -152 
		mu 0 4 134 55 770 8 
		f 4 142 153 -155 -151 
		mu 0 4 773 772 771 9 
		f 4 144 155 -157 -154 
		mu 0 4 58 135 11 10 
		f 4 -168 151 157 -156 
		mu 0 4 135 134 8 11 
		f 3 -160 -145 -159 
		mu 0 3 136 135 58 
		f 4 -162 158 -150 -161 
		mu 0 4 794 136 58 802 
		f 4 -164 160 -149 -163 
		mu 0 4 138 137 57 56 
		f 4 -166 162 146 -165 
		mu 0 4 139 138 56 55 
		f 3 -167 164 140 
		mu 0 3 134 139 55 
		f 4 -171 168 239 -170 
		mu 0 4 140 141 142 143 
		f 4 -173 169 230 -172 
		mu 0 4 796 140 143 797 
		f 4 -175 171 232 -174 
		mu 0 4 146 144 145 147 
		f 4 -177 173 234 -176 
		mu 0 4 148 146 147 149 
		f 4 -179 175 236 -178 
		mu 0 4 150 148 149 151 
		f 4 -180 177 238 -169 
		mu 0 4 141 150 151 142 
		f 4 -201 202 204 -206 
		mu 0 4 152 153 154 650 
		f 4 -208 205 209 -211 
		mu 0 4 156 152 650 649 
		f 4 -213 210 214 -216 
		mu 0 4 799 156 649 648 
		f 4 -218 215 219 -221 
		mu 0 4 160 158 800 647 
		f 4 -223 220 224 -226 
		mu 0 4 162 160 647 645 
		f 4 -227 225 227 -203 
		mu 0 4 153 162 645 154 
		f 4 -189 186 373 -188 
		mu 0 4 769 765 166 167 
		f 4 -191 187 375 -190 
		mu 0 4 768 769 167 169 
		f 4 -193 189 377 -192 
		mu 0 4 801 768 169 793 
		f 4 -195 191 379 -194 
		mu 0 4 766 767 171 173 
		f 4 -197 193 381 -196 
		mu 0 4 764 766 173 175 
		f 4 -198 195 382 -187 
		mu 0 4 765 764 175 166 
		f 4 -181 198 200 -200 
		mu 0 4 176 177 153 152 
		f 4 188 203 -205 -202 
		mu 0 4 165 164 155 646 
		f 4 -182 199 207 -207 
		mu 0 4 178 176 152 156 
		f 4 190 208 -210 -204 
		mu 0 4 164 168 157 155 
		f 4 -183 206 212 -212 
		mu 0 4 798 178 156 799 
		f 4 192 213 -215 -209 
		mu 0 4 168 170 159 157 
		f 4 -184 211 217 -217 
		mu 0 4 180 179 158 160 
		f 4 194 218 -220 -214 
		mu 0 4 170 172 161 159 
		f 4 -185 216 222 -222 
		mu 0 4 181 180 160 162 
		f 4 196 223 -225 -219 
		mu 0 4 172 174 163 161 
		f 4 -186 221 226 -199 
		mu 0 4 177 181 162 153 
		f 4 197 201 -228 -224 
		mu 0 4 174 165 646 163 
		f 4 -231 228 182 -230 
		mu 0 4 797 143 178 798 
		f 4 -233 229 183 -232 
		mu 0 4 147 145 179 180 
		f 4 -235 231 184 -234 
		mu 0 4 149 147 180 181 
		f 4 -237 233 185 -236 
		mu 0 4 151 149 181 177 
		f 4 -239 235 180 -238 
		mu 0 4 142 151 177 176 
		f 4 -240 237 181 -229 
		mu 0 4 143 142 176 178 
		f 4 -287 434 -255 284 
		mu 0 4 182 183 753 1 
		f 3 -275 -288 -285 
		mu 0 3 1 754 182 
		f 4 -291 -436 438 437 
		mu 0 4 47 0 3 48 
		f 4 -290 -445 290 275 
		mu 0 4 755 74 0 47 
		f 4 22 -247 244 23 
		mu 0 4 685 12 15 63 
		f 5 -249 -23 25 24 -248 
		mu 0 5 20 12 685 746 25 
		f 4 -251 247 62 16 
		mu 0 4 21 20 25 561 
		f 4 -293 -440 442 -279 
		mu 0 4 184 46 49 76 
		f 4 -295 -277 292 277 
		mu 0 4 42 60 46 184 
		f 3 -22 270 271 
		mu 0 3 757 63 75 
		f 3 30 -273 -258 
		mu 0 3 17 59 4 
		f 4 -252 285 286 -284 
		mu 0 4 185 186 183 182 
		f 4 -243 283 287 -274 
		mu 0 4 41 185 182 754 
		f 4 -244 273 289 -289 
		mu 0 4 15 41 754 75 
		f 3 -245 288 -271 
		mu 0 3 63 15 75 
		f 4 -286 -241 280 281 
		mu 0 4 183 186 187 188 
		f 3 396 395 296 
		mu 0 3 78 189 79 
		f 3 400 -301 -399 
		mu 0 3 190 81 80 
		f 4 -311 312 314 -316 
		mu 0 4 675 192 193 194 
		f 3 397 303 -396 
		mu 0 3 189 84 79 
		f 4 390 389 -306 -388 
		mu 0 4 195 196 678 84 
		f 3 399 398 -307 
		mu 0 3 85 190 80 
		f 4 -110 383 307 -300 
		mu 0 4 682 198 199 679 
		f 4 301 -394 -309 384 
		mu 0 4 78 677 676 202 
		f 4 -308 401 404 -310 
		mu 0 4 679 199 203 674 
		f 4 455 311 409 -402 
		mu 0 4 199 202 205 203 
		f 4 308 313 408 -312 
		mu 0 4 202 676 206 205 
		f 4 -465 309 406 -314 
		mu 0 4 201 200 204 672 
		f 4 -318 316 489 -411 
		mu 0 4 197 207 208 209 
		f 4 -319 410 491 -412 
		mu 0 4 210 197 209 211 
		f 4 -320 411 493 -413 
		mu 0 4 212 210 211 213 
		f 4 -321 412 495 -414 
		mu 0 4 214 704 705 215 
		f 4 -322 413 497 -415 
		mu 0 4 216 214 215 217 
		f 4 498 -317 -323 414 
		mu 0 4 217 208 207 216 
		f 4 -326 323 317 -325 
		mu 0 4 218 219 207 197 
		f 4 -328 324 318 -327 
		mu 0 4 220 218 197 210 
		f 4 -330 326 319 -329 
		mu 0 4 221 220 210 212 
		f 4 -332 328 320 -331 
		mu 0 4 711 706 704 214 
		f 4 -334 330 321 -333 
		mu 0 4 222 711 214 216 
		f 4 -335 332 322 -324 
		mu 0 4 219 222 216 207 
		f 4 -338 335 -115 -337 
		mu 0 4 223 224 225 226 
		f 4 -340 336 -114 -339 
		mu 0 4 712 707 708 709 
		f 4 -342 338 111 -341 
		mu 0 4 227 712 709 228 
		f 4 -344 340 105 -343 
		mu 0 4 229 227 228 230 
		f 4 -346 342 109 -345 
		mu 0 4 231 229 230 232 
		f 4 -347 344 -109 -336 
		mu 0 4 224 231 232 225 
		f 4 -350 347 477 -349 
		mu 0 4 100 97 233 234 
		f 4 -352 348 479 -351 
		mu 0 4 101 100 234 235 
		f 4 -354 350 481 -353 
		mu 0 4 105 101 235 236 
		f 4 -356 352 483 -355 
		mu 0 4 103 703 710 237 
		f 4 -358 354 485 -357 
		mu 0 4 96 103 237 587 
		f 4 -359 356 486 -348 
		mu 0 4 97 96 587 233 
		f 4 -362 359 179 -361 
		mu 0 4 130 129 150 141 
		f 4 -364 360 170 -363 
		mu 0 4 131 130 141 140 
		f 4 -366 362 172 -365 
		mu 0 4 795 131 140 796 
		f 4 -368 364 174 -367 
		mu 0 4 132 133 144 146 
		f 4 -370 366 176 -369 
		mu 0 4 128 132 146 148 
		f 4 -371 368 178 -360 
		mu 0 4 129 128 148 150 
		f 4 -374 371 167 -373 
		mu 0 4 167 166 134 135 
		f 4 -376 372 159 -375 
		mu 0 4 169 167 135 136 
		f 4 -378 374 161 -377 
		mu 0 4 793 169 136 794 
		f 4 -380 376 163 -379 
		mu 0 4 173 171 137 138 
		f 4 -382 378 165 -381 
		mu 0 4 175 173 138 139 
		f 4 -383 380 166 -372 
		mu 0 4 166 175 139 134 
		f 4 457 456 -387 -456 
		mu 0 4 199 238 239 202 
		f 4 459 458 -389 -457 
		mu 0 4 238 240 195 239 
		f 4 461 460 -391 -459 
		mu 0 4 240 670 196 195 
		f 4 463 462 -393 -461 
		mu 0 4 241 242 243 671 
		f 4 465 464 -395 -463 
		mu 0 4 242 200 201 243 
		f 4 386 385 -397 -385 
		mu 0 4 202 239 189 78 
		f 4 388 387 -398 -386 
		mu 0 4 239 195 84 189 
		f 4 392 391 -400 -390 
		mu 0 4 671 243 190 85 
		f 4 394 393 -401 -392 
		mu 0 4 243 201 81 190 
		f 4 -405 402 310 -404 
		mu 0 4 674 203 192 675 
		f 4 -407 403 315 -406 
		mu 0 4 672 204 191 673 
		f 4 -409 405 -315 -408 
		mu 0 4 205 206 194 193 
		f 4 -410 407 -313 -403 
		mu 0 4 203 205 193 192 
		f 4 -418 415 -82 -417 
		mu 0 4 244 245 114 112 
		f 4 -420 416 79 -419 
		mu 0 4 616 244 112 620 
		f 4 -422 418 75 -421 
		mu 0 4 247 246 107 106 
		f 4 -424 420 77 -423 
		mu 0 4 248 247 106 110 
		f 4 -427 424 501 -426 
		mu 0 4 113 115 249 250 
		f 4 -429 425 503 -428 
		mu 0 4 619 113 250 617 
		f 4 -431 427 505 -430 
		mu 0 4 109 108 251 252 
		f 4 -433 429 507 -432 
		mu 0 4 111 109 252 253 
		f 4 -434 -435 -282 282 
		mu 0 4 254 753 183 188 
		f 4 -437 433 255 256 
		mu 0 4 3 2 748 255 
		f 4 -439 -257 291 267 
		mu 0 4 48 3 255 256 
		f 4 -441 -268 268 269 
		mu 0 4 49 48 256 257 
		f 4 -443 -270 293 -442 
		mu 0 4 76 49 257 77 
		f 4 -265 -278 278 -444 
		mu 0 4 43 42 184 76 
		f 3 258 272 -446 
		mu 0 3 5 4 59 
		f 4 -449 446 510 -448 
		mu 0 4 89 88 258 259 
		f 4 -451 447 512 -450 
		mu 0 4 618 89 259 615 
		f 4 -453 449 514 -452 
		mu 0 4 92 91 260 261 
		f 4 -455 451 516 -454 
		mu 0 4 93 92 261 262 
		f 4 -106 295 -458 -384 
		mu 0 4 198 586 238 199 
		f 4 -112 302 -460 -296 
		mu 0 4 586 585 240 238 
		f 4 113 304 -462 -303 
		mu 0 4 585 583 670 240 
		f 4 114 297 -464 -305 
		mu 0 4 681 584 242 241 
		f 4 108 299 -466 -298 
		mu 0 4 584 588 200 242 
		f 4 -468 -469 466 -59 
		mu 0 4 32 23 574 575 
		f 4 -470 -471 467 7 
		mu 0 4 39 30 23 32 
		f 4 -473 469 26 -472 
		mu 0 4 26 30 39 35 
		f 4 -475 471 61 15 
		mu 0 4 27 26 35 569 
		f 4 -478 475 325 -477 
		mu 0 4 234 233 219 218 
		f 4 -480 476 327 -479 
		mu 0 4 235 234 218 220 
		f 4 -482 478 329 -481 
		mu 0 4 236 235 220 221 
		f 4 -484 480 331 -483 
		mu 0 4 237 710 706 711 
		f 4 -486 482 333 -485 
		mu 0 4 587 237 711 222 
		f 4 -487 484 334 -476 
		mu 0 4 233 587 222 219 
		f 4 -490 487 345 -489 
		mu 0 4 209 208 229 231 
		f 4 -492 488 346 -491 
		mu 0 4 211 209 231 224 
		f 4 -494 490 337 -493 
		mu 0 4 213 211 224 223 
		f 4 -496 492 339 -495 
		mu 0 4 215 705 707 712 
		f 4 -498 494 341 -497 
		mu 0 4 217 215 712 227 
		f 4 -488 -499 496 343 
		mu 0 4 229 208 217 227 
		f 4 -502 499 -125 -501 
		mu 0 4 250 249 624 124 
		f 4 -504 500 122 -503 
		mu 0 4 617 250 124 631 
		f 4 -506 502 117 -505 
		mu 0 4 252 251 117 116 
		f 4 -508 504 120 -507 
		mu 0 4 253 252 116 628 
		f 4 -511 508 417 -510 
		mu 0 4 259 258 245 244 
		f 4 -513 509 419 -512 
		mu 0 4 615 259 244 616 
		f 4 -515 511 421 -514 
		mu 0 4 261 260 246 247 
		f 4 -517 513 423 -516 
		mu 0 4 262 261 247 248 
		f 3 -57 517 -519 
		mu 0 3 18 17 716 
		f 4 257 519 -521 -518 
		mu 0 4 17 4 718 716 
		f 4 262 521 -523 -520 
		mu 0 4 4 7 717 718 
		f 4 -261 518 523 -522 
		mu 0 4 7 18 716 717 
		f 4 520 525 591 -525 
		mu 0 4 263 264 266 719 
		f 4 522 526 589 -526 
		mu 0 4 264 265 268 266 
		f 4 -524 524 592 -527 
		mu 0 4 265 730 267 268 
		f 4 -530 527 537 -529 
		mu 0 4 269 270 271 272 
		f 4 -532 528 538 -531 
		mu 0 4 273 269 272 274 
		f 4 -533 530 535 -528 
		mu 0 4 720 273 274 729 
		f 4 -536 533 544 -535 
		mu 0 4 729 274 275 276 
		f 4 -538 534 540 -537 
		mu 0 4 272 271 728 277 
		f 4 -539 536 542 -534 
		mu 0 4 274 272 277 275 
		f 4 -541 543 579 -540 
		mu 0 4 277 728 278 279 
		f 4 -543 539 580 -542 
		mu 0 4 275 277 279 280 
		f 4 -545 541 577 -544 
		mu 0 4 276 275 280 723 
		f 4 -548 545 556 -547 
		mu 0 4 724 282 283 284 
		f 4 -550 546 552 -549 
		mu 0 4 285 281 727 286 
		f 4 -551 548 554 -546 
		mu 0 4 282 285 286 283 
		f 4 -553 555 561 -552 
		mu 0 4 286 727 287 288 
		f 4 -555 551 562 -554 
		mu 0 4 283 286 288 289 
		f 4 -557 553 559 -556 
		mu 0 4 284 283 289 726 
		f 4 -560 557 583 -559 
		mu 0 4 726 289 290 721 
		f 4 -562 558 585 -561 
		mu 0 4 288 287 291 292 
		f 4 -563 560 586 -558 
		mu 0 4 289 288 292 290 
		f 3 -566 563 -565 
		mu 0 3 725 294 295 
		f 3 -568 564 -567 
		mu 0 3 296 293 295 
		f 3 -569 566 -564 
		mu 0 3 294 296 295 
		f 4 -572 569 565 -571 
		mu 0 4 722 298 294 725 
		f 4 -574 570 567 -573 
		mu 0 4 299 297 293 296 
		f 4 -575 572 568 -570 
		mu 0 4 298 299 296 294 
		f 4 -578 575 547 -577 
		mu 0 4 723 280 282 724 
		f 4 -580 576 549 -579 
		mu 0 4 279 278 281 285 
		f 4 -581 578 550 -576 
		mu 0 4 280 279 285 282 
		f 4 -584 581 571 -583 
		mu 0 4 721 290 298 722 
		f 4 -586 582 573 -585 
		mu 0 4 292 291 297 299 
		f 4 -587 584 574 -582 
		mu 0 4 290 292 299 298 
		f 4 -590 587 531 -589 
		mu 0 4 266 268 269 273 
		f 4 -592 588 532 -591 
		mu 0 4 719 266 273 720 
		f 4 -593 590 529 -588 
		mu 0 4 268 267 270 269 
		f 3 -253 48 -594 
		mu 0 3 44 68 73 
		f 3 41 55 593 
		mu 0 3 73 300 44 
		f 3 1149 240 -595 
		mu 0 3 44 187 186 
		f 3 241 594 251 
		mu 0 3 185 44 186 
		f 3 242 -596 -242 
		mu 0 3 185 41 44 
		f 3 -18 20 595 
		mu 0 3 41 14 44 
		f 3 -21 -47 252 
		mu 0 3 44 14 68 
		f 4 -600 -599 -598 596 
		mu 0 4 301 302 303 752 
		f 4 602 -262 -602 600 
		mu 0 4 305 7 6 306 
		f 4 606 -606 -605 603 
		mu 0 4 307 308 309 779 
		f 4 -611 -610 -609 -608 
		mu 0 4 311 312 313 314 
		f 4 613 -12 -613 611 
		mu 0 4 315 19 18 316 
		f 4 616 -250 -616 -615 
		mu 0 4 314 22 21 317 
		f 3 614 -618 607 
		mu 0 3 314 317 311 
		f 4 -620 -13 -614 618 
		mu 0 4 318 24 576 558 
		f 4 622 -474 -622 -621 
		mu 0 4 560 28 27 320 
		f 4 620 -626 -625 623 
		mu 0 4 560 320 321 322 
		f 4 628 -14 -628 626 
		mu 0 4 323 34 570 566 
		f 4 631 -15 -631 -630 
		mu 0 4 568 38 37 326 
		f 4 629 -635 -634 632 
		mu 0 4 568 326 327 603 
		f 3 -637 -636 609 
		mu 0 3 312 329 313 
		f 4 601 -266 -639 637 
		mu 0 4 306 6 43 330 
		f 4 -643 -642 640 639 
		mu 0 4 333 334 335 336 
		f 4 -647 -646 644 -644 
		mu 0 4 337 338 339 808 
		f 4 -650 -612 648 647 
		mu 0 4 744 315 316 743 
		f 4 -651 -619 649 624 
		mu 0 4 321 318 558 322 
		f 4 -653 -627 651 633 
		mu 0 4 601 323 566 567 
		f 4 656 -656 -655 653 
		mu 0 4 778 776 780 781 
		f 3 658 657 -649 
		mu 0 3 316 346 743 
		f 4 -638 -662 660 -660 
		mu 0 4 306 330 347 346 
		f 4 664 -664 -663 -658 
		mu 0 4 690 348 349 805 
		f 4 662 -668 -667 665 
		mu 0 4 689 809 350 806 
		f 4 666 -671 -670 -669 
		mu 0 4 687 804 352 688 
		f 4 669 -672 -665 -661 
		mu 0 4 688 352 348 690 
		f 4 673 -44 -617 672 
		mu 0 4 353 67 22 314 
		f 4 -676 44 -674 -675 
		mu 0 4 354 69 67 353 
		f 3 676 -673 608 
		mu 0 3 313 353 314 
		f 3 -677 -678 674 
		mu 0 3 353 313 354 
		f 3 679 -52 678 
		mu 0 3 355 72 71 
		f 4 -51 675 680 -679 
		mu 0 4 71 69 354 355 
		f 4 49 -680 -681 681 
		mu 0 4 73 72 355 354 
		f 3 -597 -684 -683 
		mu 0 3 301 752 749 
		f 4 -687 -640 685 684 
		mu 0 4 347 333 336 750 
		f 3 -280 -689 -688 
		mu 0 3 43 77 358 
		f 4 690 -645 -690 667 
		mu 0 4 809 340 807 350 
		f 4 691 643 -691 663 
		mu 0 4 348 337 808 349 
		f 4 692 646 -692 671 
		mu 0 4 352 338 337 348 
		f 4 689 645 -693 670 
		mu 0 4 804 339 338 352 
		f 4 696 -696 -695 693 
		mu 0 4 359 360 669 362 
		f 4 76 -699 -698 630 
		mu 0 4 37 83 363 326 
		f 4 694 -702 -701 699 
		mu 0 4 362 669 668 365 
		f 4 703 -703 -81 -629 
		mu 0 4 323 366 86 34 
		f 4 705 -705 -84 702 
		mu 0 4 366 367 88 86 
		f 4 708 -708 -706 706 
		mu 0 4 368 610 367 366 
		f 4 711 -711 -709 709 
		mu 0 4 363 370 369 613 
		f 4 82 -713 -712 698 
		mu 0 4 83 93 370 363 
		f 4 715 -715 -714 634 
		mu 0 4 326 593 592 327 
		f 4 718 717 -717 -710 
		mu 0 4 613 614 594 363 
		f 4 716 -720 -716 697 
		mu 0 4 363 594 593 326 
		f 4 713 -722 -721 652 
		mu 0 4 601 602 591 323 
		f 4 720 723 -723 -704 
		mu 0 4 323 591 589 366 
		f 4 722 724 -719 -707 
		mu 0 4 366 589 590 368 
		f 4 727 -727 -726 714 
		mu 0 4 371 372 373 374 
		f 4 730 -730 -729 -718 
		mu 0 4 375 376 377 378 
		f 4 728 -732 -728 719 
		mu 0 4 378 377 372 371 
		f 4 725 -734 -733 721 
		mu 0 4 374 373 379 380 
		f 4 732 -736 -735 -724 
		mu 0 4 380 379 381 382 
		f 4 734 -737 -731 -725 
		mu 0 4 691 697 376 375 
		f 4 740 -740 -739 737 
		mu 0 4 383 384 385 612 
		f 4 118 -743 -741 741 
		mu 0 4 110 111 384 383 
		f 4 738 -746 -745 743 
		mu 0 4 386 611 387 388 
		f 4 744 -748 -124 -747 
		mu 0 4 388 387 115 114 
		f 4 751 -751 -750 748 
		mu 0 4 627 643 642 625 
		f 4 754 753 -753 -120 
		mu 0 4 120 640 644 121 
		f 4 752 -757 -752 755 
		mu 0 4 121 644 643 627 
		f 4 749 -760 -759 757 
		mu 0 4 625 642 641 623 
		f 4 758 762 -762 -761 
		mu 0 4 623 641 639 126 
		f 4 761 763 -755 -126 
		mu 0 4 126 639 640 120 
		f 4 766 -766 -765 750 
		mu 0 4 390 398 399 391 
		f 4 769 -769 -768 -754 
		mu 0 4 393 400 401 394 
		f 4 767 -771 -767 756 
		mu 0 4 394 401 398 390 
		f 4 764 -773 -772 759 
		mu 0 4 391 399 402 395 
		f 4 771 -775 -774 -763 
		mu 0 4 395 402 403 397 
		f 4 773 -776 -770 -764 
		mu 0 4 792 784 400 393 
		f 4 778 -604 -778 776 
		mu 0 4 404 307 779 342 
		f 4 777 604 -780 -657 
		mu 0 4 778 310 777 776 
		f 4 779 605 -782 -781 
		mu 0 4 343 309 308 405 
		f 4 781 -607 -779 782 
		mu 0 4 405 308 307 404 
		f 3 784 780 783 
		mu 0 3 406 343 405 
		f 4 786 655 -785 785 
		mu 0 4 407 344 343 406 
		f 4 788 654 -787 787 
		mu 0 4 408 345 791 783 
		f 4 790 -654 -789 789 
		mu 0 4 409 342 345 408 
		f 3 -777 -791 791 
		mu 0 3 404 342 409 
		f 4 795 -795 -794 792 
		mu 0 4 410 411 412 413 
		f 4 798 -798 -796 796 
		mu 0 4 414 786 411 410 
		f 4 801 -801 -799 799 
		mu 0 4 416 417 415 785 
		f 4 804 -804 -802 802 
		mu 0 4 418 419 417 416 
		f 4 807 -807 -805 805 
		mu 0 4 420 421 419 418 
		f 4 793 -810 -808 808 
		mu 0 4 413 412 421 420 
		f 4 813 -813 -812 810 
		mu 0 4 422 656 652 425 
		f 4 816 -816 -814 814 
		mu 0 4 426 655 656 422 
		f 4 819 -819 -817 817 
		mu 0 4 428 790 655 426 
		f 4 822 -822 -820 820 
		mu 0 4 430 653 654 788 
		f 4 825 -825 -823 823 
		mu 0 4 432 651 653 430 
		f 4 811 -828 -826 826 
		mu 0 4 425 652 651 432 
		f 4 831 -831 -830 828 
		mu 0 4 763 435 436 759 
		f 4 834 -834 -832 832 
		mu 0 4 762 439 435 763 
		f 4 837 -837 -835 835 
		mu 0 4 761 782 439 762 
		f 4 840 -840 -838 838 
		mu 0 4 760 443 441 789 
		f 4 843 -843 -841 841 
		mu 0 4 758 445 443 760 
		f 4 829 -846 -844 844 
		mu 0 4 759 436 445 758 
		f 4 848 -811 -848 846 
		mu 0 4 446 422 425 447 
		f 4 850 812 -850 -829 
		mu 0 4 437 424 423 434 
		f 4 852 -815 -849 851 
		mu 0 4 448 426 422 446 
		f 4 849 815 -854 -833 
		mu 0 4 434 423 427 438 
		f 4 855 -818 -853 854 
		mu 0 4 449 428 426 448 
		f 4 853 818 -857 -836 
		mu 0 4 438 427 429 440 
		f 4 858 -821 -856 857 
		mu 0 4 450 430 788 787 
		f 4 856 821 -860 -839 
		mu 0 4 440 429 431 442 
		f 4 861 -824 -859 860 
		mu 0 4 451 432 430 450 
		f 4 859 824 -863 -842 
		mu 0 4 442 431 433 444 
		f 4 847 -827 -862 863 
		mu 0 4 447 425 432 451 
		f 4 862 827 -851 -845 
		mu 0 4 444 433 424 437 
		f 4 865 -855 -865 797 
		mu 0 4 786 449 448 411 
		f 4 866 -858 -866 800 
		mu 0 4 417 450 787 415 
		f 4 867 -861 -867 803 
		mu 0 4 419 451 450 417 
		f 4 868 -864 -868 806 
		mu 0 4 421 447 451 419 
		f 4 869 -847 -869 809 
		mu 0 4 412 446 447 421 
		f 4 864 -852 -870 794 
		mu 0 4 411 448 446 412 
		f 4 -873 597 -872 870 
		mu 0 4 452 304 747 453 
		f 3 872 873 683 
		mu 0 3 304 452 356 
		f 4 -641 -876 599 874 
		mu 0 4 336 335 302 301 
		f 4 -686 -875 682 876 
		mu 0 4 750 336 301 749 
		f 4 -666 -879 610 -878 
		mu 0 4 341 351 312 311 
		f 5 879 -624 -648 877 617 
		mu 0 5 317 319 559 341 311 
		f 4 -17 -623 -880 615 
		mu 0 4 21 561 319 317 
		f 4 882 -882 642 880 
		mu 0 4 454 358 334 333 
		f 4 -884 -881 686 661 
		mu 0 4 330 454 333 347 
		f 3 -685 -885 668 
		mu 0 3 751 357 351 
		f 3 886 885 -659 
		mu 0 3 316 305 346 
		f 4 -889 -281 887 890 
		mu 0 4 453 188 187 455 
		f 4 891 -871 -891 889 
		mu 0 4 456 452 453 455 
		f 4 893 -874 -892 892 
		mu 0 4 329 356 452 456 
		f 4 894 -877 -894 636 
		mu 0 4 312 357 356 329 
		f 3 884 -895 878 
		mu 0 3 351 357 312 
		f 3 -694 -897 -896 
		mu 0 3 359 362 457 
		f 3 898 695 -898 
		mu 0 3 458 361 666 
		f 4 902 -902 -901 899 
		mu 0 4 459 660 461 462 
		f 3 896 -700 -904 
		mu 0 3 457 362 365 
		f 4 906 700 -906 -905 
		mu 0 4 463 365 668 663 
		f 3 701 -899 -908 
		mu 0 3 364 361 458 
		f 4 911 -911 -910 908 
		mu 0 4 596 665 467 598 
		f 4 -915 913 912 -697 
		mu 0 4 359 469 664 360 
		f 4 917 -917 -916 910 
		mu 0 4 665 661 472 467 
		f 4 915 -921 -920 -919 
		mu 0 4 467 472 473 469 
		f 4 919 -923 -922 -914 
		mu 0 4 469 473 474 664 
		f 4 921 -925 -918 923 
		mu 0 4 470 659 471 466 
		f 4 928 -928 -927 925 
		mu 0 4 465 468 475 476 
		f 4 931 -931 -929 929 
		mu 0 4 693 477 468 465 
		f 4 934 -934 -932 932 
		mu 0 4 692 701 477 693 
		f 4 937 -937 -935 935 
		mu 0 4 480 481 479 478 
		f 4 940 -940 -938 938 
		mu 0 4 482 483 481 480 
		f 4 -941 942 926 -942 
		mu 0 4 483 482 476 475 
		f 4 945 -926 -945 943 
		mu 0 4 484 465 476 485 
		f 4 947 -930 -946 946 
		mu 0 4 698 693 465 484 
		f 4 949 -933 -948 948 
		mu 0 4 694 692 693 698 
		f 4 951 -936 -950 950 
		mu 0 4 487 480 478 486 
		f 4 953 -939 -952 952 
		mu 0 4 488 482 480 487 
		f 4 944 -943 -954 954 
		mu 0 4 485 476 482 488 
		f 4 958 957 -957 955 
		mu 0 4 696 695 491 700 
		f 4 961 960 -959 959 
		mu 0 4 494 496 490 489 
		f 4 964 -964 -962 962 
		mu 0 4 498 499 496 494 
		f 4 967 -967 -965 965 
		mu 0 4 500 501 499 498 
		f 4 969 -909 -968 968 
		mu 0 4 502 503 501 500 
		f 4 956 971 -970 970 
		mu 0 4 700 491 503 502 
		f 4 974 -974 -973 731 
		mu 0 4 377 504 505 372 
		f 4 976 -976 -975 729 
		mu 0 4 376 595 504 377 
		f 4 978 -978 -977 736 
		mu 0 4 697 699 595 376 
		f 4 980 -980 -979 735 
		mu 0 4 379 599 597 381 
		f 4 982 -982 -981 733 
		mu 0 4 373 600 599 379 
		f 4 972 -984 -983 726 
		mu 0 4 372 505 600 373 
		f 4 985 -809 -985 770 
		mu 0 4 401 413 420 398 
		f 4 986 -793 -986 768 
		mu 0 4 400 410 413 401 
		f 4 987 -797 -987 775 
		mu 0 4 784 414 410 400 
		f 4 988 -800 -988 774 
		mu 0 4 402 416 785 403 
		f 4 989 -803 -989 772 
		mu 0 4 399 418 416 402 
		f 4 984 -806 -990 765 
		mu 0 4 398 420 418 399 
		f 4 991 -783 -991 830 
		mu 0 4 435 405 404 436 
		f 4 992 -784 -992 833 
		mu 0 4 439 406 405 435 
		f 4 993 -786 -993 836 
		mu 0 4 782 407 406 439 
		f 4 994 -788 -994 839 
		mu 0 4 443 408 783 441 
		f 4 995 -790 -995 842 
		mu 0 4 445 409 408 443 
		f 4 990 -792 -996 845 
		mu 0 4 436 404 409 445 
		f 4 918 998 -998 -997 
		mu 0 4 467 469 506 507 
		f 4 997 1001 -1001 -1000 
		mu 0 4 507 506 463 508 
		f 4 1000 904 -1004 -1003 
		mu 0 4 508 463 663 658 
		f 4 1003 1006 -1006 -1005 
		mu 0 4 509 464 510 511 
		f 4 1005 1008 -924 -1008 
		mu 0 4 511 510 470 466 
		f 4 914 895 -1010 -999 
		mu 0 4 469 359 457 506 
		f 4 1009 903 -907 -1002 
		mu 0 4 506 457 365 463 
		f 4 905 907 -1011 -1007 
		mu 0 4 464 364 458 510 
		f 4 1010 897 -913 -1009 
		mu 0 4 510 458 666 470 
		f 4 1012 -900 -1012 916 
		mu 0 4 661 459 462 472 
		f 4 1013 -903 -1013 924 
		mu 0 4 659 460 662 471 
		f 4 1014 901 -1014 922 
		mu 0 4 473 461 660 474 
		f 4 1011 900 -1015 920 
		mu 0 4 472 462 461 473 
		f 4 1016 746 -416 1015 
		mu 0 4 512 388 114 245 
		f 4 1018 -744 -1017 1017 
		mu 0 4 513 386 388 512 
		f 4 1020 -738 -1019 1019 
		mu 0 4 514 383 612 608 
		f 4 422 -742 -1021 1021 
		mu 0 4 248 110 383 514 
		f 4 1023 -1023 -425 747 
		mu 0 4 387 515 249 115 
		f 4 1025 -1025 -1024 745 
		mu 0 4 611 609 515 387 
		f 4 1027 -1027 -1026 739 
		mu 0 4 384 517 516 385 ;
	setAttr ".fc[500:589]"
		f 4 431 -1029 -1028 742 
		mu 0 4 111 253 517 384 
		f 4 -283 888 871 1029 
		mu 0 4 254 188 453 747 
		f 4 -1031 -256 -1030 598 
		mu 0 4 302 255 748 303 
		f 4 -1032 -292 1030 875 
		mu 0 4 335 256 255 302 
		f 4 -1033 -269 1031 641 
		mu 0 4 334 257 256 335 
		f 4 688 -294 1032 881 
		mu 0 4 358 77 257 334 
		f 4 687 -883 883 638 
		mu 0 4 43 358 454 330 
		f 3 659 -886 -601 
		mu 0 3 306 346 305 
		f 4 1034 -1034 -447 704 
		mu 0 4 367 518 258 88 
		f 4 1036 -1036 -1035 707 
		mu 0 4 610 607 518 367 
		f 4 1038 -1038 -1037 710 
		mu 0 4 370 520 519 369 
		f 4 453 -1040 -1039 712 
		mu 0 4 93 262 520 370 
		f 4 909 996 -1041 966 
		mu 0 4 598 467 507 497 
		f 4 1040 999 -1042 963 
		mu 0 4 497 507 508 495 
		f 4 1041 1002 -1043 -961 
		mu 0 4 495 508 658 492 
		f 4 1042 1004 -1044 -958 
		mu 0 4 657 509 511 493 
		f 4 1043 1007 -912 -972 
		mu 0 4 493 511 466 667 
		f 4 627 -467 619 1044 
		mu 0 4 324 33 24 318 
		f 4 -652 -1045 650 1045 
		mu 0 4 328 324 318 321 
		f 4 1046 -633 -1046 625 
		mu 0 4 320 325 328 321 
		f 4 -16 -632 -1047 621 
		mu 0 4 27 569 325 320 
		f 4 1048 -944 -1048 973 
		mu 0 4 504 484 485 505 
		f 4 1049 -947 -1049 975 
		mu 0 4 595 698 484 504 
		f 4 1050 -949 -1050 977 
		mu 0 4 699 694 698 595 
		f 4 1051 -951 -1051 979 
		mu 0 4 599 487 486 597 
		f 4 1052 -953 -1052 981 
		mu 0 4 600 488 487 599 
		f 4 1047 -955 -1053 983 
		mu 0 4 505 485 488 600 
		f 4 1054 -969 -1054 927 
		mu 0 4 468 502 500 475 
		f 4 1055 -971 -1055 930 
		mu 0 4 477 700 502 468 
		f 4 1056 -956 -1056 933 
		mu 0 4 701 696 700 477 
		f 4 1057 -960 -1057 936 
		mu 0 4 481 494 489 479 
		f 4 1058 -963 -1058 939 
		mu 0 4 483 498 494 481 
		f 4 -966 -1059 941 1053 
		mu 0 4 500 498 483 475 
		f 4 1059 760 -500 1022 
		mu 0 4 515 396 624 249 
		f 4 1060 -758 -1060 1024 
		mu 0 4 609 392 396 515 
		f 4 1061 -749 -1061 1026 
		mu 0 4 517 389 626 516 
		f 4 506 -756 -1062 1028 
		mu 0 4 253 628 389 517 
		f 4 1062 -1016 -509 1033 
		mu 0 4 518 512 245 258 
		f 4 1063 -1018 -1063 1035 
		mu 0 4 607 513 512 518 
		f 4 1064 -1020 -1064 1037 
		mu 0 4 520 514 608 519 
		f 4 515 -1022 -1065 1039 
		mu 0 4 262 248 514 520 
		f 3 1066 -1066 612 
		mu 0 3 18 713 316 
		f 4 1065 1068 -1068 -887 
		mu 0 4 316 713 715 305 
		f 4 1067 1070 -1070 -603 
		mu 0 4 305 715 714 7 
		f 4 1069 -1072 -1067 260 
		mu 0 4 7 714 713 18 
		f 4 1074 -1074 -1073 -1069 
		mu 0 4 742 731 525 522 
		f 4 1072 -1077 -1076 -1071 
		mu 0 4 522 525 526 523 
		f 4 1075 -1078 -1075 1071 
		mu 0 4 523 526 524 521 
		f 4 1081 -1081 -1080 1078 
		mu 0 4 527 528 529 732 
		f 4 1084 -1084 -1082 1082 
		mu 0 4 531 532 528 527 
		f 4 1079 -1087 -1085 1085 
		mu 0 4 530 741 532 531 
		f 4 1089 -1089 -1088 1086 
		mu 0 4 741 740 534 532 
		f 4 1091 -1091 -1090 1080 
		mu 0 4 528 535 533 529 
		f 4 1087 -1093 -1092 1083 
		mu 0 4 532 534 535 528 
		f 4 1095 -1095 -1094 1090 
		mu 0 4 535 536 537 533 
		f 4 1097 -1097 -1096 1092 
		mu 0 4 534 538 536 535 
		f 4 1093 -1099 -1098 1088 
		mu 0 4 740 735 538 534 
		f 4 1102 -1102 -1101 1099 
		mu 0 4 539 739 541 542 
		f 4 1105 -1105 -1103 1103 
		mu 0 4 543 544 540 736 
		f 4 1100 -1108 -1106 1106 
		mu 0 4 542 541 544 543 
		f 4 1110 -1110 -1109 1104 
		mu 0 4 544 545 546 540 
		f 4 1112 -1112 -1111 1107 
		mu 0 4 541 547 545 544 
		f 4 1108 -1114 -1113 1101 
		mu 0 4 739 738 547 541 
		f 4 1116 -1116 -1115 1113 
		mu 0 4 738 733 549 547 
		f 4 1118 -1118 -1117 1109 
		mu 0 4 545 550 548 546 
		f 4 1114 -1120 -1119 1111 
		mu 0 4 547 549 550 545 
		f 3 1122 -1122 1120 
		mu 0 3 551 552 553 
		f 3 1124 -1123 1123 
		mu 0 3 554 552 737 
		f 3 1121 -1125 1125 
		mu 0 3 553 552 554 
		f 4 1128 -1121 -1128 1126 
		mu 0 4 555 551 553 556 
		f 4 1130 -1124 -1129 1129 
		mu 0 4 557 554 737 734 
		f 4 1127 -1126 -1131 1131 
		mu 0 4 556 553 554 557 
		f 4 1133 -1100 -1133 1098 
		mu 0 4 735 539 542 538 
		f 4 1134 -1104 -1134 1094 
		mu 0 4 536 543 736 537 
		f 4 1132 -1107 -1135 1096 
		mu 0 4 538 542 543 536 
		f 4 1136 -1127 -1136 1115 
		mu 0 4 733 555 556 549 
		f 4 1137 -1130 -1137 1117 
		mu 0 4 550 557 734 548 
		f 4 1135 -1132 -1138 1119 
		mu 0 4 549 556 557 550 
		f 4 1139 -1083 -1139 1076 
		mu 0 4 525 531 527 526 
		f 4 1140 -1086 -1140 1073 
		mu 0 4 731 530 531 525 
		f 4 1138 -1079 -1141 1077 
		mu 0 4 526 527 732 524 
		f 3 1142 -682 -1142 
		mu 0 3 331 73 354 
		f 3 -1143 -1144 -42 
		mu 0 3 73 331 300 
		f 3 1148 -55 1143 
		mu 0 3 331 187 300 
		f 3 1144 -888 -1149 
		mu 0 3 331 455 187 
		f 3 -890 -1145 -1146 
		mu 0 3 456 455 331 
		f 3 1145 1146 -893 
		mu 0 3 456 331 329 
		f 3 -1147 -1148 635 
		mu 0 3 329 331 313 
		f 3 1141 677 1147 
		mu 0 3 331 354 313 
		f 3 -56 54 -1150 
		mu 0 3 44 300 187 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bw" 3;
createNode transform -n "niabiFeather" -p "Mesh";
	setAttr ".t" -type "double3" 0.060357934318798989 0 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 2.939642065681201 22.335078225843937 -1.1242940397187562 ;
	setAttr ".sp" -type "double3" 2.939642065681201 22.335078225843937 -1.1242940397187562 ;
createNode mesh -n "niabiFeatherShape" -p "niabiFeather";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.9655229660227802 0.18874574576242725 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "niabiFeatherShapeOrig" -p "niabiFeather";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.95235074 0.13193877 
		0.96520448 0.13081177 0.96549565 0.1697624 0.94012368 0.17102483 0.96564126 0.17184249 
		0.96532637 0.13290747 0.99092215 0.17059401 0.97815669 0.13179143 0.96677864 0.3261354 
		0.96613228 0.25151893 0.98584199 0.25176606 0.9465062 0.25232789 0.96627015 0.25256756 
		0.9650172 0.099257253 0.96317375 0.099136017 0.96500409 0.099002145 0.96684712 0.099123619 
		0.96517503 0.0513561 0.9658078 0.21013537 0.9425531 0.21121743 0.9659543 0.2117587 
		0.9891327 0.21068814;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".vt[0:21]"  2.6105366 21.277735 -1.3193626 3.0343323 
		21.291285 -0.71702909 3.4252625 26.687853 -1.5638862 2.9055481 21.269365 -1.0763323 
		2.7393227 21.299654 -0.96005917 3.5151882 24.707703 -0.91952503 3.1045017 24.715721 
		-1.2938404 2.8912773 24.687756 -1.8062768 3.3019638 24.679737 -1.4319615 2.6835327 
		20.311495 -0.963314 2.7227879 20.310863 -0.92618293 2.7051888 20.314072 -0.91387326 
		2.7444439 20.313442 -0.8767423 2.4540234 18.94153 -0.68470186 2.8478088 22.435131 
		-1.0619314 2.5363674 22.403551 -1.7186577 3.049696 22.398354 -1.2031512 3.3611393 
		22.429932 -0.5464251 2.9728127 23.576036 -1.1755471 2.7022228 23.545294 -1.7789539 
		3.1791725 23.538437 -1.3198955 3.4497623 23.56918 -0.71648872;
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
		mu 0 4 0 1 2 3 
		f 4 32 31 -2 2 
		mu 0 4 3 4 5 0 
		f 4 -32 34 -4 -5 
		mu 0 4 5 4 6 7 
		f 4 35 -8 6 3 
		mu 0 4 6 2 1 7 
		f 3 -10 -11 8 
		mu 0 3 8 9 10 
		f 3 -13 9 -12 
		mu 0 3 11 9 8 
		f 3 5 -15 11 
		mu 0 3 8 12 11 
		f 3 -16 -6 -9 
		mu 0 3 10 12 8 
		f 4 1 17 -19 -17 
		mu 0 4 0 5 13 14 
		f 4 -1 16 20 -20 
		mu 0 4 1 0 14 15 
		f 4 4 21 -23 -18 
		mu 0 4 5 7 16 13 
		f 4 -7 19 23 -22 
		mu 0 4 7 1 15 16 
		f 3 18 25 -25 
		mu 0 3 14 13 17 
		f 3 -21 24 -27 
		mu 0 3 15 14 17 
		f 3 22 27 -26 
		mu 0 3 13 16 17 
		f 3 -24 26 -28 
		mu 0 3 16 15 17 
		f 4 -31 28 38 -30 
		mu 0 4 3 2 18 19 
		f 4 40 39 -33 29 
		mu 0 4 19 20 4 3 
		f 4 -35 -40 42 -34 
		mu 0 4 6 4 20 21 
		f 4 43 -29 -36 33 
		mu 0 4 21 18 2 6 
		f 4 -39 36 12 -38 
		mu 0 4 19 18 9 11 
		f 4 14 13 -41 37 
		mu 0 4 11 12 20 19 
		f 4 -43 -14 15 -42 
		mu 0 4 21 20 12 10 
		f 4 -37 -44 41 10 
		mu 0 4 9 18 21 10 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "ArrowJoint" -p "Niabi";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode transform -n "arrow1" -p "ArrowJoint";
	setAttr ".rp" -type "double3" 1.2808357574556339e-006 0.75192174127612255 0.078363597393035889 ;
	setAttr ".sp" -type "double3" 1.2808357574556339e-006 0.75192174127612255 0.078363597393035889 ;
createNode mesh -n "arrowShape1" -p "arrow1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.79797888945596795 0.5362551326472913 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 33 ".uvst[0].uvsp[0:32]" -type "float2" 0.6045742 0.53460687 
		0.64607865 0.54930645 0.64604276 0.53537917 0.99138361 0.5247528 0.97598195 0.53740638 
		0.97589821 0.53790623 0.6463992 0.54948765 0.64670426 0.53519881 0.93593353 0.53449637 
		0.93975759 0.53860384 0.93977332 0.55133766 0.93991345 0.53761071 0.64909524 0.53777111 
		0.64930612 0.53522032 0.93590391 0.53757757 0.64864808 0.53540766 0.93574095 0.53855997 
		0.64913696 0.53256178 0.93582797 0.54015881 0.93965286 0.55035061 0.99085855 0.55080169 
		0.9758085 0.53899997 0.99091935 0.5259102 0.64881426 0.53757793 0.64662999 0.5207985 
		0.64887291 0.53236288 0.93576628 0.54113871 0.60490662 0.53468144 0.64639789 0.52058059 
		0.99094558 0.55192965 0.93978214 0.52537972 0.94014263 0.5243631 0.9357686 0.53548247;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt[0:20]" -type "float3"  -35.16769 -10.027783 0.078363597 
		-35.16769 -10.027783 0.078363597 -35.16769 -10.027783 0.078363597 -35.16769 -10.027783 
		0.078363597 -35.16769 -10.027783 0.078363597 -35.16769 -10.027783 0.078363597 -35.16769 
		-10.027783 0.078363597 -35.16769 -10.027783 0.078363597 -35.16769 -10.027783 0.078363597 
		-35.16769 -10.027783 0.078363597 -35.16769 -10.027783 0.078363597 -35.16769 -10.027783 
		0.078363597 -35.16769 -10.027783 0.078363597 -35.16769 -10.027783 0.078363597 -35.16769 
		-10.027783 0.078363597 -35.16769 -10.027783 0.078363597 -35.16769 -10.027783 0.078363597 
		-35.16769 -10.027783 0.078363597 -35.16769 -10.027783 0.078363597 -35.16769 -10.027783 
		0.078363597 -35.16769 -10.027783 0.078363597;
	setAttr -s 21 ".vt[0:20]"  35.16769 0.22871208 0 35.085445 10.027783 
		0 35.249935 10.027783 0 34.790318 10.144722 0 35.545063 10.144722 0 34.790318 11.632584 
		0 35.545063 11.632584 0 34.744858 1.4776793 7.4505806e-009 35.590523 1.4776793 7.4505806e-009 
		35.090923 1.5556049 3.7252903e-009 35.244457 1.5556049 3.7252903e-009 35.16769 1.4776797 
		0.078363605 35.16769 1.5556054 0.078363605 35.16769 10.027783 0.078363597 35.16769 
		10.144722 0.078363635 35.16769 11.192375 0.078363635 35.16769 11.192375 -0.078363635 
		35.16769 10.144722 -0.078363635 35.16769 10.027783 -0.078363597 35.16769 1.5556049 
		-0.078363597 35.16769 1.4776793 -0.078363597;
	setAttr -s 49 ".ed[0:48]"  1 13 0 1 18 0 
		0 7 0 2 10 0 1 3 0 2 4 0 
		3 14 0 3 17 0 3 5 0 4 6 0 
		5 15 0 5 16 0 7 9 0 8 0 0 
		7 20 1 8 11 1 9 1 0 10 8 0 
		9 19 1 10 12 1 11 7 1 12 9 1 
		11 12 1 13 2 0 12 13 1 14 4 0 
		13 14 1 15 6 0 14 15 1 16 6 0 
		15 16 1 17 4 0 16 17 1 18 2 0 
		17 18 1 19 10 1 18 19 1 20 8 1 
		19 20 1 10 20 0 20 9 0 10 11 0 
		11 9 0 11 0 0 20 0 0 1 14 0 
		14 2 0 17 1 0 17 2 0;
	setAttr -s 30 ".fc[0:29]" -type "polyFaces" 
		f 3 -14 15 43 
		mu 0 3 27 24 2 
		f 3 10 30 -12 
		mu 0 3 3 4 5 
		f 3 14 44 2 
		mu 0 3 28 7 0 
		f 3 45 -7 -5 
		mu 0 3 26 9 10 
		f 3 47 4 7 
		mu 0 3 11 8 31 
		f 4 6 28 -11 -9 
		mu 0 4 10 9 21 29 
		f 4 -8 8 11 32 
		mu 0 4 11 31 3 5 
		f 3 18 38 40 
		mu 0 3 25 13 7 
		f 3 -21 42 -13 
		mu 0 3 6 2 12 
		f 4 1 36 -19 16 
		mu 0 4 8 14 13 25 
		f 4 -22 24 -1 -17 
		mu 0 4 12 15 16 26 
		f 3 -16 -18 41 
		mu 0 3 2 24 17 
		f 4 -25 -20 -4 -24 
		mu 0 4 16 15 17 32 
		f 3 46 5 -26 
		mu 0 3 9 32 30 
		f 4 -29 25 9 -28 
		mu 0 4 21 9 30 22 
		f 3 -31 27 -30 
		mu 0 3 5 4 20 
		f 4 -32 -33 29 -10 
		mu 0 4 19 11 5 20 
		f 3 -34 -35 48 
		mu 0 3 18 14 11 
		f 4 -37 33 3 -36 
		mu 0 4 13 14 18 23 
		f 3 -39 35 39 
		mu 0 3 7 13 23 
		f 3 -40 17 -38 
		mu 0 3 7 23 1 
		f 3 -41 -15 12 
		mu 0 3 25 7 28 
		f 3 -42 19 -23 
		mu 0 3 2 17 15 
		f 3 -43 22 21 
		mu 0 3 12 2 15 
		f 3 -44 20 -3 
		mu 0 3 27 2 6 
		f 3 -45 37 13 
		mu 0 3 0 7 1 
		f 3 0 26 -46 
		mu 0 3 26 16 9 
		f 3 -27 23 -47 
		mu 0 3 9 16 32 
		f 3 -2 -48 34 
		mu 0 3 14 8 11 
		f 3 -49 31 -6 
		mu 0 3 18 11 19 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "ArrowJoint_parentConstraint1" -p "ArrowJoint";
	addAttr -ci true -k true -sn "w0" -ln "chestW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "L_wristW1" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 4.3013030838722166 -3.5922758194452205 -1.1776902556587983 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -127.86140500642402 ;
	setAttr ".tg[1].tot" -type "double3" -5.2393601415665918 2.617753573795909 -0.78248436255515719 ;
	setAttr ".tg[1].tor" -type "double3" 8.0699681196745921e-016 -7.1419134247061723e-016 
		-37.725245054854284 ;
	setAttr ".lr" -type "double3" 8.6309813695015674 62.328793697544214 -23.409455617973478 ;
	setAttr ".rst" -type "double3" 3.59227581944522 17.021648972581254 -1.1776902556587983 ;
	setAttr ".rsrr" -type "double3" 0 0 -37.861405006424008 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
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
		+ "                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n"
		+ "                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n"
		+ "            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n"
		+ "                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 1\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n"
		+ "                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 0\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 0\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 0\n                -ikHandles 0\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 1\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n"
		+ "            -cameras 0\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 0\n            -ikHandles 0\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n"
		+ "                -showAttributes 0\n                -showConnected 1\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 0\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 1\n                -niceNames 0\n                -showNamespace 0\n                -showPinIcons 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAttributes 0\n            -showConnected 1\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n"
		+ "            -showAnimLayerWeight 1\n            -autoExpandLayers 0\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n"
		+ "            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 1\n            -niceNames 0\n            -showNamespace 0\n            -showPinIcons 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n"
		+ "                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n"
		+ "                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range -1 -1 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range -1 -1 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 98 -ast 0 -aet 98 ";
	setAttr ".st" 6;
createNode ikRPsolver -n "ikRPsolver";
createNode hyperGraphInfo -n "nodeEditorPanel1Info";
createNode hyperView -n "hyperView1";
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr ".anf" yes;
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode skinCluster -n "skinCluster1";
	setAttr -s 20 ".bw";
	setAttr ".bw[117:118]" -1.#INF -1.#INF;
	setAttr ".bw[121:123]" -1.#INF -1.#INF -1.#INF;
	setAttr ".bw[126:128]" -1.#INF -1.#INF -1.#INF;
	setAttr ".bw[131:133]" -1.#INF -1.#INF -1.#INF;
	setAttr ".bw[136:138]" -1.#INF -1.#INF -1.#INF;
	setAttr ".bw[141:143]" -1.#INF -1.#INF -1.#INF;
	setAttr ".bw[154]" 1;
	setAttr ".bw[158]" 1;
	setAttr ".bw[160]" 1;
	setAttr -s 609 ".wl";
	setAttr ".wl[0].w[2]"  1.0000000000006639;
	setAttr -s 4 ".wl[1].w";
	setAttr ".wl[1].w[1:2]" 1.8507100204168882e-012 0.99999999987665611;
	setAttr ".wl[1].w[13]" 1.2140165258789643e-010;
	setAttr ".wl[1].w[23]" 9.1368944729770825e-014;
	setAttr -s 4 ".wl[2].w";
	setAttr ".wl[2].w[1:2]" 4.7741516532510832e-007 0.99999949902284924;
	setAttr ".wl[2].w[14]" 3.5851710174639896e-012;
	setAttr ".wl[2].w[23]" 2.3559561944232191e-008;
	setAttr -s 5 ".wl[3].w";
	setAttr ".wl[3].w[1:3]" 8.6649865552589309e-006 0.999990976139286 3.5885955111525004e-007;
	setAttr ".wl[3].w[17]" 4.6565183557266452e-013;
	setAttr ".wl[3].w[23]" 1.4494562568288332e-012;
	setAttr -s 5 ".wl[4].w";
	setAttr ".wl[4].w[1:2]" 0.32286802279517857 0.6246990786054174;
	setAttr ".wl[4].w[14]" 1.5759282889559812e-012;
	setAttr ".wl[4].w[17]" 1.1843477853995463e-009;
	setAttr ".wl[4].w[23]" 0.052432897423711905;
	setAttr -s 5 ".wl[5].w";
	setAttr ".wl[5].w[1:3]" 0.55619372900148623 0.40783939754207038 1.0221049338646904e-007;
	setAttr ".wl[5].w[17]" 8.3302914496341668e-010;
	setAttr ".wl[5].w[23]" 0.035966751733916183;
	setAttr -s 5 ".wl[6].w";
	setAttr ".wl[6].w[0:2]" 6.3481583347502494e-012 0.8871914797105569 2.4389493501874307e-010;
	setAttr ".wl[6].w[17]" 7.3658976577781284e-010;
	setAttr ".wl[6].w[23]" 0.11280853333063499;
	setAttr -s 5 ".wl[7].w";
	setAttr ".wl[7].w[1:3]" 0.99999610990231269 3.569501185027121e-006 4.4736515663526813e-013;
	setAttr ".wl[7].w[17]" 5.8049600946672456e-019;
	setAttr ".wl[7].w[23]" 3.2059597322128106e-007;
	setAttr -s 2 ".wl[8].w";
	setAttr ".wl[8].w[2]" 0.99999459017814774;
	setAttr ".wl[8].w[13]" 5.4098190325793704e-006;
	setAttr -s 2 ".wl[9].w";
	setAttr ".wl[9].w[2]" 0.99999999998214772;
	setAttr ".wl[9].w[13]" 1.9636011640456962e-011;
	setAttr -s 4 ".wl[10].w";
	setAttr ".wl[10].w[1:2]" 0.41476625066801265 0.57292235277688597;
	setAttr ".wl[10].w[17]" 1.6788219363863428e-005;
	setAttr ".wl[10].w[23]" 0.012294642998466745;
	setAttr -s 3 ".wl[11].w";
	setAttr ".wl[11].w[1:2]" 0.99997599713148511 5.4731014394019442e-006;
	setAttr ".wl[11].w[17]" 1.8580486128719404e-005;
	setAttr -s 3 ".wl[12].w";
	setAttr ".wl[12].w[1:2]" 0.99999999995662459 2.6201059751904336e-013;
	setAttr ".wl[12].w[17]" 4.4536117879966313e-011;
	setAttr -s 4 ".wl[13].w";
	setAttr ".wl[13].w[1:2]" 0.54019506349734592 0.45425123898364217;
	setAttr ".wl[13].w[17]" 1.1887408768253914e-005;
	setAttr ".wl[13].w[23]" 0.0055418101229756014;
	setAttr ".wl[14].w[2]"  1.0000000000000318;
	setAttr ".wl[15].w[2]"  0.99999999144365936;
	setAttr ".wl[16].w[2]"  1.0000000056485343;
	setAttr ".wl[17].w[2]"  0.99999996806623059;
	setAttr ".wl[18].w[2]"  1.0000000887961382;
	setAttr -s 5 ".wl[19].w";
	setAttr ".wl[19].w[1:3]" 4.3193071287017614e-010 0.99999994581083451 2.3767945015460547e-013;
	setAttr ".wl[19].w[17]" 3.0841018863585933e-019;
	setAttr ".wl[19].w[23]" 2.1787788268476253e-011;
	setAttr -s 5 ".wl[20].w";
	setAttr ".wl[20].w[1:3]" 3.2532501360591368e-005 0.99996583452008492 1.8018345044905214e-008;
	setAttr ".wl[20].w[17]" 2.3380387725912569e-014;
	setAttr ".wl[20].w[23]" 1.6413032803363628e-006;
	setAttr -s 4 ".wl[21].w";
	setAttr ".wl[21].w[1:2]" 0.49712369895890768 0.39971439192015717;
	setAttr ".wl[21].w[14]" 1.2629265486356555e-013;
	setAttr ".wl[21].w[23]" 0.1031618793412567;
	setAttr -s 3 ".wl[22].w";
	setAttr ".wl[22].w[1:2]" 0.74833136402583822 0.035197175335664167;
	setAttr ".wl[22].w[23]" 0.21647150416201735;
	setAttr ".wl[23].w[2]"  0.99999999273878892;
	setAttr ".wl[24].w[2]"  0.99999996540379732;
	setAttr ".wl[25].w[2]"  0.99999996449745776;
	setAttr ".wl[26].w[2]"  0.9999999678018916;
	setAttr ".wl[27].w[2]"  0.99999998201658191;
	setAttr ".wl[28].w[2]"  0.99999994592132091;
	setAttr ".wl[29].w[2]"  0.99999999999909073;
	setAttr ".wl[30].w[2]"  1.0000000081675395;
	setAttr ".wl[31].w[2]"  1.0000000219406593;
	setAttr ".wl[32].w[2]"  0.99999999999351075;
	setAttr ".wl[33].w[2]"  1.0000000049055553;
	setAttr ".wl[34].w[2]"  1.0000000000048122;
	setAttr ".wl[35].w[2]"  0.99999999388754013;
	setAttr ".wl[36].w[2]"  1.0000000335868755;
	setAttr ".wl[37].w[2]"  1.0000000867510277;
	setAttr ".wl[38].w[2]"  1.0000000243784974;
	setAttr ".wl[39].w[2]"  1.0000000263861957;
	setAttr ".wl[40].w[2]"  1.0000000056303735;
	setAttr -s 2 ".wl[41].w[0:1]"  0.90024605775228528 0.099753942247714736;
	setAttr -s 2 ".wl[42].w[0:1]"  0.85899717374844908 0.14100285008031205;
	setAttr -s 4 ".wl[43].w";
	setAttr ".wl[43].w[0:1]" 0.92193391014495707 0.078065992198958628;
	setAttr ".wl[43].w[29]" 4.8834787676044009e-008;
	setAttr ".wl[43].w[33]" 4.8818113200666155e-008;
	setAttr -s 2 ".wl[44].w[0:1]"  0.99999597030929799 4.0296943397176305e-006;
	setAttr -s 4 ".wl[45].w";
	setAttr ".wl[45].w[0:1]" 0.97737376359424988 0.022625457948498372;
	setAttr ".wl[45].w[29]" 3.9822719318406203e-007;
	setAttr ".wl[45].w[33]" 3.9815301588307566e-007;
	setAttr -s 4 ".wl[46].w";
	setAttr ".wl[46].w[0:2]" 1.2398811794749465e-005 0.9999867089837754 4.5938973684259382e-012;
	setAttr ".wl[46].w[17]" 8.9220253880564756e-007;
	setAttr -s 3 ".wl[47].w";
	setAttr ".wl[47].w[0:1]" 4.3656298939383754e-006 0.99999568666058325;
	setAttr ".wl[47].w[17]" 1.5100711502620022e-011;
	setAttr -s 3 ".wl[48].w";
	setAttr ".wl[48].w[0:1]" 0.008721872961595838 0.99127744159975684;
	setAttr ".wl[48].w[23]" 7.2605929470164732e-007;
	setAttr -s 3 ".wl[49].w";
	setAttr ".wl[49].w[0:1]" 1.8650673218068473e-005 0.99998082360479679;
	setAttr ".wl[49].w[23]" 5.2572198515924508e-007;
	setAttr -s 5 ".wl[50].w";
	setAttr ".wl[50].w[0:2]" 3.1521187108295385e-010 0.99999994981249452 4.854286383635039e-010;
	setAttr ".wl[50].w[17]" 2.2662203455922577e-011;
	setAttr ".wl[50].w[23]" 8.2512338299206553e-008;
	setAttr -s 3 ".wl[51].w";
	setAttr ".wl[51].w[1:2]" 0.5026583570660792 0.00083548213681439469;
	setAttr ".wl[51].w[23]" 0.49650618067138447;
	setAttr -s 3 ".wl[52].w";
	setAttr ".wl[52].w[1:2]" 0.59196292176017806 0.0016021759941372258;
	setAttr ".wl[52].w[23]" 0.40643489645402242;
	setAttr -s 4 ".wl[53].w";
	setAttr ".wl[53].w[0:2]" 0.00017630109523844546 0.94783333103049716 3.4498657616068744e-005;
	setAttr ".wl[53].w[23]" 0.051955867010214221;
	setAttr -s 4 ".wl[54].w";
	setAttr ".wl[54].w[0:2]" 2.6152740863895527e-005 0.79069540236343883 0.0011840197191743615;
	setAttr ".wl[54].w[23]" 0.20809442706981204;
	setAttr -s 4 ".wl[55].w";
	setAttr ".wl[55].w[0:2]" 4.4897617124234297e-016 0.54275057690713346 6.1664950652463819e-006;
	setAttr ".wl[55].w[23]" 0.45724326435397167;
	setAttr -s 3 ".wl[56].w";
	setAttr ".wl[56].w[0:1]" 4.1160441309049114e-006 0.71834040972292323;
	setAttr ".wl[56].w[23]" 0.28165547413528885;
	setAttr -s 4 ".wl[57].w";
	setAttr ".wl[57].w[24:26]" 0.25262831899982863 0.74587637636282833 0.0014952563166083903;
	setAttr ".wl[57].w[28]" 3.7303017707472168e-008;
	setAttr -s 4 ".wl[58].w";
	setAttr ".wl[58].w[24:26]" 0.23646230410578367 0.75398370816247451 5.1785316131494419e-008;
	setAttr ".wl[58].w[28]" 0.0095539741591485639;
	setAttr -s 4 ".wl[59].w";
	setAttr ".wl[59].w[24:26]" 0.30454410789799868 0.69445229819320797 0.0010034914411359288;
	setAttr ".wl[59].w[28]" 3.2220337206668335e-008;
	setAttr -s 4 ".wl[60].w";
	setAttr ".wl[60].w[24:26]" 0.25758095753516763 0.73185481443076017 5.5748678701229613e-009;
	setAttr ".wl[60].w[28]" 0.010564182178136584;
	setAttr -s 4 ".wl[61].w";
	setAttr ".wl[61].w[24:26]" 0.40231264624333618 0.59020110056465835 0.0074862857794489686;
	setAttr ".wl[61].w[28]" 1.2182892731682839e-018;
	setAttr -s 4 ".wl[62].w";
	setAttr ".wl[62].w[24:26]" 0.43734194766966911 0.559808829527633 0.0028491433393955413;
	setAttr ".wl[62].w[28]" 1.8241249652721266e-013;
	setAttr -s 5 ".wl[63].w";
	setAttr ".wl[63].w[0:1]" 0.090733881939653746 2.2373840625577901e-008;
	setAttr ".wl[63].w[29]" 8.5654815665432476e-007;
	setAttr ".wl[63].w[33:34]" 0.85019652866795525 0.059068710487868561;
	setAttr -s 5 ".wl[64].w";
	setAttr ".wl[64].w[0]" 0.47785751962356354;
	setAttr ".wl[64].w[29:30]" 0.0023909559649015243 9.1183365484156618e-011;
	setAttr ".wl[64].w[33:34]" 0.51967588047199786 7.5638349598411252e-005;
	setAttr -s 3 ".wl[65].w";
	setAttr ".wl[65].w[0]" 0.78889427823833314;
	setAttr ".wl[65].w[29]" 0.1055524615846657;
	setAttr ".wl[65].w[33]" 0.1055532601770012;
	setAttr -s 3 ".wl[66].w";
	setAttr ".wl[66].w[29]" 0.4394858253105437;
	setAttr ".wl[66].w[33:34]" 0.43948709104399658 0.12102708364545978;
	setAttr -s 5 ".wl[67].w";
	setAttr ".wl[67].w[0]" 0.16495804102513831;
	setAttr ".wl[67].w[29:30]" 7.975143039303484e-005 2.8449297750161822e-010;
	setAttr ".wl[67].w[33:34]" 0.73348958790002605 0.10147253134108006;
	setAttr -s 4 ".wl[68].w";
	setAttr ".wl[68].w[0]" 0.17477030776333011;
	setAttr ".wl[68].w[29:30]" 0.41265575405272648 1.3300098402332467e-005;
	setAttr ".wl[68].w[33]" 0.41256061535601951;
	setAttr -s 4 ".wl[69].w";
	setAttr ".wl[69].w[0]" 0.39618951980853118;
	setAttr ".wl[69].w[29]" 0.0003397221531645109;
	setAttr ".wl[69].w[33:34]" 0.6034707237671133 2.7766553859633745e-009;
	setAttr -s 5 ".wl[70].w";
	setAttr ".wl[70].w[0]" 0.4981211570886121;
	setAttr ".wl[70].w[29:30]" 0.0017610071938028461 2.0648612448922128e-010;
	setAttr ".wl[70].w[33:34]" 0.50011746921144806 3.6429021223918132e-007;
	setAttr -s 4 ".wl[71].w";
	setAttr ".wl[71].w[0]" 0.91350231411815908;
	setAttr ".wl[71].w[29]" 0.0014036581186664815;
	setAttr ".wl[71].w[33:34]" 0.085093996970365501 3.3624333649891105e-011;
	setAttr -s 4 ".wl[72].w";
	setAttr ".wl[72].w[0]" 0.73296332040339007;
	setAttr ".wl[72].w[29]" 0.0050758219142653027;
	setAttr ".wl[72].w[33:34]" 0.26194960373167275 1.1268566616628194e-005;
	setAttr -s 4 ".wl[73].w";
	setAttr ".wl[73].w[0:1]" 0.80083386228794895 0.00020231029970826703;
	setAttr ".wl[73].w[29]" 1.673093301991801e-005;
	setAttr ".wl[73].w[33]" 0.19894709647932857;
	setAttr -s 4 ".wl[74].w";
	setAttr ".wl[74].w[0]" 0.51528331790030557;
	setAttr ".wl[74].w[29:30]" 0.015622596820227545 4.3530152144446098e-010;
	setAttr ".wl[74].w[33]" 0.46909408839368621;
	setAttr -s 3 ".wl[75].w[34:36]"  0.15440646976975828 0.44863578731424941 
		0.39695773574271409;
	setAttr -s 3 ".wl[76].w[34:36]"  5.3413015753181472e-005 0.5283400049405842 
		0.4716066020341893;
	setAttr -s 3 ".wl[77].w[34:36]"  0.34261663794685498 0.40620495798823081 
		0.25117840406484954;
	setAttr -s 3 ".wl[78].w[34:36]"  0.36130449546116145 0.40419690002783926 
		0.23449860451149351;
	setAttr -s 3 ".wl[79].w[34:36]"  0.03970169034267048 0.48014955006458687 
		0.48014877436776271;
	setAttr -s 3 ".wl[80].w[34:36]"  0.027685182200863367 0.48616016511524546 
		0.48615463148040405;
	setAttr -s 3 ".wl[81].w[34:36]"  1.3440782775480573e-009 0.50000284387052985 
		0.4999971548024319;
	setAttr -s 3 ".wl[82].w[34:36]"  1.7070721800574194e-008 0.50000341827120909 
		0.49999658981745143;
	setAttr -s 3 ".wl[83].w[34:36]"  0.25958028324426119 0.55322099003739234 
		0.18719877294817283;
	setAttr -s 3 ".wl[84].w[34:36]"  0.49864133325369214 0.50134464118670619 
		1.4025560059902282e-005;
	setAttr -s 3 ".wl[85].w[34:36]"  0.49999775496107368 0.49999896031477342 
		3.2847241529538129e-006;
	setAttr -s 3 ".wl[86].w[34:36]"  0.48813836128651378 0.48813834978597809 
		0.023723288927411948;
	setAttr -s 4 ".wl[87].w[33:36]"  1.0158601213379262e-012 0.48403227067275434 
		0.48709813198903446 0.028869624529237865;
	setAttr -s 4 ".wl[88].w[33:36]"  4.5415031367125291e-012 0.29208277694536883 
		0.57178528744144064 0.13613198898426057;
	setAttr -s 4 ".wl[89].w";
	setAttr ".wl[89].w[0]" 7.1561354076885329e-006;
	setAttr ".wl[89].w[29]" 9.4018251374755049e-008;
	setAttr ".wl[89].w[33:34]" 0.56272557572667781 0.43726720356009674;
	setAttr -s 4 ".wl[90].w";
	setAttr ".wl[90].w[0]" 6.7548602487392502e-007;
	setAttr ".wl[90].w[29]" 3.1484927335072424e-008;
	setAttr ".wl[90].w[33:34]" 0.52236825909230344 0.47763106578325831;
	setAttr -s 4 ".wl[91].w";
	setAttr ".wl[91].w[0]" 5.1477288794267604e-011;
	setAttr ".wl[91].w[29]" 2.3995850736390935e-012;
	setAttr ".wl[91].w[33:34]" 0.99991048885489797 8.9511577503309135e-005;
	setAttr -s 4 ".wl[92].w";
	setAttr ".wl[92].w[0]" 1.7791608475022664e-007;
	setAttr ".wl[92].w[29]" 1.9309346005430605e-009;
	setAttr ".wl[92].w[33:34]" 0.99999984394030683 9.0310868116693865e-013;
	setAttr -s 4 ".wl[93].w";
	setAttr ".wl[93].w[0]" 5.1263873628680905e-007;
	setAttr ".wl[93].w[29]" 8.8136183380638484e-010;
	setAttr ".wl[93].w[33:34]" 0.53223270058977712 0.46776671788281687;
	setAttr -s 4 ".wl[94].w";
	setAttr ".wl[94].w[0]" -1.607253017131598e-007;
	setAttr ".wl[94].w[29]" -1.6475075180091057e-009;
	setAttr ".wl[94].w[33:34]" 0.5947269428393247 0.4052732114688723;
	setAttr -s 2 ".wl[95].w[33:34]"  0.11763206284945248 0.88236795391087108;
	setAttr -s 3 ".wl[96].w[33:35]"  0.18170839197052027 0.8182915890298138 
		2.7361218169579904e-010;
	setAttr -s 3 ".wl[97].w[33:35]"  0.14328643555804088 0.85671356356189909 
		9.0722813391604044e-010;
	setAttr -s 3 ".wl[98].w[33:35]"  0.25058535677531196 0.74941464173258365 
		1.4888093389707269e-009;
	setAttr -s 2 ".wl[99].w[33:34]"  0.2198447869640317 0.78015519424704971;
	setAttr -s 2 ".wl[100].w[33:34]"  0.12767701960082736 0.87232292870651196;
	setAttr -s 4 ".wl[101].w[33:36]"  0.066727957492962592 0.93315254149850158 
		9.3101770312475335e-005 2.6362967541653434e-005;
	setAttr -s 3 ".wl[102].w[33:35]"  0.095640202204176517 0.90435401166292606 
		5.7861183472837528e-006;
	setAttr -s 3 ".wl[103].w[33:35]"  0.043896864166653511 0.95605243344475643 
		5.0702388589758892e-005;
	setAttr -s 4 ".wl[104].w[33:36]"  0.073608332517489994 0.81720338440264229 
		0.1091627152262598 2.5580397358851883e-005;
	setAttr -s 4 ".wl[105].w[33:36]"  0.072970444254781219 0.79878973575711443 
		0.12468515373240928 0.0035546662556953357;
	setAttr -s 4 ".wl[106].w[33:36]"  0.040637558067850105 0.94467170615091967 
		0.014678341151670077 1.2399376692447992e-005;
	setAttr -s 3 ".wl[107].w[33:35]"  0.23220980495766563 0.76779025404714063 
		3.3530449316200544e-017;
	setAttr -s 3 ".wl[108].w[33:35]"  0.29052137559267849 0.70947862405475826 
		3.5256327260592779e-010;
	setAttr -s 4 ".wl[109].w[33:36]"  0.069975139201144287 0.91902493922755435 
		0.0090299183224302401 0.0019699883713019087;
	setAttr -s 3 ".wl[110].w[33:35]"  3.2568049425327719e-005 0.9999674499141129 
		2.4090770907317347e-010;
	setAttr -s 3 ".wl[111].w[33:35]"  0.16199571301222176 0.83800099847835008 
		3.2885121563968565e-006;
	setAttr -s 3 ".wl[112].w[33:35]"  4.5714547901483328e-005 0.99995430179910094 
		9.1696213924695372e-010;
	setAttr -s 3 ".wl[113].w[33:35]"  0.26478684973059979 0.73520784069309297 
		5.2756285344240919e-006;
	setAttr -s 3 ".wl[114].w[33:35]"  2.5031385560877192e-005 0.99997496897267102 
		4.9872649268080279e-010;
	setAttr -s 3 ".wl[115].w[33:35]"  0.23303939388235079 0.76696060576747349 
		3.454267589864737e-010;
	setAttr -s 4 ".wl[116].w[33:36]"  5.3696641055637692e-006 0.99998664446602437 
		7.9633255308024855e-006 1.8660678323510136e-009;
	setAttr -s 2 ".wl[117].w[33:34]"  0.14755136787011119 0.852448552927903;
	setAttr -s 4 ".wl[118].w[33:36]"  5.3686446223862691e-005 0.99989708730797788 
		4.8186106940582789e-005 1.0486972662049441e-006;
	setAttr -s 2 ".wl[119].w[33:34]"  0.435746076309178 0.5642539236912768;
	setAttr -s 2 ".wl[120].w[33:34]"  0.30001445724728676 0.69998556161563397;
	setAttr -s 2 ".wl[121].w[33:34]"  0.30000537555297346 0.69999460668914248;
	setAttr -s 4 ".wl[122].w";
	setAttr ".wl[122].w[0]" 7.7378495401686692e-012;
	setAttr ".wl[122].w[29]" 1.3303348487311452e-014;
	setAttr ".wl[122].w[33:34]" 0.30000822144566291 0.69999180532730021;
	setAttr -s 2 ".wl[123].w[33:34]"  0.47104452846569261 0.52895542898974446;
	setAttr -s 4 ".wl[124].w";
	setAttr ".wl[124].w[0]" 1.7978696386778338e-011;
	setAttr ".wl[124].w[29]" 8.3806689325888737e-013;
	setAttr ".wl[124].w[33:34]" 0.48570623644324779 0.51429377470650361;
	setAttr ".wl[125].w[2]"  1.0000000450517348;
	setAttr ".wl[126].w[2]"  0.99999999999870604;
	setAttr ".wl[127].w[2]"  0.99999992946286531;
	setAttr -s 5 ".wl[128].w";
	setAttr ".wl[128].w[1:3]" 7.4641610220063607e-011 1.0000000243148734 3.0913207276616877e-012;
	setAttr ".wl[128].w[17]" 4.0112631030235039e-018;
	setAttr ".wl[128].w[23]" 1.0873738422641546e-018;
	setAttr -s 5 ".wl[129].w";
	setAttr ".wl[129].w[1:3]" 8.9599045004194637e-011 0.99999999990675825 
		3.710790592319074e-012;
	setAttr ".wl[129].w[17]" 4.8150802512411562e-018;
	setAttr ".wl[129].w[23]" 1.3052727231120415e-018;
	setAttr ".wl[130].w[2]"  1.0000000023068478;
	setAttr ".wl[131].w[2]"  0.99999999999989919;
	setAttr ".wl[132].w[2]"  0.99999996348822884;
	setAttr ".wl[133].w[2]"  1.0000000000009206;
	setAttr ".wl[134].w[2]"  0.99999999999902245;
	setAttr ".wl[135].w[2]"  0.99999999999403888;
	setAttr ".wl[136].w[2]"  0.99999997130472529;
	setAttr ".wl[137].w[2]"  0.99999998197766715;
	setAttr ".wl[138].w[2]"  0.99999999185061361;
	setAttr ".wl[139].w[2]"  0.99999998437159221;
	setAttr ".wl[140].w[2]"  1.0000000134397489;
	setAttr ".wl[141].w[2]"  1.0000000406081226;
	setAttr ".wl[142].w[2]"  1;
	setAttr ".wl[143].w[2]"  1.0000000000011682;
	setAttr ".wl[144].w[2]"  1.0000000311978463;
	setAttr ".wl[145].w[2]"  1.0000000297574487;
	setAttr ".wl[146].w[2]"  1.000000050334716;
	setAttr ".wl[147].w[2]"  0.999999956579399;
	setAttr ".wl[148].w[2]"  0.99999995878319681;
	setAttr ".wl[149].w[2]"  0.99999998621783293;
	setAttr ".wl[150].w[2]"  1.000000058697792;
	setAttr ".wl[151].w[2]"  0.99999995439067502;
	setAttr ".wl[152].w[2]"  1.0000000000024791;
	setAttr ".wl[153].w[2]"  0.99999999999559819;
	setAttr ".wl[154].w[27]"  0.99999997445524957;
	setAttr -s 4 ".wl[155].w[25:28]"  8.5035716283320988e-005 4.4224995690073912e-006 
		0.99982550606956411 8.503571458348318e-005;
	setAttr ".wl[156].w[27]"  0.99999998719249572;
	setAttr -s 4 ".wl[157].w[25:28]"  9.3467787496627876e-005 9.3498337225715748e-007 
		0.99981214115912764 9.3467764286196835e-005;
	setAttr -s 5 ".wl[158].w[24:28]"  2.7839866783440362e-009 7.3401263977886937e-005 
		7.0637025014757079e-005 0.99985597963693407 -1.2088213052016936e-017;
	setAttr -s 5 ".wl[159].w[24:28]"  2.6856661811097904e-009 8.2709833036729967e-005 
		8.8754634159463018e-005 0.99982806582674644 4.3685303322894818e-007;
	setAttr -s 4 ".wl[160].w";
	setAttr ".wl[160].w[24:26]" 7.579683926503013e-005 0.71145269284437129 0.015081429431851395;
	setAttr ".wl[160].w[28]" 0.27339006924015752;
	setAttr -s 4 ".wl[161].w[25:28]"  0.48732738517901913 0.025344705085319965 
		5.3429816628690872e-007 0.4873273754374946;
	setAttr ".wl[162].w[28]"  0.9999999827123246;
	setAttr ".wl[163].w[28]"  1.0000000174622985;
	setAttr ".wl[164].w[28]"  0.99999997264239937;
	setAttr ".wl[165].w[28]"  1.0000000209838618;
	setAttr -s 3 ".wl[166].w";
	setAttr ".wl[166].w[1]" 1.7167617645336458e-008;
	setAttr ".wl[166].w[23:24]" 0.0002679653639181615 0.99973197798851521;
	setAttr -s 3 ".wl[167].w";
	setAttr ".wl[167].w[1]" 2.9746490770137021e-008;
	setAttr ".wl[167].w[23:24]" 0.00026405471120247647 0.9997359280573862;
	setAttr -s 4 ".wl[168].w";
	setAttr ".wl[168].w[1]" 7.1917233215126443e-008;
	setAttr ".wl[168].w[23:25]" 0.45007107400620422 0.54986234002067569 6.6480828119945719e-005;
	setAttr -s 4 ".wl[169].w";
	setAttr ".wl[169].w[1]" 4.8137838529617216e-008;
	setAttr ".wl[169].w[23:25]" 0.43938352781194034 0.56056543303100748 5.09881903971402e-005;
	setAttr -s 4 ".wl[170].w";
	setAttr ".wl[170].w[1]" 8.1313033898238559e-008;
	setAttr ".wl[170].w[23:25]" 0.41845716571626135 0.58142990810568285 0.00011274397355896472;
	setAttr -s 4 ".wl[171].w";
	setAttr ".wl[171].w[1]" 3.913028834982816e-008;
	setAttr ".wl[171].w[23:25]" 0.37219331262754773 0.62775845738653768 4.8201661404396375e-005;
	setAttr -s 4 ".wl[172].w";
	setAttr ".wl[172].w[1:2]" 5.5781006856856391e-005 1.8996122675503268e-010;
	setAttr ".wl[172].w[23:24]" 0.90000537859694563 0.099938879184450727;
	setAttr -s 4 ".wl[173].w";
	setAttr ".wl[173].w[1:2]" 9.3235364161405821e-005 2.2703897841725902e-010;
	setAttr ".wl[173].w[23:24]" 0.90000485478372771 0.099901936124109594;
	setAttr -s 3 ".wl[174].w";
	setAttr ".wl[174].w[1]" 0.00012032631816576003;
	setAttr ".wl[174].w[23:24]" 0.61071875731632896 0.38916095271067824;
	setAttr -s 4 ".wl[175].w";
	setAttr ".wl[175].w[1:2]" 7.8156691235763495e-005 1.4929573037861337e-012;
	setAttr ".wl[175].w[23:24]" 0.6338184948040867 0.36610340582458911;
	setAttr -s 4 ".wl[176].w";
	setAttr ".wl[176].w[1:2]" 0.00013137838145065438 3.7569470979823408e-011;
	setAttr ".wl[176].w[23:24]" 0.56088324836978676 0.43898538492052624;
	setAttr -s 4 ".wl[177].w";
	setAttr ".wl[177].w[1:2]" 5.5905657314184495e-005 1.4637038512416063e-010;
	setAttr ".wl[177].w[23:24]" 0.59111897349242826 0.40882509006587431;
	setAttr -s 2 ".wl[178].w[24:25]"  0.70001254037852045 0.29998748302459721;
	setAttr -s 2 ".wl[179].w[24:25]"  0.70001252374340761 0.29998748147072551;
	setAttr -s 2 ".wl[180].w[24:25]"  0.70001257555495611 0.29998743600926903;
	setAttr -s 2 ".wl[181].w[24:25]"  0.70001262019363808 0.29998735685389877;
	setAttr -s 2 ".wl[182].w[24:25]"  0.70001260976760016 0.29998737421346966;
	setAttr -s 2 ".wl[183].w[24:25]"  0.70001250617410726 0.29998750016097803;
	setAttr -s 4 ".wl[184].w";
	setAttr ".wl[184].w[1:2]" 0.38829265219323866 0.0007872052662023538;
	setAttr ".wl[184].w[23:24]" 0.61064838682146894 0.00027179950216520252;
	setAttr -s 5 ".wl[185].w";
	setAttr ".wl[185].w[0:2]" 1.5682976723576639e-008 0.52700788884040661 
		0.00108696551195799;
	setAttr ".wl[185].w[23:24]" 0.4716734295123744 0.00023171299603501542;
	setAttr -s 5 ".wl[186].w";
	setAttr ".wl[186].w[0:2]" 5.9383378805680532e-008 0.59201140507602035 
		0.00014148787611996473;
	setAttr ".wl[186].w[23:24]" 0.40767982449591361 0.0001672562723601388;
	setAttr -s 5 ".wl[187].w";
	setAttr ".wl[187].w[0:2]" 6.2681873185107623e-009 0.45940110503311232 
		1.0782778093452802e-009;
	setAttr ".wl[187].w[23:24]" 0.54051600651273279 8.2868294728249476e-005;
	setAttr -s 4 ".wl[188].w";
	setAttr ".wl[188].w[1:2]" 0.39913192814466159 8.8788164314310318e-006;
	setAttr ".wl[188].w[23:24]" 0.60066677848610628 0.00019243606053171352;
	setAttr -s 4 ".wl[189].w";
	setAttr ".wl[189].w[1:2]" 0.35663669029902623 0.00052379830646337856;
	setAttr ".wl[189].w[23:24]" 0.64273436873014711 0.00010511236431996813;
	setAttr -s 4 ".wl[190].w";
	setAttr ".wl[190].w[0]" 0.3984284610437781;
	setAttr ".wl[190].w[29]" 0.0020459482693311339;
	setAttr ".wl[190].w[33:34]" 0.599522023690234 3.5237068389909013e-006;
	setAttr -s 4 ".wl[191].w";
	setAttr ".wl[191].w[0]" 0.46852766390269635;
	setAttr ".wl[191].w[29]" 0.0046295342295770312;
	setAttr ".wl[191].w[33:34]" 0.52590067898986281 0.00094219242959695611;
	setAttr -s 3 ".wl[192].w";
	setAttr ".wl[192].w[0]" 0.5732615008025912;
	setAttr ".wl[192].w[29]" 0.0075276746584319772;
	setAttr ".wl[192].w[33]" 0.41921082619326927;
	setAttr -s 4 ".wl[193].w";
	setAttr ".wl[193].w[0]" 0.42713446458594656;
	setAttr ".wl[193].w[29]" 0.019904350587353691;
	setAttr ".wl[193].w[33:34]" 0.55295360223005874 7.5960035198441102e-006;
	setAttr -s 4 ".wl[194].w";
	setAttr ".wl[194].w[0]" 0.37184523360801441;
	setAttr ".wl[194].w[29]" 0.0040380444214943119;
	setAttr ".wl[194].w[33:34]" 0.62411482382202055 1.8877548247068236e-006;
	setAttr -s 4 ".wl[195].w";
	setAttr ".wl[195].w[0]" 0.24499624255225372;
	setAttr ".wl[195].w[29]" 0.00042123618310819112;
	setAttr ".wl[195].w[33:34]" 0.75458183485830965 6.7636899774774107e-007;
	setAttr -s 4 ".wl[196].w[33:36]"  2.413016944988617e-008 0.46050654652750728 
		0.44763944490488911 0.091853988611070636;
	setAttr -s 4 ".wl[197].w[33:36]"  4.5011043062117063e-007 0.4186958893794463 
		0.45304054604404526 0.12826310866381396;
	setAttr -s 3 ".wl[198].w[34:36]"  0.5116288209780655 0.48836440078115922 
		6.7782411938840385e-006;
	setAttr -s 3 ".wl[199].w[34:36]"  0.50071804794879315 0.49928190927694216 
		5.0341767210860753e-010;
	setAttr -s 4 ".wl[200].w[33:36]"  7.5139750142969794e-008 0.49252999003732312 
		0.4900915134612866 0.01737842135983143;
	setAttr -s 4 ".wl[201].w[33:36]"  1.8092801869415332e-007 0.50382296959707418 
		0.47800694812233191 0.018169923017359077;
	setAttr -s 4 ".wl[202].w[25:28]"  0.34417937036258789 0.65043990795680096 
		6.2446825892615584e-007 0.0053800972123522984;
	setAttr -s 5 ".wl[203].w[24:28]"  3.7450633834098016e-005 0.49357968727549589 
		0.47480810577649274 0.031574692616241115 -1.6158102152389759e-013;
	setAttr -s 5 ".wl[204].w[24:28]"  3.4626573074217716e-005 0.49393954768402559 
		0.47821846691453046 0.027807343478960144 -5.9892393086429679e-010;
	setAttr -s 4 ".wl[205].w[25:28]"  0.28843916354948151 0.69077705514069276 
		8.3735415699371667e-007 0.020782943955668761;
	setAttr -s 4 ".wl[206].w[25:28]"  0.49751126136372104 0.0049767387176308858 
		8.6209963833710019e-007 0.49751113781900969;
	setAttr -s 4 ".wl[207].w[25:28]"  7.1142140775568927e-005 0.00013129682472570942 
		0.99979478133588595 2.7990526600364459e-006;
	setAttr -s 4 ".wl[208].w[25:28]"  6.3512978388328563e-005 0.00015210593330810862 
		0.99977982248013131 4.5763087580018969e-006;
	setAttr -s 4 ".wl[209].w";
	setAttr ".wl[209].w[24:26]" 1.0664583748394152e-008 0.00020947782097972126 
		2.3359914207775381e-006;
	setAttr ".wl[209].w[28]" 0.99978817074240123;
	setAttr -s 4 ".wl[210].w";
	setAttr ".wl[210].w[24:26]" 8.9122541648320413e-009 0.00017505789503951134 
		1.9521576987917045e-006;
	setAttr ".wl[210].w[28]" 0.99982299074934722;
	setAttr -s 4 ".wl[211].w[25:28]"  0.00025500689882481916 2.5509024723696508e-006 
		4.4188216895380029e-010 0.9997424710061702;
	setAttr -s 4 ".wl[212].w[25:28]"  0.00018651627573125064 9.7002551996626211e-006 
		2.0449354404588287e-010 0.99980377875348181;
	setAttr -s 2 ".wl[213].w[0:1]"  0.98744376133718759 0.01255626038427428;
	setAttr -s 2 ".wl[214].w[0:1]"  0.91199751098688331 0.088002489013116594;
	setAttr -s 2 ".wl[215].w[0:1]"  0.88875057237856303 0.1112494471370616;
	setAttr -s 2 ".wl[216].w[0:1]"  0.8390737103761936 0.16092631215017109;
	setAttr -s 3 ".wl[217].w";
	setAttr ".wl[217].w[0:1]" 0.89957931994080587 0.10042068005916174;
	setAttr ".wl[217].w[23]" 3.2373020293598413e-014;
	setAttr -s 4 ".wl[218].w";
	setAttr ".wl[218].w[0]" 0.79999885136184268;
	setAttr ".wl[218].w[29:30]" 0.10001733410887775 1.5307350798933163e-012;
	setAttr ".wl[218].w[33]" 0.099983786043284756;
	setAttr -s 4 ".wl[219].w";
	setAttr ".wl[219].w[0:1]" 0.80000073707763653 7.6563440494042413e-012;
	setAttr ".wl[219].w[29]" 1.2432805008449477e-005;
	setAttr ".wl[219].w[33]" 0.19998680152268863;
	setAttr -s 4 ".wl[220].w";
	setAttr ".wl[220].w[0:1]" 0.80000247555997084 5.1149147731176667e-007;
	setAttr ".wl[220].w[29]" 3.4288840827430239e-005;
	setAttr ".wl[220].w[33]" 0.1999627428478627;
	setAttr -s 4 ".wl[221].w";
	setAttr ".wl[221].w[0]" 0.80000033311593266;
	setAttr ".wl[221].w[29:30]" 0.020439097073892836 -4.4459807873343218e-013;
	setAttr ".wl[221].w[33]" 0.17956057081470131;
	setAttr -s 4 ".wl[222].w";
	setAttr ".wl[222].w[0]" 0.80000036449902767;
	setAttr ".wl[222].w[29:30]" 0.10002227011945812 -4.8765851722615753e-013;
	setAttr ".wl[222].w[33]" 0.099977365383309244;
	setAttr ".wl[223].w[2]"  1.0000000358336365;
	setAttr ".wl[224].w[2]"  1.0000000381406868;
	setAttr ".wl[225].w[2]"  1.0000000000019382;
	setAttr ".wl[226].w[2]"  1.0000000000083431;
	setAttr ".wl[227].w[2]"  1.0000000000170732;
	setAttr -s 2 ".wl[228].w[0:1]"  0.57651854732246688 0.42348145267753312;
	setAttr -s 2 ".wl[229].w[0:1]"  0.30561102686284369 0.69438897313715631;
	setAttr -s 2 ".wl[230].w[0:1]"  0.3327378046203639 0.66726219537963605;
	setAttr -s 2 ".wl[231].w[0:1]"  0.7 0.30000000000000004;
	setAttr -s 2 ".wl[232].w[0:1]"  0.7 0.30000000000000004;
	setAttr -s 4 ".wl[233].w";
	setAttr ".wl[233].w[24:26]" 0.00010646536704943798 0.95786262532972954 0.037156700248241227;
	setAttr ".wl[233].w[28]" 0.0048742016040637312;
	setAttr -s 4 ".wl[234].w";
	setAttr ".wl[234].w[24:26]" 0.065658579766550915 0.80453883693078909 0.12980256843227281;
	setAttr ".wl[234].w[28]" 3.7603060354946132e-012;
	setAttr -s 4 ".wl[235].w";
	setAttr ".wl[235].w[24:26]" 0.076581535284458477 0.86581982136291324 0.057598617552423514;
	setAttr ".wl[235].w[28]" 1.6014499570621424e-008;
	setAttr -s 4 ".wl[236].w";
	setAttr ".wl[236].w[24:26]" 0.0001199976723618644 0.94283443018017332 0.040250265545249658;
	setAttr ".wl[236].w[28]" 0.016795227215668024;
	setAttr -s 4 ".wl[237].w";
	setAttr ".wl[237].w[24:26]" 7.2364525207959629e-005 0.71404362952922007 
		0.007962285047123506;
	setAttr ".wl[237].w[28]" 0.27792166918390393;
	setAttr -s 5 ".wl[238].w";
	setAttr ".wl[238].w[1:2]" 0.032936370243033294 0.96649286209493213;
	setAttr ".wl[238].w[14]" 0.00057064663001406041;
	setAttr ".wl[238].w[17]" 9.1242357608631913e-008;
	setAttr ".wl[238].w[23]" 1.2463799990323543e-008;
	setAttr -s 5 ".wl[239].w";
	setAttr ".wl[239].w[1:2]" 0.0054276368193932048 0.99430475878299873;
	setAttr ".wl[239].w[14]" 1.6281722476074582e-007;
	setAttr ".wl[239].w[17]" 7.7218658931162059e-012;
	setAttr ".wl[239].w[23]" 0.00026749433932879115;
	setAttr -s 5 ".wl[240].w";
	setAttr ".wl[240].w[1:3]" 0.10254560286734959 0.89221031868654388 1.6124560983982147e-013;
	setAttr ".wl[240].w[17]" 2.0923049474851658e-019;
	setAttr ".wl[240].w[23]" 0.0052440697456704946;
	setAttr -s 5 ".wl[241].w";
	setAttr ".wl[241].w[1:3]" 0.064910160083290716 0.93240172347568162 0.0026881280111781579;
	setAttr ".wl[241].w[17]" 3.5093329703520172e-009;
	setAttr ".wl[241].w[23]" 4.059158880847181e-008;
	setAttr -s 4 ".wl[242].w";
	setAttr ".wl[242].w[1:3]" 0.00059007935635752235 0.99938435427624828 2.5557049325062585e-005;
	setAttr ".wl[242].w[17]" 1.069583809332147e-010;
	setAttr -s 4 ".wl[243].w";
	setAttr ".wl[243].w[1:2]" 0.0071534883830167619 3.1624525519817058e-006;
	setAttr ".wl[243].w[23:24]" 0.98741775403962917 0.0054256294927878604;
	setAttr -s 4 ".wl[244].w";
	setAttr ".wl[244].w[1:2]" 0.012747371216415363 3.7731819787577987e-006;
	setAttr ".wl[244].w[23:24]" 0.97869724363480348 0.0085516259268636225;
	setAttr -s 4 ".wl[245].w";
	setAttr ".wl[245].w[1:2]" 0.0062094452300691756 9.6285325076574024e-009;
	setAttr ".wl[245].w[23:24]" 0.98961223247027486 0.0041783738518554906;
	setAttr -s 4 ".wl[246].w";
	setAttr ".wl[246].w[1:2]" 0.0044362344035056289 7.9600568392875854e-010;
	setAttr ".wl[246].w[23:24]" 0.992682911423035 0.0028808868841480291;
	setAttr -s 4 ".wl[247].w";
	setAttr ".wl[247].w[1:2]" 0.0066497689277780865 6.1283423626033968e-007;
	setAttr ".wl[247].w[23:24]" 0.98904445686001763 0.0043051769412415326;
	setAttr -s 4 ".wl[248].w";
	setAttr ".wl[248].w[1:2]" 0.0035967080175359576 2.3574409302643549e-006;
	setAttr ".wl[248].w[23:24]" 0.9944418262988286 0.001959092453877168;
	setAttr ".wl[249].w[24]"  1.0000000056461431;
	setAttr ".wl[250].w[24]"  1.0000000033769538;
	setAttr -s 4 ".wl[251].w";
	setAttr ".wl[251].w[1]" 3.6133723443817001e-012;
	setAttr ".wl[251].w[23:25]" 4.5057948592050544e-005 0.99995495102239518 
		6.6584042165940957e-009;
	setAttr -s 4 ".wl[252].w";
	setAttr ".wl[252].w[1]" 2.514397935306268e-012;
	setAttr ".wl[252].w[23:25]" 4.5951188106919006e-005 0.99995401652907989 
		5.3347782031469316e-009;
	setAttr -s 4 ".wl[253].w";
	setAttr ".wl[253].w[1]" 4.1776532366848369e-012;
	setAttr ".wl[253].w[23:25]" 4.2831657686624295e-005 0.99995719848205011 
		1.1544886323040984e-008;
	setAttr -s 4 ".wl[254].w";
	setAttr ".wl[254].w[1]" 1.9729123210010014e-012;
	setAttr ".wl[254].w[23:25]" 3.7565100263052632e-005 0.99996243003121021 
		4.8673269136075279e-009;
	setAttr -s 4 ".wl[255].w";
	setAttr ".wl[255].w[0]" 0.32628486283884794;
	setAttr ".wl[255].w[29:30]" 0.33688839716939645 1.2880849534495385e-006;
	setAttr ".wl[255].w[33]" 0.33682545229493893;
	setAttr -s 5 ".wl[256].w";
	setAttr ".wl[256].w[0]" 0.44691482215100209;
	setAttr ".wl[256].w[29:30]" 0.031806846792392394 3.5489083259358519e-011;
	setAttr ".wl[256].w[33:34]" 0.51518413814564301 0.0060942496431584548;
	setAttr -s 4 ".wl[257].w";
	setAttr ".wl[257].w[0]" 0.4366614883632311;
	setAttr ".wl[257].w[29]" 0.0060416769129560356;
	setAttr ".wl[257].w[33:34]" 0.55375859580159825 0.0035382389222161558;
	setAttr -s 6 ".wl[258].w";
	setAttr ".wl[258].w[0:1]" 0.45813521899496207 5.5501291171792731e-009;
	setAttr ".wl[258].w[29:30]" 0.02253386557717903 2.8337219599753038e-011;
	setAttr ".wl[258].w[33:34]" 0.51893122700479166 0.00039970363642375788;
	setAttr -s 4 ".wl[259].w";
	setAttr ".wl[259].w[0]" 0.40176738361982439;
	setAttr ".wl[259].w[29:30]" 0.29914559800245955 1.0655104887647754e-006;
	setAttr ".wl[259].w[33]" 0.29908595286718137;
	setAttr -s 2 ".wl[260].w[0:1]"  0.96546250650398868 0.034537489521517091;
	setAttr -s 2 ".wl[261].w[0:1]"  0.86017016217417441 0.13982983782582573;
	setAttr -s 2 ".wl[262].w[0:1]"  0.84334806777026783 0.15665191153099692;
	setAttr -s 3 ".wl[263].w";
	setAttr ".wl[263].w[0:1]" 0.77629369810818338 0.22370630189483132;
	setAttr ".wl[263].w[23]" 1.686727081289499e-013;
	setAttr -s 5 ".wl[264].w";
	setAttr ".wl[264].w[0:1]" 0.84141241808376499 0.1585875779963746;
	setAttr ".wl[264].w[17]" 8.6288680709688618e-013;
	setAttr ".wl[264].w[23]" 3.9188803552098161e-009;
	setAttr ".wl[264].w[29]" 1.1730549197686442e-013;
	setAttr -s 4 ".wl[265].w";
	setAttr ".wl[265].w[2]" 0.95979989560528012;
	setAttr ".wl[265].w[9:10]" 0.040200131701655296 2.0247259766901805e-009;
	setAttr ".wl[265].w[13]" 1.9205584734610144e-010;
	setAttr -s 3 ".wl[266].w";
	setAttr ".wl[266].w[2]" 0.99992760011991844;
	setAttr ".wl[266].w[9:10]" 7.2063982510019148e-005 4.0227004147597397e-007;
	setAttr -s 2 ".wl[267].w";
	setAttr ".wl[267].w[2]" 0.99999996112563139;
	setAttr ".wl[267].w[13]" 6.2992460706460186e-011;
	setAttr -s 4 ".wl[268].w";
	setAttr ".wl[268].w[0]" 0.18180710973528144;
	setAttr ".wl[268].w[10:12]" 6.3056307398543979e-006 0.40909324872526592 
		0.40909324871175717;
	setAttr -s 3 ".wl[269].w";
	setAttr ".wl[269].w[2]" 0.015939222719005497;
	setAttr ".wl[269].w[9:10]" 0.64024250559401585 0.34381821383773592;
	setAttr -s 3 ".wl[270].w";
	setAttr ".wl[270].w[2]" 0.017265216760640033;
	setAttr ".wl[270].w[9:10]" 0.64624189253305775 0.33649289070593225;
	setAttr -s 3 ".wl[271].w";
	setAttr ".wl[271].w[2]" 0.005776020536351659;
	setAttr ".wl[271].w[9:10]" 0.69613927436842904 0.29808462510724371;
	setAttr -s 3 ".wl[272].w";
	setAttr ".wl[272].w[2]" 0.00067541384631405956;
	setAttr ".wl[272].w[9:10]" 0.54129291992506134 0.45803166622862457;
	setAttr -s 4 ".wl[273].w";
	setAttr ".wl[273].w[2]" 0.0013860065705606308;
	setAttr ".wl[273].w[9:11]" 0.5075577821374021 0.49105621125738336 4.7523605037290382e-011;
	setAttr -s 3 ".wl[274].w";
	setAttr ".wl[274].w[2]" 0.002387542549392465;
	setAttr ".wl[274].w[9:10]" 0.53519169946549483 0.46242075798325344;
	setAttr -s 6 ".wl[275].w";
	setAttr ".wl[275].w[1:2]" 1.3098117987056238e-019 0.0063581595225044307;
	setAttr ".wl[275].w[9:12]" 0.47328061385027914 0.52036000343851219 1.2231842322376524e-006 
		6.6784508305659505e-019;
	setAttr -s 4 ".wl[276].w";
	setAttr ".wl[276].w[2]" 0.0021742405776971362;
	setAttr ".wl[276].w[9:11]" 0.44470769753293282 0.55311806186260537 2.6764722520301002e-011;
	setAttr -s 6 ".wl[277].w";
	setAttr ".wl[277].w[1:2]" 1.341719245792357e-019 0.0039766692050594715;
	setAttr ".wl[277].w[9:12]" 0.35861234772037331 0.63740968583815583 1.2529747570534174e-006 
		6.8411400937930896e-019;
	setAttr -s 5 ".wl[278].w";
	setAttr ".wl[278].w[1]" 7.1201391508096815e-013;
	setAttr ".wl[278].w[9:12]" 4.9232790714862136e-010 0.63652396137241352 
		0.36299505873568622 0.00048103166462979546;
	setAttr -s 5 ".wl[279].w";
	setAttr ".wl[279].w[1]" 0.00078315814264605344;
	setAttr ".wl[279].w[9:12]" 2.8768651262247573e-007 0.55565233227221766 
		0.4435634686996478 6.3909645519666994e-007;
	setAttr -s 5 ".wl[280].w";
	setAttr ".wl[280].w[1]" 2.1892698125784103e-007;
	setAttr ".wl[280].w[9:12]" 6.7356416827417624e-007 0.61166141923622397 
		0.38721087019887401 0.0011268180500128805;
	setAttr -s 3 ".wl[281].w[10:12]"  0.52232724337584513 0.47730525280206781 
		0.0003675038246552874;
	setAttr -s 4 ".wl[282].w[9:12]"  1.343029082139204e-013 0.52317077806617007 
		0.47669488693787071 0.00013444244873262362;
	setAttr -s 3 ".wl[283].w[10:12]"  0.50041419716824853 0.49933149706067503 
		0.00025430577107879779;
	setAttr -s 4 ".wl[284].w[9:12]"  2.2822080955639501e-018 0.49359465826798071 
		0.50575451015532424 0.0006508832702481458;
	setAttr -s 3 ".wl[285].w[10:12]"  0.49046482392119345 0.50878714868654795 
		0.00074802741086616711;
	setAttr -s 3 ".wl[286].w[10:12]"  0.49594549712958241 0.50251110731439996 
		0.0015434183429436791;
	setAttr -s 4 ".wl[287].w";
	setAttr ".wl[287].w[0]" 1.700270158337631e-010;
	setAttr ".wl[287].w[10:12]" 0.0095184348473191967 0.49524079976335394 0.4952407975949375;
	setAttr -s 4 ".wl[288].w";
	setAttr ".wl[288].w[0]" 0.0084819706240138616;
	setAttr ".wl[288].w[10:12]" 5.7126811756554582e-006 0.4957562223945351 0.49575612465257074;
	setAttr -s 4 ".wl[289].w";
	setAttr ".wl[289].w[0]" 3.4853234512757151e-006;
	setAttr ".wl[289].w[10:12]" 0.0098670225003702292 0.49506475599588023 0.49506473876638446;
	setAttr -s 4 ".wl[290].w";
	setAttr ".wl[290].w[0]" 6.9408305070084351e-012;
	setAttr ".wl[290].w[10:12]" 0.00011787654648361149 0.50078551162653817 0.49909660890403362;
	setAttr -s 4 ".wl[291].w";
	setAttr ".wl[291].w[0]" 2.5546384366231526e-011;
	setAttr ".wl[291].w[10:12]" 3.3895632498775705e-005 0.50090363839772856 
		0.49906241868960394;
	setAttr -s 4 ".wl[292].w";
	setAttr ".wl[292].w[0]" 1.1275790750602377e-007;
	setAttr ".wl[292].w[10:12]" 0.00028050638403300876 0.50050835843287966 0.49921110614838465;
	setAttr -s 6 ".wl[293].w";
	setAttr ".wl[293].w[1:2]" 2.2543407812110887e-013 4.3235904351845482e-012;
	setAttr ".wl[293].w[9:12]" 0.0082260644659736641 0.98514750663393091 0.0066263532831065423 
		4.6413198457264328e-009;
	setAttr -s 6 ".wl[294].w";
	setAttr ".wl[294].w[1:2]" 2.2374720545882901e-011 1.4316884585846908e-011;
	setAttr ".wl[294].w[9:12]" 0.0051656917334784065 0.98877389606716548 0.0060603370153087567 
		3.7723869022112968e-008;
	setAttr -s 6 ".wl[295].w";
	setAttr ".wl[295].w[1:2]" 6.3397028056763839e-015 1.4379428785805629e-007;
	setAttr ".wl[295].w[9:12]" 0.020900166476511883 0.96429794605707853 0.014801743669532488 
		2.9340015981311295e-012;
	setAttr -s 4 ".wl[296].w";
	setAttr ".wl[296].w[0]" 1.7756522907284575e-013;
	setAttr ".wl[296].w[10:12]" 0.031972607196398495 0.95747253551106493 0.010554834065477471;
	setAttr -s 3 ".wl[297].w[10:12]"  0.021465601375340183 0.97139395156883523 
		0.007140466561174951;
	setAttr -s 3 ".wl[298].w[10:12]"  0.064720451926291736 0.91221322326500565 
		0.023066360782708489;
	setAttr -s 3 ".wl[299].w";
	setAttr ".wl[299].w[2]" 0.2906360256805437;
	setAttr ".wl[299].w[9:10]" 0.70542621284170048 0.0039377143079414832;
	setAttr -s 3 ".wl[300].w";
	setAttr ".wl[300].w[2]" 0.12278343282758818;
	setAttr ".wl[300].w[9:10]" 0.87633805364164075 0.00087857587551957994;
	setAttr -s 3 ".wl[301].w";
	setAttr ".wl[301].w[2]" 0.3490926856868608;
	setAttr ".wl[301].w[9:10]" 0.65004114929575951 0.00086621969341704687;
	setAttr ".wl[302].w[2]"  0.99999998509933841;
	setAttr ".wl[303].w[2]"  0.99999988552212637;
	setAttr ".wl[304].w[2]"  1.0000000534112254;
	setAttr ".wl[305].w[2]"  1.0000000240974227;
	setAttr ".wl[306].w[2]"  0.99999998343104635;
	setAttr ".wl[307].w[2]"  1.0000000751412217;
	setAttr ".wl[308].w[2]"  1;
	setAttr -s 3 ".wl[309].w[30:32]"  0.02770111000930172 0.48615213189730344 
		0.48614675874235458;
	setAttr -s 3 ".wl[310].w[30:32]"  0.039712089763593826 0.48014624858493909 
		0.48014168112069722;
	setAttr -s 3 ".wl[311].w[30:32]"  6.6376595608691522e-006 0.49999665776452706 
		0.49999665754691786;
	setAttr -s 3 ".wl[312].w[30:32]"  6.3762186010977129e-006 0.49999681204153035 
		0.49999681173226423;
	setAttr ".wl[313].w[2]"  1.0000000236464557;
	setAttr ".wl[314].w[2]"  0.99999996080416076;
	setAttr ".wl[315].w[2]"  0.99999996658811596;
	setAttr ".wl[316].w[2]"  0.99999988716709909;
	setAttr ".wl[317].w[2]"  0.99999999955028496;
	setAttr ".wl[318].w[2]"  1.000000000004468;
	setAttr ".wl[319].w[2]"  0.9999999999599154;
	setAttr -s 3 ".wl[320].w";
	setAttr ".wl[320].w[1:2]" 0.0054460504728586706 0.99428524525892892;
	setAttr ".wl[320].w[17]" 0.0002688163989858273;
	setAttr ".wl[321].w[2]"  1.0000000056258644;
	setAttr -s 4 ".wl[322].w";
	setAttr ".wl[322].w[1:3]" 0.06493026750737535 0.93238041116372639 0.0026881495472333653;
	setAttr ".wl[322].w[17]" 1.2168753349598216e-006;
	setAttr ".wl[323].w[2]"  1.0000000351648619;
	setAttr -s 3 ".wl[324].w";
	setAttr ".wl[324].w[1:2]" 0.10253815961050119 0.89221868126933157;
	setAttr ".wl[324].w[17]" 0.0052431591202859035;
	setAttr -s 4 ".wl[325].w";
	setAttr ".wl[325].w[0:2]" 8.2458889303434435e-011 0.88711552745603695 
		5.8172731861982782e-010;
	setAttr ".wl[325].w[17]" 0.11288450148928636;
	setAttr -s 3 ".wl[326].w";
	setAttr ".wl[326].w[1:2]" 0.32293112948034747 0.62459510013094532;
	setAttr ".wl[326].w[17]" 0.052473822553799107;
	setAttr -s 3 ".wl[327].w";
	setAttr ".wl[327].w[1:2]" 0.55625353809258538 0.40776097603951816;
	setAttr ".wl[327].w[17]" 0.035985485867896121;
	setAttr -s 4 ".wl[328].w";
	setAttr ".wl[328].w[0:2]" 1.9882324000994997e-009 0.99993633858596453 
		2.7724684748255263e-007;
	setAttr ".wl[328].w[17]" 6.3382178955660102e-005;
	setAttr -s 3 ".wl[329].w";
	setAttr ".wl[329].w[1:2]" 0.49726145998212512 0.39954120635626722;
	setAttr ".wl[329].w[17]" 0.10319733366069862;
	setAttr -s 3 ".wl[330].w";
	setAttr ".wl[330].w[1:2]" 0.74832735544622053 0.035044672188593473;
	setAttr ".wl[330].w[17]" 0.21662796265723952;
	setAttr ".wl[331].w[2]"  0.99999995467591052;
	setAttr ".wl[332].w[2]"  1.0000000000027454;
	setAttr ".wl[333].w[2]"  1.0000000155250424;
	setAttr ".wl[334].w[2]"  1.0000000101934796;
	setAttr ".wl[335].w[2]"  0.99999997314075517;
	setAttr ".wl[336].w[2]"  0.99999997491238213;
	setAttr ".wl[337].w[2]"  0.99999999999662847;
	setAttr ".wl[338].w[2]"  0.99999999998881173;
	setAttr ".wl[339].w[2]"  1.0000000053776481;
	setAttr ".wl[340].w[2]"  1.0000000511884499;
	setAttr ".wl[341].w[2]"  1.0000000000124656;
	setAttr ".wl[342].w[2]"  1.0000000481732398;
	setAttr -s 3 ".wl[343].w[30:32]"  0.15446286613544619 0.44863403723147283 
		0.39690313034501024;
	setAttr -s 3 ".wl[344].w[30:32]"  0.3426184005736172 0.40621861278714799 
		0.25116303649923716;
	setAttr -s 3 ".wl[345].w[30:32]"  0.36132226527651967 0.40417548054389574 
		0.23450227953190092;
	setAttr -s 3 ".wl[346].w[30:32]"  1.8555639327999688e-005 0.52833174036398434 
		0.47164969682382174;
	setAttr ".wl[347].w[2]"  1;
	setAttr ".wl[348].w[2]"  0.99999999999994782;
	setAttr ".wl[349].w[2]"  1.0000000000002518;
	setAttr ".wl[350].w[2]"  1.0000000000005198;
	setAttr ".wl[351].w[2]"  0.99999996360291188;
	setAttr ".wl[352].w[2]"  0.99999999999906208;
	setAttr ".wl[353].w[2]"  1.0000000000037144;
	setAttr ".wl[354].w[2]"  1.0000000403980895;
	setAttr ".wl[355].w[2]"  1.0000000183022015;
	setAttr ".wl[356].w[2]"  0.99999996692993931;
	setAttr ".wl[357].w[2]"  0.99999990844647979;
	setAttr ".wl[358].w[2]"  1.0000000000001761;
	setAttr ".wl[359].w[2]"  1;
	setAttr ".wl[360].w[21]"  1.0000000245636329;
	setAttr ".wl[361].w[21]"  0.99999998288421921;
	setAttr ".wl[362].w[21]"  0.99999997988561518;
	setAttr ".wl[363].w[21]"  1.0000000000291038;
	setAttr -s 4 ".wl[364].w";
	setAttr ".wl[364].w[0:2]" 1.598077148771156e-009 0.99997423031453125 1.4830355267081753e-007;
	setAttr ".wl[364].w[17]" 2.5626155346148778e-005;
	setAttr ".wl[365].w[21]"  1;
	setAttr ".wl[366].w[21]"  1.0000000352592906;
	setAttr -s 4 ".wl[367].w";
	setAttr ".wl[367].w[0:2]" 0.0087237366668672343 0.99122978424399844 1.1341232089350707e-012;
	setAttr ".wl[367].w[17]" 4.6479087791466717e-005;
	setAttr -s 2 ".wl[368].w[0:1]"  0.30556115953826174 0.6944388404617382;
	setAttr -s 4 ".wl[369].w";
	setAttr ".wl[369].w[0:2]" 5.081868973090388e-008 0.99997185620066187 8.6616564976234582e-008;
	setAttr ".wl[369].w[17]" 2.8007932186008406e-005;
	setAttr -s 2 ".wl[370].w[0:1]"  0.33271844694071445 0.6672815530592856;
	setAttr -s 2 ".wl[371].w[0:1]"  0.7 0.30000000000000004;
	setAttr -s 4 ".wl[372].w";
	setAttr ".wl[372].w[1:2]" 0.5022211300171221 0.00082053504722084253;
	setAttr ".wl[372].w[17:18]" 0.49695830736070762 3.5509835973514218e-008;
	setAttr -s 4 ".wl[373].w";
	setAttr ".wl[373].w[1:2]" 0.5915983450943616 0.0016008966960729663;
	setAttr ".wl[373].w[17:18]" 0.40680068344709919 7.4758828376607537e-008;
	setAttr -s 5 ".wl[374].w";
	setAttr ".wl[374].w[0:2]" 2.6147237906845864e-005 0.79055522496392261 
		0.0011844843876095848;
	setAttr ".wl[374].w[17:18]" 0.20823409497532352 4.8435237534786787e-008;
	setAttr -s 5 ".wl[375].w";
	setAttr ".wl[375].w[0:2]" 0.00017649562901129876 0.94764426588628725 3.4680819466818303e-005;
	setAttr ".wl[375].w[17:18]" 0.052144520590540061 4.9556599885898035e-008;
	setAttr -s 4 ".wl[376].w";
	setAttr ".wl[376].w[1:2]" 0.54248546070360204 4.5275731722922731e-006;
	setAttr ".wl[376].w[17:18]" 0.45750994456116206 4.872478691544609e-008;
	setAttr -s 5 ".wl[377].w";
	setAttr ".wl[377].w[0:2]" 2.602453773718555e-006 0.71806118337073876 8.1343689255305926e-011;
	setAttr ".wl[377].w[17:18]" 0.2819362156070947 2.0667806059918384e-008;
	setAttr -s 4 ".wl[378].w";
	setAttr ".wl[378].w[1:2]" 0.35651566087146186 0.00052358563851507883;
	setAttr ".wl[378].w[17:18]" 0.64285524814118888 0.00010554280637343527;
	setAttr -s 4 ".wl[379].w";
	setAttr ".wl[379].w[1:2]" 0.3881465594905496 0.00078679466119893496;
	setAttr ".wl[379].w[17:18]" 0.61079373013890048 0.00027290833607753888;
	setAttr -s 4 ".wl[380].w";
	setAttr ".wl[380].w[1:2]" 0.52681046725885849 0.0010867701982791693;
	setAttr ".wl[380].w[17:18]" 0.47186930313855774 0.000233459402897512;
	setAttr -s 4 ".wl[381].w";
	setAttr ".wl[381].w[1:2]" 0.59177410004535225 0.00014149635752453064;
	setAttr ".wl[381].w[17:18]" 0.40791620282477342 0.00016820077156876753;
	setAttr -s 4 ".wl[382].w";
	setAttr ".wl[382].w[1:2]" 0.39900685900464039 8.8581388334969404e-006;
	setAttr ".wl[382].w[17:18]" 0.60079084805272476 0.00019338840524703519;
	setAttr -s 4 ".wl[383].w";
	setAttr ".wl[383].w[1:2]" 0.45921772775307762 4.5423399614450659e-011;
	setAttr ".wl[383].w[17:18]" 0.54069882616713538 8.3442786558266373e-005;
	setAttr -s 4 ".wl[384].w";
	setAttr ".wl[384].w[0:1]" 0.85899630666361437 0.14100013021845131;
	setAttr ".wl[384].w[29]" 3.1987030515680873e-006;
	setAttr ".wl[384].w[33]" 3.6441670181221775e-007;
	setAttr -s 4 ".wl[385].w";
	setAttr ".wl[385].w[0:1]" 0.90024823081477201 0.099747441888017374;
	setAttr ".wl[385].w[29]" 4.1494377545413904e-006;
	setAttr ".wl[385].w[33]" 1.7785945615196813e-007;
	setAttr -s 4 ".wl[386].w";
	setAttr ".wl[386].w[0]" 0.79999432780996671;
	setAttr ".wl[386].w[29:30]" 0.20000538162205697 1.0694286862714435e-011;
	setAttr ".wl[386].w[33]" 2.9055773681527347e-007;
	setAttr -s 4 ".wl[387].w";
	setAttr ".wl[387].w[0]" 0.79999659657259092;
	setAttr ".wl[387].w[29:30]" 0.17955013349104398 5.8953398382866153e-012;
	setAttr ".wl[387].w[33]" 0.020453269927741331;
	setAttr -s 4 ".wl[388].w";
	setAttr ".wl[388].w[0:1]" 0.99998169282822047 1.0845326545053473e-005;
	setAttr ".wl[388].w[29]" 7.4912115007710432e-006;
	setAttr ".wl[388].w[33]" 3.1366407136402223e-012;
	setAttr -s 4 ".wl[389].w";
	setAttr ".wl[389].w[0]" 0.79999042172647084;
	setAttr ".wl[389].w[29:30]" 0.20000930012500537 1.8889367451380038e-011;
	setAttr ".wl[389].w[33]" 2.5155965621085655e-007;
	setAttr -s 4 ".wl[390].w";
	setAttr ".wl[390].w[0]" 0.13120582995957775;
	setAttr ".wl[390].w[29:30]" 0.75888484369959164 0.10990485841500186;
	setAttr ".wl[390].w[33]" 4.4489660763446969e-006;
	setAttr -s 4 ".wl[391].w";
	setAttr ".wl[391].w[0]" 0.090329442012001743;
	setAttr ".wl[391].w[29:30]" 0.85053713634232764 0.05913069405141947;
	setAttr ".wl[391].w[33]" 2.7276050505636571e-006;
	setAttr -s 4 ".wl[392].w";
	setAttr ".wl[392].w[0]" 0.39534953454372029;
	setAttr ".wl[392].w[29:30]" 0.60432460652596376 2.2430345332529686e-005;
	setAttr ".wl[392].w[33]" 0.00030349667368770983;
	setAttr -s 4 ".wl[393].w";
	setAttr ".wl[393].w[0]" 0.49714039942238197;
	setAttr ".wl[393].w[29:30]" 0.50109406859571815 1.6698825639907935e-005;
	setAttr ".wl[393].w[33]" 0.0017487882002876255;
	setAttr -s 4 ".wl[394].w";
	setAttr ".wl[394].w[0]" 0.74906130289571615;
	setAttr ".wl[394].w[29:30]" 0.24586852760482544 1.2490224517083792e-010;
	setAttr ".wl[394].w[33]" 0.0050701693736244832;
	setAttr -s 4 ".wl[395].w";
	setAttr ".wl[395].w[0]" 0.91498161466101646;
	setAttr ".wl[395].w[29:30]" 0.083696543556615571 6.3693337144155031e-010;
	setAttr ".wl[395].w[33]" 0.0013218411454341372;
	setAttr -s 4 ".wl[396].w";
	setAttr ".wl[396].w[0]" 0.16498128084796584;
	setAttr ".wl[396].w[29:30]" 0.73353220780502038 0.10147953561661956;
	setAttr ".wl[396].w[33]" 6.9534761483688912e-006;
	setAttr -s 4 ".wl[397].w";
	setAttr ".wl[397].w[0]" 0.45014725383393561;
	setAttr ".wl[397].w[29:30]" 0.54659819141268118 1.6814797002958932e-005;
	setAttr ".wl[397].w[33]" 0.003237733800828705;
	setAttr -s 4 ".wl[398].w";
	setAttr ".wl[398].w[0]" 0.49616072101111269;
	setAttr ".wl[398].w[29:30]" 0.48761881889501169 1.3972019091131204e-010;
	setAttr ".wl[398].w[33]" 0.016220446265735385;
	setAttr -s 4 ".wl[399].w";
	setAttr ".wl[399].w[0]" 0.218453152198714;
	setAttr ".wl[399].w[29:30]" 0.78111040623622208 -6.918525930173669e-007;
	setAttr ".wl[399].w[33]" 0.00043713341723407767;
	setAttr -s 4 ".wl[400].w";
	setAttr ".wl[400].w[0]" 0.39221049432492106;
	setAttr ".wl[400].w[29:30]" 0.60576903249625413 1.4904063789707768e-009;
	setAttr ".wl[400].w[33]" 0.0020204342394942779;
	setAttr -s 4 ".wl[401].w";
	setAttr ".wl[401].w[0]" 0.46939975541530998;
	setAttr ".wl[401].w[29:30]" 0.52596573364761157 5.0469006270208732e-010;
	setAttr ".wl[401].w[33]" 0.0046345070150838243;
	setAttr -s 4 ".wl[402].w";
	setAttr ".wl[402].w[0]" 0.54727269948348889;
	setAttr ".wl[402].w[29:30]" 0.44472246254369319 1.3155975533670057e-006;
	setAttr ".wl[402].w[33]" 0.0080035223745447744;
	setAttr -s 4 ".wl[403].w";
	setAttr ".wl[403].w[0]" 0.36409034177932287;
	setAttr ".wl[403].w[29:30]" 0.63178517948352308 4.5678441680167381e-006;
	setAttr ".wl[403].w[33]" 0.0041199577771828238;
	setAttr -s 4 ".wl[404].w";
	setAttr ".wl[404].w[0]" 0.41102214444848723;
	setAttr ".wl[404].w[29:30]" 0.56820325996955678 6.9219294829078427e-010;
	setAttr ".wl[404].w[33]" 0.0207745618916894;
	setAttr -s 3 ".wl[405].w[30:32]"  0.29209959857834489 0.57177837223418781 
		0.13612202918763053;
	setAttr -s 3 ".wl[406].w[30:32]"  0.25956612959849057 0.55323096337059885 
		0.18720290703636872;
	setAttr -s 4 ".wl[407].w[29:32]"  1.1657661363105716e-012 0.49865781286535904 
		0.5013421375923518 4.6659047133325478e-011;
	setAttr -s 3 ".wl[408].w[30:32]"  0.49999648363463006 0.49999662654337806 
		6.8342335744996543e-006;
	setAttr -s 3 ".wl[409].w[30:32]"  0.48813279552140088 0.48813436474565974 
		0.023732778267789759;
	setAttr -s 3 ".wl[410].w[30:32]"  0.48402597707712403 0.48709898116676287 
		0.028875037937248948;
	setAttr -s 4 ".wl[411].w";
	setAttr ".wl[411].w[0]" 2.5980934252775937e-012;
	setAttr ".wl[411].w[29:30]" 0.52235814364670952 0.477641856350836;
	setAttr ".wl[411].w[33]" 1.3387212600828352e-014;
	setAttr -s 4 ".wl[412].w";
	setAttr ".wl[412].w[0]" 6.0138004742286639e-007;
	setAttr ".wl[412].w[29:30]" 0.56275571904980548 0.43724365954743183;
	setAttr ".wl[412].w[33]" 3.0976902817565336e-009;
	setAttr -s 4 ".wl[413].w";
	setAttr ".wl[413].w[0]" 8.0037420387296673e-012;
	setAttr ".wl[413].w[29:30]" 0.48570713119407616 0.51429291677229727;
	setAttr ".wl[413].w[33]" 1.601305800278361e-014;
	setAttr -s 2 ".wl[414].w[29:30]"  0.43575183996396177 0.56424816003639555;
	setAttr -s 4 ".wl[415].w";
	setAttr ".wl[415].w[0]" -1.5192086369156442e-007;
	setAttr ".wl[415].w[29:30]" 1.0000001263998579 -9.5301572682319843e-013;
	setAttr ".wl[415].w[33]" -1.7192364347679536e-009;
	setAttr -s 2 ".wl[416].w[29:30]"  0.29999981468789372 0.70000018104841844;
	setAttr -s 2 ".wl[417].w[29:30]"  0.99991415838002773 8.5811643026935703e-005;
	setAttr -s 2 ".wl[418].w[29:30]"  0.30000859919254474 0.69999140375057967;
	setAttr -s 2 ".wl[419].w[29:30]"  0.53223382193439117 0.46776617806560894;
	setAttr -s 2 ".wl[420].w[29:30]"  0.41622341942692442 0.58377658057307513;
	setAttr -s 4 ".wl[421].w";
	setAttr ".wl[421].w[0]" 2.0914148054604181e-006;
	setAttr ".wl[421].w[29:30]" 0.59472429730443221 0.40527364489855205;
	setAttr ".wl[421].w[33]" 4.184465591251598e-009;
	setAttr -s 2 ".wl[422].w[29:30]"  0.4710327064180525 0.52896730087922716;
	setAttr -s 3 ".wl[423].w[29:31]"  0.29056248502490301 0.7094375144861419 
		4.844073917344338e-010;
	setAttr -s 3 ".wl[424].w[29:31]"  0.23217198916291343 0.76782246016869549 
		5.5506647536458817e-006;
	setAttr -s 3 ".wl[425].w[29:31]"  3.2668362670347529e-005 0.99996731972049568 
		1.0683807429906806e-009;
	setAttr -s 2 ".wl[426].w[29:30]"  8.4011405632132361e-006 0.99999159885943678;
	setAttr -s 2 ".wl[427].w[29:30]"  0.16200375650455165 0.83799622114323002;
	setAttr -s 4 ".wl[428].w[29:32]"  0.0007261341725089543 0.99926074958773647 
		1.3036753203510662e-005 7.9009293394560739e-008;
	setAttr -s 3 ".wl[429].w[29:31]"  0.26481891098670418 0.73517964950279469 
		1.5091875696542158e-006;
	setAttr -s 3 ".wl[430].w[29:31]"  2.4583844791350943e-006 0.99999752751740789 
		8.4037049976484539e-011;
	setAttr -s 3 ".wl[431].w[29:31]"  0.23300617434114607 0.76698575027401827 
		7.9651302216615272e-006;
	setAttr -s 3 ".wl[432].w[29:31]"  2.2918401478124424e-005 0.99997708362545601 
		7.8343923285583074e-010;
	setAttr -s 3 ".wl[433].w[29:31]"  0.14754867926138696 0.85244445429872195 
		6.8664398911040029e-006;
	setAttr -s 3 ".wl[434].w[29:31]"  3.2759361978804857e-005 0.99996722828436413 
		1.2451959346662322e-009;
	setAttr -s 3 ".wl[435].w[29:31]"  0.095655601151582934 0.90434435874460628 
		1.105719241358765e-009;
	setAttr -s 3 ".wl[436].w[29:31]"  0.066726316108140421 0.93325489561891006 
		1.8804672879193053e-005;
	setAttr -s 4 ".wl[437].w[29:32]"  4.6013414037974627e-007 0.46052756858983246 
		0.44763972841484018 0.091832236118460642;
	setAttr -s 4 ".wl[438].w[29:32]"  2.3229309315470768e-011 0.41867918434762075 
		0.45303740462728642 0.12828341100652513;
	setAttr -s 4 ".wl[439].w[29:32]"  0.04386434420236756 0.95524824815298837 
		0.00087792051489360542 9.4291524573136522e-006;
	setAttr -s 4 ".wl[440].w[29:32]"  3.3752545610693014e-007 0.51164008579449183 
		0.48835962452123249 1.2256071527049578e-010;
	setAttr -s 4 ".wl[441].w[29:32]"  0.073625664066297267 0.81719184104991005 
		0.10915553545900691 2.6959424785689239e-005;
	setAttr -s 3 ".wl[442].w[30:32]"  0.50071394868892161 0.49928110432024586 
		4.8681660165369721e-006;
	setAttr -s 4 ".wl[443].w[29:32]"  0.072985890670025019 0.79896655546676076 
		0.12449933957732608 0.0035482143149919727;
	setAttr -s 3 ".wl[444].w[30:32]"  0.49252969213239733 0.49008709279946816 
		0.017383206399342065;
	setAttr -s 3 ".wl[445].w[29:31]"  0.040649973764174653 0.94482815657146368 
		0.014521832868731358;
	setAttr -s 3 ".wl[446].w[30:32]"  0.50381894481736866 0.47800937752971639 
		0.018171677653807037;
	setAttr -s 3 ".wl[447].w[29:31]"  0.18166974967006955 0.8183302500365055 
		2.934245317438853e-010;
	setAttr -s 3 ".wl[448].w[29:31]"  0.11763800608705684 0.88236199282151662 
		1.0914247895990362e-009;
	setAttr -s 2 ".wl[449].w[29:30]"  0.14333978462260083 0.8566602186004626;
	setAttr -s 3 ".wl[450].w[29:31]"  0.2505979636849881 0.74940204857265669 
		2.6169278337833128e-010;
	setAttr -s 3 ".wl[451].w[29:31]"  0.21981713231596775 0.7801828653733156 
		2.3013959610130404e-009;
	setAttr -s 3 ".wl[452].w[29:31]"  0.12763613179493821 0.87236386619833428 
		1.986720930586795e-009;
	setAttr ".wl[453].w[2]"  0.99999997829918641;
	setAttr ".wl[454].w[2]"  1.0000000325653211;
	setAttr ".wl[455].w[2]"  1.0000000000004114;
	setAttr ".wl[456].w[2]"  0.99999993374828622;
	setAttr ".wl[457].w[2]"  0.99999990427314045;
	setAttr ".wl[458].w[21]"  1;
	setAttr ".wl[459].w[21]"  1;
	setAttr ".wl[460].w[22]"  1;
	setAttr ".wl[461].w[22]"  0.99999998876592144;
	setAttr ".wl[462].w[22]"  1.0000000233267199;
	setAttr ".wl[463].w[22]"  1.0000000071886459;
	setAttr -s 4 ".wl[464].w[19:22]"  0.49324873600924057 0.47493268928908305 
		0.03181860005121729 3.8748096173449936e-009;
	setAttr -s 4 ".wl[465].w[19:22]"  0.49360354619837848 0.47833255755112658 
		0.028063927657928017 8.5953035745285344e-014;
	setAttr -s 3 ".wl[466].w";
	setAttr ".wl[466].w[19:20]" 0.99995988214880427 2.3221374996045634e-006;
	setAttr ".wl[466].w[22]" 3.779571841785146e-005;
	setAttr -s 4 ".wl[467].w[19:22]"  0.999966541627481 4.7457791508655274e-006 
		3.3312865889266584e-012 2.8735040234709138e-005;
	setAttr -s 3 ".wl[468].w";
	setAttr ".wl[468].w[19:20]" 0.71129966502442132 0.015090499767931202;
	setAttr ".wl[468].w[22]" 0.27360983520037241;
	setAttr -s 3 ".wl[469].w";
	setAttr ".wl[469].w[19:20]" 0.71390084325528758 0.0079615006279497615;
	setAttr ".wl[469].w[22]" 0.27813767228525371;
	setAttr -s 3 ".wl[470].w";
	setAttr ".wl[470].w[19:20]" 0.49751205709392216 0.0049758858121556433;
	setAttr ".wl[470].w[22]" 0.49751205709392216;
	setAttr -s 3 ".wl[471].w";
	setAttr ".wl[471].w[19:20]" 0.48732792721317608 0.025344145573647964;
	setAttr ".wl[471].w[22]" 0.48732792721317603;
	setAttr ".wl[472].w[22]"  1;
	setAttr ".wl[473].w[22]"  0.9999999889114406;
	setAttr ".wl[474].w[22]"  1;
	setAttr ".wl[475].w[22]"  0.99999996816040948;
	setAttr ".wl[476].w[18]"  1;
	setAttr ".wl[477].w[18]"  0.99999998196290107;
	setAttr -s 2 ".wl[478].w[18:19]"  0.99998728741293241 1.2737501310766677e-005;
	setAttr -s 2 ".wl[479].w[18:19]"  0.99998738442809554 1.2615571904461833e-005;
	setAttr -s 3 ".wl[480].w[17:19]"  0.44989639218105915 0.55003703503220258 
		6.6558970410714454e-005;
	setAttr -s 2 ".wl[481].w[18:19]"  0.99998740164264732 1.2598357352544556e-005;
	setAttr -s 3 ".wl[482].w[17:19]"  0.43919238747615474 0.56075657954945834 
		5.1067254588742494e-005;
	setAttr -s 2 ".wl[483].w[18:19]"  0.99998740528044427 1.2588732352014631e-005;
	setAttr -s 3 ".wl[484].w[17:19]"  0.41830109491908607 0.58158598287025021 
		0.00011292527716627117;
	setAttr -s 2 ".wl[485].w[18:19]"  0.99998732604399265 1.2722261089948008e-005;
	setAttr -s 3 ".wl[486].w[17:19]"  0.37200044920665543 0.62795130456476334 
		4.8261570850333465e-005;
	setAttr -s 2 ".wl[487].w[18:19]"  0.99998731472560398 1.2725840588245776e-005;
	setAttr -s 2 ".wl[488].w[17:18]"  0.89973928180395357 0.10026071819604648;
	setAttr -s 2 ".wl[489].w[17:18]"  0.89977811348083725 0.10022188651188683;
	setAttr -s 4 ".wl[490].w";
	setAttr ".wl[490].w[1]" 0.00011955403624993564;
	setAttr ".wl[490].w[17:19]" 0.61055497833717687 0.38932545014272646 4.2430280429451157e-008;
	setAttr -s 4 ".wl[491].w";
	setAttr ".wl[491].w[1]" 7.7617175497607927e-005;
	setAttr ".wl[491].w[17:19]" 0.6336531515165259 0.36626912222185026 3.1593197462103169e-008;
	setAttr -s 4 ".wl[492].w";
	setAttr ".wl[492].w[1]" 0.00013059277181038555;
	setAttr ".wl[492].w[17:19]" 0.56073846933559679 0.43913086929312461 6.8613271033773888e-008;
	setAttr -s 4 ".wl[493].w";
	setAttr ".wl[493].w[1]" 5.5498963143653553e-005;
	setAttr ".wl[493].w[17:19]" 0.59092383410631211 0.40902063643975023 3.0465948897407115e-008;
	setAttr -s 2 ".wl[494].w[18:19]"  0.69973027948669819 0.30026973543651819;
	setAttr -s 2 ".wl[495].w[18:19]"  0.69972923296736544 0.3002707670326345;
	setAttr -s 3 ".wl[496].w";
	setAttr ".wl[496].w[19:20]" 0.99998871617699148 7.9695127885270772e-006;
	setAttr ".wl[496].w[22]" 3.3143102199689973e-006;
	setAttr -s 5 ".wl[497].w[18:22]"  2.1186390890228575e-005 0.99996279907362395 
		1.6012743274745647e-005 1.640546682902219e-009 1.5166428957100938e-010;
	setAttr -s 2 ".wl[498].w[18:19]"  0.69973016712483505 0.30026983259685952;
	setAttr -s 5 ".wl[499].w[18:22]"  1.6308300858802251e-005 0.99995131552859118 
		3.2365243470615765e-005 2.103006800726686e-009 7.8407005873201233e-011;
	setAttr -s 2 ".wl[500].w[18:19]"  0.6997298836708068 0.30027008599345212;
	setAttr -s 5 ".wl[501].w[18:22]"  9.632142480721759e-008 0.99999083434245506 
		8.0244854626831024e-006 2.0617700733675214e-011 1.023668899316122e-006;
	setAttr -s 2 ".wl[502].w[18:19]"  0.69972978610603598 0.30027021389396397;
	setAttr -s 2 ".wl[503].w[18:19]"  0.69973028228268952 0.30026971771731048;
	setAttr -s 5 ".wl[504].w";
	setAttr ".wl[504].w[1:2]" 0.0070750601065256843 3.0022675233640709e-006;
	setAttr ".wl[504].w[17:19]" 0.98748623180436601 0.0054356614462385674 1.9021708726718305e-013;
	setAttr -s 4 ".wl[505].w";
	setAttr ".wl[505].w[1:2]" 0.012643463287037571 3.5557196862475028e-006;
	setAttr ".wl[505].w[17:18]" 0.97879398309001597 0.0085589605777402038;
	setAttr -s 4 ".wl[506].w";
	setAttr ".wl[506].w[1]" 0.0060888714344618077;
	setAttr ".wl[506].w[17:19]" 0.98970822227092514 0.0042028486185973048 1.5233368119698794e-012;
	setAttr -s 4 ".wl[507].w";
	setAttr ".wl[507].w[1]" 0.0043422662227966665;
	setAttr ".wl[507].w[17:19]" 0.99275379655865714 0.0029039699810041106 1.0071158330455113e-012;
	setAttr -s 5 ".wl[508].w";
	setAttr ".wl[508].w[1:2]" 0.0065703114827676823 5.9639554506853392e-007;
	setAttr ".wl[508].w[17:19]" 0.98909654566780991 0.0043325563725307749 2.1151154251680543e-012;
	setAttr -s 5 ".wl[509].w";
	setAttr ".wl[509].w[1:2]" 0.0035242963048487492 2.2482834708169477e-006;
	setAttr ".wl[509].w[17:19]" 0.99448871730182531 0.0019847280565189547 1.1454709808209913e-012;
	setAttr -s 4 ".wl[510].w[19:22]"  0.95766564091713502 0.037457751569232714 
		7.8171234418282122e-008 0.0048764494835573128;
	setAttr -s 3 ".wl[511].w";
	setAttr ".wl[511].w[19:20]" 0.34417978480374528 0.65044011092896004;
	setAttr ".wl[511].w[22]" 0.0053801042672947802;
	setAttr -s 5 ".wl[512].w[18:22]"  0.065463013850442411 0.80447308675449547 
		0.13004642327519869 1.690525047326452e-005 6.2957795398236641e-007;
	setAttr -s 5 ".wl[513].w[18:22]"  0.076347061947651756 0.86583363990996831 
		0.057806363942726598 1.1840955988873486e-005 1.0932470025997228e-006;
	setAttr -s 3 ".wl[514].w";
	setAttr ".wl[514].w[19:20]" 0.94265301961058379 0.040542678985733709;
	setAttr ".wl[514].w[22]" 0.016804301403695637;
	setAttr -s 3 ".wl[515].w";
	setAttr ".wl[515].w[19:20]" 0.28843976616705874 0.69077726057650746;
	setAttr ".wl[515].w[22]" 0.020782973256433808;
	setAttr -s 2 ".wl[516].w[0:1]"  0.91196514441643728 0.088034844691454242;
	setAttr -s 2 ".wl[517].w[0:1]"  0.88873620448245427 0.11126376715211132;
	setAttr -s 2 ".wl[518].w[0:1]"  0.83904566234637412 0.16095430873897032;
	setAttr -s 4 ".wl[519].w";
	setAttr ".wl[519].w[0]" 0.4649431425656208;
	setAttr ".wl[519].w[29:30]" 0.50127007286027958 1.8860651184758205e-006;
	setAttr ".wl[519].w[33]" 0.033784925139723893;
	setAttr -s 4 ".wl[520].w";
	setAttr ".wl[520].w[0]" 0.45865960083824575;
	setAttr ".wl[520].w[29:30]" 0.53495118160150679 1.349192947717278e-006;
	setAttr ".wl[520].w[33]" 0.0063878683672514069;
	setAttr -s 4 ".wl[521].w";
	setAttr ".wl[521].w[0]" 0.45932974243460856;
	setAttr ".wl[521].w[29:30]" 0.5180813407843774 1.1801133038740194e-006;
	setAttr ".wl[521].w[33]" 0.022587736669478359;
	setAttr -s 3 ".wl[522].w";
	setAttr ".wl[522].w[0:1]" 0.86011124368175051 0.13988777112897771;
	setAttr ".wl[522].w[17]" 1.0003514065052987e-006;
	setAttr -s 3 ".wl[523].w";
	setAttr ".wl[523].w[0:1]" 0.84330265120251247 0.1566965819713679;
	setAttr ".wl[523].w[17]" 7.5553778417079324e-007;
	setAttr -s 3 ".wl[524].w";
	setAttr ".wl[524].w[0:1]" 0.77627353974634228 0.22372551576408456;
	setAttr ".wl[524].w[17]" 9.4448927498767893e-007;
	setAttr -s 2 ".wl[525].w";
	setAttr ".wl[525].w[2]" 0.95981102742528679;
	setAttr ".wl[525].w[13]" 0.040188972573733897;
	setAttr ".wl[526].w[2]"  0.9999999799568724;
	setAttr ".wl[527].w[2]"  0.99999997109554528;
	setAttr -s 3 ".wl[528].w";
	setAttr ".wl[528].w[2]" 0.12290243254867182;
	setAttr ".wl[528].w[13:14]" 0.87621896592920034 0.00087855999251856647;
	setAttr -s 3 ".wl[529].w";
	setAttr ".wl[529].w[2]" 0.34902631738704942;
	setAttr ".wl[529].w[13:14]" 0.65011186277973698 0.00086181983138403594;
	setAttr -s 3 ".wl[530].w";
	setAttr ".wl[530].w[2]" 0.29020203178957305;
	setAttr ".wl[530].w[13:14]" 0.70585909725973939 0.003938850401605536;
	setAttr -s 3 ".wl[531].w";
	setAttr ".wl[531].w[2]" 0.017203578268916015;
	setAttr ".wl[531].w[13:14]" 0.64626834497893904 0.33652805097170774;
	setAttr -s 3 ".wl[532].w";
	setAttr ".wl[532].w[2]" 0.01592845318681552;
	setAttr ".wl[532].w[13:14]" 0.6402709698326432 0.34380057698588345;
	setAttr -s 4 ".wl[533].w";
	setAttr ".wl[533].w[2]" 0.0013845943321162167;
	setAttr ".wl[533].w[13:15]" 0.507569440309529 0.4910459653218654 1.2989095480017523e-011;
	setAttr -s 3 ".wl[534].w";
	setAttr ".wl[534].w[2]" 0.0023852840482994058;
	setAttr ".wl[534].w[13:14]" 0.53519726684278135 0.46241746173231174;
	setAttr -s 3 ".wl[535].w";
	setAttr ".wl[535].w[2]" 0.0058125871685891246;
	setAttr ".wl[535].w[13:14]" 0.69615501670756252 0.29803243395007961;
	setAttr -s 3 ".wl[536].w";
	setAttr ".wl[536].w[2]" 0.00067571103816982641;
	setAttr ".wl[536].w[13:14]" 0.54129611622861618 0.4580281283002885;
	setAttr -s 4 ".wl[537].w";
	setAttr ".wl[537].w[2]" 0.0021740327110356715;
	setAttr ".wl[537].w[13:15]" 0.4446591697301463 0.55316638425964837 3.5822747018184414e-007;
	setAttr -s 4 ".wl[538].w";
	setAttr ".wl[538].w[2]" 0.0039749691219485425;
	setAttr ".wl[538].w[13:15]" 0.35861247751743014 0.63741210908589252 4.4428368403134379e-007;
	setAttr -s 4 ".wl[539].w";
	setAttr ".wl[539].w[2]" 0.006357906025638238;
	setAttr ".wl[539].w[13:15]" 0.47334339013275223 0.52029839775860887 3.2773575372391856e-007;
	setAttr -s 6 ".wl[540].w";
	setAttr ".wl[540].w[1:2]" 4.712180805567567e-013 5.5184172133511392e-012;
	setAttr ".wl[540].w[13:16]" 0.0051608597511323849 0.98878516847804188 0.0060539588201113112 
		1.2957395907150763e-008;
	setAttr -s 4 ".wl[541].w";
	setAttr ".wl[541].w[2]" 2.2029763084243439e-008;
	setAttr ".wl[541].w[13:15]" 0.020892938861830281 0.96430484002340988 0.014802142486637188;
	setAttr -s 5 ".wl[542].w";
	setAttr ".wl[542].w[2]" 4.8341392846267172e-008;
	setAttr ".wl[542].w[13:16]" 0.0082284418033728591 0.98514790920405249 0.0066236482920608601 
		4.1650261764709954e-013;
	setAttr -s 5 ".wl[543].w";
	setAttr ".wl[543].w[1]" 0.00078311156903990804;
	setAttr ".wl[543].w[13:16]" 2.3198614644003737e-007 0.55566754647994709 
		0.44354880340976016 3.0655411160856076e-007;
	setAttr -s 5 ".wl[544].w";
	setAttr ".wl[544].w[1]" 6.9950339863253707e-008;
	setAttr ".wl[544].w[13:16]" 3.7828226751124673e-007 0.63656661233604694 
		0.36295196437984389 0.00048096880898394577;
	setAttr -s 3 ".wl[545].w[14:16]"  0.52312621288562022 0.47673921642249451 
		0.00013457070056166676;
	setAttr -s 3 ".wl[546].w[14:16]"  0.50041749604076602 0.49932845640792095 
		0.00025404755131663132;
	setAttr -s 6 ".wl[547].w";
	setAttr ".wl[547].w[1:2]" 7.0634454160841178e-012 4.4665929067347163e-013;
	setAttr ".wl[547].w[13:16]" 3.0397860223916845e-007 0.61165175088039003 
		0.38722091350910842 0.0011269772351347803;
	setAttr -s 3 ".wl[548].w[14:16]"  0.52234028271385657 0.47729286813771293 
		0.0003668916354589848;
	setAttr -s 3 ".wl[549].w[14:16]"  0.49047911798502047 0.50877357536625889 
		0.00074730666720810581;
	setAttr -s 3 ".wl[550].w[14:16]"  0.4960285726775206 0.50242893743426753 
		0.0015425082226855368;
	setAttr -s 3 ".wl[551].w[14:16]"  0.49351412433959135 0.50583392127912441 
		0.00065197038187971381;
	setAttr -s 3 ".wl[552].w[14:16]"  0.031978314606402686 0.95747280263725842 
		0.010548859050837186;
	setAttr -s 3 ".wl[553].w[14:16]"  0.021446146889587521 0.97141964638126499 
		0.0071342466883602268;
	setAttr -s 3 ".wl[554].w[14:16]"  0.064712710152761005 0.91221851996898518 
		0.023068716522488805;
	setAttr -s 4 ".wl[555].w";
	setAttr ".wl[555].w[0]" 0.0084817509703336291;
	setAttr ".wl[555].w[14:16]" 5.8778690825879073e-006 0.49575625137565471 
		0.49575614871192658;
	setAttr -s 4 ".wl[556].w";
	setAttr ".wl[556].w[0]" 2.1633802426844234e-006;
	setAttr ".wl[556].w[14:16]" 0.0095165719768497761 0.49524059727640402 0.49524059727161573;
	setAttr -s 4 ".wl[557].w";
	setAttr ".wl[557].w[0]" 0.18184726850838737;
	setAttr ".wl[557].w[14:16]" 6.174748740350723e-006 0.40907325845161774 0.40907325844657871;
	setAttr -s 4 ".wl[558].w";
	setAttr ".wl[558].w[0]" 2.4516695810352879e-010;
	setAttr ".wl[558].w[14:16]" 0.0098710111037381993 0.49506450886964287 0.49506450325757023;
	setAttr -s 4 ".wl[559].w";
	setAttr ".wl[559].w[0]" 4.7371959101529357e-011;
	setAttr ".wl[559].w[14:16]" 3.3829190534464201e-005 0.50090173900648027 
		0.49906445333405608;
	setAttr -s 4 ".wl[560].w";
	setAttr ".wl[560].w[0]" 1.9494269541453825e-007;
	setAttr ".wl[560].w[14:16]" 0.00011756319997064598 0.50078184938885806 0.49910032401634302;
	setAttr -s 4 ".wl[561].w";
	setAttr ".wl[561].w[0]" 3.5016847661316535e-011;
	setAttr ".wl[561].w[14:16]" 0.00028058830744874167 0.50050826687781669 0.49921118781424295;
	setAttr -s 4 ".wl[562].w";
	setAttr ".wl[562].w[0]" 1.0819363044521559e-006;
	setAttr ".wl[562].w[14:16]" 0.0095174748166214993 0.49524070409865423 0.49524070409865406;
	setAttr -s 4 ".wl[563].w";
	setAttr ".wl[563].w[0]" 0.18192331563530847;
	setAttr ".wl[563].w[14:16]" 3.0880291205186062e-006 0.40903678820699951 
		0.40903678820699951;
	setAttr -s 3 ".wl[564].w[14:16]"  0.0098711073457947232 0.4950644536019802 
		0.49506445079562061;
	setAttr -s 3 ".wl[565].w[14:16]"  3.3538623092868205e-005 0.50089822011165019 
		0.49906825206550665;
	setAttr -s 4 ".wl[566].w";
	setAttr ".wl[566].w[0]" 9.7493816264661923e-008;
	setAttr ".wl[566].w[14:16]" 0.00011757380078484862 0.50078191141456319 0.49910038306200277;
	setAttr -s 3 ".wl[567].w[14:16]"  0.00028062829342656007 0.50050816832486511 
		0.49921122490899311;
	setAttr -s 3 ".wl[568].w";
	setAttr ".wl[568].w[0]" 0.45933336200920349;
	setAttr ".wl[568].w[29]" 0.5180763277358047;
	setAttr ".wl[568].w[33]" 0.022590310254991825;
	setAttr -s 2 ".wl[569].w[0:1]"  0.86015087913301147 0.13984912086698856;
	setAttr -s 2 ".wl[570].w[0:1]"  0.84332792429863035 0.15667207570136968;
	setAttr -s 3 ".wl[571].w";
	setAttr ".wl[571].w[0:1]" 0.75094978494094589 0.21641791050410791;
	setAttr ".wl[571].w[29]" 0.032632304554946194;
	setAttr -s 2 ".wl[572].w";
	setAttr ".wl[572].w[2]" 0.95979441702365875;
	setAttr ".wl[572].w[13]" 0.040205582976341248;
	setAttr ".wl[573].w[2]"  1;
	setAttr ".wl[574].w[2]"  1;
	setAttr -s 3 ".wl[575].w";
	setAttr ".wl[575].w[2]" 0.12276224869615436;
	setAttr ".wl[575].w[13:14]" 0.87635904550552368 0.0008787057983219536;
	setAttr -s 3 ".wl[576].w";
	setAttr ".wl[576].w[2]" 0.3491685591100086;
	setAttr ".wl[576].w[13:14]" 0.65002501010894775 0.00080643078104362085;
	setAttr -s 3 ".wl[577].w";
	setAttr ".wl[577].w[2]" 0.29023698407815673;
	setAttr ".wl[577].w[13:14]" 0.70582300424575806 0.0039400116760852158;
	setAttr -s 3 ".wl[578].w";
	setAttr ".wl[578].w[2]" 0.017203954280994738;
	setAttr ".wl[578].w[13:14]" 0.64624239826683338 0.33655364745217198;
	setAttr -s 3 ".wl[579].w";
	setAttr ".wl[579].w[2]" 0.015916325846776512;
	setAttr ".wl[579].w[13:14]" 0.64023886007122111 0.34384481408200246;
	setAttr -s 3 ".wl[580].w";
	setAttr ".wl[580].w[2]" 0.0013848631318063211;
	setAttr ".wl[580].w[13:14]" 0.5075596752491387 0.49105546161905494;
	setAttr -s 3 ".wl[581].w";
	setAttr ".wl[581].w[2]" 0.0023860700630145724;
	setAttr ".wl[581].w[13:14]" 0.53518570420808065 0.4624282257289048;
	setAttr -s 3 ".wl[582].w";
	setAttr ".wl[582].w[2]" 0.0057754574014094477;
	setAttr ".wl[582].w[13:14]" 0.69616265199953808 0.29806189059905241;
	setAttr -s 3 ".wl[583].w";
	setAttr ".wl[583].w[2]" 0.00067510692991548606;
	setAttr ".wl[583].w[13:14]" 0.54129550315739927 0.45802938991268521;
	setAttr -s 3 ".wl[584].w";
	setAttr ".wl[584].w[2]" 0.0021738531417950435;
	setAttr ".wl[584].w[13:14]" 0.44469700089121006 0.55312914596699492;
	setAttr -s 3 ".wl[585].w";
	setAttr ".wl[585].w[2]" 0.0039760725313065636;
	setAttr ".wl[585].w[13:14]" 0.35859600413229537 0.63742792333639808;
	setAttr -s 3 ".wl[586].w";
	setAttr ".wl[586].w[2]" 0.0063596479655897258;
	setAttr ".wl[586].w[13:14]" 0.47336436623197192 0.52027598580243839;
	setAttr -s 3 ".wl[587].w[13:15]"  0.0051595990755700389 0.98879632112102012 
		0.0060440798034096816;
	setAttr -s 3 ".wl[588].w[13:15]"  0.020892818912669048 0.96430219278426033 
		0.014804988303070692;
	setAttr -s 3 ".wl[589].w[13:15]"  0.008224575187725609 0.98515162209257923 
		0.0066238027196953691;
	setAttr -s 3 ".wl[590].w";
	setAttr ".wl[590].w[1]" 0.00078364619076521172;
	setAttr ".wl[590].w[14:15]" 0.55559648274005979 0.44361987106917494;
	setAttr -s 3 ".wl[591].w[14:16]"  0.63654801852852139 0.36297093445380296 
		0.00048104701767561202;
	setAttr -s 3 ".wl[592].w[14:16]"  0.5231397448580879 0.4767259250927588 
		0.00013433004915321543;
	setAttr -s 3 ".wl[593].w[14:16]"  0.50040312231445905 0.49934298162600754 
		0.00025389605953351959;
	setAttr -s 3 ".wl[594].w[14:16]"  0.6116279180088251 0.38724480209561446 
		0.0011272798955605048;
	setAttr -s 3 ".wl[595].w[14:16]"  0.52234985262557154 0.47728330151414611 
		0.00036684586028230018;
	setAttr -s 3 ".wl[596].w[14:16]"  0.49054294522169578 0.50871058275481751 
		0.00074647202348671494;
	setAttr -s 3 ".wl[597].w[14:16]"  0.49606118080307926 0.50239658645147256 
		0.0015422327454481771;
	setAttr -s 3 ".wl[598].w[14:16]"  0.49358578030303119 0.50576323508503418 
		0.00065098461193478644;
	setAttr -s 3 ".wl[599].w[14:16]"  0.031967610088234837 0.95748262974090403 
		0.010549760170861278;
	setAttr -s 3 ".wl[600].w[14:16]"  0.021427543110228809 0.9714400319633878 
		0.0071324249263833451;
	setAttr -s 3 ".wl[601].w[14:16]"  0.064722102620551142 0.91220356629484112 
		0.023074331084607824;
	setAttr -s 3 ".wl[602].w";
	setAttr ".wl[602].w[0]" 0.0084875037040732671;
	setAttr ".wl[602].w[15:16]" 0.49575624814796337 0.49575624814796337;
	setAttr -s 3 ".wl[603].w[14:16]"  0.0095183780211704379 0.49524081098941486 
		0.49524081098941469;
	setAttr -s 3 ".wl[604].w";
	setAttr ".wl[604].w[0]" 0.18199939498176179;
	setAttr ".wl[604].w[15:16]" 0.40900030250911912 0.40900030250911912;
	setAttr -s 3 ".wl[605].w[14:16]"  0.0098712034052147873 0.49506439829739263 
		0.49506439829739263;
	setAttr -s 3 ".wl[606].w[14:16]"  3.3247948810449149e-005 0.50089469940988096 
		0.49907205264130866;
	setAttr -s 3 ".wl[607].w[14:16]"  0.0001175844687653463 0.50078197383669099 
		0.49910044169454382;
	setAttr -s 3 ".wl[608].w[14:16]"  0.00028066828982883701 0.50050806971399364 
		0.49921126199617755;
	setAttr -s 37 ".pm";
	setAttr ".pm[0]" -type "matrix" -2.2204460492503131e-016 -1 0 0 1 -2.2204460492503131e-016 0 0
		 0 0 1 0 -9 2.4424904443252816e-015 0 1;
	setAttr ".pm[1]" -type "matrix" -2.2204460492503131e-016 -1 0 0 1 -2.2204460492503131e-016 0 0
		 0 0 1 0 -12.720345888709035 2.824484177368144e-015 0 1;
	setAttr ".pm[2]" -type "matrix" -1.7114059220672412e-016 -1.3316836432297221e-015 -1.0000000000000002 0
		 0.60276350335856854 0.79791989511410555 -1.1413737402788221e-015 0 0.79791989511410555 -0.60276350335856865 6.2490846786429775e-016 0
		 -9.2904823758284394 -12.715520630374074 1.7519369010138842e-014 1;
	setAttr ".pm[3]" -type "matrix" 1.0000000000000002 -1.5003351357726178e-015 2.2319929509400805e-016 0
		 1.4744406476663688e-015 1 6.1062266354383639e-016 0 -1.8081925801423496e-016 -6.106226635438356e-016 1.0000000000000002 0
		 -2.5061691649334409e-014 -17.221241633611246 -1.7015806065510002 1;
	setAttr ".pm[4]" -type "matrix" 1.0000000000000002 -1.5003351357726178e-015 2.2319929509400805e-016 0
		 1.4744406476663688e-015 1 6.1062266354383639e-016 0 -1.8081925801423496e-016 -6.106226635438356e-016 1.0000000000000002 0
		 -1.1559550142453816 -18.860453386447812 -1.744742421723837 1;
	setAttr ".pm[5]" -type "matrix" 1.0000000000000002 -1.5003351357726178e-015 2.2319929509400805e-016 0
		 1.4744406476663688e-015 1 6.1062266354383639e-016 0 -1.8081925801423496e-016 -6.106226635438356e-016 1.0000000000000002 0
		 1.1559599999999728 -18.860500000000009 -1.7447458425766309 1;
	setAttr ".pm[6]" -type "matrix" 0.080771936040842235 -0.72776064826139009 0.68105824507921131 0
		 0.99389727126906724 0.11030962860921188 5.2041704279304213e-016 0 -0.075127282075929558 0.67690193135952781 0.73222924471071538 0
		 -20.803423624609689 0.38891848418519537 -1.1596905714272121 1;
	setAttr ".pm[7]" -type "matrix" 0.12344927098026157 -0.68378973849070124 0.7191605321687643 0
		 0.98409107324371348 0.17766473921979134 5.5511151231257839e-017 0 -0.12776946840492973 0.70771945993647944 0.69484396015993377 0
		 -23.663879027567997 -1.198821422145864 -1.4123846563000717 1;
	setAttr ".pm[8]" -type "matrix" 1 1.9588980972286053e-015 2.4757973449140991e-014 0
		 -2.0955459589800394e-015 1.0000000000000002 2.2482016248658903e-015 0 -2.4868995751603507e-014 -2.1073657515092839e-015 1 0
		 -3.2686707012869634 -24.707244948466375 1.3503957125940258 1;
	setAttr ".pm[9]" -type "matrix" 1.2399715599199581e-015 5.1491839988110701e-016 -1 0
		 -0.99212909624126788 0.12521923331295959 -1.1413737402788215e-015 0 0.1252192333129597 0.99212909624126788 6.2490846786429736e-016 0
		 17.91509604055463 0.73860892886817475 -1.4697399999999785 1;
	setAttr ".pm[10]" -type "matrix" 1.2407028917706909e-015 5.1315374138585278e-016 -1.0000000000000002 0
		 -0.99194993971996448 0.12663063250872206 -1.1413737402788215e-015 0 0.12663063250872217 0.99194993971996448 6.2490846786429726e-016 0
		 16.2703768435459 0.71546139651651608 -1.4697399999999785 1;
	setAttr ".pm[11]" -type "matrix" 1.171582480297964e-015 6.5579335144946717e-016 -1.0000000000000002 0
		 -0.99996085589344508 0.0088479760877079022 -1.1413737402788215e-015 0 0.0088479760877080132 0.99996085589344508 6.2490846786429736e-016 0
		 13.089131303463391 2.2738466869150895 -1.4697399999999794 1;
	setAttr ".pm[12]" -type "matrix" 1.0000000000000002 -6.1113555496821701e-016 6.0571322234316631e-016 0
		 5.3075107673498567e-016 0.99999999999999989 1.2241729158146693e-009 0 -6.2490846711678963e-016 -1.2241729713258205e-009 0.99999999999999989 0
		 1.4697399999999874 -11.27720000290584 2.3737199861947573 1;
	setAttr ".pm[13]" -type "matrix" 1.2399720421164082e-015 5.1491723870552008e-016 -1.0000000000000002 0
		 -0.99212897897887842 0.12522016239539252 -1.1413737402788221e-015 0 0.12522016239539263 0.99212897897887842 6.2490846786429746e-016 0
		 17.915107674220771 0.73859271855816433 1.4697355328864274 1;
	setAttr ".pm[14]" -type "matrix" 1.2407035406156499e-015 5.1315217260598511e-016 -1.0000000000000002 0
		 -0.99194977960385589 0.12663188675788414 -1.1413737402788215e-015 0 0.12663188675788423 0.99194977960385589 6.2490846786429736e-016 0
		 16.270382495507956 0.71543984220792867 1.4697355328864281 1;
	setAttr ".pm[15]" -type "matrix" 1.1715832901874543e-015 6.5579190457033814e-016 -1 0
		 -0.99996084496562621 0.0088492110173936638 -1.1413737402788215e-015 0 0.0088492110173937748 0.99996084496562643 6.2490846786429736e-016 0
		 13.0891717697312 2.2738301771458698 1.4697355328864272 1;
	setAttr ".pm[16]" -type "matrix" 1.0000000000000002 -7.2166235433462861e-016 6.622039756465832e-016 0
		 6.9728453042875925e-016 1 7.5756742766466471e-031 0 -6.2490846786429736e-016 -1.1102230246251521e-016 1 0
		 -1.4697355328864219 -11.27720685848986 2.3737175033138818 1;
	setAttr ".pm[17]" -type "matrix" 0.99942062433366718 0.034035505821170098 0 0 -0.034035505821170098 0.99942062433366718 0 0
		 0 0 1 0 -1.2615535387902934 -14.660337674729432 0.39520589310364118 1;
	setAttr ".pm[18]" -type "matrix" 0.99957452430598337 0.029167968020874627 0 0 -0.029167968020874627 0.99957452430598337 0 0
		 0 0 1 0 -4.8017002626641805 -14.627437022914386 0.3952058931036409 1;
	setAttr ".pm[19]" -type "matrix" 0.99999717626906515 0.0023764372274386008 0 0 -0.0023764372274386008 0.99999717626906515 0 0
		 0 0 1 0 -8.7911749371006191 -14.412384152217134 0.39520589310364101 1;
	setAttr ".pm[20]" -type "matrix" 0.99754945812272355 0.069665466429175982 0.0064653991575301991 0
		 -0.069666922531362238 0.99757030825150828 -7.1922719516170908e-015 0 -0.0064496902305469436 -0.00045042446223481655 0.99997909908844285 0
		 -8.733859343472016 -15.034225916483338 0.33211036410687728 1;
	setAttr ".pm[21]" -type "matrix" 1 3.4881907519609893e-015 1.3010426069801044e-017 0
		 -3.4972023523242482e-015 1 -7.1697476520502249e-015 0 -1.3010426069851129e-017 7.1696041076643797e-015 1 0
		 -10.360953033801032 -14.339522757130714 0.3998083185907384 1;
	setAttr ".pm[22]" -type "matrix" 1 3.3757718842508666e-015 0 0 -3.3757718842508666e-015 1 0 0
		 0 0 1 0 -9.7435457045993541 -14.259602437683355 -0.046516711647870419 1;
	setAttr ".pm[23]" -type "matrix" -0.99932216711437138 -0.036813126922825783 -4.5083078052643854e-018 0
		 -0.036813126922825672 0.99932216711437138 1.2238166932736111e-016 0 8.4740917553038364e-033 1.224646799147353e-016 -1 0
		 -1.2207978665633317 -14.66378097978466 -0.39520600000000178 1;
	setAttr ".pm[24]" -type "matrix" -0.99968956747934068 -0.024915229739435069 -4.5083078052643854e-018 0
		 -0.024915229739434962 0.99968956747934068 1.2238166932736116e-016 0 1.4577408727217202e-018 1.2245600360197361e-016 -1 0
		 -4.8638851585102474 -14.606919278921335 -0.39520600000000106 1;
	setAttr ".pm[25]" -type "matrix" -0.99999695679675105 -0.0024670624711807527 -4.5083078052643854e-018 0
		 -0.0024670624711806417 0.99999695679675105 1.2238166932736111e-016 0 4.2063708620094496e-018 1.2239241917206236e-016 -1 0
		 -8.7898684129600557 -14.413229016873608 -0.39520600000000161 1;
	setAttr ".pm[26]" -type "matrix" -0.99659534797150195 -0.082094656113783318 0.007627570984263846 0
		 -0.082097044344933978 0.99662434011508338 3.3652768072212054e-013 0 -0.0076018228989005428 -0.00062620103300385914 -0.99997090965731605 0
		 -8.546151990527024 -15.141927817257756 -0.3207671064851399 1;
	setAttr ".pm[27]" -type "matrix" 0.99999999999999956 2.3735971059213945e-015 -1.6740081543256066e-016 0
		 -2.4841240175988422e-015 0.99999999999999989 -3.3655641207969136e-013 0 1.6740081543092574e-016 3.3655637556944247e-013 0.99999999999999989 0
		 10.361000000000027 -14.339499999999846 0.39980800000482414 1;
	setAttr ".pm[28]" -type "matrix" 0.99999999999999989 2.6139247016887511e-014 -1.1795637210947087e-016 0
		 -2.6250269319350027e-014 0.99999999999999989 -1.223816693273579e-016 0 1.1795637210946774e-016 1.2238166932736101e-016 1 0
		 9.6919110241134572 -14.259599999999756 -0.06166819045015022 1;
	setAttr ".pm[29]" -type "matrix" 0.0012289328746442256 -0.036801889042053886 -0.9993218253830578 0
		 -0.99939245319887549 0.034762455960651459 -0.0025092119713681325 0 0.034831224685949645 0.99871777425783348 -0.036736809447157709 0
		 8.2666275902551885 -0.029895251345200553 1.0119456079560387 1;
	setAttr ".pm[30]" -type "matrix" 0.0013685915226807374 -0.01175141716144342 0.99993001312688945 0
		 -0.99519026857044091 0.097928618134140721 0.0025129848847121098 0 -0.097951295550070164 -0.99512405756520372 -0.011560871724373863 0
		 5.0389842361652297 -0.76321769810626061 -1.0125837516575575 1;
	setAttr ".pm[31]" -type "matrix" -2.7598077964137294e-009 1.3063506047761182e-008 -1 0
		 -0.8616189680204217 0.50755566586082301 9.0083592537648661e-009 0 0.5075556658608229 0.8616189680204217 9.8550084386321063e-009 0
		 1.5587777482122775 -0.1208653415183224 1.0000000011567045 1;
	setAttr ".pm[32]" -type "matrix" 1.0000000000000002 9.008359610489723e-009 9.8550082426144051e-009 0
		 -9.008359697854076e-009 1 -6.9940011824212057e-016 0 -9.855008216587503e-009 7.994009597205165e-016 1 0
		 -0.99999999769337666 -0.40441836370919426 -0.2270618023010845 1;
	setAttr ".pm[33]" -type "matrix" -0.0012288865393847311 0.036801460303621032 -0.99932184122903789 0
		 -0.99939245004825039 0.034762550710996182 0.0025091541643746289 0 0.0348313167197064 0.99871778675839473 0.036736382347545872 0
		 8.2666260095231916 -0.0298961516292921 -1.0119452269980689 1;
	setAttr ".pm[34]" -type "matrix" -0.0013685799597947007 0.011750948215998961 0.99993001865376452 0
		 -0.99519027346559585 0.097928569876152588 -0.0025129268759348984 0 -0.097951245976587484 -0.99512406785186125 0.011560406290336176 0
		 5.0389849389545915 -0.76321799447543093 1.0125833307916414 1;
	setAttr ".pm[35]" -type "matrix" -3.2827186228801181e-009 3.8407576010987201e-008 -0.99999999999999889 0
		 -0.86161943671569263 0.50755487020984436 2.2322406431121301e-008 0 0.5075548702098448 0.86161943671569186 3.1426554209126629e-008 0
		 1.5587791324260292 -0.12086492169816768 -1.0000000050486899 1;
	setAttr ".pm[36]" -type "matrix" 0.999999999999999 2.2322413234642995e-008 3.1426550240129211e-008 0
		 -2.2322413370015205e-008 0.99999999999999989 4.2615329946022602e-010 0 -3.142655021232374e-008 -4.2615398084801679e-010 0.999999999999999 0
		 1.0000000280551755 -0.40441797796488976 -0.22706196919532137 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -26.543416023254395 0 0 1;
	setAttr -s 36 ".ma";
	setAttr -s 37 ".dpf[0:36]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 36 ".lw";
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
	setAttr ".ic" -type "componentList" 1 "vtx[0:561]";
	setAttr ".irc" -type "componentList" 1 "vtx[562:608]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	setAttr -s 40 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 41 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 -3.1740705207922175e-032
		 5.7178971258750047e-016 0 0 0 0 -3.1740705207922175e-032 5.7178971258750047e-016 0
		 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 4.4408899999999997e-016
		 9 0 0 0 0 4.4408899999999997e-016 9 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.4408899999999997e-016
		 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654757 0.70710678118654746 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.720345888709037 -3.8199373304286202e-016
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -7.7037197775489434e-033 5.5511151231257827e-017
		 -2.7755575615628914e-016 0 3.0255847037456736 -6.2095686657263384e-017 -0.25139103931195717 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.63300148170414394 -0.31513350212308117 -0.31513350212308078 0.63300148170414461 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 6.106226635438359e-016 -8.0491169285323869e-016
		 5.5511151231257807e-016 0 2.4475785825388741 3.5527136788005009e-015 -1.0508433598555745e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.22476660388383676 0.67043267654442851 -0.22476660388383665 0.67043267654442884 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 7.7715611723760958e-016 0 0 3.4700752724608241
		 1.2819433029682694 -1.155955014245357 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.22476660388383676 0.67043267654442851 -0.22476660388383665 0.67043267654442884 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 1.5991391662196954e-013 -4.9347100900337217e-020
		 2.7462671622468376e-016 0 3.470106098975354 1.2819784348837366 1.1559599999999974 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.22476660388383676 0.67043267654442851 -0.22476660388383665 0.67043267654442884 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 -4.1633363423443227e-016 1.4432899320127033e-015
		 1.7763568394002491e-015 0 2.3671055365609455 4.3373139618454157 -2.7531891960201107 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.7968988683547229 0.45330047005773905 0.15795239712716402 0.36677229680303985 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 -1.968369044147434e-016 3.0986498089635712e-016
		 -4.5349466369637437e-016 0 2.8950286167211594 -0.095414678270457562 0.089291655838939166 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.026411643887387325 0.0038452584783395826 -0.034020479742649254 0.99906468559972661 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 1.9984014443252569e-015 -2.4980018054066022e-014
		 1.9984014443252569e-015 0 1.2263545281464516 -6.6613381477509392e-016 -2.2204460492503131e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.25046984429294222 -0.29973801397202438 -0.59028170180853079 0.70639188315693491 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 6.1550254801117376e-016 1.7282684352272614e-015
		 -2.2204460492503082e-016 0 -1.0073565938916147 3.1868702770559647 1.4697399999999958 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.86547798710395041 0.50094695711072468 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 -5.5530881453411695e-016 -2.7716080058002626e-016
		 -2.7430314963883257e-016 0 1.6457535679438742 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 1 0 0 0.00071136220537157239 0.99999974698187444 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 -5.866212128896211e-016 -4.2394397915436652e-016
		 -5.5511151231257704e-017 0 3.0044862957916756 1.1379786002407857e-013 1.1102230246251563e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.059027385448470443 0.99825636374987248 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 1.2241728741813065e-009 -5.5511150755571102e-017
		 -7.771561172715872e-016 0 1.7913701215829241 4.4408920985006262e-016 6.6613381477509392e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.497783091601256 0.50220712232692954 0.49778309160125567 0.50220712232692988 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 6.9892785160339104e-016 1.8723991462592042e-015
		 -8.8817841970012454e-016 0 -1.0073516347258185 3.1868800471535739 -1.4697355328864099 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.86547775254715964 0.5009473623504942 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 -7.2184227152334562e-016 -2.7704221660211808e-016
		 -6.8781785822480401e-016 0 1.6457597612267421 9.9920072216264089e-016 -2.2204460492503131e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.00071152619271198632 0.99999974686520654 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 -5.4103688352879323e-016 -2.5442422907365156e-016
		 -8.4654505627668166e-016 0 3.0044536880625827 1.624256285026604e-013 1.1102230246251563e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.05902740014777054 0.99825636288069564 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 5.5511151231257802e-017 5.5511151231257852e-017
		 -9.4368957093138306e-016 0 1.7914009435810154 -4.4408920985006262e-016 2.2204460492503131e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49778278118638425 0.50220743000711199 0.49778278118638403 0.50220743000711221 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 1.1102230246251563e-016 0 1.8885603302982223
		 -1.7597946336367156 -0.39520589310364118 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.71903946547500797 0.69496924182974806 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 5.9847959921199845e-016 0 3.4688548130931816
		 -0.0096900407090583229 5.5511151231257827e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0.0024349850840808132 0.99999703541942575 1 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 -4.4408920985006262e-016 0 3.6001755781706963
		 0.015310536235197958 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.013397432188086714 0.99991025037788561 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 1.6805133673525313e-018 1.7940157822846077e-018
		 -2.775527915409737e-016 0 0.9322781832849838 -3.5527136788005009e-015 -1.6653345369377348e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.00011651392935943068 0.003230616084099015 -0.033666941201645227 0.99942787964632362 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 2.2632720350634874e-017 -1.389472846675958e-017
		 3.4971658933942736e-015 0 0.60529195978001304 -0.0075630702755304924 -0.0007019011096073835 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.00011267516623723416 -0.0032307522476177895 0.034854457083028444 0.99938717040277669 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 3.3757718842508666e-015 0 0.91845620426597741
		 -0.12966705507467502 0.44172260475151154 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0011882194525209152 0.99999929406701715 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 1.2246467991473535e-016 -1.224646799147353e-016
		 -3.3306690738754696e-016 0 1.888554111290965 1.7597899999999995 -0.395206 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.69396933400445526 0.72000455794488738 4.4087563862935564e-017 4.2493366179748835e-017 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 3.0512356350419383e-018 -2.44891342810193e-016
		 6.4878658001532585e-016 0 3.4688713150533559 1.2434497875801752e-014 -8.3266726846886741e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0059517841949854851 0.99998228797559041 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 3.0212801586279976e-019 -2.4492898714455885e-016
		 -9.0205620750793969e-017 0 3.6002076215268488 7.1054273576010019e-015 6.106226635438361e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.011225135877752025 0.99993699617752219 1
		 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 -3.4721574573848275e-016 7.3934964866986114e-016
		 -4.0545773119168966e-017 0 0.93228283712615756 3.5527136788005009e-015 3.3306690738754696e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.00016138405052572842 -0.0038103971617459024 -0.039850395735423955 0.99919837909615716 1
		 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 -2.0166160408230379e-017 -1.6940658944820134e-021
		 2.636779683484746e-015 0 0.60538111203108791 3.5527136788005009e-015 2.2204460492503131e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.041082908766087535 0.99914846215964082 -0.00015668368041765881 -0.0038105933352032524 1
		 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 3.208743732094964e-030 2.3509844979875955e-038
		 2.6201263381153694e-014 0 0.86683379268386496 -0.12976186177302829 -0.45687419045015054 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.001233532174076083 0.99999923919889844 7.5532061431377558e-020 6.1232293371735962e-017 1
		 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 -0.03688168940819396 0.0037915984498615844
		 -0.00025509478386484823 0 -0.73481635450118254 -0.99999999999999989 -0.22090419113652263 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.012787840945288434 0.7325784444162351 0.6804588201838484 -0.011878044226735909 1
		 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.1692424049239749 -0.16683380515970622
		 0.013395986760232905 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99749942537947611 -0.066420158004452959 0.00076255869814120564 0.024138713356562189 1
		 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 0.03060117083902987 -0.020937227652982764
		 -0.00032038875976658765 0 3.7099844953325198 0.046240348119031327 -0.0011818228067146386 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.95065534224541437 -0.30998831863310167 0.0027391967585164889 0.012416093282291195 1
		 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.3255697192831402 0.28004024613595974
		 3.4633281797979976e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.3508718904882438 0.61391279223127915 0.35087189048824363 0.61391279223127948 1
		 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 0.036880861687594489 -0.0037915154611268998
		 -0.00025508431972419844 0 -0.73481798564250589 1.0000000000000002 -0.22090444357948991 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.011878082732980995 -0.68045928016895618 -0.73257801609012996 0.012787866279552891 1
		 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 2.3683074022543454e-017 -1.0687904285618639e-015
		 -3.2528549413234534e-014 0 3.1692401121634903 -0.16683378376126545 -0.013395767930606596 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.99749943476697445 0.066420179297260323 0.00076254294270747974 0.024138267335227583 1
		 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 -0.030600555752532024 0.020936722388573244
		 -0.00032037346586484224 0 3.7099834813565207 0.046240348703376566 0.0011818084268855333 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.95065549512635406 0.30998785725825051 0.0027391520740957104 0.012415916575913542 1
		 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.3255711501878895 0.28004039851657631
		 2.3006483385046295e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.35087217407388593 0.61391263015242048 0.3508721740738831 0.61391263015242536 1
		 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 1.9984014443252569e-015 -2.4980018054066022e-014
		 1.9984014443252569e-015 0 1.2263545281464481 -4.4408920985006262e-016 -2.2204460492503131e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.25046984429294222 -0.29973801397202438 -0.59028170180853079 0.70639188315693491 1
		 1 1 yes;
	setAttr -s 40 ".m";
	setAttr -s 40 ".p";
	setAttr -s 41 ".g[0:40]" yes yes yes no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no no no no no no no no no 
		no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	setAttr -s 22 ".wl";
	setAttr -s 3 ".wl[0].w";
	setAttr ".wl[0].w[2]" 0.042211692307517319;
	setAttr ".wl[0].w[6:7]" 0.95732698844468467 0.00046131924779808513;
	setAttr -s 3 ".wl[1].w";
	setAttr ".wl[1].w[2]" 0.064746614864421223;
	setAttr ".wl[1].w[6:7]" 0.93430926848731333 0.00094411664826552714;
	setAttr -s 3 ".wl[2].w[6:8]"  0.068964160511896869 0.46551791974405154 
		0.46551791974405154;
	setAttr -s 3 ".wl[3].w";
	setAttr ".wl[3].w[2]" 0.0018223930937389197;
	setAttr ".wl[3].w[6:7]" 0.99816231230453967 1.52946017214115e-005;
	setAttr -s 3 ".wl[4].w";
	setAttr ".wl[4].w[2]" 0.00017391891433119795;
	setAttr ".wl[4].w[6:7]" 0.99982469581077549 1.3852748933227403e-006;
	setAttr -s 3 ".wl[5].w[6:8]"  0.012713553736203099 0.4941365385623479 
		0.49314990770144906;
	setAttr -s 3 ".wl[6].w[6:8]"  4.4044060150517597e-005 0.50487413277736326 
		0.49508182316248622;
	setAttr -s 3 ".wl[7].w[6:8]"  0.014298439549671743 0.49285078791874398 
		0.49285077253158421;
	setAttr -s 3 ".wl[8].w[6:8]"  5.7493191678454101e-005 0.50077166109934323 
		0.49917084570897829;
	setAttr -s 3 ".wl[9].w";
	setAttr ".wl[9].w[2]" 0.9532953099591982;
	setAttr ".wl[9].w[6:7]" 0.046699985126927065 4.7049138746544869e-006;
	setAttr -s 3 ".wl[10].w";
	setAttr ".wl[10].w[2]" 0.90779553601941521;
	setAttr ".wl[10].w[6:7]" 0.092194508860725652 9.955119859130742e-006;
	setAttr -s 3 ".wl[11].w";
	setAttr ".wl[11].w[2]" 0.93130237585973907;
	setAttr ".wl[11].w[6:7]" 0.068690396714331567 7.2274259293682484e-006;
	setAttr -s 3 ".wl[12].w";
	setAttr ".wl[12].w[2]" 0.86598710557541247;
	setAttr ".wl[12].w[6:7]" 0.13399631100744358 1.6583417143953081e-005;
	setAttr -s 3 ".wl[13].w";
	setAttr ".wl[13].w[2]" 0.98054910621698321;
	setAttr ".wl[13].w[4]" 0.0025404563622277773;
	setAttr ".wl[13].w[6]" 0.016910437420789067;
	setAttr -s 3 ".wl[14].w";
	setAttr ".wl[14].w[2]" 5.8185899677896136e-006;
	setAttr ".wl[14].w[6:7]" 0.99995049423609761 4.3687173934580901e-005;
	setAttr -s 3 ".wl[15].w";
	setAttr ".wl[15].w[2]" 0.017438570073154851;
	setAttr ".wl[15].w[6:7]" 0.90426288298836188 0.078298546938483107;
	setAttr -s 3 ".wl[16].w";
	setAttr ".wl[16].w[2]" 6.0706857533326796e-005;
	setAttr ".wl[16].w[6:7]" 0.99949310987809659 0.00044618326437014758;
	setAttr -s 3 ".wl[17].w";
	setAttr ".wl[17].w[2]" 0.015946376466337561;
	setAttr ".wl[17].w[6:7]" 0.89760910092458523 0.086444522609077284;
	setAttr -s 3 ".wl[18].w[6:8]"  0.33492864476558526 0.66504042123073936 
		3.0934003675369063e-005;
	setAttr -s 3 ".wl[19].w[6:8]"  0.4776652921685634 0.48935218102521738 
		0.032982526806219305;
	setAttr -s 3 ".wl[20].w[6:8]"  0.42174063254518274 0.57802397694707208 
		0.0002353905077453396;
	setAttr -s 3 ".wl[21].w[6:8]"  0.48437805486658975 0.49210287903449146 
		0.023519066098918805;
	setAttr -s 37 ".pm";
	setAttr ".pm[0]" -type "matrix" -2.2204460492503131e-016 -1 0 0 1 -2.2204460492503131e-016 0 0
		 0 0 1 0 -9 2.4424904443252816e-015 0 1;
	setAttr ".pm[1]" -type "matrix" -2.2204460492503131e-016 -1 0 0 1 -2.2204460492503131e-016 0 0
		 0 0 1 0 -12.720345888709035 2.824484177368144e-015 0 1;
	setAttr ".pm[2]" -type "matrix" -1.7114059220672412e-016 -1.3316836432297221e-015 -1.0000000000000002 0
		 0.60276350335856854 0.79791989511410555 -1.1413737402788221e-015 0 0.79791989511410555 -0.60276350335856865 6.2490846786429775e-016 0
		 -9.2904823758284394 -12.715520630374074 1.7519369010138842e-014 1;
	setAttr ".pm[3]" -type "matrix" 1.0000000000000002 -1.5003351357726178e-015 2.2319929509400805e-016 0
		 1.4744406476663688e-015 1 6.1062266354383639e-016 0 -1.8081925801423496e-016 -6.106226635438356e-016 1.0000000000000002 0
		 -2.5061691649334409e-014 -17.221241633611246 -1.7015806065510002 1;
	setAttr ".pm[4]" -type "matrix" 1.0000000000000002 -1.5003351357726178e-015 2.2319929509400805e-016 0
		 1.4744406476663688e-015 1 6.1062266354383639e-016 0 -1.8081925801423496e-016 -6.106226635438356e-016 1.0000000000000002 0
		 -1.1559550142453816 -18.860453386447812 -1.744742421723837 1;
	setAttr ".pm[5]" -type "matrix" 1.0000000000000002 -1.5003351357726178e-015 2.2319929509400805e-016 0
		 1.4744406476663688e-015 1 6.1062266354383639e-016 0 -1.8081925801423496e-016 -6.106226635438356e-016 1.0000000000000002 0
		 1.1559599999999728 -18.860500000000009 -1.7447458425766309 1;
	setAttr ".pm[6]" -type "matrix" 0.080771936040842235 -0.72776064826139009 0.68105824507921131 0
		 0.99389727126906724 0.11030962860921188 5.2041704279304213e-016 0 -0.075127282075929558 0.67690193135952781 0.73222924471071538 0
		 -20.803423624609689 0.38891848418519537 -1.1596905714272121 1;
	setAttr ".pm[7]" -type "matrix" 0.12344927098026157 -0.68378973849070124 0.7191605321687643 0
		 0.98409107324371348 0.17766473921979134 5.5511151231257839e-017 0 -0.12776946840492973 0.70771945993647944 0.69484396015993377 0
		 -23.663879027567997 -1.198821422145864 -1.4123846563000717 1;
	setAttr ".pm[8]" -type "matrix" 1 1.9588980972286053e-015 2.4757973449140991e-014 0
		 -2.0955459589800394e-015 1.0000000000000002 2.2482016248658903e-015 0 -2.4868995751603507e-014 -2.1073657515092839e-015 1 0
		 -3.2686707012869634 -24.707244948466375 1.3503957125940258 1;
	setAttr ".pm[9]" -type "matrix" 1.2399715599199581e-015 5.1491839988110701e-016 -1 0
		 -0.99212909624126788 0.12521923331295959 -1.1413737402788215e-015 0 0.1252192333129597 0.99212909624126788 6.2490846786429736e-016 0
		 17.91509604055463 0.73860892886817475 -1.4697399999999785 1;
	setAttr ".pm[10]" -type "matrix" 1.2407028917706909e-015 5.1315374138585278e-016 -1.0000000000000002 0
		 -0.99194993971996448 0.12663063250872206 -1.1413737402788215e-015 0 0.12663063250872217 0.99194993971996448 6.2490846786429726e-016 0
		 16.2703768435459 0.71546139651651608 -1.4697399999999785 1;
	setAttr ".pm[11]" -type "matrix" 1.171582480297964e-015 6.5579335144946717e-016 -1.0000000000000002 0
		 -0.99996085589344508 0.0088479760877079022 -1.1413737402788215e-015 0 0.0088479760877080132 0.99996085589344508 6.2490846786429736e-016 0
		 13.089131303463391 2.2738466869150895 -1.4697399999999794 1;
	setAttr ".pm[12]" -type "matrix" 1.0000000000000002 -6.1113555496821701e-016 6.0571322234316631e-016 0
		 5.3075107673498567e-016 0.99999999999999989 1.2241729158146693e-009 0 -6.2490846711678963e-016 -1.2241729713258205e-009 0.99999999999999989 0
		 1.4697399999999874 -11.27720000290584 2.3737199861947573 1;
	setAttr ".pm[13]" -type "matrix" 1.2399720421164082e-015 5.1491723870552008e-016 -1.0000000000000002 0
		 -0.99212897897887842 0.12522016239539252 -1.1413737402788221e-015 0 0.12522016239539263 0.99212897897887842 6.2490846786429746e-016 0
		 17.915107674220771 0.73859271855816433 1.4697355328864274 1;
	setAttr ".pm[14]" -type "matrix" 1.2407035406156499e-015 5.1315217260598511e-016 -1.0000000000000002 0
		 -0.99194977960385589 0.12663188675788414 -1.1413737402788215e-015 0 0.12663188675788423 0.99194977960385589 6.2490846786429736e-016 0
		 16.270382495507956 0.71543984220792867 1.4697355328864281 1;
	setAttr ".pm[15]" -type "matrix" 1.1715832901874543e-015 6.5579190457033814e-016 -1 0
		 -0.99996084496562621 0.0088492110173936638 -1.1413737402788215e-015 0 0.0088492110173937748 0.99996084496562643 6.2490846786429736e-016 0
		 13.0891717697312 2.2738301771458698 1.4697355328864272 1;
	setAttr ".pm[16]" -type "matrix" 1.0000000000000002 -7.2166235433462861e-016 6.622039756465832e-016 0
		 6.9728453042875925e-016 1 7.5756742766466471e-031 0 -6.2490846786429736e-016 -1.1102230246251521e-016 1 0
		 -1.4697355328864219 -11.27720685848986 2.3737175033138818 1;
	setAttr ".pm[17]" -type "matrix" 0.99942062433366718 0.034035505821170098 0 0 -0.034035505821170098 0.99942062433366718 0 0
		 0 0 1 0 -1.2615535387902934 -14.660337674729432 0.39520589310364118 1;
	setAttr ".pm[18]" -type "matrix" 0.99957452430598337 0.029167968020874627 0 0 -0.029167968020874627 0.99957452430598337 0 0
		 0 0 1 0 -4.8017002626641805 -14.627437022914386 0.3952058931036409 1;
	setAttr ".pm[19]" -type "matrix" 0.99999717626906515 0.0023764372274386008 0 0 -0.0023764372274386008 0.99999717626906515 0 0
		 0 0 1 0 -8.7911749371006191 -14.412384152217134 0.39520589310364101 1;
	setAttr ".pm[20]" -type "matrix" 0.99754945812272355 0.069665466429175982 0.0064653991575301991 0
		 -0.069666922531362238 0.99757030825150828 -7.1922719516170908e-015 0 -0.0064496902305469436 -0.00045042446223481655 0.99997909908844285 0
		 -8.733859343472016 -15.034225916483338 0.33211036410687728 1;
	setAttr ".pm[21]" -type "matrix" 1 3.4881907519609893e-015 1.3010426069801044e-017 0
		 -3.4972023523242482e-015 1 -7.1697476520502249e-015 0 -1.3010426069851129e-017 7.1696041076643797e-015 1 0
		 -10.360953033801032 -14.339522757130714 0.3998083185907384 1;
	setAttr ".pm[22]" -type "matrix" 1 3.3757718842508666e-015 0 0 -3.3757718842508666e-015 1 0 0
		 0 0 1 0 -9.7435457045993541 -14.259602437683355 -0.046516711647870419 1;
	setAttr ".pm[23]" -type "matrix" -0.99932216711437138 -0.036813126922825783 -4.5083078052643854e-018 0
		 -0.036813126922825672 0.99932216711437138 1.2238166932736111e-016 0 8.4740917553038364e-033 1.224646799147353e-016 -1 0
		 -1.2207978665633317 -14.66378097978466 -0.39520600000000178 1;
	setAttr ".pm[24]" -type "matrix" -0.99968956747934068 -0.024915229739435069 -4.5083078052643854e-018 0
		 -0.024915229739434962 0.99968956747934068 1.2238166932736116e-016 0 1.4577408727217202e-018 1.2245600360197361e-016 -1 0
		 -4.8638851585102474 -14.606919278921335 -0.39520600000000106 1;
	setAttr ".pm[25]" -type "matrix" -0.99999695679675105 -0.0024670624711807527 -4.5083078052643854e-018 0
		 -0.0024670624711806417 0.99999695679675105 1.2238166932736111e-016 0 4.2063708620094496e-018 1.2239241917206236e-016 -1 0
		 -8.7898684129600557 -14.413229016873608 -0.39520600000000161 1;
	setAttr ".pm[26]" -type "matrix" -0.99659534797150195 -0.082094656113783318 0.007627570984263846 0
		 -0.082097044344933978 0.99662434011508338 3.3652768072212054e-013 0 -0.0076018228989005428 -0.00062620103300385914 -0.99997090965731605 0
		 -8.546151990527024 -15.141927817257756 -0.3207671064851399 1;
	setAttr ".pm[27]" -type "matrix" 0.99999999999999956 2.3735971059213945e-015 -1.6740081543256066e-016 0
		 -2.4841240175988422e-015 0.99999999999999989 -3.3655641207969136e-013 0 1.6740081543092574e-016 3.3655637556944247e-013 0.99999999999999989 0
		 10.361000000000027 -14.339499999999846 0.39980800000482414 1;
	setAttr ".pm[28]" -type "matrix" 0.99999999999999989 2.6139247016887511e-014 -1.1795637210947087e-016 0
		 -2.6250269319350027e-014 0.99999999999999989 -1.223816693273579e-016 0 1.1795637210946774e-016 1.2238166932736101e-016 1 0
		 9.6919110241134572 -14.259599999999756 -0.06166819045015022 1;
	setAttr ".pm[29]" -type "matrix" 0.0012289328746442256 -0.036801889042053886 -0.9993218253830578 0
		 -0.99939245319887549 0.034762455960651459 -0.0025092119713681325 0 0.034831224685949645 0.99871777425783348 -0.036736809447157709 0
		 8.2666275902551885 -0.029895251345200553 1.0119456079560387 1;
	setAttr ".pm[30]" -type "matrix" 0.0013685915226807374 -0.01175141716144342 0.99993001312688945 0
		 -0.99519026857044091 0.097928618134140721 0.0025129848847121098 0 -0.097951295550070164 -0.99512405756520372 -0.011560871724373863 0
		 5.0389842361652297 -0.76321769810626061 -1.0125837516575575 1;
	setAttr ".pm[31]" -type "matrix" -2.7598077964137294e-009 1.3063506047761182e-008 -1 0
		 -0.8616189680204217 0.50755566586082301 9.0083592537648661e-009 0 0.5075556658608229 0.8616189680204217 9.8550084386321063e-009 0
		 1.5587777482122775 -0.1208653415183224 1.0000000011567045 1;
	setAttr ".pm[32]" -type "matrix" 1.0000000000000002 9.008359610489723e-009 9.8550082426144051e-009 0
		 -9.008359697854076e-009 1 -6.9940011824212057e-016 0 -9.855008216587503e-009 7.994009597205165e-016 1 0
		 -0.99999999769337666 -0.40441836370919426 -0.2270618023010845 1;
	setAttr ".pm[33]" -type "matrix" -0.0012288865393847311 0.036801460303621032 -0.99932184122903789 0
		 -0.99939245004825039 0.034762550710996182 0.0025091541643746289 0 0.0348313167197064 0.99871778675839473 0.036736382347545872 0
		 8.2666260095231916 -0.0298961516292921 -1.0119452269980689 1;
	setAttr ".pm[34]" -type "matrix" -0.0013685799597947007 0.011750948215998961 0.99993001865376452 0
		 -0.99519027346559585 0.097928569876152588 -0.0025129268759348984 0 -0.097951245976587484 -0.99512406785186125 0.011560406290336176 0
		 5.0389849389545915 -0.76321799447543093 1.0125833307916414 1;
	setAttr ".pm[35]" -type "matrix" -3.2827186228801181e-009 3.8407576010987201e-008 -0.99999999999999889 0
		 -0.86161943671569263 0.50755487020984436 2.2322406431121301e-008 0 0.5075548702098448 0.86161943671569186 3.1426554209126629e-008 0
		 1.5587791324260292 -0.12086492169816768 -1.0000000050486899 1;
	setAttr ".pm[36]" -type "matrix" 0.999999999999999 2.2322413234642995e-008 3.1426550240129211e-008 0
		 -2.2322413370015205e-008 0.99999999999999989 4.2615329946022602e-010 0 -3.142655021232374e-008 -4.2615398084801679e-010 0.999999999999999 0
		 1.0000000280551755 -0.40441797796488976 -0.22706196919532137 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.060357934318798989 0 0 1;
	setAttr -s 5 ".ma";
	setAttr -s 37 ".dpf[0:36]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".bm" 0;
	setAttr ".ucm" yes;
createNode tweak -n "tweak2";
createNode objectSet -n "skinCluster2Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster2GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "C:/Users/vasqm058.DISID/Documents/Bryants Game/niabi_diff_tex.tga";
createNode place2dTexture -n "place2dTexture1";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "C:/Users/vasqm058.DISID/Desktop/12_9/ForBryant/niabi_diff_02.jpg";
createNode place2dTexture -n "place2dTexture2";
createNode file -n "file3";
	setAttr ".ftn" -type "string" "C:/Users/vasqm058.DISID/Desktop/12_9/ForBryant/niabi_diff_02.jpg";
createNode place2dTexture -n "place2dTexture3";
createNode file -n "file4";
	setAttr ".ftn" -type "string" "C:/Users/Miguel Jr/Desktop/Bryant game/niabi_diff_02.jpg";
createNode place2dTexture -n "place2dTexture4";
createNode displayLayer -n "layer1";
	setAttr ".dt" 2;
	setAttr ".do" 1;
createNode animCurveTL -n "master_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "master_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "master_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "L_foot_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 1.069917675916336 24 1.069917675916336 
		29 1.069917675916336 40 1.069917675916336 55 1.069917675916336 60 1.069917675916336 
		61 0 73 0 84 0 85 0 92 0 98 0;
	setAttr -s 13 ".kit[3:12]"  1 10 10 1 3 10 3 10 
		10 10;
	setAttr -s 13 ".kot[3:12]"  1 10 10 1 3 10 3 10 
		10 10;
	setAttr -s 13 ".kix[3:12]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[3:12]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[3:12]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[3:12]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "L_foot_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 24 0 29 0 32 0.41401488340593628 35 
		0.27452786743968893 40 0 55 0 57 0.42191720904188568 60 0 61 0 66 0.74758310773148628 
		73 0 84 0 85 1.7628027080825459 90 0.85626190050299056 92 0 96 0 98 1.7628027080825459;
	setAttr -s 18 ".kit[2:17]"  1 10 10 10 10 10 1 3 
		10 10 3 10 10 10 10 10;
	setAttr -s 18 ".kot[2:17]"  1 10 10 10 10 10 1 3 
		10 10 3 10 10 10 10 10;
	setAttr -s 18 ".kix[2:17]"  1 0.6733054518699646 0.62712556123733521 
		1 1 1 1 1 1 1 1 0.2802654504776001 0.16323685646057129 1 1 0.047220561653375626;
	setAttr -s 18 ".kiy[2:17]"  0 0.73936444520950317 -0.77891814708709717 
		0 0 0 0 0 0 0 0 0.95992255210876465 -0.98658692836761475 0 0 0.99888449907302856;
	setAttr -s 18 ".kox[2:17]"  1 0.6733054518699646 0.62712556123733521 
		1 1 1 1 1 1 1 1 0.2802654504776001 0.16323685646057129 1 1 0.047220561653375626;
	setAttr -s 18 ".koy[2:17]"  0 0.73936444520950317 -0.77891814708709717 
		0 0 0 0 0 0 0 0 0.95992255210876465 -0.98658692836761475 0 0 0.99888449907302856;
createNode animCurveTL -n "L_foot_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 -0.8472570817179631 24 -0.8472570817179631 
		29 -0.8472570817179631 35 -2.9767823383550889 40 -2.9767823383550889 55 -2.9767823383550889 
		60 -0.8472570817179631 61 -2.9730257855908691 73 1.680093262361146 78 -0.88025389417678834 
		84 -2.9730257855908691 85 -5.3547899273616224 90 4.466096952242669 92 5.4750257688294184 
		96 -3.3986590337824407 98 -5.3547899273616224;
	setAttr -s 17 ".kit[3:16]"  1 10 10 10 1 3 3 1 
		3 10 10 10 10 10;
	setAttr -s 17 ".kot[3:16]"  1 10 10 10 1 3 3 1 
		3 10 10 10 10 10;
	setAttr -s 17 ".kix[3:16]"  1 1 1 1 1 1 1 0.065581835806369781 1 0.033587154000997543 
		0.026922045275568962 0.031771332025527954 0.023078292608261108 0.042562581598758698;
	setAttr -s 17 ".kiy[3:16]"  0 0 0 0 0 0 0 -0.99784719944000244 0 0.99943578243255615 
		0.99963754415512085 -0.99949514865875244 -0.99973368644714355 -0.99909383058547974;
	setAttr -s 17 ".kox[3:16]"  1 1 1 1 1 1 1 0.065581835806369781 1 0.033587154000997543 
		0.026922045275568962 0.031771332025527954 0.023078292608261108 0.042562581598758698;
	setAttr -s 17 ".koy[3:16]"  0 0 0 0 0 0 0 -0.99784719944000244 0 0.99943578243255615 
		0.99963754415512085 -0.99949514865875244 -0.99973368644714355 -0.99909383058547974;
createNode animCurveTL -n "L_knee_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTL -n "L_knee_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTL -n "L_knee_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.955735365171591 24 16.955735365171591 
		60 16.955735365171591 61 16.955735365171591 84 16.955735365171591 85 16.955735365171591 
		98 16.955735365171591;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTL -n "R_foot_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 -1.013666709447232 24 -1.013666709447232 
		60 -1.013666709447232 61 0 73 0 84 0 85 0 98 0;
	setAttr -s 9 ".kit[4:8]"  3 10 3 10 1;
	setAttr -s 9 ".kot[4:8]"  3 10 3 10 1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  1;
	setAttr -s 9 ".koy[8]"  0;
createNode animCurveTL -n "R_foot_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 24 0 60 0 61 0 73 0 77 0.7487812176892632 
		84 0 85 0 89 0 92 1.6624928937301737 97 0.80111310030213101 98 0;
	setAttr -s 12 ".kit[3:11]"  3 10 10 3 10 10 10 10 
		1;
	setAttr -s 12 ".kot[3:11]"  3 10 10 3 10 10 10 10 
		1;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
	setAttr -s 12 ".kox[11]"  1;
	setAttr -s 12 ".koy[11]"  0;
createNode animCurveTL -n "R_foot_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 1.7620747552018434 24 1.7620747552018434 
		60 1.7620747552018434 61 2.1754960567924355 66 -1.2043894030465401 73 -2.9374436779835928 
		84 2.1754960567924355 85 5.2734677444762879 89 -3.9047991491659273 92 -4.8516906663970669 
		98 5.2734677444762879;
	setAttr -s 12 ".kit[4:11]"  3 10 3 3 10 10 10 1;
	setAttr -s 12 ".kot[4:11]"  3 10 3 3 10 10 10 1;
	setAttr -s 12 ".kix[11]"  0.047381531447172165;
	setAttr -s 12 ".kiy[11]"  -0.99887686967849731;
	setAttr -s 12 ".kox[11]"  0.047381531447172165;
	setAttr -s 12 ".koy[11]"  -0.99887686967849731;
createNode animCurveTL -n "L_knee1_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.99077486079062149 24 -0.99077486079062149 
		60 -0.99077486079062149 61 -0.99077486079062149 84 -0.99077486079062149 85 -0.99077486079062149 
		98 -0.99077486079062149;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTL -n "L_knee1_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 5.0920493440821044 24 5.0920493440821044 
		60 5.0920493440821044 61 5.0920493440821044 84 5.0920493440821044 85 5.0920493440821044 
		98 5.0920493440821044;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTL -n "L_knee1_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 33.814317372217793 24 33.814317372217793 
		60 33.814317372217793 61 33.814317372217793 84 33.814317372217793 85 33.814317372217793 
		98 33.814317372217793;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTL -n "root1_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0.30746689243510028 24 0.30746689243510028 
		40 0.30746689243510028 46 0.30746689243510028 60 0.30746689243510028 61 0 73 0 84 
		0 85 0 92 0 98 0;
	setAttr -s 12 ".kit[1:11]"  16 16 10 9 1 3 10 3 
		16 9 1;
	setAttr -s 12 ".kot[1:11]"  16 16 10 9 1 3 10 3 
		16 9 1;
	setAttr -s 12 ".kix[5:11]"  1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[5:11]"  0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[5:11]"  1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[5:11]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "root1_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 1 -1.0786312959921567 9 -1.2152511561598214 
		24 -1.0786312959921567 28 -1.2104069459933164 35 -0.23109582052924438 40 -0.49455192684644977 
		46 -0.49455192684644977 53 -0.67918157325008344 56 -1.2345562341858949 60 -1.0786312959921567 
		61 -0.49467224294243906 67 -0.16037970713666283 73 -0.49467224294243906 78 -0.069451751546976581 
		84 -0.49467224294243906 85 -0.96100851400331599 89 -2.1205779870078292 92 -1.1582038994798243 
		95 -1.9132616788767298 98 -0.96100851400331599;
	setAttr -s 21 ".kit[1:20]"  16 9 16 10 10 10 9 9 
		9 1 3 10 10 10 3 16 9 9 10 1;
	setAttr -s 21 ".kot[1:20]"  16 9 16 10 10 10 9 9 
		9 1 3 10 10 10 3 16 9 9 10 1;
	setAttr -s 21 ".kix[10:20]"  1 1 1 0.98088353872299194 1 1 0.1270945817232132 
		0.8284263014793396 0.76975911855697632 0.78514724969863892 0.1270945817232132;
	setAttr -s 21 ".kiy[10:20]"  0 0 0 0.1945958137512207 0 0 -0.99189060926437378 
		-0.56009805202484131 0.63833451271057129 0.61930906772613525 -0.99189060926437378;
	setAttr -s 21 ".kox[10:20]"  1 1 1 0.98088353872299194 1 1 0.1270945817232132 
		0.8284263014793396 0.76975911855697632 0.78514724969863892 0.1270945817232132;
	setAttr -s 21 ".koy[10:20]"  0 0 0 0.1945958137512207 0 0 -0.99189060926437378 
		-0.56009805202484131 0.63833451271057129 0.61930906772613525 -0.99189060926437378;
createNode animCurveTL -n "root1_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 -0.63968268538088835 24 -0.63968268538088835 
		40 -0.92824839276237237 46 -1.0593625080629516 60 -0.63968268538088835 61 -0.66854068896433771 
		73 -0.66854068896433771 84 -0.66854068896433771 85 0.82075935559800417 92 0.82075935559800417 
		98 0.82075935559800417;
	setAttr -s 12 ".kit[1:11]"  16 16 10 9 1 3 10 3 
		16 9 1;
	setAttr -s 12 ".kot[1:11]"  16 16 10 9 1 3 10 3 
		16 9 1;
	setAttr -s 12 ".kix[5:11]"  1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[5:11]"  0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[5:11]"  1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[5:11]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "chest_translateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -2.9582283945787978e-031 1 0.081178104143364571 
		24 0.081178104143364571 40 0.081178104143364571 48 0.081178104143364571 60 0.081178104143364571 
		61 0 84 0 85 0 98 0;
	setAttr -s 10 ".kit[0:9]"  10 3 3 10 9 16 3 3 
		16 16;
	setAttr -s 10 ".kot[0:9]"  10 3 3 10 9 16 3 3 
		16 16;
createNode animCurveTL -n "chest_translateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.27965411129096296 1 -0.013227061171432629 
		24 -0.013227061171432629 40 -0.013227061171432629 48 -0.013227061171432629 60 -0.013227061171432629 
		61 0 84 0 85 0 98 0;
	setAttr -s 10 ".kit[0:9]"  10 3 3 10 9 16 3 3 
		16 16;
	setAttr -s 10 ".kot[0:9]"  10 3 3 10 9 16 3 3 
		16 16;
createNode animCurveTL -n "chest_translateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 -0.47389023061179064 24 -0.47389023061179064 
		40 -0.47389023061179064 48 -0.47389023061179064 60 -0.47389023061179064 61 0 84 0 
		85 0 98 0;
	setAttr -s 10 ".kit[0:9]"  10 3 3 10 9 16 3 3 
		16 16;
	setAttr -s 10 ".kot[0:9]"  10 3 3 10 9 16 3 3 
		16 16;
createNode animCurveTL -n "L_shoulder_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.9582283945787978e-031 24 2.9582283945787978e-031 
		37 -0.054230006721022628 47 -0.054230006721022628 60 2.9582283945787978e-031 61 2.9582283945787978e-031 
		84 2.9582283945787978e-031 85 2.9582283945787978e-031 98 2.9582283945787978e-031;
	setAttr -s 9 ".kit[1:8]"  16 10 10 1 3 3 16 16;
	setAttr -s 9 ".kot[1:8]"  16 10 10 1 3 3 16 16;
	setAttr -s 9 ".kix[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".kiy[4:8]"  0 0 0 0 0;
	setAttr -s 9 ".kox[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".koy[4:8]"  0 0 0 0 0;
createNode animCurveTL -n "L_shoulder_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.27965411129096296 24 0.27965411129096296 
		37 0.45674667300356858 47 0.45674667300356858 60 0.27965411129096296 61 0.27965411129096296 
		84 0.27965411129096296 85 0.27965411129096296 98 0.27965411129096296;
	setAttr -s 9 ".kit[1:8]"  16 10 10 1 3 3 16 16;
	setAttr -s 9 ".kot[1:8]"  16 10 10 1 3 3 16 16;
	setAttr -s 9 ".kix[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".kiy[4:8]"  0 0 0 0 0;
	setAttr -s 9 ".kox[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".koy[4:8]"  0 0 0 0 0;
createNode animCurveTL -n "L_shoulder_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 24 0 37 0.82911913836394113 47 0.82911913836394113 
		60 0 61 0 84 0 85 0 98 0;
	setAttr -s 9 ".kit[1:8]"  16 10 10 1 3 3 16 16;
	setAttr -s 9 ".kot[1:8]"  16 10 10 1 3 3 16 16;
	setAttr -s 9 ".kix[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".kiy[4:8]"  0 0 0 0 0;
	setAttr -s 9 ".kox[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".koy[4:8]"  0 0 0 0 0;
createNode animCurveTL -n "L_elbow_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 24 0 47 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[0:7]"  10 16 10 1 3 3 16 16;
	setAttr -s 8 ".kot[0:7]"  10 16 10 1 3 3 16 16;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "L_elbow_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 24 0 47 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[0:7]"  10 16 10 1 3 3 16 16;
	setAttr -s 8 ".kot[0:7]"  10 16 10 1 3 3 16 16;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "L_elbow_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 24 0 47 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[0:7]"  10 16 10 1 3 3 16 16;
	setAttr -s 8 ".kot[0:7]"  10 16 10 1 3 3 16 16;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "L_wrist_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTL -n "L_wrist_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTL -n "L_wrist_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTL -n "L_fingers1_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTL -n "L_fingers1_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTL -n "L_fingers1_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTL -n "L_fingers2_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTL -n "L_fingers2_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTL -n "L_fingers2_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTL -n "L_thumb_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTL -n "L_thumb_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTL -n "L_thumb_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTL -n "R_shoulder_translateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.9582283945787978e-031 24 2.9582283945787978e-031 
		47 0 56 2.9582283945787978e-031 60 2.9582283945787978e-031 61 2.9582283945787978e-031 
		84 2.9582283945787978e-031 85 2.9582283945787978e-031 98 2.9582283945787978e-031;
	setAttr -s 9 ".kit[0:8]"  10 3 10 9 1 3 3 16 
		16;
	setAttr -s 9 ".kot[0:8]"  10 3 10 9 1 3 3 16 
		16;
	setAttr -s 9 ".kix[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".kiy[4:8]"  0 0 0 0 0;
	setAttr -s 9 ".kox[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".koy[4:8]"  0 0 0 0 0;
createNode animCurveTL -n "R_shoulder_translateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.27965411129096296 24 0.27965411129096296 
		47 0.27965411129096296 56 0.27965411129096296 60 0.27965411129096296 61 0.27965411129096296 
		84 0.27965411129096296 85 0.27965411129096296 98 0.27965411129096296;
	setAttr -s 9 ".kit[0:8]"  10 3 10 9 1 3 3 16 
		16;
	setAttr -s 9 ".kot[0:8]"  10 3 10 9 1 3 3 16 
		16;
	setAttr -s 9 ".kix[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".kiy[4:8]"  0 0 0 0 0;
	setAttr -s 9 ".kox[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".koy[4:8]"  0 0 0 0 0;
createNode animCurveTL -n "R_shoulder_translateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 24 0 47 0 56 0 60 0 61 0 84 0 85 0 
		98 0;
	setAttr -s 9 ".kit[0:8]"  10 3 10 9 1 3 3 16 
		16;
	setAttr -s 9 ".kot[0:8]"  10 3 10 9 1 3 3 16 
		16;
	setAttr -s 9 ".kix[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".kiy[4:8]"  0 0 0 0 0;
	setAttr -s 9 ".kox[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".koy[4:8]"  0 0 0 0 0;
createNode animCurveTL -n "R_elbow_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 24 0 48 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[3:7]"  1 3 3 16 16;
	setAttr -s 8 ".kot[3:7]"  1 3 3 16 16;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "R_elbow_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 24 0 48 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[3:7]"  1 3 3 16 16;
	setAttr -s 8 ".kot[3:7]"  1 3 3 16 16;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "R_elbow_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 24 0 48 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[3:7]"  1 3 3 16 16;
	setAttr -s 8 ".kot[3:7]"  1 3 3 16 16;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "R_wrist_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 24 0 49 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kot[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "R_wrist_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 24 0 49 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kot[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "R_wrist_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 24 0 49 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kot[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "R_fingers1_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTL -n "R_fingers1_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTL -n "R_fingers1_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTL -n "R_fingers2_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTL -n "R_fingers2_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTL -n "R_fingers2_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTL -n "R_thumb_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTL -n "R_thumb_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTL -n "R_thumb_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTL -n "neck_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.9582283945787978e-031 24 2.9582283945787978e-031 
		46 2.9582283945787978e-031 60 2.9582283945787978e-031 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[2:7]"  9 1 3 3 16 16;
	setAttr -s 8 ".kot[2:7]"  9 1 3 3 16 16;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "neck_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.27965411129096296 24 0.27965411129096296 
		46 0.27965411129096296 60 0.27965411129096296 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[2:7]"  9 1 3 3 16 16;
	setAttr -s 8 ".kot[2:7]"  9 1 3 3 16 16;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "neck_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 24 0 46 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[2:7]"  9 1 3 3 16 16;
	setAttr -s 8 ".kot[2:7]"  9 1 3 3 16 16;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "L_braid1_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 24 0 55 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[2:7]"  1 1 3 3 10 10;
	setAttr -s 8 ".kot[2:7]"  1 1 3 3 10 10;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "L_braid1_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 24 0 55 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[2:7]"  1 1 3 3 10 10;
	setAttr -s 8 ".kot[2:7]"  1 1 3 3 10 10;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "L_braid1_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 24 0 55 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[2:7]"  1 1 3 3 10 10;
	setAttr -s 8 ".kot[2:7]"  1 1 3 3 10 10;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "L_braid2_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 7 ".kit[2:6]"  1 3 3 10 10;
	setAttr -s 7 ".kot[2:6]"  1 3 3 10 10;
	setAttr -s 7 ".kix[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
	setAttr -s 7 ".kox[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".koy[2:6]"  0 0 0 0 0;
createNode animCurveTL -n "L_braid2_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 7 ".kit[2:6]"  1 3 3 10 10;
	setAttr -s 7 ".kot[2:6]"  1 3 3 10 10;
	setAttr -s 7 ".kix[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
	setAttr -s 7 ".kox[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".koy[2:6]"  0 0 0 0 0;
createNode animCurveTL -n "L_braid2_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 7 ".kit[2:6]"  1 3 3 10 10;
	setAttr -s 7 ".kot[2:6]"  1 3 3 10 10;
	setAttr -s 7 ".kix[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
	setAttr -s 7 ".kox[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".koy[2:6]"  0 0 0 0 0;
createNode animCurveTL -n "L_braid3_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 7 ".kit[1:6]"  16 1 3 3 10 10;
	setAttr -s 7 ".kot[1:6]"  16 1 3 3 10 10;
	setAttr -s 7 ".kix[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
	setAttr -s 7 ".kox[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".koy[2:6]"  0 0 0 0 0;
createNode animCurveTL -n "L_braid3_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 7 ".kit[1:6]"  16 1 3 3 10 10;
	setAttr -s 7 ".kot[1:6]"  16 1 3 3 10 10;
	setAttr -s 7 ".kix[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
	setAttr -s 7 ".kox[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".koy[2:6]"  0 0 0 0 0;
createNode animCurveTL -n "L_braid3_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 7 ".kit[1:6]"  16 1 3 3 10 10;
	setAttr -s 7 ".kot[1:6]"  16 1 3 3 10 10;
	setAttr -s 7 ".kix[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
	setAttr -s 7 ".kox[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".koy[2:6]"  0 0 0 0 0;
createNode animCurveTL -n "L_braid4_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[1:7]"  16 16 1 3 3 10 10;
	setAttr -s 8 ".kot[1:7]"  16 16 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "L_braid4_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[1:7]"  16 16 1 3 3 10 10;
	setAttr -s 8 ".kot[1:7]"  16 16 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "L_braid4_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[1:7]"  16 16 1 3 3 10 10;
	setAttr -s 8 ".kot[1:7]"  16 16 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "R_braid1_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 24 0 57 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[2:7]"  9 1 3 3 10 10;
	setAttr -s 8 ".kot[2:7]"  9 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "R_braid1_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 24 0 57 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[2:7]"  9 1 3 3 10 10;
	setAttr -s 8 ".kot[2:7]"  9 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "R_braid1_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 24 0 57 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[2:7]"  9 1 3 3 10 10;
	setAttr -s 8 ".kot[2:7]"  9 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "R_braid2_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 24 0 57 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[2:7]"  9 1 3 3 10 10;
	setAttr -s 8 ".kot[2:7]"  9 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "R_braid2_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 24 0 57 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[2:7]"  9 1 3 3 10 10;
	setAttr -s 8 ".kot[2:7]"  9 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "R_braid2_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 24 0 57 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[2:7]"  9 1 3 3 10 10;
	setAttr -s 8 ".kot[2:7]"  9 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "R_braid3_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 24 0 57 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[1:7]"  16 9 1 3 3 10 10;
	setAttr -s 8 ".kot[1:7]"  16 9 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "R_braid3_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 24 0 57 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[1:7]"  16 9 1 3 3 10 10;
	setAttr -s 8 ".kot[1:7]"  16 9 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "R_braid3_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 24 0 57 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[1:7]"  16 9 1 3 3 10 10;
	setAttr -s 8 ".kot[1:7]"  16 9 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "R_braid4_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 24 0 57 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[1:7]"  16 9 1 3 3 10 10;
	setAttr -s 8 ".kot[1:7]"  16 9 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "R_braid4_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 24 0 57 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[1:7]"  16 9 1 3 3 10 10;
	setAttr -s 8 ".kot[1:7]"  16 9 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "R_braid4_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 24 0 57 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[1:7]"  16 9 1 3 3 10 10;
	setAttr -s 8 ".kot[1:7]"  16 9 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "feather1_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kot[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "feather1_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kot[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "feather1_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kot[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "feather2_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kot[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "feather2_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kot[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "feather2_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kot[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "feather3_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kot[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "feather3_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kot[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "feather3_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kot[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "master_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "master_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "master_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "master_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "master_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "master_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "master_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "root1_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 24 1 40 1 46 1 60 1 61 1 73 1 84 1 
		85 1 92 1 98 1;
	setAttr -s 11 ".kit[1:10]"  16 9 9 1 3 9 3 16 
		9 1;
	setAttr -s 11 ".kot[0:10]"  5 16 5 9 1 3 5 3 
		16 9 1;
	setAttr -s 11 ".kix[4:10]"  1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[4:10]"  0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[4:10]"  1 1 0 1 1 1 1;
	setAttr -s 11 ".koy[4:10]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "root1_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 12.426086350502448 9 13.32150458253766 
		24 12.426086350502448 28 18.554488684980999 35 9.4317663511217003 40 9.4317663511217003 
		46 9.4317663511217003 48 -9.4923389932574338 53 -10.199108468721693 60 12.426086350502448 
		61 2.2834402298585728 73 1.769143228835492 84 2.2834402298585728 85 16.668634416150407 
		92 17.173643373605685 98 16.668634416150407;
	setAttr -s 17 ".kit[1:16]"  16 9 16 10 10 10 9 9 
		9 1 3 10 3 16 9 1;
	setAttr -s 17 ".kot[1:16]"  16 9 16 10 10 10 9 9 
		9 1 3 10 3 16 9 1;
	setAttr -s 17 ".kix[10:16]"  1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[10:16]"  0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[10:16]"  1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[10:16]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "root1_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 20.267741519250436 9 20.435590493288991 
		24 20.267741519250436 35 56.325468964751536 40 56.325468964751536 46 56.325468964751536 
		48 55.913586063292009 53 41.109106710356933 60 20.267741519250436 61 18.951025082642765 
		73 -0.54650235431175265 84 18.951025082642765 85 34.668130372846903 92 -31.943170127652511 
		98 34.668130372846903;
	setAttr -s 16 ".kit[1:15]"  16 10 16 10 10 9 9 9 
		1 3 10 3 16 9 1;
	setAttr -s 16 ".kot[1:15]"  16 10 16 10 10 9 9 9 
		1 3 10 3 16 9 1;
	setAttr -s 16 ".kix[9:15]"  1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[9:15]"  0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[9:15]"  1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[9:15]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "root1_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 7.1794460249314467 9 6.6112162298217143 
		24 7.1794460249314467 35 14.372370113585799 40 14.372370113585799 46 14.372370113585799 
		48 -2.4440716262882227 53 -6.6288527329895137 60 7.1794460249314467 61 1.5404884006567428 
		73 1.4570363386555454 84 1.5404884006567428 85 8.2815146505465815 92 -12.157264530223062 
		98 8.2815146505465815;
	setAttr -s 16 ".kit[1:15]"  16 10 16 10 10 9 9 9 
		1 3 10 3 16 9 1;
	setAttr -s 16 ".kot[1:15]"  16 10 16 10 10 9 9 9 
		1 3 10 3 16 9 1;
	setAttr -s 16 ".kix[9:15]"  1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[9:15]"  0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[9:15]"  1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[9:15]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "root1_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 24 1 40 1 46 1 60 1 61 1 73 1 84 1 
		85 1 92 1 98 1;
	setAttr -s 11 ".kit[1:10]"  16 10 9 1 3 10 3 16 
		9 1;
	setAttr -s 11 ".kot[1:10]"  16 10 9 1 3 10 3 16 
		9 1;
	setAttr -s 11 ".kix[4:10]"  1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[4:10]"  0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[4:10]"  1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[4:10]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "root1_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 24 1 40 1 46 1 60 1 61 1 73 1 84 1 
		85 1 92 1 98 1;
	setAttr -s 11 ".kit[1:10]"  16 10 9 1 3 10 3 16 
		9 1;
	setAttr -s 11 ".kot[1:10]"  16 10 9 1 3 10 3 16 
		9 1;
	setAttr -s 11 ".kix[4:10]"  1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[4:10]"  0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[4:10]"  1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[4:10]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "root1_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 24 1 40 1 46 1 60 1 61 1 73 1 84 1 
		85 1 92 1 98 1;
	setAttr -s 11 ".kit[1:10]"  16 10 9 1 3 10 3 16 
		9 1;
	setAttr -s 11 ".kot[1:10]"  16 10 9 1 3 10 3 16 
		9 1;
	setAttr -s 11 ".kix[4:10]"  1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[4:10]"  0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[4:10]"  1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[4:10]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "chest_visibility";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 24 1 40 1 48 1 60 1 61 1 84 1 85 1 
		98 1;
	setAttr -s 9 ".kit[0:8]"  9 3 9 9 16 3 3 16 
		16;
	setAttr -s 9 ".kot[0:8]"  5 3 5 9 16 3 3 16 
		16;
createNode animCurveTA -n "chest_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 31.06770046261952 7 28.733979979630156 
		16 32.284681479125759 24 31.06770046261952 31 31.478014635848169 35 18.464353740433381 
		40 20.947869306646314 48 20.947869306646314 51 14.085554968377217 60 31.06770046261952 
		61 0.83206212469037022 73 3.6120078844384933 84 0.83206212469037022 85 27.727932681357377 
		92 23.125909650867786 98 27.727932681357377;
	setAttr -s 17 ".kit[0:16]"  10 3 9 9 3 10 10 10 
		9 9 16 3 9 3 16 9 16;
	setAttr -s 17 ".kot[0:16]"  10 3 9 9 3 10 10 10 
		9 9 16 3 9 3 16 9 16;
createNode animCurveTA -n "chest_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 25.448151832347328 7 26.254386739117738 
		16 24.666432685246839 24 25.448151832347328 31 29.615388832050588 35 36.512148908985502 
		40 35.918690354727573 48 35.918690354727573 51 33.97469264132507 60 25.448151832347328 
		61 -28.774200273176838 73 25.569462915109558 84 -28.774200273176838 85 -73.812826419051177 
		92 65.475691677384972 98 -73.812826419051177;
	setAttr -s 17 ".kit[0:16]"  10 3 9 9 3 10 10 10 
		9 9 16 3 9 3 16 9 16;
	setAttr -s 17 ".kot[0:16]"  10 3 9 9 3 10 10 10 
		9 9 16 3 9 3 16 9 16;
createNode animCurveTA -n "chest_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 13.230074664682094 7 11.307869527031972 
		16 14.294297382744256 24 13.230074664682094 31 17.029974905533962 35 -0.05085819640081371 
		40 4.4660797799074219 48 4.4660797799074219 51 -4.6872824236552191 60 13.230074664682094 
		61 2.6816749580726342 73 -0.25404614839841616 84 2.6816749580726342 85 -14.019414729021696 
		92 7.4301082823714699 98 -14.019414729021696;
	setAttr -s 17 ".kit[0:16]"  10 3 9 9 3 10 10 10 
		9 9 16 3 9 3 16 9 16;
	setAttr -s 17 ".kot[0:16]"  10 3 9 9 3 10 10 10 
		9 9 16 3 9 3 16 9 16;
createNode animCurveTU -n "chest_scaleX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 24 1 40 1 48 1 60 1 61 1 84 1 85 1 
		98 1;
	setAttr -s 9 ".kit[0:8]"  10 3 10 9 16 3 3 16 
		16;
	setAttr -s 9 ".kot[0:8]"  10 3 10 9 16 3 3 16 
		16;
createNode animCurveTU -n "chest_scaleY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 24 1 40 1 48 1 60 1 61 1 84 1 85 1 
		98 1;
	setAttr -s 9 ".kit[0:8]"  10 3 10 9 16 3 3 16 
		16;
	setAttr -s 9 ".kot[0:8]"  10 3 10 9 16 3 3 16 
		16;
createNode animCurveTU -n "chest_scaleZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 24 1 40 1 48 1 60 1 61 1 84 1 85 1 
		98 1;
	setAttr -s 9 ".kit[0:8]"  10 3 10 9 16 3 3 16 
		16;
	setAttr -s 9 ".kot[0:8]"  10 3 10 9 16 3 3 16 
		16;
createNode animCurveTU -n "L_shoulder_visibility";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 47 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[0:7]"  9 16 9 1 3 3 16 16;
	setAttr -s 8 ".kot[0:7]"  5 16 5 1 3 3 16 16;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTA -n "L_shoulder_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 22.579753133294215 12 29.398579783646877 
		24 22.579753133294215 31 -93.911722859282946 37 234.29373502753523 41 293.07584336857269 
		45 358.37875333192522 47 358.37875333192522 51 386.04278049631552 59 387.4987744609798 
		60 22.579753133294215 61 31.965695283400688 73 44.522040201163612 84 31.965695283400688 
		85 -22.432574837126456 89 42.615844343310364 92 43.467836728025006 95 34.618191320628583 
		98 -22.432574837126456;
	setAttr -s 20 ".kit[1:19]"  16 10 16 10 1 10 10 10 
		9 1 1 3 9 3 16 9 9 9 16;
	setAttr -s 20 ".kot[1:19]"  16 10 16 10 1 10 10 10 
		9 1 1 3 9 3 16 9 9 9 16;
	setAttr -s 20 ".kix[5:19]"  0.12677772343158722 0.15212404727935791 
		1 1 0.70130419731140137 0.092029772698879242 1 1 1 1 1 0.24580353498458862 0.87312263250350952 
		0.2123982310295105 1;
	setAttr -s 20 ".kiy[5:19]"  0.99193114042282104 0.9883614182472229 
		0 0 0.71286213397979736 -0.99575620889663696 0 0 0 0 0 0.96931976079940796 -0.48750060796737671 
		-0.97718316316604614 0;
	setAttr -s 20 ".kox[5:19]"  0.12677773833274841 0.15212404727935791 
		1 1 0.70130419731140137 0.092029772698879242 1 1 1 1 1 0.24580353498458862 0.87312263250350952 
		0.2123982310295105 1;
	setAttr -s 20 ".koy[5:19]"  0.99193120002746582 0.9883614182472229 
		0 0 0.71286213397979736 -0.99575620889663696 0 0 0 0 0 0.96931976079940796 -0.48750060796737671 
		-0.97718316316604614 0;
createNode animCurveTA -n "L_shoulder_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 -28.281980276871703 12 -30.638630341238912 
		24 -28.281980276871703 31 -57.399237434057206 37 -47.510928234545446 41 -67.367952717975641 
		45 -49.970672629802117 47 -49.970672629802117 51 10.395848712003003 59 -25.771645962424316 
		60 -28.281980276871703 61 -4.2333535177045363 73 15.596018356742475 84 -4.2333535177045363 
		85 -38.215818302270456 89 -33.859866878365722 92 7.512240069287313 95 -36.754762810881736 
		98 -38.215818302270456;
	setAttr -s 20 ".kit[1:19]"  16 10 16 10 1 10 10 10 
		9 1 1 3 9 3 16 9 9 9 16;
	setAttr -s 20 ".kot[1:19]"  16 10 16 10 1 10 10 10 
		9 1 1 3 9 3 16 9 9 9 16;
	setAttr -s 20 ".kix[5:19]"  0.95556330680847168 0.99180811643600464 
		1 1 0.76393157243728638 0.81967777013778687 1 1 1 1 1 0.34324604272842407 0.98018252849578857 
		0.29892021417617798 1;
	setAttr -s 20 ".kiy[5:19]"  -0.2947860062122345 -0.12773685157299042 
		0 0 0.64529722929000854 0.57282483577728271 0 0 0 0 0 0.93924552202224731 -0.19809670746326447 
		-0.95427817106246948 0;
	setAttr -s 20 ".kox[5:19]"  0.95556330680847168 0.99180811643600464 
		1 1 0.76393157243728638 0.81967777013778687 1 1 1 1 1 0.34324604272842407 0.98018252849578857 
		0.29892021417617798 1;
	setAttr -s 20 ".koy[5:19]"  -0.2947860062122345 -0.12773685157299042 
		0 0 0.64529722929000854 0.57282483577728271 0 0 0 0 0 0.93924552202224731 -0.19809670746326447 
		-0.95427817106246948 0;
createNode animCurveTA -n "L_shoulder_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 -57.033111416274387 12 -63.890768397561004 
		24 -57.033111416274387 31 15.176439458059386 37 -210.15932098182995 41 -267.54386556916216 
		45 -337.92532801731875 47 -337.92532801731875 51 -390.69841119637476 59 -422.66543377104756 
		60 -57.033111416274387 61 -63.325405289715079 73 -58.096071550852322 84 -63.325405289715079 
		85 4.7003431500502151 89 -59.568204595531974 92 -28.663166253601425 95 -52.035926530785197 
		98 4.7003431500502151;
	setAttr -s 20 ".kit[1:19]"  16 10 16 10 1 10 10 10 
		9 1 1 3 9 3 16 9 9 9 16;
	setAttr -s 20 ".kot[1:19]"  16 10 16 10 1 10 10 10 
		9 1 1 3 9 3 16 9 9 9 16;
	setAttr -s 20 ".kix[5:19]"  0.13833191990852356 0.14783847332000732 
		1 1 0.32026129961013794 0.1098196804523468 1 1 1 1 1 0.44784605503082275 0.88508731126785278 
		0.39450818300247192 1;
	setAttr -s 20 ".kiy[5:19]"  -0.99038594961166382 -0.98901152610778809 
		0 0 -0.94732922315597534 0.99395149946212769 0 0 0 0 0 -0.89411067962646484 0.46542510390281677 
		0.91889238357543945 0;
	setAttr -s 20 ".kox[5:19]"  0.13833191990852356 0.14783847332000732 
		1 1 0.32026129961013794 0.1098196804523468 1 1 1 1 1 0.44784605503082275 0.88508731126785278 
		0.39450818300247192 1;
	setAttr -s 20 ".koy[5:19]"  -0.99038594961166382 -0.98901152610778809 
		0 0 -0.94732922315597534 0.99395149946212769 0 0 0 0 0 -0.89411067962646484 0.46542510390281677 
		0.91889238357543945 0;
createNode animCurveTU -n "L_shoulder_scaleX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 47 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[0:7]"  10 16 10 1 3 3 16 16;
	setAttr -s 8 ".kot[0:7]"  10 16 10 1 3 3 16 16;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "L_shoulder_scaleY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 47 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[0:7]"  10 16 10 1 3 3 16 16;
	setAttr -s 8 ".kot[0:7]"  10 16 10 1 3 3 16 16;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "L_shoulder_scaleZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 47 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[0:7]"  10 16 10 1 3 3 16 16;
	setAttr -s 8 ".kot[0:7]"  10 16 10 1 3 3 16 16;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "L_elbow_visibility";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 47 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[0:7]"  9 16 9 1 3 3 16 16;
	setAttr -s 8 ".kot[0:7]"  5 16 5 1 3 3 16 16;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTA -n "L_elbow_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 -7.5340348746950045 9 -15.791688773765877 
		15 -7.9671119114107203 24 -7.5340348746950045 31 -107.15538008046799 37 -74.682163907022201 
		41 -155.68975992321191 45 -190.16908485743437 47 -190.16908485743437 53 -53.211980275636897 
		60 -7.5340348746950045 61 -7.5340348746950045 66 -9.6961322143710138 78 -8.8642041795671691 
		84 -7.5340348746950045 85 -25.767780674799557 89 -69.322408159260249 95 -86.568106998801369 
		98 -25.767780674799557;
	setAttr -s 20 ".kit[1:19]"  16 9 9 16 10 10 10 10 
		10 10 1 3 9 9 3 16 9 9 16;
	setAttr -s 20 ".kot[1:19]"  16 9 9 16 10 10 10 10 
		10 10 1 3 9 9 3 16 9 9 16;
	setAttr -s 20 ".kix[11:19]"  1 1 0.99946337938308716 0.9987366795539856 
		1 0.18967844545841217 0.36548513174057007 0.44240736961364746 1;
	setAttr -s 20 ".kiy[11:19]"  0 0 -0.032757710665464401 0.050250723958015442 
		0 -0.98184627294540405 -0.93081718683242798 0.89681422710418701 0;
	setAttr -s 20 ".kox[11:19]"  1 1 0.99946337938308716 0.9987366795539856 
		1 0.18967844545841217 0.36548513174057007 0.44240736961364746 1;
	setAttr -s 20 ".koy[11:19]"  0 0 -0.032757710665464401 0.050250723958015442 
		0 -0.98184627294540405 -0.93081718683242798 0.89681422710418701 0;
createNode animCurveTA -n "L_elbow_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 -38.555791660812595 9 -36.098960831603577 
		15 -37.48107766447896 24 -38.555791660812595 31 -24.457719522711152 37 -51.778565117193295 
		41 -49.714891962862126 45 -32.507168152470641 47 -32.507168152470641 53 -1.2959805919783867 
		60 -38.555791660812595 61 -38.555791660812595 66 -49.070627238711246 78 -25.895382285176236 
		84 -38.555791660812595 85 -66.568474765259865 89 -50.458205034014192 95 -31.433532171990805 
		98 -66.568474765259865;
	setAttr -s 20 ".kit[1:19]"  16 9 9 16 10 10 10 10 
		10 10 1 3 9 9 3 16 9 9 16;
	setAttr -s 20 ".kot[1:19]"  16 9 9 16 10 10 10 10 
		10 10 1 3 9 9 3 16 9 9 16;
	setAttr -s 20 ".kix[11:19]"  1 1 0.95462882518768311 0.9713437557220459 
		1 1 0.56201171875 0.80007469654083252 1;
	setAttr -s 20 ".kiy[11:19]"  0 0 0.29779815673828125 0.23767940700054169 
		0 0 0.8271293044090271 -0.59990042448043823 0;
	setAttr -s 20 ".kox[11:19]"  1 1 0.95462882518768311 0.9713437557220459 
		1 1 0.56201171875 0.80007469654083252 1;
	setAttr -s 20 ".koy[11:19]"  0 0 0.29779815673828125 0.23767940700054169 
		0 0 0.8271293044090271 -0.59990042448043823 0;
createNode animCurveTA -n "L_elbow_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 23.118445352569427 9 28.74177375174154 
		15 22.912796545827579 24 23.118445352569427 31 125.77031191573052 37 38.415252295540533 
		41 118.33249868277366 45 148.08819224530197 47 148.08819224530197 53 68.010458218702766 
		60 23.118445352569427 61 23.118445352569427 66 35.070157917013567 78 18.30954618220948 
		84 23.118445352569427 85 42.111659391447375 89 108.75045504536725 95 103.75489892761259 
		98 42.111659391447375;
	setAttr -s 20 ".kit[1:19]"  16 9 9 16 10 10 10 10 
		10 10 1 3 9 9 3 16 9 9 16;
	setAttr -s 20 ".kot[1:19]"  16 9 9 16 10 10 10 10 
		10 10 1 3 9 9 3 16 9 9 16;
	setAttr -s 20 ".kix[11:19]"  1 1 0.99305301904678345 0.96343064308166504 
		1 0.13805948197841644 0.36114320158958435 0.30686753988265991 1;
	setAttr -s 20 ".kiy[11:19]"  0 0 -0.11766785383224487 -0.26795798540115356 
		0 0.99042397737503052 0.9325103759765625 -0.9517521858215332 0;
	setAttr -s 20 ".kox[11:19]"  1 1 0.99305301904678345 0.96343064308166504 
		1 0.13805948197841644 0.36114320158958435 0.30686753988265991 1;
	setAttr -s 20 ".koy[11:19]"  0 0 -0.11766785383224487 -0.26795798540115356 
		0 0.99042397737503052 0.9325103759765625 -0.9517521858215332 0;
createNode animCurveTU -n "L_elbow_scaleX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 47 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[0:7]"  10 16 10 1 3 3 16 16;
	setAttr -s 8 ".kot[0:7]"  10 16 10 1 3 3 16 16;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "L_elbow_scaleY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 47 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[0:7]"  10 16 10 1 3 3 16 16;
	setAttr -s 8 ".kot[0:7]"  10 16 10 1 3 3 16 16;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "L_elbow_scaleZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 47 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[0:7]"  10 16 10 1 3 3 16 16;
	setAttr -s 8 ".kot[0:7]"  10 16 10 1 3 3 16 16;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "L_wrist_visibility";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 7 ".kit[0:6]"  9 9 9 3 3 10 10;
	setAttr -s 7 ".kot[0:6]"  5 5 5 3 3 10 10;
createNode animCurveTA -n "L_wrist_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 -18.645470001376331 10 -21.222724119252398 
		19 -19.550574439204134 24 -18.645470001376331 60 -18.645470001376331 61 -18.645470001376331 
		84 -18.645470001376331 85 -18.645470001376331 98 -18.645470001376331;
	setAttr -s 10 ".kit[6:9]"  3 3 10 10;
	setAttr -s 10 ".kot[6:9]"  3 3 10 10;
createNode animCurveTA -n "L_wrist_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 2.7112326661055106 10 1.9805139999298553 
		19 0.11958994388453091 24 2.7112326661055106 60 2.7112326661055106 61 2.7112326661055106 
		84 2.7112326661055106 85 2.7112326661055106 98 2.7112326661055106;
	setAttr -s 10 ".kit[6:9]"  3 3 10 10;
	setAttr -s 10 ".kot[6:9]"  3 3 10 10;
createNode animCurveTA -n "L_wrist_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 19.938008871261996 10 25.875102337942703 
		19 15.824886361752911 24 19.938008871261996 60 19.938008871261996 61 19.938008871261996 
		84 19.938008871261996 85 19.938008871261996 98 19.938008871261996;
	setAttr -s 10 ".kit[6:9]"  3 3 10 10;
	setAttr -s 10 ".kot[6:9]"  3 3 10 10;
createNode animCurveTU -n "L_wrist_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTU -n "L_wrist_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTU -n "L_wrist_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTU -n "L_fingers1_visibility";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 7 ".kit[0:6]"  9 9 9 3 3 10 10;
	setAttr -s 7 ".kot[0:6]"  5 5 5 3 3 10 10;
createNode animCurveTA -n "L_fingers1_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTA -n "L_fingers1_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTA -n "L_fingers1_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 -27.794983335575488 24 -27.794983335575488 
		60 -27.794983335575488 61 -27.794983335575488 84 -27.794983335575488 85 -27.794983335575488 
		98 -27.794983335575488;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTU -n "L_fingers1_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTU -n "L_fingers1_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTU -n "L_fingers1_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTU -n "L_fingers2_visibility";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 7 ".kit[0:6]"  9 9 9 3 3 10 10;
	setAttr -s 7 ".kot[0:6]"  5 5 5 3 3 10 10;
createNode animCurveTA -n "L_fingers2_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0.85651744364460547 24 0.85651744364460547 
		60 0.85651744364460547 61 0.85651744364460547 84 0.85651744364460547 85 0.85651744364460547 
		98 0.85651744364460547;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTA -n "L_fingers2_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 8.0958256480550119 24 8.0958256480550119 
		60 8.0958256480550119 61 8.0958256480550119 84 8.0958256480550119 85 8.0958256480550119 
		98 8.0958256480550119;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTA -n "L_fingers2_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 -19.22235403233606 24 -19.22235403233606 
		60 -19.22235403233606 61 -19.22235403233606 84 -19.22235403233606 85 -19.22235403233606 
		98 -19.22235403233606;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTU -n "L_fingers2_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTU -n "L_fingers2_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTU -n "L_fingers2_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTU -n "L_thumb_visibility";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 7 ".kit[0:6]"  9 9 9 3 3 10 10;
	setAttr -s 7 ".kot[0:6]"  5 5 5 3 3 10 10;
createNode animCurveTA -n "L_thumb_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 27.459467912268259 24 27.459467912268259 
		60 27.459467912268259 61 27.459467912268259 84 27.459467912268259 85 27.459467912268259 
		98 27.459467912268259;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTA -n "L_thumb_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 -20.355879274135095 24 -20.355879274135095 
		60 -20.355879274135095 61 -20.355879274135095 84 -20.355879274135095 85 -20.355879274135095 
		98 -20.355879274135095;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTA -n "L_thumb_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 -32.548311537716224 24 -32.548311537716224 
		60 -32.548311537716224 61 -32.548311537716224 84 -32.548311537716224 85 -32.548311537716224 
		98 -32.548311537716224;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTU -n "L_thumb_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTU -n "L_thumb_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTU -n "L_thumb_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTU -n "R_shoulder_visibility";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 24 1 47 1 56 1 60 1 61 1 84 1 85 1 
		98 1;
	setAttr -s 9 ".kit[0:8]"  9 3 9 9 1 3 3 16 
		16;
	setAttr -s 9 ".kot[0:8]"  5 3 5 9 5 3 3 16 
		16;
	setAttr -s 9 ".kix[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".kiy[4:8]"  0 0 0 0 0;
createNode animCurveTA -n "R_shoulder_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 -4.1222408407191136 14 -3.2117850286326259 
		24 -4.1222408407191136 35 -93.417640785894065 47 -93.417640785894065 50 -92.883140667008846 
		56 -4.1222408407191136 60 -4.1222408407191136 61 -5.2716697183104726 73 -18.88927337916283 
		84 -5.2716697183104726 85 6.7076472118384887 92 -31.707772195098006 98 6.7076472118384887;
	setAttr -s 15 ".kit[1:14]"  3 10 3 10 10 10 9 1 
		3 10 3 16 10 16;
	setAttr -s 15 ".kot[1:14]"  3 10 3 10 10 10 9 1 
		3 10 3 16 10 16;
	setAttr -s 15 ".kix[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[8:14]"  0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[8:14]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "R_shoulder_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 -17.651951942534318 14 -14.495221007596552 
		24 -17.651951942534318 35 6.3664593619500822 47 6.3664593619500822 50 10.084229166141828 
		56 -17.651951942534318 60 -17.651951942534318 61 -38.110363707520833 73 -0.89753354193341184 
		84 -38.110363707520833 85 13.785115636578526 92 -3.9232469507528447 98 13.785115636578526;
	setAttr -s 15 ".kit[1:14]"  3 10 3 10 10 10 9 1 
		3 10 3 16 10 16;
	setAttr -s 15 ".kot[1:14]"  3 10 3 10 10 10 9 1 
		3 10 3 16 10 16;
	setAttr -s 15 ".kix[8:14]"  0.92325598001480103 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[8:14]"  0.38418528437614441 0 0 0 0 0 0;
	setAttr -s 15 ".kox[8:14]"  0.92325598001480103 1 1 1 1 1 1;
	setAttr -s 15 ".koy[8:14]"  0.38418528437614441 0 0 0 0 0 0;
createNode animCurveTA -n "R_shoulder_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 49.51995510063535 14 51.36371319474847 
		24 49.51995510063535 35 25.117986711901771 47 25.117986711901771 50 34.279279226404718 
		56 49.51995510063535 60 49.51995510063535 61 52.897051889720721 73 43.740372383450023 
		84 52.897051889720721 85 57.673342725163934 92 65.898713077349001 98 57.673342725163934;
	setAttr -s 15 ".kit[1:14]"  3 10 3 10 10 10 9 1 
		3 10 3 16 10 16;
	setAttr -s 15 ".kot[1:14]"  3 10 3 10 10 10 9 1 
		3 10 3 16 10 16;
	setAttr -s 15 ".kix[8:14]"  1 1 1 1 0.82663208246231079 1 1;
	setAttr -s 15 ".kiy[8:14]"  0 0 0 0 0.56274265050888062 0 0;
	setAttr -s 15 ".kox[8:14]"  1 1 1 1 0.82663208246231079 1 1;
	setAttr -s 15 ".koy[8:14]"  0 0 0 0 0.56274265050888062 0 0;
createNode animCurveTU -n "R_shoulder_scaleX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 24 1 47 1 56 1 60 1 61 1 84 1 85 1 
		98 1;
	setAttr -s 9 ".kit[0:8]"  10 3 10 9 1 3 3 16 
		16;
	setAttr -s 9 ".kot[0:8]"  10 3 10 9 1 3 3 16 
		16;
	setAttr -s 9 ".kix[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".kiy[4:8]"  0 0 0 0 0;
	setAttr -s 9 ".kox[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".koy[4:8]"  0 0 0 0 0;
createNode animCurveTU -n "R_shoulder_scaleY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 24 1 47 1 56 1 60 1 61 1 84 1 85 1 
		98 1;
	setAttr -s 9 ".kit[0:8]"  10 3 10 9 1 3 3 16 
		16;
	setAttr -s 9 ".kot[0:8]"  10 3 10 9 1 3 3 16 
		16;
	setAttr -s 9 ".kix[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".kiy[4:8]"  0 0 0 0 0;
	setAttr -s 9 ".kox[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".koy[4:8]"  0 0 0 0 0;
createNode animCurveTU -n "R_shoulder_scaleZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 24 1 47 1 56 1 60 1 61 1 84 1 85 1 
		98 1;
	setAttr -s 9 ".kit[0:8]"  10 3 10 9 1 3 3 16 
		16;
	setAttr -s 9 ".kot[0:8]"  10 3 10 9 1 3 3 16 
		16;
	setAttr -s 9 ".kix[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".kiy[4:8]"  0 0 0 0 0;
	setAttr -s 9 ".kox[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".koy[4:8]"  0 0 0 0 0;
createNode animCurveTU -n "R_elbow_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 48 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[0:7]"  9 9 9 1 3 3 16 16;
	setAttr -s 8 ".kot[4:7]"  3 3 16 16;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
createNode animCurveTA -n "R_elbow_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 20.681412412778762 6 18.130850422231109 
		17 21.632615562004759 24 20.681412412778762 35 10.529787172908607 48 10.529787172908607 
		52 -1.3968120157110759 60 20.681412412778762 61 20.681412412778762 67 17.217701854208915 
		76 31.531264004228341 84 20.681412412778762 85 -0.24002779963161214 92 61.918694450986855 
		98 -0.24002779963161214;
	setAttr -s 16 ".kit[8:15]"  1 3 9 9 3 16 10 16;
	setAttr -s 16 ".kot[8:15]"  1 3 9 9 3 16 10 16;
	setAttr -s 16 ".kix[8:15]"  1 1 0.95703643560409546 0.99637776613235474 
		1 1 1 1;
	setAttr -s 16 ".kiy[8:15]"  0 0 0.28996768593788147 0.085036501288414001 
		0 0 0 0;
	setAttr -s 16 ".kox[8:15]"  1 1 0.95703643560409546 0.99637776613235474 
		1 1 1 1;
	setAttr -s 16 ".koy[8:15]"  0 0 0.28996768593788147 0.085036501288414001 
		0 0 0 0;
createNode animCurveTA -n "R_elbow_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 70.498712220274257 6 67.736565870305967 
		17 71.270110337988015 24 70.498712220274257 35 80.441603915494341 48 80.441603915494341 
		52 50.073007629301657 60 70.498712220274257 61 70.498712220274257 67 51.677062216150929 
		76 78.338405258376099 84 70.498712220274257 85 73.365758273362005 92 83.820478361991022 
		98 73.365758273362005;
	setAttr -s 16 ".kit[8:15]"  1 3 9 9 3 16 10 16;
	setAttr -s 16 ".kot[8:15]"  1 3 9 9 3 16 10 16;
	setAttr -s 16 ".kix[8:15]"  1 1 0.9768642783164978 0.90718948841094971 
		1 0.82018399238586426 1 1;
	setAttr -s 16 ".kiy[8:15]"  0 0 0.21386052668094635 0.42072221636772156 
		0 0.57209980487823486 0 0;
	setAttr -s 16 ".kox[8:15]"  1 1 0.9768642783164978 0.90718948841094971 
		1 0.82018399238586426 1 1;
	setAttr -s 16 ".koy[8:15]"  0 0 0.21386052668094635 0.42072221636772156 
		0 0.57209980487823486 0 0;
createNode animCurveTA -n "R_elbow_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 8.7091918062471798 6 5.9801741812144487 
		17 9.7111746976779951 24 8.7091918062471798 35 4.86739572166631 48 4.86739572166631 
		52 4.4822710648966071 60 8.7091918062471798 61 8.7091918062471798 67 3.2162532844491518 
		76 21.805364324092448 84 8.7091918062471798 85 -3.0672610231716444 92 56.178122907400841 
		98 -3.0672610231716444;
	setAttr -s 16 ".kit[8:15]"  1 3 9 9 3 16 10 16;
	setAttr -s 16 ".kot[8:15]"  1 3 9 9 3 16 10 16;
	setAttr -s 16 ".kix[8:15]"  1 1 0.93916511535644531 0.99096477031707764 
		1 1 1 1;
	setAttr -s 16 ".kiy[8:15]"  0 0 0.34346595406532288 0.1341228187084198 
		0 0 0 0;
	setAttr -s 16 ".kox[8:15]"  1 1 0.93916511535644531 0.99096477031707764 
		1 1 1 1;
	setAttr -s 16 ".koy[8:15]"  0 0 0.34346595406532288 0.1341228187084198 
		0 0 0 0;
createNode animCurveTU -n "R_elbow_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 48 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[3:7]"  1 3 3 16 16;
	setAttr -s 8 ".kot[3:7]"  1 3 3 16 16;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "R_elbow_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 48 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[3:7]"  1 3 3 16 16;
	setAttr -s 8 ".kot[3:7]"  1 3 3 16 16;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "R_elbow_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 48 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[3:7]"  1 3 3 16 16;
	setAttr -s 8 ".kot[3:7]"  1 3 3 16 16;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "R_wrist_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 49 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[0:7]"  9 9 9 1 3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
createNode animCurveTA -n "R_wrist_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 1.3204285302733203 8 1.3216313828687281 
		19 1.3292412066172714 24 1.3204285302733203 35 6.0456821317735239 49 6.0456821317735239 
		53 13.527401922689378 60 1.3204285302733203 61 1.3204285302733203 69 1.1531925034933816 
		79 0.62385502700527273 84 1.3204285302733203 85 1.3204285302733203 98 1.3204285302733203;
	setAttr -s 15 ".kit[8:14]"  1 3 10 10 3 10 10;
	setAttr -s 15 ".kot[8:14]"  1 3 10 10 3 10 10;
	setAttr -s 15 ".kix[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[8:14]"  0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[8:14]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "R_wrist_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 1.4559400341930617 8 -1.3266850092605256 
		19 6.7586883972648373 24 1.4559400341930617 35 -44.107147461913456 49 -44.107147461913456 
		53 -24.530950157933013 60 1.4559400341930617 61 1.4559400341930617 69 -9.7245311448016398 
		79 7.6817935435796816 84 1.4559400341930617 85 1.4559400341930617 98 1.4559400341930617;
	setAttr -s 15 ".kit[8:14]"  1 3 10 10 3 10 10;
	setAttr -s 15 ".kot[8:14]"  1 3 10 10 3 10 10;
	setAttr -s 15 ".kix[8:14]"  0.60048091411590576 1 0.98966693878173828 
		0.95455670356750488 1 1 1;
	setAttr -s 15 ".kiy[8:14]"  -0.79963910579681396 0 0.14338511228561401 
		0.29802945256233215 0 0 0;
	setAttr -s 15 ".kox[8:14]"  0.60048091411590576 1 0.98966693878173828 
		0.95455670356750488 1 1 1;
	setAttr -s 15 ".koy[8:14]"  -0.79963910579681396 0 0.14338511228561401 
		0.29802945256233215 0 0 0;
createNode animCurveTA -n "R_wrist_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 -11.064976618638958 8 -11.129040115430229 
		19 -10.942068880949108 24 -11.064976618638958 35 0.07085637292179478 49 0.07085637292179478 
		53 -5.6603528370001603 60 -11.064976618638958 61 -11.064976618638958 69 -2.5792750166469234 
		79 -3.7041418961650887 84 -11.064976618638958 85 -11.064976618638958 98 -11.064976618638958;
	setAttr -s 15 ".kit[8:14]"  1 3 10 10 3 10 10;
	setAttr -s 15 ".kot[8:14]"  1 3 10 10 3 10 10;
	setAttr -s 15 ".kix[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[8:14]"  0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[8:14]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "R_wrist_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 49 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kot[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "R_wrist_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 49 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kot[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "R_wrist_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 49 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kot[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "R_fingers1_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 3 3 10 10;
createNode animCurveTA -n "R_fingers1_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTA -n "R_fingers1_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTA -n "R_fingers1_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTU -n "R_fingers1_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTU -n "R_fingers1_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTU -n "R_fingers1_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTU -n "R_fingers2_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 3 3 10 10;
createNode animCurveTA -n "R_fingers2_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 -1.3168276101024692 24 -1.3168276101024692 
		60 -1.3168276101024692 61 -1.3168276101024692 84 -1.3168276101024692 85 -1.3168276101024692 
		98 -1.3168276101024692;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTA -n "R_fingers2_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 -3.8141079060934415 24 -3.8141079060934415 
		60 -3.8141079060934415 61 -3.8141079060934415 84 -3.8141079060934415 85 -3.8141079060934415 
		98 -3.8141079060934415;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTA -n "R_fingers2_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 99.756730340611924 24 99.756730340611924 
		60 99.756730340611924 61 99.756730340611924 84 99.756730340611924 85 99.756730340611924 
		98 99.756730340611924;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTU -n "R_fingers2_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTU -n "R_fingers2_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTU -n "R_fingers2_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTU -n "R_thumb_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 3 3 10 10;
createNode animCurveTA -n "R_thumb_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 81.288735509405441 24 81.288735509405441 
		60 81.288735509405441 61 81.288735509405441 84 81.288735509405441 85 81.288735509405441 
		98 81.288735509405441;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTA -n "R_thumb_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 27.499400137276712 24 27.499400137276712 
		60 27.499400137276712 61 27.499400137276712 84 27.499400137276712 85 27.499400137276712 
		98 27.499400137276712;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTA -n "R_thumb_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 28.029290035756357 24 28.029290035756357 
		60 28.029290035756357 61 28.029290035756357 84 28.029290035756357 85 28.029290035756357 
		98 28.029290035756357;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTU -n "R_thumb_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTU -n "R_thumb_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTU -n "R_thumb_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[4:7]"  3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
createNode animCurveTU -n "neck_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 46 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[3:7]"  1 3 3 16 16;
	setAttr -s 8 ".kot[0:7]"  5 5 9 5 3 3 16 16;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
createNode animCurveTA -n "neck_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 -31.261617119092801 14 -29.218900721187921 
		24 -31.261617119092801 35 -65.380180188001376 46 -65.380180188001376 49 -45.623741324681106 
		53 -44.755935611450134 60 -31.261617119092801 61 -1.4005058938512298 73 -1.4491526111625503 
		84 -1.4005058938512298 85 -8.7120267176995494 88 -22.155542121422023 92 -14.116822128802779 
		94 -22.628778275767569 98 -8.7120267176995494;
	setAttr -s 17 ".kit[0:16]"  10 16 10 16 10 9 9 9 
		1 3 9 3 16 10 9 10 16;
	setAttr -s 17 ".kot[0:16]"  10 16 10 16 10 9 9 9 
		1 3 9 3 16 10 9 10 16;
	setAttr -s 17 ".kix[8:16]"  1 1 1 1 0.41797730326652527 0.95147436857223511 
		0.99945467710494995 0.93561196327209473 1;
	setAttr -s 17 ".kiy[8:16]"  0 0 0 0 -0.90845745801925659 -0.30772808194160461 
		-0.033020101487636566 0.35303029417991638 0;
	setAttr -s 17 ".kox[8:16]"  1 1 1 1 0.41797730326652527 0.95147436857223511 
		0.99945467710494995 0.93561196327209473 1;
	setAttr -s 17 ".koy[8:16]"  0 0 0 0 -0.90845745801925659 -0.30772808194160461 
		-0.033020101487636566 0.35303029417991638 0;
createNode animCurveTA -n "neck_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 -47.350604490551497 14 -47.416583803701961 
		24 -47.350604490551497 35 -83.101892115771903 46 -83.101892115771903 49 -80.933919775980058 
		53 -69.446486774140524 60 -47.350604490551497 61 7.7368723492019846 73 -22.494489711656687 
		84 7.7368723492019846 85 36.989146578599431 88 9.7912667761574816 92 -30.359699730089851 
		94 -11.048822774737266 98 36.989146578599431;
	setAttr -s 17 ".kit[0:16]"  10 16 10 16 10 9 9 9 
		1 3 9 3 16 10 9 10 16;
	setAttr -s 17 ".kot[0:16]"  10 16 10 16 10 9 9 9 
		1 3 9 3 16 10 9 10 16;
	setAttr -s 17 ".kix[8:16]"  1 1 1 1 1 0.24082693457603455 0.56643170118331909 
		0.20803007483482361 1;
	setAttr -s 17 ".kiy[8:16]"  0 0 0 0 0 -0.97056806087493896 -0.82410866022109985 
		0.97812241315841675 0;
	setAttr -s 17 ".kox[8:16]"  1 1 1 1 1 0.24082693457603455 0.56643170118331909 
		0.20803007483482361 1;
	setAttr -s 17 ".koy[8:16]"  0 0 0 0 0 -0.97056806087493896 -0.82410866022109985 
		0.97812241315841675 0;
createNode animCurveTA -n "neck_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 15.760208244388046 14 15.765268137875392 
		24 15.760208244388046 35 69.121013565206056 46 69.121013565206056 49 58.644967986412901 
		53 39.202923206216092 60 15.760208244388046 61 -2.496192216259018 73 2.6938931642458415 
		84 -2.496192216259018 85 -3.9631410713889559 88 2.77687090621985 92 13.120232751777948 
		94 7.3034377896402738 98 -3.9631410713889559;
	setAttr -s 17 ".kit[0:16]"  10 16 10 16 10 9 9 9 
		1 3 9 3 16 10 9 10 16;
	setAttr -s 17 ".kot[0:16]"  10 16 10 16 10 9 9 9 
		1 3 9 3 16 10 9 10 16;
	setAttr -s 17 ".kix[8:16]"  1 1 1 1 1 0.69927847385406494 0.95352113246917725 
		0.64250606298446655 1;
	setAttr -s 17 ".kiy[8:16]"  0 0 0 0 0 0.71484947204589844 0.30132603645324707 
		-0.76628059148788452 0;
	setAttr -s 17 ".kox[8:16]"  1 1 1 1 1 0.69927847385406494 0.95352113246917725 
		0.64250606298446655 1;
	setAttr -s 17 ".koy[8:16]"  0 0 0 0 0 0.71484947204589844 0.30132603645324707 
		-0.76628059148788452 0;
createNode animCurveTU -n "neck_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 46 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[2:7]"  9 1 3 3 16 16;
	setAttr -s 8 ".kot[2:7]"  9 1 3 3 16 16;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "neck_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 46 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[2:7]"  9 1 3 3 16 16;
	setAttr -s 8 ".kot[2:7]"  9 1 3 3 16 16;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "neck_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 46 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[2:7]"  9 1 3 3 16 16;
	setAttr -s 8 ".kot[2:7]"  9 1 3 3 16 16;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "feather1_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[0:7]"  9 9 9 1 3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
createNode animCurveTA -n "feather1_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 -16.991374312178078 8 -5.0736083222085195 
		16 -14.108778693544721 24 -16.991374312178078 28 -31.42580460605398 35 7.2076357679540362 
		42 -11.820967931391637 48 -2.8011632443205179 53 27.233429394222611 60 -16.991374312178078 
		61 -16.991374312178078 68 -21.31556554352769 73 -13.803992650055495 78 -19.049913455706136 
		84 -16.991374312178078 85 -37.418053835901972 92 -63.424020213075195 98 -37.418053835901972;
	setAttr -s 19 ".kit[10:18]"  1 3 10 10 10 3 10 10 
		10;
	setAttr -s 19 ".kot[10:18]"  1 3 10 10 10 3 10 10 
		10;
	setAttr -s 19 ".kix[10:18]"  0.85579746961593628 1 0.99386745691299438 
		0.99552685022354126 1 1 0.38039663434028625 1 0.48245334625244141;
	setAttr -s 19 ".kiy[10:18]"  -0.5173109769821167 0 0.11057829856872559 
		0.094478875398635864 0 0 -0.92482340335845947 0 0.87592160701751709;
	setAttr -s 19 ".kox[10:18]"  0.85579746961593628 1 0.99386745691299438 
		0.99552685022354126 1 1 0.38039663434028625 1 0.48245337605476379;
	setAttr -s 19 ".koy[10:18]"  -0.5173109769821167 0 0.11057829856872559 
		0.094478875398635864 0 0 -0.92482340335845947 0 0.87592166662216187;
createNode animCurveTA -n "feather1_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 8.7964423851304865 8 10.06665539740489 
		16 8.783312037094845 24 8.7964423851304865 28 8.518828536400342 35 10.662868199771911 
		42 10.548733265072167 48 11.028671540299515 53 8.7155213888981766 60 8.7964423851304865 
		61 8.7964423851304865 68 8.8257590890960973 73 8.7529279981237487 78 8.8156252902353049 
		84 8.7964423851304865 85 5.5387397885041008 92 1.5702581576979631 98 5.5387397885041008;
	setAttr -s 19 ".kit[10:18]"  1 3 10 10 10 3 10 10 
		10;
	setAttr -s 19 ".kot[10:18]"  1 3 10 10 10 3 10 10 
		10;
	setAttr -s 19 ".kix[10:18]"  1 1 1 1 1 1 0.93529129028320313 1 0.96369808912277222;
	setAttr -s 19 ".kiy[10:18]"  0 0 0 0 0 0 -0.35387888550758362 0 0.26699450612068176;
	setAttr -s 19 ".kox[10:18]"  1 1 1 1 1 1 0.93529129028320313 1 0.96369808912277222;
	setAttr -s 19 ".koy[10:18]"  0 0 0 0 0 0 -0.35387888550758362 0 0.26699450612068176;
createNode animCurveTA -n "feather1_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 -2.7169426635832803 8 0.3684294938170779 
		16 -1.7761938070724261 24 -2.7169426635832803 28 -5.0648554999817259 35 7.4012969121359182 
		42 1.0615023370102954 48 3.8007319530384276 53 9.6999825275087854 60 -2.7169426635832803 
		61 -2.7169426635832803 68 -3.1957550364083285 73 -2.2284191424195243 78 -2.9931067005553094 
		84 -2.7169426635832803 85 -7.3548187484318301 92 -15.882969629621433 98 -7.3548187484318301;
	setAttr -s 19 ".kit[10:18]"  1 3 10 10 10 3 10 10 
		10;
	setAttr -s 19 ".kot[10:18]"  1 3 10 10 10 3 10 10 
		10;
	setAttr -s 19 ".kix[10:18]"  1 1 1 1 1 1 0.82332181930541992 1 0.85924053192138672;
	setAttr -s 19 ".kiy[10:18]"  0 0 0 0 0 0 -0.56757479906082153 0 0.51157182455062866;
	setAttr -s 19 ".kox[10:18]"  1 1 1 1 1 1 0.82332181930541992 1 0.85924053192138672;
	setAttr -s 19 ".koy[10:18]"  0 0 0 0 0 0 -0.56757479906082153 0 0.51157182455062866;
createNode animCurveTU -n "feather1_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kot[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "feather1_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kot[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "feather1_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kot[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "feather2_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[0:7]"  9 9 9 1 3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
createNode animCurveTA -n "feather2_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 1.9066898020310745 6 -11.617465213304145 
		14 13.91312075715588 24 1.9066898020310745 30 -16.253038489042059 37 22.254407730590128 
		44 -3.3345969293852553 50 17.706388131943161 54 -15.417154900620956 60 1.9066898020310745 
		61 1.9066898020310745 65 6.5950907713904181 71 -7.4728610237754145 78 9.6809394177817421 
		84 1.9066898020310745 85 -11.484719666257574 88 11.48656834805341 93 -32.292793683425856 
		98 -11.484719666257574;
	setAttr -s 20 ".kit[10:19]"  1 3 10 10 10 3 10 10 
		10 10;
	setAttr -s 20 ".kot[10:19]"  1 3 10 10 10 3 10 10 
		10 10;
	setAttr -s 20 ".kix[10:19]"  0.71852612495422363 1 0.93074113130569458 
		0.99509310722351074 0.95723867416381836 1 0.70597559213638306 0.67619627714157104 
		0.7205880880355835 0.49759328365325928;
	setAttr -s 20 ".kiy[10:19]"  -0.69549989700317383 0 -0.36567875742912292 
		0.098942652344703674 0.2892993688583374 0 0.70823615789413452 -0.73672157526016235 
		-0.6933634877204895 0.86741048097610474;
	setAttr -s 20 ".kox[10:19]"  0.71852612495422363 1 0.93074113130569458 
		0.99509310722351074 0.95723867416381836 1 0.70597559213638306 0.67619627714157104 
		0.7205880880355835 0.49759328365325928;
	setAttr -s 20 ".koy[10:19]"  -0.69549989700317383 0 -0.36567875742912292 
		0.098942652344703674 0.2892993688583374 0 0.70823615789413452 -0.73672157526016235 
		-0.6933634877204895 0.86741048097610474;
createNode animCurveTA -n "feather2_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 4.1199022407291679 6 1.1149398245384465 
		14 6.3671247566072751 24 4.1199022407291679 30 0.5388722746146587 37 4.8991167798733475 
		44 3.5468384099524162 50 5.5880837082641017 54 2.4838260075075627 60 4.1199022407291679 
		61 4.1199022407291679 65 4.7773231618679883 71 2.7380596012848244 78 5.212437174129156 
		84 4.1199022407291679 85 0.62527032215105505 88 7.3616213985561156 93 -3.8019467255697426 
		98 0.62527032215105505;
	setAttr -s 20 ".kit[10:19]"  1 3 10 10 10 3 10 10 
		10 10;
	setAttr -s 20 ".kot[10:19]"  1 3 10 10 10 3 10 10 
		10 10;
	setAttr -s 20 ".kix[10:19]"  1 1 1 1 1 1 0.94692504405975342 0.97416883707046509 
		0.96241939067840576 0.93758898973464966;
	setAttr -s 20 ".kiy[10:19]"  0 0 0 0 0 0 0.32145440578460693 -0.22582072019577026 
		-0.27156737446784973 0.34774556756019592;
	setAttr -s 20 ".kox[10:19]"  1 1 1 1 1 1 0.94692504405975342 0.97416883707046509 
		0.96241939067840576 0.93758898973464966;
	setAttr -s 20 ".koy[10:19]"  0 0 0 0 0 0 0.32145440578460693 -0.22582072019577026 
		-0.27156737446784973 0.34774556756019592;
createNode animCurveTA -n "feather2_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 -10.031618084453351 6 -13.70099074406661 
		14 -6.3540333149840018 24 -10.031618084453351 30 -14.114532206918982 37 1.5311205502964715 
		44 -9.7146290081278774 50 -2.6526252919858062 54 -11.549548892105987 60 -10.031618084453351 
		61 -10.031618084453351 65 -9.0054316239843804 71 -12.629357408054105 78 -7.9425238062546093 
		84 -10.031618084453351 85 -14.516588412502047 88 -8.2092590119114615 93 -18.6130070736838 
		98 -14.516588412502047;
	setAttr -s 20 ".kit[10:19]"  1 3 10 10 10 3 10 10 
		10 10;
	setAttr -s 20 ".kot[10:19]"  1 3 10 10 10 3 10 10 
		10 10;
	setAttr -s 20 ".kix[10:19]"  0.97055917978286743 1 1 0.99941408634185791 
		1 1 0.9822733998298645 0.97776186466217041 0.96682590246200562 0.94585210084915161;
	setAttr -s 20 ".kiy[10:19]"  -0.24086295068264008 0 0 0.034228373318910599 
		0 0 0.18745401501655579 -0.20971821248531342 -0.25543612241744995 0.32459801435470581;
	setAttr -s 20 ".kox[10:19]"  0.97055917978286743 1 1 0.99941408634185791 
		1 1 0.9822733998298645 0.97776186466217041 0.96682590246200562 0.94585210084915161;
	setAttr -s 20 ".koy[10:19]"  -0.24086295068264008 0 0 0.034228373318910599 
		0 0 0.18745401501655579 -0.20971821248531342 -0.25543612241744995 0.32459801435470581;
createNode animCurveTU -n "feather2_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kot[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "feather2_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kot[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "feather2_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kot[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "feather3_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[0:7]"  9 9 9 1 3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
createNode animCurveTA -n "feather3_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 -11.145896550987965 9 -15.740773066250071 
		17 10.770784451169252 24 -11.145896550987965 31 -45.117556742381609 39 18.365441080758195 
		46 -24.043897945679078 51 36.375581042215693 55 -18.740233177198373 60 -11.145896550987965 
		61 -11.145896550987965 66 -0.028333687166269626 73 -26.754049365778634 79 15.143470012030635 
		84 -11.145896550987965 85 -29.701981702956068 90 21.953779499006842 94 -59.164921502958947 
		98 -29.701981702956068;
	setAttr -s 20 ".kit[10:19]"  1 3 10 10 10 3 10 10 
		10 10;
	setAttr -s 20 ".kot[10:19]"  1 3 10 10 10 3 10 10 
		10 10;
	setAttr -s 20 ".kix[10:19]"  0.41649085283279419 1 0.87812691926956177 
		0.89839547872543335 0.85962545871734619 1 0.39715805649757385 0.58921736478805542 
		0.34678477048873901 0.30832222104072571;
	setAttr -s 20 ".kiy[10:19]"  -0.90913987159729004 0 -0.47842755913734436 
		0.43918749690055847 0.5109245777130127 0 0.91775023937225342 -0.80797457695007324 
		-0.93794465065002441 0.95128202438354492;
	setAttr -s 20 ".kox[10:19]"  0.41649085283279419 1 0.87812691926956177 
		0.89839547872543335 0.85962545871734619 1 0.39715805649757385 0.58921736478805542 
		0.34678477048873901 0.30832222104072571;
	setAttr -s 20 ".koy[10:19]"  -0.90913987159729004 0 -0.47842755913734436 
		0.43918749690055847 0.5109245777130127 0 0.91775023937225342 -0.80797457695007324 
		-0.93794465065002441 0.95128202438354492;
createNode animCurveTA -n "feather3_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 5.5988250788645537 9 2.6644702054915719 
		17 12.571841506504072 24 5.5988250788645537 31 -10.593014236904693 39 6.278738963442839 
		46 -1.827786640450302 51 6.7349930778937068 55 1.738630522787773 60 5.5988250788645537 
		61 5.5988250788645537 66 8.9783304042494727 73 -0.55475989716123042 79 12.280094795343283 
		84 5.5988250788645537 85 -4.1916941190178107 90 10.976497365131015 94 -21.827159234536385 
		98 -4.1916941190178107;
	setAttr -s 20 ".kit[10:19]"  1 3 10 10 10 3 10 10 
		10 10;
	setAttr -s 20 ".kot[10:19]"  1 3 10 10 10 3 10 10 
		10 10;
	setAttr -s 20 ".kix[10:19]"  0.80661183595657349 1 0.9776991605758667 
		0.9943884015083313 0.97362649440765381 1 0.936195969581604 0.7729676365852356 0.78307777643203735 
		0.47615814208984375;
	setAttr -s 20 ".kiy[10:19]"  -0.59108150005340576 0 -0.21001040935516357 
		0.10579066723585129 0.228147953748703 0 0.35147824883460999 -0.63444554805755615 
		-0.62192374467849731 0.8793596625328064;
	setAttr -s 20 ".kox[10:19]"  0.80661183595657349 1 0.9776991605758667 
		0.9943884015083313 0.97362649440765381 1 0.936195969581604 0.7729676365852356 0.78307777643203735 
		0.47615814208984375;
	setAttr -s 20 ".koy[10:19]"  -0.59108150005340576 0 -0.21001040935516357 
		0.10579066723585129 0.228147953748703 0 0.35147824883460999 -0.63444554805755615 
		-0.62192374467849731 0.8793596625328064;
createNode animCurveTA -n "feather3_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 -10.46065238742008 9 -13.490938747013715 
		17 -0.78541608895571369 24 -10.46065238742008 31 -19.311102823843335 39 8.2648156964215698 
		46 -13.048285573105153 51 11.291444904670085 55 -8.2376483574147379 60 -10.46065238742008 
		61 -10.46065238742008 66 -6.5181681269996297 73 -15.942214665694639 79 -0.74296332928322817 
		84 -10.46065238742008 85 -18.151789223082218 90 3.0952156711043015 94 -17.310592053846573 
		98 -18.151789223082218;
	setAttr -s 20 ".kit[10:19]"  1 3 10 10 10 3 10 10 
		10 10;
	setAttr -s 20 ".kot[10:19]"  1 3 10 10 10 3 10 10 
		10 10;
	setAttr -s 20 ".kix[10:19]"  0.7888786792755127 1 0.98218172788619995 
		0.98312324285507202 0.97890132665634155 1 0.72631168365478516 0.99923443794250488 
		1 1;
	setAttr -s 20 ".kiy[10:19]"  -0.61454898118972778 0 -0.18793323636054993 
		0.18294499814510345 0.2043333500623703 0 0.68736547231674194 0.039121121168136597 
		0 0;
	setAttr -s 20 ".kox[10:19]"  0.7888786792755127 1 0.98218172788619995 
		0.98312324285507202 0.97890132665634155 1 0.72631168365478516 0.99923443794250488 
		1 1;
	setAttr -s 20 ".koy[10:19]"  -0.61454898118972778 0 -0.18793323636054993 
		0.18294499814510345 0.2043333500623703 0 0.68736547231674194 0.039121121168136597 
		0 0;
createNode animCurveTU -n "feather3_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kot[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "feather3_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kot[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "feather3_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kot[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "R_braid1_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 57 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kot[0:7]"  5 5 9 5 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
createNode animCurveTA -n "R_braid1_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 -2.3108667752970398 24 -2.3108667752970398 
		33 -28.294542428195122 50 -13.203476330059951 54 41.85909172916368 57 -2.3108667752970398 
		60 -2.3108667752970398 61 0 69 5.760543402866821 76 2.358638941264565 84 0 85 56.686332049835336 
		92 -6.519063917299901 98 56.686332049835336;
	setAttr -s 15 ".kit[6:14]"  9 1 3 10 10 3 10 10 
		10;
	setAttr -s 15 ".kot[6:14]"  9 1 3 10 10 3 10 10 
		10;
	setAttr -s 15 ".kix[7:14]"  1 1 0.99783796072006226 1 1 0.94638627767562866 
		1 0.22102090716362;
	setAttr -s 15 ".kiy[7:14]"  0 0 0.065723218023777008 0 0 -0.32303708791732788 
		0 0.97526907920837402;
	setAttr -s 15 ".kox[7:14]"  1 1 0.99783796072006226 1 1 0.94638627767562866 
		1 0.22102090716362;
	setAttr -s 15 ".koy[7:14]"  0 0 0.065723218023777008 0 0 -0.32303708791732788 
		0 0.97526907920837402;
createNode animCurveTA -n "R_braid1_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 0.49237915071170713 24 0.49237915071170713 
		33 4.2746893850186689 50 8.1635206318619833 54 7.2838422079998812 57 0.49237915071170713 
		60 0.49237915071170713 61 0 69 -0.24462166031473576 76 -0.072395306621855546 84 0 
		85 -0.15162262450503691 92 -14.153185234745589 98 -0.15162262450503691;
	setAttr -s 15 ".kit[6:14]"  9 1 3 10 10 3 10 10 
		10;
	setAttr -s 15 ".kot[6:14]"  9 1 3 10 10 3 10 10 
		10;
	setAttr -s 15 ".kix[7:14]"  1 1 1 1 1 1 1 0.71510863304138184;
	setAttr -s 15 ".kiy[7:14]"  0 0 0 0 0 0 0 0.699013352394104;
	setAttr -s 15 ".kox[7:14]"  1 1 1 1 1 1 1 0.71510863304138184;
	setAttr -s 15 ".koy[7:14]"  0 0 0 0 0 0 0 0.699013352394104;
createNode animCurveTA -n "R_braid1_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 0.31541052672111231 24 0.31541052672111231 
		33 -18.130205526962847 50 -15.073320710357919 54 6.8045251702641538 57 0.31541052672111231 
		60 0.31541052672111231 61 0 69 0.12873340487753271 76 0.028348967636823333 84 0 85 
		-2.1913421542433835 92 4.4923282744516424 98 -2.1913421542433835;
	setAttr -s 15 ".kit[6:14]"  9 1 3 10 10 3 10 10 
		10;
	setAttr -s 15 ".kot[6:14]"  9 1 3 10 10 3 10 10 
		10;
	setAttr -s 15 ".kix[7:14]"  1 1 1 1 1 1 1 0.90620356798171997;
	setAttr -s 15 ".kiy[7:14]"  0 0 0 0 0 0 0 -0.4228416383266449;
	setAttr -s 15 ".kox[7:14]"  1 1 1 1 1 1 1 0.90620362758636475;
	setAttr -s 15 ".koy[7:14]"  0 0 0 0 0 0 0 -0.42284166812896729;
createNode animCurveTU -n "R_braid1_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 57 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[2:7]"  9 1 3 3 10 10;
	setAttr -s 8 ".kot[2:7]"  9 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "R_braid1_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 57 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[2:7]"  9 1 3 3 10 10;
	setAttr -s 8 ".kot[2:7]"  9 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "R_braid1_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 57 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[2:7]"  9 1 3 3 10 10;
	setAttr -s 8 ".kot[2:7]"  9 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "R_braid2_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 57 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[3:7]"  1 3 3 10 10;
	setAttr -s 8 ".kot[0:7]"  5 5 9 5 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
createNode animCurveTA -n "R_braid2_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 14.228116430478792 24 14.228116430478792 
		32 23.718571965034812 48 13.150300638993972 52 41.193134599608264 57 14.228116430478792 
		60 14.228116430478792 61 0 68 -3.5091031037804963 72 4.2669462308323078 78 -0.81694309620127836 
		84 0 85 14.337237621520433 89 52.457616928093223 93 7.3776010802796197 98 14.337237621520433;
	setAttr -s 17 ".kit[6:16]"  9 1 3 10 10 10 3 10 
		10 10 10;
	setAttr -s 17 ".kot[6:16]"  9 1 3 10 10 10 3 10 
		10 10 10;
	setAttr -s 17 ".kix[7:16]"  1 1 0.98705506324768066 0.99370169639587402 
		1 1 0.22187615931034088 0.93956094980239868 0.49101129174232483 0.86388587951660156;
	setAttr -s 17 ".kiy[7:16]"  0 0 0.16038160026073456 0.11205865442752838 
		0 0 0.9750748872756958 -0.34238147735595703 -0.87115317583084106 0.50368756055831909;
	setAttr -s 17 ".kox[7:16]"  1 1 0.98705506324768066 0.99370169639587402 
		1 1 0.22187615931034088 0.93956094980239868 0.49101129174232483 0.86388593912124634;
	setAttr -s 17 ".koy[7:16]"  0 0 0.16038160026073456 0.11205865442752838 
		0 0 0.9750748872756958 -0.34238147735595703 -0.87115317583084106 0.50368762016296387;
createNode animCurveTA -n "R_braid2_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 32 -1.634017773553013 48 -2.9802011631167042 
		52 -1.2708362488203395 57 0 60 0 61 0 68 0.14331324058493503 72 -0.16744289104371396 
		78 0.03663725426289733 84 0 85 -0.24523861120340551 89 0.59428030594805326 93 0.27445385261248961 
		98 -0.24523861120340551;
	setAttr -s 16 ".kit[5:15]"  9 1 3 10 10 10 3 10 
		10 10 10;
	setAttr -s 16 ".kot[5:15]"  9 1 3 10 10 10 3 10 
		10 10 10;
	setAttr -s 16 ".kix[6:15]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[6:15]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[6:15]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[6:15]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_braid2_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 32 11.258986973684685 48 10.410478189554569 
		52 8.5218695959703901 57 0 60 0 61 0 68 -0.057236246046827692 72 0.26885574481554797 
		78 0.061268163782923692 84 0 85 -0.52276171279300121 89 0.0095638445650826562 93 
		-0.70928600100245331 98 -0.52276171279300121;
	setAttr -s 16 ".kit[5:15]"  9 1 3 10 10 10 3 10 
		10 10 10;
	setAttr -s 16 ".kot[5:15]"  9 1 3 10 10 10 3 10 
		10 10 10;
	setAttr -s 16 ".kix[6:15]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[6:15]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[6:15]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[6:15]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_braid2_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 57 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[2:7]"  9 1 3 3 10 10;
	setAttr -s 8 ".kot[2:7]"  9 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "R_braid2_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 57 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[2:7]"  9 1 3 3 10 10;
	setAttr -s 8 ".kot[2:7]"  9 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "R_braid2_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 57 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[2:7]"  9 1 3 3 10 10;
	setAttr -s 8 ".kot[2:7]"  9 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "R_braid3_visibility";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 57 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[0:7]"  9 16 9 1 3 3 10 10;
	setAttr -s 8 ".kot[0:7]"  5 16 9 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTA -n "R_braid3_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 -22.445225073117918 11 -12.389986406070479 
		19 -30.415617933513087 24 -22.445225073117918 33 -25.627811615734799 40 -5.548060531555052 
		48 -11.139765695618571 52 38.308656823269487 57 -22.445225073117918 60 -22.445225073117918 
		61 0 69 -7.4804717751779508 76 -1.1040940368927503 79 -6.8570658604351635 84 0 85 
		6.1158167734213027 91 52.422021225807775 95 -18.6053967434455 98 6.1158167734213027;
	setAttr -s 20 ".kit[1:19]"  16 9 9 16 10 10 10 10 
		9 1 3 10 10 10 3 10 10 10 10;
	setAttr -s 20 ".kot[1:19]"  16 9 9 16 10 10 10 10 
		9 1 3 10 10 10 3 10 10 10 10;
	setAttr -s 20 ".kix[10:19]"  1 1 0.99952507019042969 0.99965918064117432 
		0.9983331561088562 1 0.30372413992881775 0.69466185569763184 0.33945736289024353 
		0.27826762199401855;
	setAttr -s 20 ".kiy[10:19]"  0 0 -0.030817477032542229 0.026104262098670006 
		0.057713881134986877 0 0.95275998115539551 -0.71933639049530029 -0.94062143564224243 
		0.96050357818603516;
	setAttr -s 20 ".kox[10:19]"  1 1 0.99952507019042969 0.99965918064117432 
		0.9983331561088562 1 0.30372413992881775 0.69466185569763184 0.33945736289024353 
		0.27826762199401855;
	setAttr -s 20 ".koy[10:19]"  0 0 -0.030817477032542229 0.026104262098670006 
		0.057713881134986877 0 0.95275998115539551 -0.71933639049530029 -0.94062143564224243 
		0.96050357818603516;
createNode animCurveTA -n "R_braid3_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 1 5.7274940179526208 24 5.7274940179526208 
		33 8.5808612137864255 40 7.3673247742713723 48 10.244512256550779 52 -7.7640316772414577 
		57 5.7274940179526208 60 5.7274940179526208 61 0 69 0.30178911336673209 76 0.0061986079761723097 
		79 0.23409974365308112 84 0 85 -0.12058942094532195 91 -0.19338785525808233 95 0.0069526438045188948 
		98 -0.12058942094532195;
	setAttr -s 18 ".kit[1:17]"  16 16 10 10 10 10 9 1 
		3 10 10 10 3 10 10 10 10;
	setAttr -s 18 ".kot[1:17]"  16 16 10 10 10 10 9 1 
		3 10 10 10 3 10 10 10 10;
	setAttr -s 18 ".kix[8:17]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[8:17]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[8:17]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[8:17]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_braid3_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 1 -6.7411111723695436 24 -6.7411111723695436 
		33 6.5636065768071532 40 12.782361824038752 48 9.9721669678269347 52 -5.8859318987936389 
		57 -6.7411111723695436 60 -6.7411111723695436 61 0 69 -0.20331904083159907 76 0.014334330539315447 
		79 -0.0040037880174850545 84 0 85 -0.21539067527336855 91 2.0294491058222341 95 3.7215738357261947 
		98 -0.21539067527336855;
	setAttr -s 18 ".kit[1:17]"  16 16 10 10 10 10 9 1 
		3 10 10 10 3 10 10 10 10;
	setAttr -s 18 ".kot[1:17]"  16 16 10 10 10 10 9 1 
		3 10 10 10 3 10 10 10 10;
	setAttr -s 18 ".kix[8:17]"  1 1 1 1 1 1 1 1 1 0.87632584571838379;
	setAttr -s 18 ".kiy[8:17]"  0 0 0 0 0 0 0 0 0 -0.48171886801719666;
	setAttr -s 18 ".kox[8:17]"  1 1 1 1 1 1 1 1 1 0.87632584571838379;
	setAttr -s 18 ".koy[8:17]"  0 0 0 0 0 0 0 0 0 -0.48171886801719666;
createNode animCurveTU -n "R_braid3_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 57 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[1:7]"  16 9 1 3 3 10 10;
	setAttr -s 8 ".kot[1:7]"  16 9 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "R_braid3_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 57 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[1:7]"  16 9 1 3 3 10 10;
	setAttr -s 8 ".kot[1:7]"  16 9 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "R_braid3_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 57 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[1:7]"  16 9 1 3 3 10 10;
	setAttr -s 8 ".kot[1:7]"  16 9 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "R_braid4_visibility";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 57 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[0:7]"  9 16 9 1 3 3 10 10;
	setAttr -s 8 ".kot[0:7]"  5 16 9 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTA -n "R_braid4_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 -32.640923458131951 11 8.2203912322658024 
		19 -37.556434367719319 24 -32.640923458131951 42 13.881095501950385 50 -55.264365589133718 
		53 38.50031670297016 57 -32.640923458131951 60 -32.640923458131951 61 0 71 -28.817412871505287 
		77 11.6637094782548 80 -20.893977957085418 84 0 85 0 89 77.320489900866065 93 31.035573207116986 
		96 -52.513578647830116 98 0;
	setAttr -s 20 ".kit[1:19]"  16 9 9 16 10 10 10 9 
		1 3 10 10 10 3 10 10 10 10 10;
	setAttr -s 20 ".kot[1:19]"  16 9 9 16 10 10 10 9 
		1 3 10 10 10 3 10 10 10 10 10;
	setAttr -s 20 ".kix[9:19]"  1 1 0.95640510320663452 0.9382358193397522 
		0.82001912593841553 1 1 0.5240929126739502 0.12765942513942719 0.35897570848464966 
		0.090548835694789886;
	setAttr -s 20 ".kiy[9:19]"  0 0 0.29204335808753967 0.34599640965461731 
		-0.57233607769012451 0 0 0.8516610860824585 -0.99181801080703735 -0.93334686756134033 
		0.99589204788208008;
	setAttr -s 20 ".kox[9:19]"  1 1 0.95640510320663452 0.9382358193397522 
		0.82001912593841553 1 1 0.5240929126739502 0.12765942513942719 0.35897570848464966 
		0.090548835694789886;
	setAttr -s 20 ".koy[9:19]"  0 0 0.29204335808753967 0.34599640965461731 
		-0.57233607769012451 0 0 0.8516610860824585 -0.99181801080703735 -0.93334686756134033 
		0.99589204788208008;
createNode animCurveTA -n "R_braid4_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 4.5298088977016056 11 3.4464443012816797 
		19 4.9390711615085925 24 4.5298088977016056 42 -8.8172746975623753 50 6.2841941184780366 
		53 -31.262927381996271 57 4.5298088977016056 60 4.5298088977016056 61 0 71 0.87650881448150586 
		77 -0.63894653668592327 80 0.65790935038449783 84 0 85 0 89 0.059863389946173406 
		93 -4.4660116596520236 96 -6.9210886072341973 98 0;
	setAttr -s 20 ".kit[1:19]"  16 9 9 16 10 10 10 9 
		1 3 10 10 10 3 10 10 10 10 10;
	setAttr -s 20 ".kot[1:19]"  16 9 9 16 10 10 10 9 
		1 3 10 10 10 3 10 10 10 10 10;
	setAttr -s 20 ".kix[9:19]"  1 1 1 1 1 1 1 1 1 1 0.56785327196121216;
	setAttr -s 20 ".kiy[9:19]"  0 0 0 0 0 0 0 0 0 0 0.82312983274459839;
	setAttr -s 20 ".kox[9:19]"  1 1 1 1 1 1 1 1 1 1 0.56785327196121216;
	setAttr -s 20 ".koy[9:19]"  0 0 0 0 0 0 0 0 0 0 0.82312983274459839;
createNode animCurveTA -n "R_braid4_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 3.621073296586836 11 10.59734295425198 
		19 2.4020895605869566 24 3.621073296586836 42 15.781274134028052 50 10.21872683563665 
		53 -17.797170517958364 57 3.621073296586836 60 3.621073296586836 61 0 71 -1.3733505204534016 
		77 -0.14417344209474414 80 0.16710072491412456 84 0 85 0 89 -0.26154537994796651 
		93 -2.2721139649426325 96 -1.3134136405524457 98 0;
	setAttr -s 20 ".kit[1:19]"  16 9 9 16 10 10 10 9 
		1 3 10 10 10 3 10 10 10 10 10;
	setAttr -s 20 ".kot[1:19]"  16 9 9 16 10 10 10 9 
		1 3 10 10 10 3 10 10 10 10 10;
	setAttr -s 20 ".kix[9:19]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[9:19]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[9:19]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[9:19]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_braid4_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 57 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[1:7]"  16 9 1 3 3 10 10;
	setAttr -s 8 ".kot[1:7]"  16 9 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "R_braid4_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 57 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[1:7]"  16 9 1 3 3 10 10;
	setAttr -s 8 ".kot[1:7]"  16 9 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "R_braid4_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 57 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[1:7]"  16 9 1 3 3 10 10;
	setAttr -s 8 ".kot[1:7]"  16 9 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "L_braid1_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 55 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[0:7]"  9 9 1 1 3 3 10 10;
	setAttr -s 8 ".kot[4:7]"  3 3 10 10;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "L_braid1_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 1 -1.0726844782119729 24 -1.0726844782119729 
		28 -2.7230730019246279 31 -16.200669671641371 38 -13.164021506986195 43 -2.6335146463006454 
		48 5.8447893974340648 51 46.278837407777402 55 5.0258924098921529 60 -1.0726844782119729 
		61 0 71 1.960824176499226 76 5.1401916246810266 84 0 85 28.005310523853318 92 14.16447158311996 
		98 28.005310523853318;
	setAttr -s 18 ".kit[9:17]"  1 1 3 9 9 3 10 10 
		10;
	setAttr -s 18 ".kot[9:17]"  1 1 3 9 9 3 10 10 
		10;
	setAttr -s 18 ".kix[9:17]"  1 1 1 0.98985451459884644 0.99801009893417358 
		1 0.80320769548416138 1 0.71913021802902222;
	setAttr -s 18 ".kiy[9:17]"  0 0 0 0.14208492636680603 -0.063054896891117096 
		0 0.59569913148880005 0 0.69487535953521729;
	setAttr -s 18 ".kox[9:17]"  1 1 1 0.98985451459884644 0.99801009893417358 
		1 0.80320769548416138 1 0.71913021802902222;
	setAttr -s 18 ".koy[9:17]"  0 0 0 0.14208492636680603 -0.063054896891117096 
		0 0.59569913148880005 0 0.69487535953521729;
createNode animCurveTA -n "L_braid1_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 1 1.6906219177498798 24 1.6906219177498798 
		28 -0.30696812899503828 31 0.23493796227288638 38 5.3812509377427871 43 1.9576752793928058 
		48 -0.54478250293759956 51 -1.720977046181563 55 8.7246316838526017 60 1.6906219177498798 
		61 0 71 -0.079546975801364467 76 -0.21781815913354902 84 0 85 -0.35150788217618162 
		92 17.30709324529953 98 -0.35150788217618162;
	setAttr -s 18 ".kit[9:17]"  1 1 3 9 9 3 10 10 
		10;
	setAttr -s 18 ".kot[9:17]"  1 1 3 9 9 3 10 10 
		10;
	setAttr -s 18 ".kix[9:17]"  1 1 1 0.99998152256011963 0.99999678134918213 
		1 1 1 0.62996578216552734;
	setAttr -s 18 ".kiy[9:17]"  0 0 0 -0.0060825180262327194 0.0025631114840507507 
		0 0 0 -0.77662289142608643;
	setAttr -s 18 ".kox[9:17]"  1 1 1 0.99998152256011963 0.99999678134918213 
		1 1 1 0.62996578216552734;
	setAttr -s 18 ".koy[9:17]"  0 0 0 -0.0060825180262327194 0.0025631114840507507 
		0 0 0 -0.77662289142608643;
createNode animCurveTA -n "L_braid1_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 1 7.8674378801420808 24 7.8674378801420808 
		28 6.0833724172694197 31 5.3756207801165177 38 2.6918728050547061 43 2.0525336226269952 
		48 8.2282738554723398 51 16.848617619278528 55 -2.9163492307322034 60 7.8674378801420808 
		61 0 71 0.075151823091868866 76 0.15811065364768478 84 0 85 -1.0629518367884452 92 
		-8.2851002183015723 98 -1.0629518367884452;
	setAttr -s 18 ".kit[9:17]"  1 1 3 9 9 3 10 10 
		10;
	setAttr -s 18 ".kot[9:17]"  1 1 3 9 9 3 10 10 
		10;
	setAttr -s 18 ".kix[9:17]"  1 1 1 0.99999022483825684 0.99999713897705078 
		1 1 1 0.89292186498641968;
	setAttr -s 18 ".kiy[9:17]"  0 0 0 0.0044152392074465752 -0.0024214943405240774 
		0 0 0 0.45021170377731323;
	setAttr -s 18 ".kox[9:17]"  1 1 1 0.99999022483825684 0.99999713897705078 
		1 1 1 0.89292186498641968;
	setAttr -s 18 ".koy[9:17]"  0 0 0 0.0044152392074465752 -0.0024214943405240774 
		0 0 0 0.45021170377731323;
createNode animCurveTU -n "L_braid1_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 55 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[2:7]"  1 1 3 3 10 10;
	setAttr -s 8 ".kot[2:7]"  1 1 3 3 10 10;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "L_braid1_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 55 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[2:7]"  1 1 3 3 10 10;
	setAttr -s 8 ".kot[2:7]"  1 1 3 3 10 10;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "L_braid1_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 55 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[2:7]"  1 1 3 3 10 10;
	setAttr -s 8 ".kot[2:7]"  1 1 3 3 10 10;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "L_braid2_visibility";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 7 ".kit[0:6]"  9 9 1 3 3 10 10;
	setAttr -s 7 ".kot[0:6]"  5 5 5 3 3 10 10;
	setAttr -s 7 ".kix[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
createNode animCurveTA -n "L_braid2_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 16.466189902479012 24 16.466189902479012 
		29 18.191645084505573 36 5.4502560250929033 45 21.303675953081971 49 16.900585725369119 
		52 32.045497154903266 56 3.8546487701769432 60 16.466189902479012 61 0 65 -2.0663341285942463 
		76 6.608634288047087 80 -6.383768095714669 84 0 85 26.22719057118988 89 64.748943833984669 
		93 -3.259649695434538 98 26.22719057118988;
	setAttr -s 19 ".kit[9:18]"  1 3 10 9 9 3 10 10 
		10 10;
	setAttr -s 19 ".kot[9:18]"  1 3 10 9 9 3 10 10 
		10 10;
	setAttr -s 19 ".kix[9:18]"  1 1 1 0.99281024932861328 0.94502300024032593 
		1 0.18129727244377136 0.54362982511520386 0.4871140718460083 0.37523272633552551;
	setAttr -s 19 ".kiy[9:18]"  0 0 0 -0.119698666036129 -0.32700380682945251 
		0 0.98342835903167725 -0.83932507038116455 -0.87333840131759644 0.92693060636520386;
	setAttr -s 19 ".kox[9:18]"  1 1 1 0.99281024932861328 0.94502300024032593 
		1 0.18129727244377136 0.54362982511520386 0.4871140718460083 0.3752327561378479;
	setAttr -s 19 ".koy[9:18]"  0 0 0 -0.119698666036129 -0.32700380682945251 
		0 0.98342835903167725 -0.83932507038116455 -0.87333840131759644 0.92693066596984863;
createNode animCurveTA -n "L_braid2_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 -1.5491776008150828 24 -1.5491776008150828 
		29 -1.2690289047026813 36 -5.9155351387889095 45 0.32438467423659334 49 -1.2523009561859644 
		52 0.89947010306573916 56 -13.34454207381123 60 -1.5491776008150828 61 0 65 0.063674550200935862 
		76 -0.2968920943032981 80 0.24012162642403564 84 0 85 -0.34502106010965489 89 0.52085964446606836 
		93 -0.33901681183295862 98 -0.34502106010965489;
	setAttr -s 19 ".kit[9:18]"  1 3 10 9 9 3 10 10 
		10 10;
	setAttr -s 19 ".kot[9:18]"  1 3 10 9 9 3 10 10 
		10 10;
	setAttr -s 19 ".kix[9:18]"  1 1 1 0.99998784065246582 0.99987924098968506 
		1 1 1 1 1;
	setAttr -s 19 ".kiy[9:18]"  0 0 0 0.0049272719770669937 0.015543361194431782 
		0 0 0 0 0;
	setAttr -s 19 ".kox[9:18]"  1 1 1 0.99998784065246582 0.99987924098968506 
		1 1 1 1 1;
	setAttr -s 19 ".koy[9:18]"  0 0 0 0.0049272719770669937 0.015543361194431782 
		0 0 0 0 0;
createNode animCurveTA -n "L_braid2_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 -16.094243179309466 24 -16.094243179309466 
		29 -16.303891422166245 36 -0.064978829441351457 45 -4.9191730251673524 49 -9.4781578934227202 
		52 -24.500581704268082 56 -20.269743838183626 60 -16.094243179309466 61 0 65 0.027684589090004846 
		76 0.2192798027160805 80 0.21478813307761727 84 0 85 -0.99145834413405043 89 -0.69623941227086472 
		93 -1.6110615368549481 98 -0.99145834413405043;
	setAttr -s 19 ".kit[9:18]"  1 3 10 9 9 3 10 10 
		10 10;
	setAttr -s 19 ".kot[9:18]"  1 3 10 9 9 3 10 10 
		10 10;
	setAttr -s 19 ".kix[9:18]"  1 1 1 0.99998641014099121 0.99993407726287842 
		1 1 1 1 1;
	setAttr -s 19 ".kiy[9:18]"  0 0 0 0.0052248458378016949 -0.011480709537863731 
		0 0 0 0 0;
	setAttr -s 19 ".kox[9:18]"  1 1 1 0.99998641014099121 0.99993407726287842 
		1 1 1 1 1;
	setAttr -s 19 ".koy[9:18]"  0 0 0 0.0052248458378016949 -0.011480709537863731 
		0 0 0 0 0;
createNode animCurveTU -n "L_braid2_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 7 ".kit[2:6]"  1 3 3 10 10;
	setAttr -s 7 ".kot[2:6]"  1 3 3 10 10;
	setAttr -s 7 ".kix[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
	setAttr -s 7 ".kox[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".koy[2:6]"  0 0 0 0 0;
createNode animCurveTU -n "L_braid2_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 7 ".kit[2:6]"  1 3 3 10 10;
	setAttr -s 7 ".kot[2:6]"  1 3 3 10 10;
	setAttr -s 7 ".kix[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
	setAttr -s 7 ".kox[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".koy[2:6]"  0 0 0 0 0;
createNode animCurveTU -n "L_braid2_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 7 ".kit[2:6]"  1 3 3 10 10;
	setAttr -s 7 ".kot[2:6]"  1 3 3 10 10;
	setAttr -s 7 ".kix[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
	setAttr -s 7 ".kox[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".koy[2:6]"  0 0 0 0 0;
createNode animCurveTU -n "L_braid3_visibility";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 7 ".kit[0:6]"  9 16 1 3 3 10 10;
	setAttr -s 7 ".kot[0:6]"  5 16 1 3 3 10 10;
	setAttr -s 7 ".kix[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
	setAttr -s 7 ".kox[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".koy[2:6]"  0 0 0 0 0;
createNode animCurveTA -n "L_braid3_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 1 -33.093635245992004 7 -24.126524404262138 
		17 -34.390728896803651 24 -33.093635245992004 29 -30.457723299179154 34 -5.5077410280886774 
		43 -30.043366498696138 47 -23.235498144577921 49 -43.763264184302948 53 19.745313240263688 
		60 -33.093635245992004 61 0 70 -10.833828603255638 76 5.9538159256079712 80 -18.734119559759158 
		84 0 85 0 89 29.799933404828568 92 46.180851367076414 95 -10.858670462248472 98 0;
	setAttr -s 22 ".kit[1:21]"  16 9 9 16 10 10 10 10 
		10 10 1 3 9 9 9 3 10 10 10 10 10;
	setAttr -s 22 ".kot[1:21]"  16 9 9 16 10 10 10 10 
		10 10 1 3 9 9 9 3 10 10 10 10 10;
	setAttr -s 22 ".kix[11:21]"  1 1 0.98645859956741333 0.94936650991439819 
		0.95468598604202271 1 1 0.34027197957038879 0.33228063583374023 0.29624772071838379 
		0.55058854818344116;
	setAttr -s 22 ".kiy[11:21]"  0 0 0.16401049494743347 -0.31417077779769897 
		-0.29761490225791931 0 0 0.94032710790634155 -0.94318056106567383 -0.95511114597320557 
		0.83477675914764404;
	setAttr -s 22 ".kox[11:21]"  1 1 0.98645859956741333 0.94936650991439819 
		0.95468598604202271 1 1 0.34027197957038879 0.33228063583374023 0.29624772071838379 
		0.55058854818344116;
	setAttr -s 22 ".koy[11:21]"  0 0 0.16401049494743347 -0.31417077779769897 
		-0.29761490225791931 0 0 0.94032710790634155 -0.94318056106567383 -0.95511114597320557 
		0.83477675914764404;
createNode animCurveTA -n "L_braid3_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 1 -3.8786517689918991 7 -3.5954898861556872 
		17 -2.9980619303398015 24 -3.8786517689918991 29 -4.2700851907455952 34 -0.84215815822499918 
		43 -13.449855180820379 47 -13.722325593224408 49 -4.1922485114511998 53 34.814132302327252 
		60 -3.8786517689918991 61 0 70 -0.67377079436199871 76 0.26066639298580002 80 0.004250922090150544 
		84 0 85 0 89 0.58759693740561691 92 14.359919577763151 95 -0.1992168422488737 98 
		0;
	setAttr -s 22 ".kit[1:21]"  16 9 9 16 10 10 10 10 
		10 10 1 3 9 9 9 3 10 10 10 10 10;
	setAttr -s 22 ".kot[1:21]"  16 9 9 16 10 10 10 10 
		10 10 1 3 9 9 9 3 10 10 10 10 10;
	setAttr -s 22 ".kix[11:21]"  0.9990156888961792 1 0.99997353553771973 
		0.99959701299667358 0.99990689754486084 1 1 1 0.99849474430084229 1 1;
	setAttr -s 22 ".kiy[11:21]"  -0.044358279556035995 0 0.0072789862751960754 
		0.028389472514390945 -0.013647193089127541 0 0 0 -0.05484728142619133 0 0;
	setAttr -s 22 ".kox[11:21]"  0.9990156888961792 1 0.99997353553771973 
		0.99959701299667358 0.99990689754486084 1 1 1 0.99849474430084229 1 1;
	setAttr -s 22 ".koy[11:21]"  -0.044358279556035995 0 0.0072789862751960754 
		0.028389472514390945 -0.013647193089127541 0 0 0 -0.05484728142619133 0 0;
createNode animCurveTA -n "L_braid3_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 1 2.5753493103444081 7 -1.002386616039026 
		17 3.3341637960380179 24 2.5753493103444081 29 -8.3511265102876777 34 15.109764215869339 
		43 0.46741690176169454 47 13.203626345789885 49 27.787455373356739 53 -8.0650640532242726 
		60 2.5753493103444081 61 0 70 -9.7248903569835665 76 -5.0648369972325105 80 -1.1759290703602254 
		84 0 85 0 89 0.12491960163608108 92 7.7261379614607009 95 1.521876190506001 98 0;
	setAttr -s 22 ".kit[1:21]"  16 9 9 16 10 10 10 10 
		10 10 1 3 9 9 9 3 10 10 10 10 10;
	setAttr -s 22 ".kot[1:21]"  16 9 9 16 10 10 10 10 
		10 10 1 3 9 9 9 3 10 10 10 10 10;
	setAttr -s 22 ".kix[11:21]"  1 1 0.99014538526535034 0.94145667552947998 
		0.96658837795257568 1 1 1 0.995278000831604 1 1;
	setAttr -s 22 ".kiy[11:21]"  0 0 -0.14004313945770264 0.33713394403457642 
		0.25633373856544495 0 0 0 0.097065448760986328 0 0;
	setAttr -s 22 ".kox[11:21]"  1 1 0.99014538526535034 0.94145667552947998 
		0.96658837795257568 1 1 1 0.995278000831604 1 1;
	setAttr -s 22 ".koy[11:21]"  0 0 -0.14004313945770264 0.33713394403457642 
		0.25633373856544495 0 0 0 0.097065448760986328 0 0;
createNode animCurveTU -n "L_braid3_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 7 ".kit[1:6]"  16 1 3 3 10 10;
	setAttr -s 7 ".kot[1:6]"  16 1 3 3 10 10;
	setAttr -s 7 ".kix[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
	setAttr -s 7 ".kox[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".koy[2:6]"  0 0 0 0 0;
createNode animCurveTU -n "L_braid3_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 7 ".kit[1:6]"  16 1 3 3 10 10;
	setAttr -s 7 ".kot[1:6]"  16 1 3 3 10 10;
	setAttr -s 7 ".kix[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
	setAttr -s 7 ".kox[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".koy[2:6]"  0 0 0 0 0;
createNode animCurveTU -n "L_braid3_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 7 ".kit[1:6]"  16 1 3 3 10 10;
	setAttr -s 7 ".kot[1:6]"  16 1 3 3 10 10;
	setAttr -s 7 ".kix[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
	setAttr -s 7 ".kox[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".koy[2:6]"  0 0 0 0 0;
createNode animCurveTU -n "L_braid4_visibility";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[0:7]"  9 16 16 1 3 3 10 10;
	setAttr -s 8 ".kot[0:7]"  5 16 16 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTA -n "L_braid4_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 1 0 5 9.882129523871594 16 -56.246475696931952 
		24 0 31 4.1469889827515525 44 -20.375389784570146 47 20.187016482517954 50 -81.56230772265296 
		54 58.757918731785452 60 0 61 0 72 -26.030938754244026 78 31.944276446466137 81 -17.838611140329398 
		84 0 85 15.973932595329968 91 78.785388462561272 94 97.426646806862479 95 -62.793341248946014 
		98 15.973932595329968;
	setAttr -s 21 ".kit[1:20]"  16 9 9 16 10 10 10 10 
		10 1 3 10 10 10 3 10 10 10 10 10;
	setAttr -s 21 ".kot[1:20]"  16 9 9 16 10 10 10 10 
		10 1 3 10 10 10 3 10 10 10 10 10;
	setAttr -s 21 ".kix[10:20]"  1 1 0.78578710556030273 0.93438327312469482 
		0.40915337204933167 1 0.20749495923519135 0.25505936145782471 0.067295700311660767 
		0.11643988639116287 0.090552359819412231;
	setAttr -s 21 ".kiy[10:20]"  0 0 0.61849713325500488 0.35626932978630066 
		-0.91246569156646729 0 0.97823607921600342 0.96692538261413574 -0.99773305654525757 
		-0.99319779872894287 0.99589163064956665;
	setAttr -s 21 ".kox[10:20]"  1 1 0.78578710556030273 0.93438327312469482 
		0.40915337204933167 1 0.20749495923519135 0.25505936145782471 0.067295700311660767 
		0.11643988639116287 0.090552367269992828;
	setAttr -s 21 ".koy[10:20]"  0 0 0.61849713325500488 0.35626932978630066 
		-0.91246569156646729 0 0.97823607921600342 0.96692538261413574 -0.99773305654525757 
		-0.99319779872894287 0.99589169025421143;
createNode animCurveTA -n "L_braid4_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 1 0 5 2.4883244032907221 16 6.5852150124610471 
		24 0 31 0.26468264787901852 44 4.2380677132366342 47 -5.2772736515165102 50 31.940958134902615 
		54 -1.8028204877997678 60 0 61 0 72 -5.8938486781633657 78 -0.77482748247528022 81 
		-0.56205385148744613 84 0 85 -0.264719039925851 91 -0.84167768519468866 94 -8.2761059450892969 
		95 16.276204689424542 98 -0.264719039925851;
	setAttr -s 21 ".kit[1:20]"  16 9 9 16 10 10 10 10 
		10 1 3 10 10 10 3 10 10 10 10 10;
	setAttr -s 21 ".kot[1:20]"  16 9 9 16 10 10 10 10 
		10 1 3 10 10 10 3 10 10 10 10 10;
	setAttr -s 21 ".kix[10:20]"  1 1 0.99981778860092163 1 1 1 1 1 0.48717635869979858 
		0.76610082387924194 0.39733895659446716;
	setAttr -s 21 ".kiy[10:20]"  0 0 -0.019088227301836014 0 0 0 0 0 0.87330365180969238 
		0.64272034168243408 -0.91767185926437378;
	setAttr -s 21 ".kox[10:20]"  1 1 0.99981778860092163 1 1 1 1 1 0.48717635869979858 
		0.76610082387924194 0.39733898639678955;
	setAttr -s 21 ".koy[10:20]"  0 0 -0.019088227301836014 0 0 0 0 0 0.87330365180969238 
		0.64272034168243408 -0.91767191886901855;
createNode animCurveTA -n "L_braid4_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 1 0 5 -4.0798091553904072 16 14.535691487027094 
		24 0 31 22.802199615362277 44 25.579549922978202 47 11.769415224267599 50 -56.906362904301375 
		54 3.7747840597832529 60 0 61 0 72 -3.274401643797213 78 3.2894162306315762 81 -2.2188865782705482 
		84 0 85 -0.58590722319661037 91 14.107510115941473 94 9.5587247554808048 95 1.8070438509163791 
		98 -0.58590722319661037;
	setAttr -s 21 ".kit[1:20]"  16 9 9 16 10 10 10 10 
		10 1 3 10 10 10 3 10 10 10 10 10;
	setAttr -s 21 ".kot[1:20]"  16 9 9 16 10 10 10 10 
		10 1 3 10 10 10 3 10 10 10 10 10;
	setAttr -s 21 ".kix[10:20]"  1 1 0.99673151969909668 0.99879550933837891 
		1 1 1 0.90427291393280029 0.61323046684265137 1 1;
	setAttr -s 21 ".kiy[10:20]"  0 0 0.080786123871803284 0.049066733568906784 
		0 0 0 0.42695483565330505 -0.78990399837493896 0 0;
	setAttr -s 21 ".kox[10:20]"  1 1 0.99673151969909668 0.99879550933837891 
		1 1 1 0.90427291393280029 0.61323046684265137 1 1;
	setAttr -s 21 ".koy[10:20]"  0 0 0.080786123871803284 0.049066733568906784 
		0 0 0 0.42695483565330505 -0.78990399837493896 0 0;
createNode animCurveTU -n "L_braid4_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[1:7]"  16 16 1 3 3 10 10;
	setAttr -s 8 ".kot[1:7]"  16 16 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "L_braid4_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[1:7]"  16 16 1 3 3 10 10;
	setAttr -s 8 ".kot[1:7]"  16 16 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "L_braid4_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[1:7]"  16 16 1 3 3 10 10;
	setAttr -s 8 ".kot[1:7]"  16 16 1 3 3 10 10;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "L_foot_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 24 1 29 1 40 1 55 1 60 1 61 1 73 1 
		84 1 85 1 92 1 98 1;
	setAttr -s 12 ".kit[0:11]"  9 9 1 9 9 1 3 9 
		3 10 9 10;
	setAttr -s 12 ".kot[6:11]"  3 5 3 10 5 10;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_foot_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 24 0 29 0 32 14.194692104214543 35 
		16.462469259458889 40 0 55 0 57 2.0247586646470959 60 0 61 0 66 32.312928899469441 
		71 -21.948040819138548 73 0 84 0 85 96.333407498383352 88 97.633695615687472 90 -23.464869999097896 
		92 -1.6422511903958477 96 0 98 96.333407498383352;
	setAttr -s 20 ".kit[2:19]"  1 10 10 10 10 10 1 3 
		10 10 10 3 10 10 10 10 10 10;
	setAttr -s 20 ".kot[2:19]"  1 10 10 10 10 10 1 3 
		10 10 10 3 10 10 10 10 10 10;
	setAttr -s 20 ".kix[2:19]"  1 1 1 1 1 1 1 1 0.73616653680801392 0.45937281847000122 
		1 1 1 1 0.095747403800487518 1 1 0.049503114074468613;
	setAttr -s 20 ".kiy[2:19]"  0 0 0 0 0 0 0 0 -0.67680037021636963 -0.88824361562728882 
		0 0 0 0 -0.99540567398071289 0 0 0.99877399206161499;
	setAttr -s 20 ".kox[2:19]"  1 1 1 1 1 1 1 1 0.73616653680801392 0.45937281847000122 
		1 1 1 1 0.095747403800487518 1 1 0.049503114074468613;
	setAttr -s 20 ".koy[2:19]"  0 0 0 0 0 0 0 0 -0.67680037021636963 -0.88824361562728882 
		0 0 0 0 -0.99540567398071289 0 0 0.99877399206161499;
createNode animCurveTA -n "L_foot_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 -0.51090148108033384 24 -0.51090148108033384 
		29 -0.51090148108033384 35 53.987320038170509 40 57.708224612695894 55 57.708224612695894 
		57 41.497155625368336 60 -0.51090148108033384 61 0 73 0 84 0 85 0 92 0 98 0;
	setAttr -s 15 ".kit[3:14]"  1 10 10 10 10 1 3 10 
		3 10 10 10;
	setAttr -s 15 ".kot[3:14]"  1 10 10 10 10 1 3 10 
		3 10 10 10;
	setAttr -s 15 ".kix[3:14]"  1 0.41117119789123535 1 1 0.20085097849369049 
		1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[3:14]"  0 0.91155815124511719 0 0 -0.9796217679977417 
		0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[3:14]"  1 0.41117119789123535 1 1 0.20085097849369049 
		1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[3:14]"  0 0.91155815124511719 0 0 -0.9796217679977417 
		0 0 0 0 0 0 0;
createNode animCurveTA -n "L_foot_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 29 0 35 6.4058872695793543 40 
		0 55 0 57 -6.8605740581798784 60 0 61 0 73 0 84 0 85 0 92 0 98 0;
	setAttr -s 14 ".kit[2:13]"  1 10 10 10 10 1 3 10 
		3 10 10 10;
	setAttr -s 14 ".kot[2:13]"  1 10 10 10 10 1 3 10 
		3 10 10 10;
	setAttr -s 14 ".kix[2:13]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[2:13]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[2:13]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_foot_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 24 1 29 1 40 1 55 1 60 1 61 1 73 1 
		84 1 85 1 92 1 98 1;
	setAttr -s 12 ".kit[2:11]"  1 10 10 1 3 10 3 10 
		10 10;
	setAttr -s 12 ".kot[2:11]"  1 10 10 1 3 10 3 10 
		10 10;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_foot_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 24 1 29 1 40 1 55 1 60 1 61 1 73 1 
		84 1 85 1 92 1 98 1;
	setAttr -s 12 ".kit[2:11]"  1 10 10 1 3 10 3 10 
		10 10;
	setAttr -s 12 ".kot[2:11]"  1 10 10 1 3 10 3 10 
		10 10;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_foot_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 24 1 29 1 40 1 55 1 60 1 61 1 73 1 
		84 1 85 1 92 1 98 1;
	setAttr -s 12 ".kit[2:11]"  1 10 10 1 3 10 3 10 
		10 10;
	setAttr -s 12 ".kot[2:11]"  1 10 10 1 3 10 3 10 
		10 10;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_knee_visibility";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 7 ".kit[0:6]"  9 9 9 3 3 10 10;
	setAttr -s 7 ".kot[0:6]"  5 5 5 3 3 10 10;
createNode animCurveTA -n "L_knee_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTA -n "L_knee_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTA -n "L_knee_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTU -n "L_knee_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTU -n "L_knee_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTU -n "L_knee_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTU -n "R_foot_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 60 1 61 1 73 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[3:7]"  3 9 3 10 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 3 5 3 10 1;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[7]"  1;
	setAttr -s 8 ".koy[7]"  0;
createNode animCurveTA -n "R_foot_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 1.6770116954495204 24 1.6770116954495204 
		60 1.6770116954495204 61 0 73 0 77 34.882126347602316 82 -21.82314042783004 84 0 
		85 0 89 0 92 88.390524088125076 95 76.58008365920962 97 -32.073105733706313 98 0;
	setAttr -s 15 ".kit[4:14]"  3 10 10 10 3 10 10 10 
		10 10 1;
	setAttr -s 15 ".kot[4:14]"  3 10 10 10 3 10 10 10 
		10 10 1;
	setAttr -s 15 ".kix[14]"  1;
	setAttr -s 15 ".kiy[14]"  0;
	setAttr -s 15 ".kox[14]"  1;
	setAttr -s 15 ".koy[14]"  0;
createNode animCurveTA -n "R_foot_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 6.1771651330762163 24 6.1771651330762163 
		60 6.1771651330762163 61 0 73 0 84 0 85 0 98 0;
	setAttr -s 9 ".kit[4:8]"  3 10 3 10 1;
	setAttr -s 9 ".kot[4:8]"  3 10 3 10 1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  1;
	setAttr -s 9 ".koy[8]"  0;
createNode animCurveTA -n "R_foot_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 -0.68576698657038182 24 -0.68576698657038182 
		60 -0.68576698657038182 61 0 73 0 84 0 85 0 98 0;
	setAttr -s 9 ".kit[4:8]"  3 10 3 10 1;
	setAttr -s 9 ".kot[4:8]"  3 10 3 10 1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  1;
	setAttr -s 9 ".koy[8]"  0;
createNode animCurveTU -n "R_foot_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 60 1 61 1 73 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[3:7]"  3 10 3 10 1;
	setAttr -s 8 ".kot[3:7]"  3 10 3 10 1;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[7]"  1;
	setAttr -s 8 ".koy[7]"  0;
createNode animCurveTU -n "R_foot_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 60 1 61 1 73 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[3:7]"  3 10 3 10 1;
	setAttr -s 8 ".kot[3:7]"  3 10 3 10 1;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[7]"  1;
	setAttr -s 8 ".koy[7]"  0;
createNode animCurveTU -n "R_foot_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 24 1 60 1 61 1 73 1 84 1 85 1 98 1;
	setAttr -s 8 ".kit[3:7]"  3 10 3 10 1;
	setAttr -s 8 ".kot[3:7]"  3 10 3 10 1;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[7]"  1;
	setAttr -s 8 ".koy[7]"  0;
createNode animCurveTU -n "L_knee1_visibility";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 60 1 61 1 84 1 85 1 98 1;
	setAttr -s 7 ".kit[0:6]"  9 9 9 3 3 10 10;
	setAttr -s 7 ".kot[0:6]"  5 5 5 3 3 10 10;
createNode animCurveTA -n "L_knee1_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 90.000000000000014 24 90.000000000000014 
		60 90.000000000000014 61 90.000000000000014 84 90.000000000000014 85 90.000000000000014 
		98 90.000000000000014;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTA -n "L_knee1_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 24 0 60 0 61 0 84 0 85 0 98 0;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTA -n "L_knee1_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 180 24 180 60 180 61 180 84 180 85 180 
		98 180;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTU -n "L_knee1_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.12007441300120938 24 0.12007441300120938 
		60 0.12007441300120938 61 0.12007441300120938 84 0.12007441300120938 85 0.12007441300120938 
		98 0.12007441300120938;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTU -n "L_knee1_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.12007441300120938 24 0.12007441300120938 
		60 0.12007441300120938 61 0.12007441300120938 84 0.12007441300120938 85 0.12007441300120938 
		98 0.12007441300120938;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveTU -n "L_knee1_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.12007441300120938 24 -0.12007441300120938 
		60 -0.12007441300120938 61 -0.12007441300120938 84 -0.12007441300120938 85 -0.12007441300120938 
		98 -0.12007441300120938;
	setAttr -s 7 ".kit[3:6]"  3 3 10 10;
	setAttr -s 7 ".kot[3:6]"  3 3 10 10;
createNode animCurveUU -n "ArrowJoint_parentConstraint1_chestW0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 0;
createNode animCurveUU -n "ArrowJoint_parentConstraint1_L_wristW1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 1;
createNode animCurveTU -n "L_wrist_Arrow";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 24 0 30 0 31 1 46 1 47 0 60 0 61 0 
		84 0 85 0 98 0;
	setAttr -s 11 ".kit[7:10]"  3 3 10 10;
	setAttr -s 11 ".kot[7:10]"  3 3 10 10;
createNode animCurveTU -n "arrow1_visibility";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 30 1 46 1 55 1;
	setAttr -s 4 ".kit[0:3]"  9 10 9 1;
	setAttr -s 4 ".kot[0:3]"  5 10 5 1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "arrow1_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 1 1.0907271311788507 30 1.0907271311788507 
		31 6.9274633419251455 33 6.6159440097126305 39 7.0744160127399631 43 6.6641175230454079 
		45 7.0770850111519596 46 6.906786287618238 47 -2.8740639802050931 48 -10.401589256116754 
		49 -16.880704320057852 50 -23.105162192450596 51 -29.035898022483259 52 -36.135688379420031 
		53 -45.248453584597776 54 -56.11642356871284 55 1.0907271311788507;
	setAttr -s 18 ".kit[17]"  1;
	setAttr -s 18 ".kot[17]"  1;
	setAttr -s 18 ".kix[17]"  1;
	setAttr -s 18 ".kiy[17]"  0;
	setAttr -s 18 ".kox[17]"  1;
	setAttr -s 18 ".koy[17]"  0;
createNode animCurveTL -n "arrow1_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 1 -0.10009125333202883 30 -0.10009125333202883 
		31 1.844865165054127 33 0.72502531927582392 39 0.11269016257770903 43 0.76564687033445999 
		45 0.5095511563584727 46 0.71920321900980311 47 -4.3017005206307442 48 -10.592264998889616 
		49 -18.12946521162463 50 -25.694089721946941 51 -33.34688173274693 52 -40.339127656790104 
		53 -44.62780010294626 54 -47.458434492869074 55 -0.10009125333202883;
	setAttr -s 18 ".kit[17]"  1;
	setAttr -s 18 ".kot[17]"  1;
	setAttr -s 18 ".kix[17]"  1;
	setAttr -s 18 ".kiy[17]"  0;
	setAttr -s 18 ".kox[17]"  1;
	setAttr -s 18 ".koy[17]"  0;
createNode animCurveTL -n "arrow1_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 1 -0.39059083282499035 30 -0.39059083282499035 
		31 1.0585676269545803 33 0.62863338303789806 39 1.3873011798623565 43 0.95386705929383908 
		45 1.0662585162805847 46 0.88656869860037768 47 2.6977113438215858 48 2.7880952138679627 
		49 3.8207940787938708 50 6.5600514118186304 51 11.107645660227139 52 16.587537072097046 
		53 24.055610156731802 54 31.557065218318119 55 -0.39059083282499035;
	setAttr -s 18 ".kit[17]"  1;
	setAttr -s 18 ".kot[17]"  1;
	setAttr -s 18 ".kix[17]"  1;
	setAttr -s 18 ".kiy[17]"  0;
	setAttr -s 18 ".kox[17]"  1;
	setAttr -s 18 ".koy[17]"  0;
createNode animCurveTA -n "arrow1_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 1 -0.60685797504101602 30 -0.60685797504101602 
		31 -57.130647165137461 32 -49.664807007323255 33 -118.64494507711558 36 -181.9546963553272 
		39 -190.42649394095176 40 -197.91908708902497 41 -197.46521524100791 43 -185.03597798837677 
		44 -185.79185215067073 45 -187.56267743943963 46 -186.85912097232898 47 -186.44023493981348 
		48 -182.56516010988949 49 -178.85228606505822 50 -172.98193057482919 51 -168.70591732764112 
		52 -164.87751362672321 53 -161.55923592824232 54 -158.17190351786184 55 -0.60685797504101602;
	setAttr -s 23 ".kit[22]"  1;
	setAttr -s 23 ".kot[22]"  1;
	setAttr -s 23 ".kix[22]"  1;
	setAttr -s 23 ".kiy[22]"  0;
	setAttr -s 23 ".kox[22]"  1;
	setAttr -s 23 ".koy[22]"  0;
createNode animCurveTA -n "arrow1_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 1 -13.262734013605652 30 -13.262734013605652 
		31 -2.8177979285578862 32 -5.8004426193703251 33 6.9454052345889066 36 38.101820610388877 
		39 40.601647673069273 40 42.54900710128102 41 44.143585305322212 43 46.242502376707812 
		44 45.940659650008662 45 46.115694424064429 46 43.853279452296988 47 -6.6873956307156837 
		48 -9.8082981398444389 49 -7.9580066452881892 50 -7.5658023235150829 51 -6.4182967221884839 
		52 -3.7967644689956916 53 -0.36079596695873839 54 5.7133421362328241 55 -13.262734013605652;
	setAttr -s 23 ".kit[22]"  1;
	setAttr -s 23 ".kot[22]"  1;
	setAttr -s 23 ".kix[22]"  1;
	setAttr -s 23 ".kiy[22]"  0;
	setAttr -s 23 ".kox[22]"  1;
	setAttr -s 23 ".koy[22]"  0;
createNode animCurveTA -n "arrow1_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 1 -9.0811623542052402 30 -9.0811623542052402 
		31 -36.118387831898097 32 -46.934608612112967 33 -54.100001623423928 36 -51.605560064704093 
		39 -80.480535604163066 40 -76.541143940661229 41 -69.218697950924437 43 -64.323865167411455 
		44 -67.575199063095198 45 -70.86025893910444 46 -71.570535916215988 47 126.96727880640752 
		48 130.54985928047088 49 132.50216718541643 50 135.53194497380989 51 135.92767453548504 
		52 134.12550781815489 53 132.55507618119498 54 128.70079845167677 55 -9.0811623542052402;
	setAttr -s 23 ".kit[22]"  1;
	setAttr -s 23 ".kot[22]"  1;
	setAttr -s 23 ".kix[22]"  1;
	setAttr -s 23 ".kiy[22]"  0;
	setAttr -s 23 ".kox[22]"  1;
	setAttr -s 23 ".koy[22]"  0;
createNode animCurveTU -n "arrow1_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 30 1 46 1 55 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "arrow1_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 30 1 46 1 55 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "arrow1_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 30 1 46 1 55 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "bow_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "bow_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -8.2870098152782781 24 -8.2870098152782781;
createNode animCurveTL -n "bow_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -15.015655425851069 24 -15.015655425851069;
createNode animCurveTL -n "bow_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -0.32281619091752406 24 -0.32281619091752406;
createNode animCurveTA -n "bow_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -0.43643120466643709 24 -0.43643120466643709;
createNode animCurveTA -n "bow_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 180.02290552649771 24 180.02290552649771;
createNode animCurveTA -n "bow_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 91.704833935557545 24 91.704833935557545;
createNode animCurveTU -n "bow_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.99999999999999967 24 0.99999999999999967;
createNode animCurveTU -n "bow_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.99999999999999967 24 0.99999999999999967;
createNode animCurveTU -n "bow_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.99999999999999989 24 0.99999999999999989;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :initialShadingGroup;
	setAttr -s 8 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :defaultTextureList1;
	setAttr -s 4 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :renderGlobalsList1;
select -ne :initialMaterialInfo;
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
connectAttr "root1_translateX.o" "root1.tx";
connectAttr "root1_translateY.o" "root1.ty";
connectAttr "root1_translateZ.o" "root1.tz";
connectAttr "root1_visibility.o" "root1.v";
connectAttr "root1_rotateX.o" "root1.rx";
connectAttr "root1_rotateY.o" "root1.ry";
connectAttr "root1_rotateZ.o" "root1.rz";
connectAttr "root1_scaleX.o" "root1.sx";
connectAttr "root1_scaleY.o" "root1.sy";
connectAttr "root1_scaleZ.o" "root1.sz";
connectAttr "root.s" "|Niabi|master|root1|root|chest.is";
connectAttr "chest_parentConstraint1.ctx" "|Niabi|master|root1|root|chest.tx";
connectAttr "chest_parentConstraint1.cty" "|Niabi|master|root1|root|chest.ty";
connectAttr "chest_parentConstraint1.ctz" "|Niabi|master|root1|root|chest.tz";
connectAttr "chest_parentConstraint1.crx" "|Niabi|master|root1|root|chest.rx";
connectAttr "chest_parentConstraint1.cry" "|Niabi|master|root1|root|chest.ry";
connectAttr "chest_parentConstraint1.crz" "|Niabi|master|root1|root|chest.rz";
connectAttr "|Niabi|master|root1|root|chest.s" "|Niabi|master|root1|root|chest|neck.is"
		;
connectAttr "neck_parentConstraint1.ctx" "|Niabi|master|root1|root|chest|neck.tx"
		;
connectAttr "neck_parentConstraint1.cty" "|Niabi|master|root1|root|chest|neck.ty"
		;
connectAttr "neck_parentConstraint1.ctz" "|Niabi|master|root1|root|chest|neck.tz"
		;
connectAttr "neck_parentConstraint1.crx" "|Niabi|master|root1|root|chest|neck.rx"
		;
connectAttr "neck_parentConstraint1.cry" "|Niabi|master|root1|root|chest|neck.ry"
		;
connectAttr "neck_parentConstraint1.crz" "|Niabi|master|root1|root|chest|neck.rz"
		;
connectAttr "|Niabi|master|root1|root|chest|neck.s" "jaw.is";
connectAttr "|Niabi|master|root1|root|chest|neck.s" "L_eye.is";
connectAttr "|Niabi|master|root1|root|chest|neck.s" "R_eye.is";
connectAttr "|Niabi|master|root1|root|chest|neck.s" "|Niabi|master|root1|root|chest|neck|feather1.is"
		;
connectAttr "feather1_parentConstraint1.ctx" "|Niabi|master|root1|root|chest|neck|feather1.tx"
		;
connectAttr "feather1_parentConstraint1.cty" "|Niabi|master|root1|root|chest|neck|feather1.ty"
		;
connectAttr "feather1_parentConstraint1.ctz" "|Niabi|master|root1|root|chest|neck|feather1.tz"
		;
connectAttr "feather1_parentConstraint1.crx" "|Niabi|master|root1|root|chest|neck|feather1.rx"
		;
connectAttr "feather1_parentConstraint1.cry" "|Niabi|master|root1|root|chest|neck|feather1.ry"
		;
connectAttr "feather1_parentConstraint1.crz" "|Niabi|master|root1|root|chest|neck|feather1.rz"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|feather1.s" "|Niabi|master|root1|root|chest|neck|feather1|feather2.is"
		;
connectAttr "feather2_parentConstraint1.ctx" "|Niabi|master|root1|root|chest|neck|feather1|feather2.tx"
		;
connectAttr "feather2_parentConstraint1.cty" "|Niabi|master|root1|root|chest|neck|feather1|feather2.ty"
		;
connectAttr "feather2_parentConstraint1.ctz" "|Niabi|master|root1|root|chest|neck|feather1|feather2.tz"
		;
connectAttr "feather2_parentConstraint1.crx" "|Niabi|master|root1|root|chest|neck|feather1|feather2.rx"
		;
connectAttr "feather2_parentConstraint1.cry" "|Niabi|master|root1|root|chest|neck|feather1|feather2.ry"
		;
connectAttr "feather2_parentConstraint1.crz" "|Niabi|master|root1|root|chest|neck|feather1|feather2.rz"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|feather1|feather2.s" "|Niabi|master|root1|root|chest|neck|feather1|feather2|feather3.is"
		;
connectAttr "feather3_parentConstraint1.ctx" "|Niabi|master|root1|root|chest|neck|feather1|feather2|feather3.tx"
		;
connectAttr "feather3_parentConstraint1.cty" "|Niabi|master|root1|root|chest|neck|feather1|feather2|feather3.ty"
		;
connectAttr "feather3_parentConstraint1.ctz" "|Niabi|master|root1|root|chest|neck|feather1|feather2|feather3.tz"
		;
connectAttr "feather3_parentConstraint1.crx" "|Niabi|master|root1|root|chest|neck|feather1|feather2|feather3.rx"
		;
connectAttr "feather3_parentConstraint1.cry" "|Niabi|master|root1|root|chest|neck|feather1|feather2|feather3.ry"
		;
connectAttr "feather3_parentConstraint1.crz" "|Niabi|master|root1|root|chest|neck|feather1|feather2|feather3.rz"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|feather1|feather2|feather3.ro" "feather3_parentConstraint1.cro"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|feather1|feather2|feather3.pim" "feather3_parentConstraint1.cpim"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|feather1|feather2|feather3.rp" "feather3_parentConstraint1.crp"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|feather1|feather2|feather3.rpt" "feather3_parentConstraint1.crt"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|feather1|feather2|feather3.jo" "feather3_parentConstraint1.cjo"
		;
connectAttr "|Niabi|master|root1|chest|neck|feather1|feather2|feather3.t" "feather3_parentConstraint1.tg[0].tt"
		;
connectAttr "|Niabi|master|root1|chest|neck|feather1|feather2|feather3.rp" "feather3_parentConstraint1.tg[0].trp"
		;
connectAttr "|Niabi|master|root1|chest|neck|feather1|feather2|feather3.rpt" "feather3_parentConstraint1.tg[0].trt"
		;
connectAttr "|Niabi|master|root1|chest|neck|feather1|feather2|feather3.r" "feather3_parentConstraint1.tg[0].tr"
		;
connectAttr "|Niabi|master|root1|chest|neck|feather1|feather2|feather3.ro" "feather3_parentConstraint1.tg[0].tro"
		;
connectAttr "|Niabi|master|root1|chest|neck|feather1|feather2|feather3.s" "feather3_parentConstraint1.tg[0].ts"
		;
connectAttr "|Niabi|master|root1|chest|neck|feather1|feather2|feather3.pm" "feather3_parentConstraint1.tg[0].tpm"
		;
connectAttr "feather3_parentConstraint1.w0" "feather3_parentConstraint1.tg[0].tw"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|feather1|feather2.ro" "feather2_parentConstraint1.cro"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|feather1|feather2.pim" "feather2_parentConstraint1.cpim"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|feather1|feather2.rp" "feather2_parentConstraint1.crp"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|feather1|feather2.rpt" "feather2_parentConstraint1.crt"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|feather1|feather2.jo" "feather2_parentConstraint1.cjo"
		;
connectAttr "|Niabi|master|root1|chest|neck|feather1|feather2.t" "feather2_parentConstraint1.tg[0].tt"
		;
connectAttr "|Niabi|master|root1|chest|neck|feather1|feather2.rp" "feather2_parentConstraint1.tg[0].trp"
		;
connectAttr "|Niabi|master|root1|chest|neck|feather1|feather2.rpt" "feather2_parentConstraint1.tg[0].trt"
		;
connectAttr "|Niabi|master|root1|chest|neck|feather1|feather2.r" "feather2_parentConstraint1.tg[0].tr"
		;
connectAttr "|Niabi|master|root1|chest|neck|feather1|feather2.ro" "feather2_parentConstraint1.tg[0].tro"
		;
connectAttr "|Niabi|master|root1|chest|neck|feather1|feather2.s" "feather2_parentConstraint1.tg[0].ts"
		;
connectAttr "|Niabi|master|root1|chest|neck|feather1|feather2.pm" "feather2_parentConstraint1.tg[0].tpm"
		;
connectAttr "feather2_parentConstraint1.w0" "feather2_parentConstraint1.tg[0].tw"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|feather1.ro" "feather1_parentConstraint1.cro"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|feather1.pim" "feather1_parentConstraint1.cpim"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|feather1.rp" "feather1_parentConstraint1.crp"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|feather1.rpt" "feather1_parentConstraint1.crt"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|feather1.jo" "feather1_parentConstraint1.cjo"
		;
connectAttr "|Niabi|master|root1|chest|neck|feather1.t" "feather1_parentConstraint1.tg[0].tt"
		;
connectAttr "|Niabi|master|root1|chest|neck|feather1.rp" "feather1_parentConstraint1.tg[0].trp"
		;
connectAttr "|Niabi|master|root1|chest|neck|feather1.rpt" "feather1_parentConstraint1.tg[0].trt"
		;
connectAttr "|Niabi|master|root1|chest|neck|feather1.r" "feather1_parentConstraint1.tg[0].tr"
		;
connectAttr "|Niabi|master|root1|chest|neck|feather1.ro" "feather1_parentConstraint1.tg[0].tro"
		;
connectAttr "|Niabi|master|root1|chest|neck|feather1.s" "feather1_parentConstraint1.tg[0].ts"
		;
connectAttr "|Niabi|master|root1|chest|neck|feather1.pm" "feather1_parentConstraint1.tg[0].tpm"
		;
connectAttr "feather1_parentConstraint1.w0" "feather1_parentConstraint1.tg[0].tw"
		;
connectAttr "|Niabi|master|root1|root|chest|neck.s" "|Niabi|master|root1|root|chest|neck|R_braid1.is"
		;
connectAttr "R_braid1_parentConstraint1.ctx" "|Niabi|master|root1|root|chest|neck|R_braid1.tx"
		;
connectAttr "R_braid1_parentConstraint1.cty" "|Niabi|master|root1|root|chest|neck|R_braid1.ty"
		;
connectAttr "R_braid1_parentConstraint1.ctz" "|Niabi|master|root1|root|chest|neck|R_braid1.tz"
		;
connectAttr "R_braid1_parentConstraint1.crx" "|Niabi|master|root1|root|chest|neck|R_braid1.rx"
		;
connectAttr "R_braid1_parentConstraint1.cry" "|Niabi|master|root1|root|chest|neck|R_braid1.ry"
		;
connectAttr "R_braid1_parentConstraint1.crz" "|Niabi|master|root1|root|chest|neck|R_braid1.rz"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1.s" "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2.is"
		;
connectAttr "R_braid2_parentConstraint1.ctx" "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2.tx"
		;
connectAttr "R_braid2_parentConstraint1.cty" "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2.ty"
		;
connectAttr "R_braid2_parentConstraint1.ctz" "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2.tz"
		;
connectAttr "R_braid2_parentConstraint1.crx" "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2.rx"
		;
connectAttr "R_braid2_parentConstraint1.cry" "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2.ry"
		;
connectAttr "R_braid2_parentConstraint1.crz" "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2.rz"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2.s" "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3.is"
		;
connectAttr "R_braid3_parentConstraint1.ctx" "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3.tx"
		;
connectAttr "R_braid3_parentConstraint1.cty" "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3.ty"
		;
connectAttr "R_braid3_parentConstraint1.ctz" "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3.tz"
		;
connectAttr "R_braid3_parentConstraint1.crx" "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3.rx"
		;
connectAttr "R_braid3_parentConstraint1.cry" "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3.ry"
		;
connectAttr "R_braid3_parentConstraint1.crz" "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3.rz"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3.s" "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.is"
		;
connectAttr "R_braid4_parentConstraint1.ctx" "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.tx"
		;
connectAttr "R_braid4_parentConstraint1.cty" "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.ty"
		;
connectAttr "R_braid4_parentConstraint1.ctz" "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.tz"
		;
connectAttr "R_braid4_parentConstraint1.crx" "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.rx"
		;
connectAttr "R_braid4_parentConstraint1.cry" "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.ry"
		;
connectAttr "R_braid4_parentConstraint1.crz" "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.rz"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.ro" "R_braid4_parentConstraint1.cro"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.pim" "R_braid4_parentConstraint1.cpim"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.rp" "R_braid4_parentConstraint1.crp"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.rpt" "R_braid4_parentConstraint1.crt"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.jo" "R_braid4_parentConstraint1.cjo"
		;
connectAttr "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.t" "R_braid4_parentConstraint1.tg[0].tt"
		;
connectAttr "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.rp" "R_braid4_parentConstraint1.tg[0].trp"
		;
connectAttr "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.rpt" "R_braid4_parentConstraint1.tg[0].trt"
		;
connectAttr "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.r" "R_braid4_parentConstraint1.tg[0].tr"
		;
connectAttr "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.ro" "R_braid4_parentConstraint1.tg[0].tro"
		;
connectAttr "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.s" "R_braid4_parentConstraint1.tg[0].ts"
		;
connectAttr "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.pm" "R_braid4_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_braid4_parentConstraint1.w0" "R_braid4_parentConstraint1.tg[0].tw"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3.ro" "R_braid3_parentConstraint1.cro"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3.pim" "R_braid3_parentConstraint1.cpim"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3.rp" "R_braid3_parentConstraint1.crp"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3.rpt" "R_braid3_parentConstraint1.crt"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3.jo" "R_braid3_parentConstraint1.cjo"
		;
connectAttr "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3.t" "R_braid3_parentConstraint1.tg[0].tt"
		;
connectAttr "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3.rp" "R_braid3_parentConstraint1.tg[0].trp"
		;
connectAttr "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3.rpt" "R_braid3_parentConstraint1.tg[0].trt"
		;
connectAttr "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3.r" "R_braid3_parentConstraint1.tg[0].tr"
		;
connectAttr "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3.ro" "R_braid3_parentConstraint1.tg[0].tro"
		;
connectAttr "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3.s" "R_braid3_parentConstraint1.tg[0].ts"
		;
connectAttr "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3.pm" "R_braid3_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_braid3_parentConstraint1.w0" "R_braid3_parentConstraint1.tg[0].tw"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2.ro" "R_braid2_parentConstraint1.cro"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2.pim" "R_braid2_parentConstraint1.cpim"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2.rp" "R_braid2_parentConstraint1.crp"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2.rpt" "R_braid2_parentConstraint1.crt"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2.jo" "R_braid2_parentConstraint1.cjo"
		;
connectAttr "|Niabi|master|root1|chest|neck|R_braid1|R_braid2.t" "R_braid2_parentConstraint1.tg[0].tt"
		;
connectAttr "|Niabi|master|root1|chest|neck|R_braid1|R_braid2.rp" "R_braid2_parentConstraint1.tg[0].trp"
		;
connectAttr "|Niabi|master|root1|chest|neck|R_braid1|R_braid2.rpt" "R_braid2_parentConstraint1.tg[0].trt"
		;
connectAttr "|Niabi|master|root1|chest|neck|R_braid1|R_braid2.r" "R_braid2_parentConstraint1.tg[0].tr"
		;
connectAttr "|Niabi|master|root1|chest|neck|R_braid1|R_braid2.ro" "R_braid2_parentConstraint1.tg[0].tro"
		;
connectAttr "|Niabi|master|root1|chest|neck|R_braid1|R_braid2.s" "R_braid2_parentConstraint1.tg[0].ts"
		;
connectAttr "|Niabi|master|root1|chest|neck|R_braid1|R_braid2.pm" "R_braid2_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_braid2_parentConstraint1.w0" "R_braid2_parentConstraint1.tg[0].tw"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1.ro" "R_braid1_parentConstraint1.cro"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1.pim" "R_braid1_parentConstraint1.cpim"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1.rp" "R_braid1_parentConstraint1.crp"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1.rpt" "R_braid1_parentConstraint1.crt"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1.jo" "R_braid1_parentConstraint1.cjo"
		;
connectAttr "|Niabi|master|root1|chest|neck|R_braid1.t" "R_braid1_parentConstraint1.tg[0].tt"
		;
connectAttr "|Niabi|master|root1|chest|neck|R_braid1.rp" "R_braid1_parentConstraint1.tg[0].trp"
		;
connectAttr "|Niabi|master|root1|chest|neck|R_braid1.rpt" "R_braid1_parentConstraint1.tg[0].trt"
		;
connectAttr "|Niabi|master|root1|chest|neck|R_braid1.r" "R_braid1_parentConstraint1.tg[0].tr"
		;
connectAttr "|Niabi|master|root1|chest|neck|R_braid1.ro" "R_braid1_parentConstraint1.tg[0].tro"
		;
connectAttr "|Niabi|master|root1|chest|neck|R_braid1.s" "R_braid1_parentConstraint1.tg[0].ts"
		;
connectAttr "|Niabi|master|root1|chest|neck|R_braid1.pm" "R_braid1_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_braid1_parentConstraint1.w0" "R_braid1_parentConstraint1.tg[0].tw"
		;
connectAttr "|Niabi|master|root1|root|chest|neck.s" "|Niabi|master|root1|root|chest|neck|L_braid1.is"
		;
connectAttr "L_braid1_parentConstraint1.ctx" "|Niabi|master|root1|root|chest|neck|L_braid1.tx"
		;
connectAttr "L_braid1_parentConstraint1.cty" "|Niabi|master|root1|root|chest|neck|L_braid1.ty"
		;
connectAttr "L_braid1_parentConstraint1.ctz" "|Niabi|master|root1|root|chest|neck|L_braid1.tz"
		;
connectAttr "L_braid1_parentConstraint1.crx" "|Niabi|master|root1|root|chest|neck|L_braid1.rx"
		;
connectAttr "L_braid1_parentConstraint1.cry" "|Niabi|master|root1|root|chest|neck|L_braid1.ry"
		;
connectAttr "L_braid1_parentConstraint1.crz" "|Niabi|master|root1|root|chest|neck|L_braid1.rz"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1.s" "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2.is"
		;
connectAttr "L_braid2_parentConstraint1.ctx" "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2.tx"
		;
connectAttr "L_braid2_parentConstraint1.cty" "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2.ty"
		;
connectAttr "L_braid2_parentConstraint1.ctz" "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2.tz"
		;
connectAttr "L_braid2_parentConstraint1.crx" "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2.rx"
		;
connectAttr "L_braid2_parentConstraint1.cry" "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2.ry"
		;
connectAttr "L_braid2_parentConstraint1.crz" "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2.rz"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2.s" "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3.is"
		;
connectAttr "L_braid3_parentConstraint1.ctx" "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3.tx"
		;
connectAttr "L_braid3_parentConstraint1.cty" "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3.ty"
		;
connectAttr "L_braid3_parentConstraint1.ctz" "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3.tz"
		;
connectAttr "L_braid3_parentConstraint1.crx" "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3.rx"
		;
connectAttr "L_braid3_parentConstraint1.cry" "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3.ry"
		;
connectAttr "L_braid3_parentConstraint1.crz" "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3.rz"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3.s" "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.is"
		;
connectAttr "L_braid4_parentConstraint1.ctx" "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.tx"
		;
connectAttr "L_braid4_parentConstraint1.cty" "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.ty"
		;
connectAttr "L_braid4_parentConstraint1.ctz" "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.tz"
		;
connectAttr "L_braid4_parentConstraint1.crx" "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.rx"
		;
connectAttr "L_braid4_parentConstraint1.cry" "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.ry"
		;
connectAttr "L_braid4_parentConstraint1.crz" "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.rz"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.ro" "L_braid4_parentConstraint1.cro"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.pim" "L_braid4_parentConstraint1.cpim"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.rp" "L_braid4_parentConstraint1.crp"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.rpt" "L_braid4_parentConstraint1.crt"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.jo" "L_braid4_parentConstraint1.cjo"
		;
connectAttr "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.t" "L_braid4_parentConstraint1.tg[0].tt"
		;
connectAttr "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.rp" "L_braid4_parentConstraint1.tg[0].trp"
		;
connectAttr "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.rpt" "L_braid4_parentConstraint1.tg[0].trt"
		;
connectAttr "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.r" "L_braid4_parentConstraint1.tg[0].tr"
		;
connectAttr "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.ro" "L_braid4_parentConstraint1.tg[0].tro"
		;
connectAttr "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.s" "L_braid4_parentConstraint1.tg[0].ts"
		;
connectAttr "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.pm" "L_braid4_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_braid4_parentConstraint1.w0" "L_braid4_parentConstraint1.tg[0].tw"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3.ro" "L_braid3_parentConstraint1.cro"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3.pim" "L_braid3_parentConstraint1.cpim"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3.rp" "L_braid3_parentConstraint1.crp"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3.rpt" "L_braid3_parentConstraint1.crt"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3.jo" "L_braid3_parentConstraint1.cjo"
		;
connectAttr "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3.t" "L_braid3_parentConstraint1.tg[0].tt"
		;
connectAttr "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3.rp" "L_braid3_parentConstraint1.tg[0].trp"
		;
connectAttr "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3.rpt" "L_braid3_parentConstraint1.tg[0].trt"
		;
connectAttr "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3.r" "L_braid3_parentConstraint1.tg[0].tr"
		;
connectAttr "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3.ro" "L_braid3_parentConstraint1.tg[0].tro"
		;
connectAttr "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3.s" "L_braid3_parentConstraint1.tg[0].ts"
		;
connectAttr "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3.pm" "L_braid3_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_braid3_parentConstraint1.w0" "L_braid3_parentConstraint1.tg[0].tw"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2.ro" "L_braid2_parentConstraint1.cro"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2.pim" "L_braid2_parentConstraint1.cpim"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2.rp" "L_braid2_parentConstraint1.crp"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2.rpt" "L_braid2_parentConstraint1.crt"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2.jo" "L_braid2_parentConstraint1.cjo"
		;
connectAttr "|Niabi|master|root1|chest|neck|L_braid1|L_braid2.t" "L_braid2_parentConstraint1.tg[0].tt"
		;
connectAttr "|Niabi|master|root1|chest|neck|L_braid1|L_braid2.rp" "L_braid2_parentConstraint1.tg[0].trp"
		;
connectAttr "|Niabi|master|root1|chest|neck|L_braid1|L_braid2.rpt" "L_braid2_parentConstraint1.tg[0].trt"
		;
connectAttr "|Niabi|master|root1|chest|neck|L_braid1|L_braid2.r" "L_braid2_parentConstraint1.tg[0].tr"
		;
connectAttr "|Niabi|master|root1|chest|neck|L_braid1|L_braid2.ro" "L_braid2_parentConstraint1.tg[0].tro"
		;
connectAttr "|Niabi|master|root1|chest|neck|L_braid1|L_braid2.s" "L_braid2_parentConstraint1.tg[0].ts"
		;
connectAttr "|Niabi|master|root1|chest|neck|L_braid1|L_braid2.pm" "L_braid2_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_braid2_parentConstraint1.w0" "L_braid2_parentConstraint1.tg[0].tw"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1.ro" "L_braid1_parentConstraint1.cro"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1.pim" "L_braid1_parentConstraint1.cpim"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1.rp" "L_braid1_parentConstraint1.crp"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1.rpt" "L_braid1_parentConstraint1.crt"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1.jo" "L_braid1_parentConstraint1.cjo"
		;
connectAttr "|Niabi|master|root1|chest|neck|L_braid1.t" "L_braid1_parentConstraint1.tg[0].tt"
		;
connectAttr "|Niabi|master|root1|chest|neck|L_braid1.rp" "L_braid1_parentConstraint1.tg[0].trp"
		;
connectAttr "|Niabi|master|root1|chest|neck|L_braid1.rpt" "L_braid1_parentConstraint1.tg[0].trt"
		;
connectAttr "|Niabi|master|root1|chest|neck|L_braid1.r" "L_braid1_parentConstraint1.tg[0].tr"
		;
connectAttr "|Niabi|master|root1|chest|neck|L_braid1.ro" "L_braid1_parentConstraint1.tg[0].tro"
		;
connectAttr "|Niabi|master|root1|chest|neck|L_braid1.s" "L_braid1_parentConstraint1.tg[0].ts"
		;
connectAttr "|Niabi|master|root1|chest|neck|L_braid1.pm" "L_braid1_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_braid1_parentConstraint1.w0" "L_braid1_parentConstraint1.tg[0].tw"
		;
connectAttr "|Niabi|master|root1|root|chest|neck.ro" "neck_parentConstraint1.cro"
		;
connectAttr "|Niabi|master|root1|root|chest|neck.pim" "neck_parentConstraint1.cpim"
		;
connectAttr "|Niabi|master|root1|root|chest|neck.rp" "neck_parentConstraint1.crp"
		;
connectAttr "|Niabi|master|root1|root|chest|neck.rpt" "neck_parentConstraint1.crt"
		;
connectAttr "|Niabi|master|root1|root|chest|neck.jo" "neck_parentConstraint1.cjo"
		;
connectAttr "|Niabi|master|root1|chest|neck.t" "neck_parentConstraint1.tg[0].tt"
		;
connectAttr "|Niabi|master|root1|chest|neck.rp" "neck_parentConstraint1.tg[0].trp"
		;
connectAttr "|Niabi|master|root1|chest|neck.rpt" "neck_parentConstraint1.tg[0].trt"
		;
connectAttr "|Niabi|master|root1|chest|neck.r" "neck_parentConstraint1.tg[0].tr"
		;
connectAttr "|Niabi|master|root1|chest|neck.ro" "neck_parentConstraint1.tg[0].tro"
		;
connectAttr "|Niabi|master|root1|chest|neck.s" "neck_parentConstraint1.tg[0].ts"
		;
connectAttr "|Niabi|master|root1|chest|neck.pm" "neck_parentConstraint1.tg[0].tpm"
		;
connectAttr "neck_parentConstraint1.w0" "neck_parentConstraint1.tg[0].tw";
connectAttr "|Niabi|master|root1|root|chest.s" "|Niabi|master|root1|root|chest|L_shoulder.is"
		;
connectAttr "L_shoulder_parentConstraint1.ctx" "|Niabi|master|root1|root|chest|L_shoulder.tx"
		;
connectAttr "L_shoulder_parentConstraint1.cty" "|Niabi|master|root1|root|chest|L_shoulder.ty"
		;
connectAttr "L_shoulder_parentConstraint1.ctz" "|Niabi|master|root1|root|chest|L_shoulder.tz"
		;
connectAttr "L_shoulder_parentConstraint1.crx" "|Niabi|master|root1|root|chest|L_shoulder.rx"
		;
connectAttr "L_shoulder_parentConstraint1.cry" "|Niabi|master|root1|root|chest|L_shoulder.ry"
		;
connectAttr "L_shoulder_parentConstraint1.crz" "|Niabi|master|root1|root|chest|L_shoulder.rz"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder.s" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow.is"
		;
connectAttr "L_elbow_parentConstraint1.ctx" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow.tx"
		;
connectAttr "L_elbow_parentConstraint1.cty" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow.ty"
		;
connectAttr "L_elbow_parentConstraint1.ctz" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow.tz"
		;
connectAttr "L_elbow_parentConstraint1.crx" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow.rx"
		;
connectAttr "L_elbow_parentConstraint1.cry" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow.ry"
		;
connectAttr "L_elbow_parentConstraint1.crz" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow.rz"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow.s" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.is"
		;
connectAttr "L_wrist_parentConstraint1.ctx" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.tx"
		;
connectAttr "L_wrist_parentConstraint1.cty" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.ty"
		;
connectAttr "L_wrist_parentConstraint1.ctz" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.tz"
		;
connectAttr "L_wrist_parentConstraint1.crx" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.rx"
		;
connectAttr "L_wrist_parentConstraint1.cry" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.ry"
		;
connectAttr "L_wrist_parentConstraint1.crz" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.rz"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.s" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.is"
		;
connectAttr "L_fingers1_parentConstraint1.ctx" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.tx"
		;
connectAttr "L_fingers1_parentConstraint1.cty" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.ty"
		;
connectAttr "L_fingers1_parentConstraint1.ctz" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.tz"
		;
connectAttr "L_fingers1_parentConstraint1.crx" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.rx"
		;
connectAttr "L_fingers1_parentConstraint1.cry" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.ry"
		;
connectAttr "L_fingers1_parentConstraint1.crz" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.rz"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.s" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.is"
		;
connectAttr "L_fingers2_parentConstraint1.ctx" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.tx"
		;
connectAttr "L_fingers2_parentConstraint1.cty" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.ty"
		;
connectAttr "L_fingers2_parentConstraint1.ctz" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.tz"
		;
connectAttr "L_fingers2_parentConstraint1.crx" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.rx"
		;
connectAttr "L_fingers2_parentConstraint1.cry" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.ry"
		;
connectAttr "L_fingers2_parentConstraint1.crz" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.rz"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.ro" "L_fingers2_parentConstraint1.cro"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.pim" "L_fingers2_parentConstraint1.cpim"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.rp" "L_fingers2_parentConstraint1.crp"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.rpt" "L_fingers2_parentConstraint1.crt"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.jo" "L_fingers2_parentConstraint1.cjo"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.t" "L_fingers2_parentConstraint1.tg[0].tt"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.rp" "L_fingers2_parentConstraint1.tg[0].trp"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.rpt" "L_fingers2_parentConstraint1.tg[0].trt"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.r" "L_fingers2_parentConstraint1.tg[0].tr"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.ro" "L_fingers2_parentConstraint1.tg[0].tro"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.s" "L_fingers2_parentConstraint1.tg[0].ts"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.pm" "L_fingers2_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_fingers2_parentConstraint1.w0" "L_fingers2_parentConstraint1.tg[0].tw"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.ro" "L_fingers1_parentConstraint1.cro"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.pim" "L_fingers1_parentConstraint1.cpim"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.rp" "L_fingers1_parentConstraint1.crp"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.rpt" "L_fingers1_parentConstraint1.crt"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.jo" "L_fingers1_parentConstraint1.cjo"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.t" "L_fingers1_parentConstraint1.tg[0].tt"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.rp" "L_fingers1_parentConstraint1.tg[0].trp"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.rpt" "L_fingers1_parentConstraint1.tg[0].trt"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.r" "L_fingers1_parentConstraint1.tg[0].tr"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.ro" "L_fingers1_parentConstraint1.tg[0].tro"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.s" "L_fingers1_parentConstraint1.tg[0].ts"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.pm" "L_fingers1_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_fingers1_parentConstraint1.w0" "L_fingers1_parentConstraint1.tg[0].tw"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.s" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.is"
		;
connectAttr "L_thumb_parentConstraint1.ctx" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.tx"
		;
connectAttr "L_thumb_parentConstraint1.cty" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.ty"
		;
connectAttr "L_thumb_parentConstraint1.ctz" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.tz"
		;
connectAttr "L_thumb_parentConstraint1.crx" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.rx"
		;
connectAttr "L_thumb_parentConstraint1.cry" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.ry"
		;
connectAttr "L_thumb_parentConstraint1.crz" "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.rz"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.ro" "L_thumb_parentConstraint1.cro"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.pim" "L_thumb_parentConstraint1.cpim"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.rp" "L_thumb_parentConstraint1.crp"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.rpt" "L_thumb_parentConstraint1.crt"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.jo" "L_thumb_parentConstraint1.cjo"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.t" "L_thumb_parentConstraint1.tg[0].tt"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.rp" "L_thumb_parentConstraint1.tg[0].trp"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.rpt" "L_thumb_parentConstraint1.tg[0].trt"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.r" "L_thumb_parentConstraint1.tg[0].tr"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.ro" "L_thumb_parentConstraint1.tg[0].tro"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.s" "L_thumb_parentConstraint1.tg[0].ts"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.pm" "L_thumb_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_thumb_parentConstraint1.w0" "L_thumb_parentConstraint1.tg[0].tw";
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.ro" "L_wrist_parentConstraint1.cro"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.pim" "L_wrist_parentConstraint1.cpim"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.rp" "L_wrist_parentConstraint1.crp"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.rpt" "L_wrist_parentConstraint1.crt"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.jo" "L_wrist_parentConstraint1.cjo"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist.t" "L_wrist_parentConstraint1.tg[0].tt"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist.rp" "L_wrist_parentConstraint1.tg[0].trp"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist.rpt" "L_wrist_parentConstraint1.tg[0].trt"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist.r" "L_wrist_parentConstraint1.tg[0].tr"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist.ro" "L_wrist_parentConstraint1.tg[0].tro"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist.s" "L_wrist_parentConstraint1.tg[0].ts"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist.pm" "L_wrist_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_wrist_parentConstraint1.w0" "L_wrist_parentConstraint1.tg[0].tw";
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow.ro" "L_elbow_parentConstraint1.cro"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow.pim" "L_elbow_parentConstraint1.cpim"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow.rp" "L_elbow_parentConstraint1.crp"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow.rpt" "L_elbow_parentConstraint1.crt"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow.jo" "L_elbow_parentConstraint1.cjo"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow.t" "L_elbow_parentConstraint1.tg[0].tt"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow.rp" "L_elbow_parentConstraint1.tg[0].trp"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow.rpt" "L_elbow_parentConstraint1.tg[0].trt"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow.r" "L_elbow_parentConstraint1.tg[0].tr"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow.ro" "L_elbow_parentConstraint1.tg[0].tro"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow.s" "L_elbow_parentConstraint1.tg[0].ts"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow.pm" "L_elbow_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_elbow_parentConstraint1.w0" "L_elbow_parentConstraint1.tg[0].tw";
connectAttr "|Niabi|master|root1|root|chest|L_shoulder.ro" "L_shoulder_parentConstraint1.cro"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder.pim" "L_shoulder_parentConstraint1.cpim"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder.rp" "L_shoulder_parentConstraint1.crp"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder.rpt" "L_shoulder_parentConstraint1.crt"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder.jo" "L_shoulder_parentConstraint1.cjo"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder.t" "L_shoulder_parentConstraint1.tg[0].tt"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder.rp" "L_shoulder_parentConstraint1.tg[0].trp"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder.rpt" "L_shoulder_parentConstraint1.tg[0].trt"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder.r" "L_shoulder_parentConstraint1.tg[0].tr"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder.ro" "L_shoulder_parentConstraint1.tg[0].tro"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder.s" "L_shoulder_parentConstraint1.tg[0].ts"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder.pm" "L_shoulder_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_shoulder_parentConstraint1.w0" "L_shoulder_parentConstraint1.tg[0].tw"
		;
connectAttr "|Niabi|master|root1|root|chest.s" "R_shoulder1.is";
connectAttr "R_shoulder1_parentConstraint1.ctx" "R_shoulder1.tx";
connectAttr "R_shoulder1_parentConstraint1.cty" "R_shoulder1.ty";
connectAttr "R_shoulder1_parentConstraint1.ctz" "R_shoulder1.tz";
connectAttr "R_shoulder1_parentConstraint1.crx" "R_shoulder1.rx";
connectAttr "R_shoulder1_parentConstraint1.cry" "R_shoulder1.ry";
connectAttr "R_shoulder1_parentConstraint1.crz" "R_shoulder1.rz";
connectAttr "R_shoulder1.s" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow.is"
		;
connectAttr "R_elbow_parentConstraint1.ctx" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow.tx"
		;
connectAttr "R_elbow_parentConstraint1.cty" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow.ty"
		;
connectAttr "R_elbow_parentConstraint1.ctz" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow.tz"
		;
connectAttr "R_elbow_parentConstraint1.crx" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow.rx"
		;
connectAttr "R_elbow_parentConstraint1.cry" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow.ry"
		;
connectAttr "R_elbow_parentConstraint1.crz" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow.rz"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow.s" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist.is"
		;
connectAttr "R_wrist_parentConstraint1.ctx" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist.tx"
		;
connectAttr "R_wrist_parentConstraint1.cty" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist.ty"
		;
connectAttr "R_wrist_parentConstraint1.ctz" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist.tz"
		;
connectAttr "R_wrist_parentConstraint1.crx" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist.rx"
		;
connectAttr "R_wrist_parentConstraint1.cry" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist.ry"
		;
connectAttr "R_wrist_parentConstraint1.crz" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist.rz"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist.s" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1.is"
		;
connectAttr "R_fingers1_parentConstraint1.ctx" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1.tx"
		;
connectAttr "R_fingers1_parentConstraint1.cty" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1.ty"
		;
connectAttr "R_fingers1_parentConstraint1.ctz" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1.tz"
		;
connectAttr "R_fingers1_parentConstraint1.crx" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1.rx"
		;
connectAttr "R_fingers1_parentConstraint1.cry" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1.ry"
		;
connectAttr "R_fingers1_parentConstraint1.crz" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1.rz"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1.s" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1|R_fingers2.is"
		;
connectAttr "R_fingers2_parentConstraint1.ctx" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1|R_fingers2.tx"
		;
connectAttr "R_fingers2_parentConstraint1.cty" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1|R_fingers2.ty"
		;
connectAttr "R_fingers2_parentConstraint1.ctz" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1|R_fingers2.tz"
		;
connectAttr "R_fingers2_parentConstraint1.crx" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1|R_fingers2.rx"
		;
connectAttr "R_fingers2_parentConstraint1.cry" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1|R_fingers2.ry"
		;
connectAttr "R_fingers2_parentConstraint1.crz" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1|R_fingers2.rz"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1|R_fingers2.ro" "R_fingers2_parentConstraint1.cro"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1|R_fingers2.pim" "R_fingers2_parentConstraint1.cpim"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1|R_fingers2.rp" "R_fingers2_parentConstraint1.crp"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1|R_fingers2.rpt" "R_fingers2_parentConstraint1.crt"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1|R_fingers2.jo" "R_fingers2_parentConstraint1.cjo"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.t" "R_fingers2_parentConstraint1.tg[0].tt"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.rp" "R_fingers2_parentConstraint1.tg[0].trp"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.rpt" "R_fingers2_parentConstraint1.tg[0].trt"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.r" "R_fingers2_parentConstraint1.tg[0].tr"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.ro" "R_fingers2_parentConstraint1.tg[0].tro"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.s" "R_fingers2_parentConstraint1.tg[0].ts"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.pm" "R_fingers2_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_fingers2_parentConstraint1.w0" "R_fingers2_parentConstraint1.tg[0].tw"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1.ro" "R_fingers1_parentConstraint1.cro"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1.pim" "R_fingers1_parentConstraint1.cpim"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1.rp" "R_fingers1_parentConstraint1.crp"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1.rpt" "R_fingers1_parentConstraint1.crt"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1.jo" "R_fingers1_parentConstraint1.cjo"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.t" "R_fingers1_parentConstraint1.tg[0].tt"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.rp" "R_fingers1_parentConstraint1.tg[0].trp"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.rpt" "R_fingers1_parentConstraint1.tg[0].trt"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.r" "R_fingers1_parentConstraint1.tg[0].tr"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.ro" "R_fingers1_parentConstraint1.tg[0].tro"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.s" "R_fingers1_parentConstraint1.tg[0].ts"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.pm" "R_fingers1_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_fingers1_parentConstraint1.w0" "R_fingers1_parentConstraint1.tg[0].tw"
		;
connectAttr "bow_visibility.o" "bow.v";
connectAttr "bow_translateX.o" "bow.tx";
connectAttr "bow_translateY.o" "bow.ty";
connectAttr "bow_translateZ.o" "bow.tz";
connectAttr "bow_rotateX.o" "bow.rx";
connectAttr "bow_rotateY.o" "bow.ry";
connectAttr "bow_rotateZ.o" "bow.rz";
connectAttr "bow_scaleX.o" "bow.sx";
connectAttr "bow_scaleY.o" "bow.sy";
connectAttr "bow_scaleZ.o" "bow.sz";
connectAttr "groupId1.id" "bowShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "bowShape.iog.og[0].gco";
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist.s" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_thumb.is"
		;
connectAttr "R_thumb_parentConstraint1.ctx" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_thumb.tx"
		;
connectAttr "R_thumb_parentConstraint1.cty" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_thumb.ty"
		;
connectAttr "R_thumb_parentConstraint1.ctz" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_thumb.tz"
		;
connectAttr "R_thumb_parentConstraint1.crx" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_thumb.rx"
		;
connectAttr "R_thumb_parentConstraint1.cry" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_thumb.ry"
		;
connectAttr "R_thumb_parentConstraint1.crz" "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_thumb.rz"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_thumb.ro" "R_thumb_parentConstraint1.cro"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_thumb.pim" "R_thumb_parentConstraint1.cpim"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_thumb.rp" "R_thumb_parentConstraint1.crp"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_thumb.rpt" "R_thumb_parentConstraint1.crt"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_thumb.jo" "R_thumb_parentConstraint1.cjo"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.t" "R_thumb_parentConstraint1.tg[0].tt"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.rp" "R_thumb_parentConstraint1.tg[0].trp"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.rpt" "R_thumb_parentConstraint1.tg[0].trt"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.r" "R_thumb_parentConstraint1.tg[0].tr"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.ro" "R_thumb_parentConstraint1.tg[0].tro"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.s" "R_thumb_parentConstraint1.tg[0].ts"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.pm" "R_thumb_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_thumb_parentConstraint1.w0" "R_thumb_parentConstraint1.tg[0].tw";
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist.ro" "R_wrist_parentConstraint1.cro"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist.pim" "R_wrist_parentConstraint1.cpim"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist.rp" "R_wrist_parentConstraint1.crp"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist.rpt" "R_wrist_parentConstraint1.crt"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist.jo" "R_wrist_parentConstraint1.cjo"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist.t" "R_wrist_parentConstraint1.tg[0].tt"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist.rp" "R_wrist_parentConstraint1.tg[0].trp"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist.rpt" "R_wrist_parentConstraint1.tg[0].trt"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist.r" "R_wrist_parentConstraint1.tg[0].tr"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist.ro" "R_wrist_parentConstraint1.tg[0].tro"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist.s" "R_wrist_parentConstraint1.tg[0].ts"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist.pm" "R_wrist_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_wrist_parentConstraint1.w0" "R_wrist_parentConstraint1.tg[0].tw";
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow.ro" "R_elbow_parentConstraint1.cro"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow.pim" "R_elbow_parentConstraint1.cpim"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow.rp" "R_elbow_parentConstraint1.crp"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow.rpt" "R_elbow_parentConstraint1.crt"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow.jo" "R_elbow_parentConstraint1.cjo"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow.t" "R_elbow_parentConstraint1.tg[0].tt"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow.rp" "R_elbow_parentConstraint1.tg[0].trp"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow.rpt" "R_elbow_parentConstraint1.tg[0].trt"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow.r" "R_elbow_parentConstraint1.tg[0].tr"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow.ro" "R_elbow_parentConstraint1.tg[0].tro"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow.s" "R_elbow_parentConstraint1.tg[0].ts"
		;
connectAttr "|Niabi|master|root1|chest|R_shoulder|R_elbow.pm" "R_elbow_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_elbow_parentConstraint1.w0" "R_elbow_parentConstraint1.tg[0].tw";
connectAttr "R_shoulder1.ro" "R_shoulder1_parentConstraint1.cro";
connectAttr "R_shoulder1.pim" "R_shoulder1_parentConstraint1.cpim";
connectAttr "R_shoulder1.rp" "R_shoulder1_parentConstraint1.crp";
connectAttr "R_shoulder1.rpt" "R_shoulder1_parentConstraint1.crt";
connectAttr "R_shoulder1.jo" "R_shoulder1_parentConstraint1.cjo";
connectAttr "R_shoulder.t" "R_shoulder1_parentConstraint1.tg[0].tt";
connectAttr "R_shoulder.rp" "R_shoulder1_parentConstraint1.tg[0].trp";
connectAttr "R_shoulder.rpt" "R_shoulder1_parentConstraint1.tg[0].trt";
connectAttr "R_shoulder.r" "R_shoulder1_parentConstraint1.tg[0].tr";
connectAttr "R_shoulder.ro" "R_shoulder1_parentConstraint1.tg[0].tro";
connectAttr "R_shoulder.s" "R_shoulder1_parentConstraint1.tg[0].ts";
connectAttr "R_shoulder.pm" "R_shoulder1_parentConstraint1.tg[0].tpm";
connectAttr "R_shoulder1_parentConstraint1.w0" "R_shoulder1_parentConstraint1.tg[0].tw"
		;
connectAttr "|Niabi|master|root1|root|chest.ro" "chest_parentConstraint1.cro";
connectAttr "|Niabi|master|root1|root|chest.pim" "chest_parentConstraint1.cpim";
connectAttr "|Niabi|master|root1|root|chest.rp" "chest_parentConstraint1.crp";
connectAttr "|Niabi|master|root1|root|chest.rpt" "chest_parentConstraint1.crt";
connectAttr "|Niabi|master|root1|root|chest.jo" "chest_parentConstraint1.cjo";
connectAttr "|Niabi|master|root1|chest.t" "chest_parentConstraint1.tg[0].tt";
connectAttr "|Niabi|master|root1|chest.rp" "chest_parentConstraint1.tg[0].trp";
connectAttr "|Niabi|master|root1|chest.rpt" "chest_parentConstraint1.tg[0].trt";
connectAttr "|Niabi|master|root1|chest.r" "chest_parentConstraint1.tg[0].tr";
connectAttr "|Niabi|master|root1|chest.ro" "chest_parentConstraint1.tg[0].tro";
connectAttr "|Niabi|master|root1|chest.s" "chest_parentConstraint1.tg[0].ts";
connectAttr "|Niabi|master|root1|chest.pm" "chest_parentConstraint1.tg[0].tpm";
connectAttr "chest_parentConstraint1.w0" "chest_parentConstraint1.tg[0].tw";
connectAttr "root.s" "L_Leg.is";
connectAttr "L_Leg.s" "|Niabi|master|root1|root|L_Leg|L_knee.is";
connectAttr "|Niabi|master|root1|root|L_Leg|L_knee.s" "L_ankle.is";
connectAttr "L_ankle.s" "|Niabi|master|root1|root|L_Leg|L_knee|L_ankle|L_foot.is"
		;
connectAttr "|Niabi|master|root1|root|L_Leg|L_knee|L_ankle|L_foot.tx" "effector2.tx"
		;
connectAttr "|Niabi|master|root1|root|L_Leg|L_knee|L_ankle|L_foot.ty" "effector2.ty"
		;
connectAttr "|Niabi|master|root1|root|L_Leg|L_knee|L_ankle|L_foot.tz" "effector2.tz"
		;
connectAttr "L_ankle.tx" "effector1.tx";
connectAttr "L_ankle.ty" "effector1.ty";
connectAttr "L_ankle.tz" "effector1.tz";
connectAttr "root.s" "R_Leg.is";
connectAttr "R_Leg.s" "R_knee.is";
connectAttr "R_knee.s" "R_ankle.is";
connectAttr "R_ankle.s" "|Niabi|master|root1|root|R_Leg|R_knee|R_ankle|R_foot.is"
		;
connectAttr "|Niabi|master|root1|root|R_Leg|R_knee|R_ankle|R_foot.tx" "effector4.tx"
		;
connectAttr "|Niabi|master|root1|root|R_Leg|R_knee|R_ankle|R_foot.ty" "effector4.ty"
		;
connectAttr "|Niabi|master|root1|root|R_Leg|R_knee|R_ankle|R_foot.tz" "effector4.tz"
		;
connectAttr "R_ankle.tx" "effector3.tx";
connectAttr "R_ankle.ty" "effector3.ty";
connectAttr "R_ankle.tz" "effector3.tz";
connectAttr "chest_translateX.o" "|Niabi|master|root1|chest.tx";
connectAttr "chest_translateY.o" "|Niabi|master|root1|chest.ty";
connectAttr "chest_translateZ.o" "|Niabi|master|root1|chest.tz";
connectAttr "chest_rotateX.o" "|Niabi|master|root1|chest.rx";
connectAttr "chest_rotateY.o" "|Niabi|master|root1|chest.ry";
connectAttr "chest_rotateZ.o" "|Niabi|master|root1|chest.rz";
connectAttr "chest_scaleX.o" "|Niabi|master|root1|chest.sx";
connectAttr "chest_scaleY.o" "|Niabi|master|root1|chest.sy";
connectAttr "chest_scaleZ.o" "|Niabi|master|root1|chest.sz";
connectAttr "chest_visibility.o" "|Niabi|master|root1|chest.v";
connectAttr "L_shoulder_translateX.o" "|Niabi|master|root1|chest|L_shoulder.tx";
connectAttr "L_shoulder_translateY.o" "|Niabi|master|root1|chest|L_shoulder.ty";
connectAttr "L_shoulder_translateZ.o" "|Niabi|master|root1|chest|L_shoulder.tz";
connectAttr "L_shoulder_rotateX.o" "|Niabi|master|root1|chest|L_shoulder.rx";
connectAttr "L_shoulder_rotateY.o" "|Niabi|master|root1|chest|L_shoulder.ry";
connectAttr "L_shoulder_rotateZ.o" "|Niabi|master|root1|chest|L_shoulder.rz";
connectAttr "L_shoulder_scaleX.o" "|Niabi|master|root1|chest|L_shoulder.sx";
connectAttr "L_shoulder_scaleY.o" "|Niabi|master|root1|chest|L_shoulder.sy";
connectAttr "L_shoulder_scaleZ.o" "|Niabi|master|root1|chest|L_shoulder.sz";
connectAttr "L_shoulder_visibility.o" "|Niabi|master|root1|chest|L_shoulder.v";
connectAttr "L_elbow_translateX.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow.tx"
		;
connectAttr "L_elbow_translateY.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow.ty"
		;
connectAttr "L_elbow_translateZ.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow.tz"
		;
connectAttr "L_elbow_rotateX.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow.rx"
		;
connectAttr "L_elbow_rotateY.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow.ry"
		;
connectAttr "L_elbow_rotateZ.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow.rz"
		;
connectAttr "L_elbow_scaleX.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow.sx"
		;
connectAttr "L_elbow_scaleY.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow.sy"
		;
connectAttr "L_elbow_scaleZ.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow.sz"
		;
connectAttr "L_elbow_visibility.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow.v"
		;
connectAttr "L_wrist_Arrow.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist.Arrow"
		;
connectAttr "L_wrist_translateX.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist.tx"
		;
connectAttr "L_wrist_translateY.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist.ty"
		;
connectAttr "L_wrist_translateZ.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist.tz"
		;
connectAttr "L_wrist_rotateX.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist.rx"
		;
connectAttr "L_wrist_rotateY.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist.ry"
		;
connectAttr "L_wrist_rotateZ.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist.rz"
		;
connectAttr "L_wrist_scaleX.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist.sx"
		;
connectAttr "L_wrist_scaleY.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist.sy"
		;
connectAttr "L_wrist_scaleZ.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist.sz"
		;
connectAttr "L_wrist_visibility.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist.v"
		;
connectAttr "L_fingers1_translateX.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.tx"
		;
connectAttr "L_fingers1_translateY.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.ty"
		;
connectAttr "L_fingers1_translateZ.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.tz"
		;
connectAttr "L_fingers1_rotateX.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.rx"
		;
connectAttr "L_fingers1_rotateY.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.ry"
		;
connectAttr "L_fingers1_rotateZ.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.rz"
		;
connectAttr "L_fingers1_scaleX.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.sx"
		;
connectAttr "L_fingers1_scaleY.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.sy"
		;
connectAttr "L_fingers1_scaleZ.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.sz"
		;
connectAttr "L_fingers1_visibility.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.v"
		;
connectAttr "L_fingers2_translateX.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.tx"
		;
connectAttr "L_fingers2_translateY.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.ty"
		;
connectAttr "L_fingers2_translateZ.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.tz"
		;
connectAttr "L_fingers2_rotateX.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.rx"
		;
connectAttr "L_fingers2_rotateY.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.ry"
		;
connectAttr "L_fingers2_rotateZ.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.rz"
		;
connectAttr "L_fingers2_scaleX.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.sx"
		;
connectAttr "L_fingers2_scaleY.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.sy"
		;
connectAttr "L_fingers2_scaleZ.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.sz"
		;
connectAttr "L_fingers2_visibility.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.v"
		;
connectAttr "L_thumb_translateX.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.tx"
		;
connectAttr "L_thumb_translateY.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.ty"
		;
connectAttr "L_thumb_translateZ.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.tz"
		;
connectAttr "L_thumb_rotateX.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.rx"
		;
connectAttr "L_thumb_rotateY.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.ry"
		;
connectAttr "L_thumb_rotateZ.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.rz"
		;
connectAttr "L_thumb_scaleX.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.sx"
		;
connectAttr "L_thumb_scaleY.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.sy"
		;
connectAttr "L_thumb_scaleZ.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.sz"
		;
connectAttr "L_thumb_visibility.o" "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist|L_thumb.v"
		;
connectAttr "R_shoulder_translateX.o" "R_shoulder.tx";
connectAttr "R_shoulder_translateY.o" "R_shoulder.ty";
connectAttr "R_shoulder_translateZ.o" "R_shoulder.tz";
connectAttr "R_shoulder_rotateX.o" "R_shoulder.rx";
connectAttr "R_shoulder_rotateY.o" "R_shoulder.ry";
connectAttr "R_shoulder_rotateZ.o" "R_shoulder.rz";
connectAttr "R_shoulder_scaleX.o" "R_shoulder.sx";
connectAttr "R_shoulder_scaleY.o" "R_shoulder.sy";
connectAttr "R_shoulder_scaleZ.o" "R_shoulder.sz";
connectAttr "R_shoulder_visibility.o" "R_shoulder.v";
connectAttr "R_elbow_translateX.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow.tx"
		;
connectAttr "R_elbow_translateY.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow.ty"
		;
connectAttr "R_elbow_translateZ.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow.tz"
		;
connectAttr "R_elbow_rotateX.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow.rx"
		;
connectAttr "R_elbow_rotateY.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow.ry"
		;
connectAttr "R_elbow_rotateZ.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow.rz"
		;
connectAttr "R_elbow_scaleX.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow.sx"
		;
connectAttr "R_elbow_scaleY.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow.sy"
		;
connectAttr "R_elbow_scaleZ.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow.sz"
		;
connectAttr "R_elbow_visibility.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow.v"
		;
connectAttr "R_wrist_translateX.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist.tx"
		;
connectAttr "R_wrist_translateY.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist.ty"
		;
connectAttr "R_wrist_translateZ.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist.tz"
		;
connectAttr "R_wrist_rotateX.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist.rx"
		;
connectAttr "R_wrist_rotateY.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist.ry"
		;
connectAttr "R_wrist_rotateZ.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist.rz"
		;
connectAttr "R_wrist_scaleX.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist.sx"
		;
connectAttr "R_wrist_scaleY.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist.sy"
		;
connectAttr "R_wrist_scaleZ.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist.sz"
		;
connectAttr "R_wrist_visibility.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist.v"
		;
connectAttr "R_fingers1_translateX.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.tx"
		;
connectAttr "R_fingers1_translateY.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.ty"
		;
connectAttr "R_fingers1_translateZ.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.tz"
		;
connectAttr "R_fingers1_rotateX.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.rx"
		;
connectAttr "R_fingers1_rotateY.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.ry"
		;
connectAttr "R_fingers1_rotateZ.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.rz"
		;
connectAttr "R_fingers1_scaleX.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.sx"
		;
connectAttr "R_fingers1_scaleY.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.sy"
		;
connectAttr "R_fingers1_scaleZ.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.sz"
		;
connectAttr "R_fingers1_visibility.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1.v"
		;
connectAttr "R_fingers2_translateX.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.tx"
		;
connectAttr "R_fingers2_translateY.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.ty"
		;
connectAttr "R_fingers2_translateZ.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.tz"
		;
connectAttr "R_fingers2_rotateX.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.rx"
		;
connectAttr "R_fingers2_rotateY.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.ry"
		;
connectAttr "R_fingers2_rotateZ.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.rz"
		;
connectAttr "R_fingers2_scaleX.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.sx"
		;
connectAttr "R_fingers2_scaleY.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.sy"
		;
connectAttr "R_fingers2_scaleZ.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.sz"
		;
connectAttr "R_fingers2_visibility.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_fingers1|R_fingers2.v"
		;
connectAttr "R_thumb_translateX.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.tx"
		;
connectAttr "R_thumb_translateY.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.ty"
		;
connectAttr "R_thumb_translateZ.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.tz"
		;
connectAttr "R_thumb_rotateX.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.rx"
		;
connectAttr "R_thumb_rotateY.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.ry"
		;
connectAttr "R_thumb_rotateZ.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.rz"
		;
connectAttr "R_thumb_scaleX.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.sx"
		;
connectAttr "R_thumb_scaleY.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.sy"
		;
connectAttr "R_thumb_scaleZ.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.sz"
		;
connectAttr "R_thumb_visibility.o" "|Niabi|master|root1|chest|R_shoulder|R_elbow|R_wrist|R_thumb.v"
		;
connectAttr "neck_translateX.o" "|Niabi|master|root1|chest|neck.tx";
connectAttr "neck_translateY.o" "|Niabi|master|root1|chest|neck.ty";
connectAttr "neck_translateZ.o" "|Niabi|master|root1|chest|neck.tz";
connectAttr "neck_rotateX.o" "|Niabi|master|root1|chest|neck.rx";
connectAttr "neck_rotateY.o" "|Niabi|master|root1|chest|neck.ry";
connectAttr "neck_rotateZ.o" "|Niabi|master|root1|chest|neck.rz";
connectAttr "neck_scaleX.o" "|Niabi|master|root1|chest|neck.sx";
connectAttr "neck_scaleY.o" "|Niabi|master|root1|chest|neck.sy";
connectAttr "neck_scaleZ.o" "|Niabi|master|root1|chest|neck.sz";
connectAttr "neck_visibility.o" "|Niabi|master|root1|chest|neck.v";
connectAttr "feather1_translateX.o" "|Niabi|master|root1|chest|neck|feather1.tx"
		;
connectAttr "feather1_translateY.o" "|Niabi|master|root1|chest|neck|feather1.ty"
		;
connectAttr "feather1_translateZ.o" "|Niabi|master|root1|chest|neck|feather1.tz"
		;
connectAttr "feather1_rotateX.o" "|Niabi|master|root1|chest|neck|feather1.rx";
connectAttr "feather1_rotateY.o" "|Niabi|master|root1|chest|neck|feather1.ry";
connectAttr "feather1_rotateZ.o" "|Niabi|master|root1|chest|neck|feather1.rz";
connectAttr "feather1_scaleX.o" "|Niabi|master|root1|chest|neck|feather1.sx";
connectAttr "feather1_scaleY.o" "|Niabi|master|root1|chest|neck|feather1.sy";
connectAttr "feather1_scaleZ.o" "|Niabi|master|root1|chest|neck|feather1.sz";
connectAttr "feather1_visibility.o" "|Niabi|master|root1|chest|neck|feather1.v";
connectAttr "feather2_translateX.o" "|Niabi|master|root1|chest|neck|feather1|feather2.tx"
		;
connectAttr "feather2_translateY.o" "|Niabi|master|root1|chest|neck|feather1|feather2.ty"
		;
connectAttr "feather2_translateZ.o" "|Niabi|master|root1|chest|neck|feather1|feather2.tz"
		;
connectAttr "feather2_rotateX.o" "|Niabi|master|root1|chest|neck|feather1|feather2.rx"
		;
connectAttr "feather2_rotateY.o" "|Niabi|master|root1|chest|neck|feather1|feather2.ry"
		;
connectAttr "feather2_rotateZ.o" "|Niabi|master|root1|chest|neck|feather1|feather2.rz"
		;
connectAttr "feather2_scaleX.o" "|Niabi|master|root1|chest|neck|feather1|feather2.sx"
		;
connectAttr "feather2_scaleY.o" "|Niabi|master|root1|chest|neck|feather1|feather2.sy"
		;
connectAttr "feather2_scaleZ.o" "|Niabi|master|root1|chest|neck|feather1|feather2.sz"
		;
connectAttr "feather2_visibility.o" "|Niabi|master|root1|chest|neck|feather1|feather2.v"
		;
connectAttr "feather3_translateX.o" "|Niabi|master|root1|chest|neck|feather1|feather2|feather3.tx"
		;
connectAttr "feather3_translateY.o" "|Niabi|master|root1|chest|neck|feather1|feather2|feather3.ty"
		;
connectAttr "feather3_translateZ.o" "|Niabi|master|root1|chest|neck|feather1|feather2|feather3.tz"
		;
connectAttr "feather3_rotateX.o" "|Niabi|master|root1|chest|neck|feather1|feather2|feather3.rx"
		;
connectAttr "feather3_rotateY.o" "|Niabi|master|root1|chest|neck|feather1|feather2|feather3.ry"
		;
connectAttr "feather3_rotateZ.o" "|Niabi|master|root1|chest|neck|feather1|feather2|feather3.rz"
		;
connectAttr "feather3_scaleX.o" "|Niabi|master|root1|chest|neck|feather1|feather2|feather3.sx"
		;
connectAttr "feather3_scaleY.o" "|Niabi|master|root1|chest|neck|feather1|feather2|feather3.sy"
		;
connectAttr "feather3_scaleZ.o" "|Niabi|master|root1|chest|neck|feather1|feather2|feather3.sz"
		;
connectAttr "feather3_visibility.o" "|Niabi|master|root1|chest|neck|feather1|feather2|feather3.v"
		;
connectAttr "R_braid1_translateX.o" "|Niabi|master|root1|chest|neck|R_braid1.tx"
		;
connectAttr "R_braid1_translateY.o" "|Niabi|master|root1|chest|neck|R_braid1.ty"
		;
connectAttr "R_braid1_translateZ.o" "|Niabi|master|root1|chest|neck|R_braid1.tz"
		;
connectAttr "R_braid1_rotateX.o" "|Niabi|master|root1|chest|neck|R_braid1.rx";
connectAttr "R_braid1_rotateY.o" "|Niabi|master|root1|chest|neck|R_braid1.ry";
connectAttr "R_braid1_rotateZ.o" "|Niabi|master|root1|chest|neck|R_braid1.rz";
connectAttr "R_braid1_scaleX.o" "|Niabi|master|root1|chest|neck|R_braid1.sx";
connectAttr "R_braid1_scaleY.o" "|Niabi|master|root1|chest|neck|R_braid1.sy";
connectAttr "R_braid1_scaleZ.o" "|Niabi|master|root1|chest|neck|R_braid1.sz";
connectAttr "R_braid1_visibility.o" "|Niabi|master|root1|chest|neck|R_braid1.v";
connectAttr "R_braid2_translateX.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2.tx"
		;
connectAttr "R_braid2_translateY.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2.ty"
		;
connectAttr "R_braid2_translateZ.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2.tz"
		;
connectAttr "R_braid2_rotateX.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2.rx"
		;
connectAttr "R_braid2_rotateY.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2.ry"
		;
connectAttr "R_braid2_rotateZ.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2.rz"
		;
connectAttr "R_braid2_scaleX.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2.sx"
		;
connectAttr "R_braid2_scaleY.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2.sy"
		;
connectAttr "R_braid2_scaleZ.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2.sz"
		;
connectAttr "R_braid2_visibility.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2.v"
		;
connectAttr "R_braid3_translateX.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3.tx"
		;
connectAttr "R_braid3_translateY.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3.ty"
		;
connectAttr "R_braid3_translateZ.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3.tz"
		;
connectAttr "R_braid3_rotateX.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3.rx"
		;
connectAttr "R_braid3_rotateY.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3.ry"
		;
connectAttr "R_braid3_rotateZ.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3.rz"
		;
connectAttr "R_braid3_scaleX.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3.sx"
		;
connectAttr "R_braid3_scaleY.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3.sy"
		;
connectAttr "R_braid3_scaleZ.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3.sz"
		;
connectAttr "R_braid3_visibility.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3.v"
		;
connectAttr "R_braid4_translateX.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.tx"
		;
connectAttr "R_braid4_translateY.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.ty"
		;
connectAttr "R_braid4_translateZ.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.tz"
		;
connectAttr "R_braid4_rotateX.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.rx"
		;
connectAttr "R_braid4_rotateY.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.ry"
		;
connectAttr "R_braid4_rotateZ.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.rz"
		;
connectAttr "R_braid4_scaleX.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.sx"
		;
connectAttr "R_braid4_scaleY.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.sy"
		;
connectAttr "R_braid4_scaleZ.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.sz"
		;
connectAttr "R_braid4_visibility.o" "|Niabi|master|root1|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.v"
		;
connectAttr "L_braid1_translateX.o" "|Niabi|master|root1|chest|neck|L_braid1.tx"
		;
connectAttr "L_braid1_translateY.o" "|Niabi|master|root1|chest|neck|L_braid1.ty"
		;
connectAttr "L_braid1_translateZ.o" "|Niabi|master|root1|chest|neck|L_braid1.tz"
		;
connectAttr "L_braid1_rotateX.o" "|Niabi|master|root1|chest|neck|L_braid1.rx";
connectAttr "L_braid1_rotateY.o" "|Niabi|master|root1|chest|neck|L_braid1.ry";
connectAttr "L_braid1_rotateZ.o" "|Niabi|master|root1|chest|neck|L_braid1.rz";
connectAttr "L_braid1_scaleX.o" "|Niabi|master|root1|chest|neck|L_braid1.sx";
connectAttr "L_braid1_scaleY.o" "|Niabi|master|root1|chest|neck|L_braid1.sy";
connectAttr "L_braid1_scaleZ.o" "|Niabi|master|root1|chest|neck|L_braid1.sz";
connectAttr "L_braid1_visibility.o" "|Niabi|master|root1|chest|neck|L_braid1.v";
connectAttr "L_braid2_translateX.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2.tx"
		;
connectAttr "L_braid2_translateY.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2.ty"
		;
connectAttr "L_braid2_translateZ.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2.tz"
		;
connectAttr "L_braid2_rotateX.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2.rx"
		;
connectAttr "L_braid2_rotateY.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2.ry"
		;
connectAttr "L_braid2_rotateZ.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2.rz"
		;
connectAttr "L_braid2_scaleX.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2.sx"
		;
connectAttr "L_braid2_scaleY.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2.sy"
		;
connectAttr "L_braid2_scaleZ.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2.sz"
		;
connectAttr "L_braid2_visibility.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2.v"
		;
connectAttr "L_braid3_translateX.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3.tx"
		;
connectAttr "L_braid3_translateY.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3.ty"
		;
connectAttr "L_braid3_translateZ.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3.tz"
		;
connectAttr "L_braid3_rotateX.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3.rx"
		;
connectAttr "L_braid3_rotateY.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3.ry"
		;
connectAttr "L_braid3_rotateZ.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3.rz"
		;
connectAttr "L_braid3_scaleX.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3.sx"
		;
connectAttr "L_braid3_scaleY.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3.sy"
		;
connectAttr "L_braid3_scaleZ.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3.sz"
		;
connectAttr "L_braid3_visibility.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3.v"
		;
connectAttr "L_braid4_translateX.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.tx"
		;
connectAttr "L_braid4_translateY.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.ty"
		;
connectAttr "L_braid4_translateZ.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.tz"
		;
connectAttr "L_braid4_rotateX.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.rx"
		;
connectAttr "L_braid4_rotateY.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.ry"
		;
connectAttr "L_braid4_rotateZ.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.rz"
		;
connectAttr "L_braid4_scaleX.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.sx"
		;
connectAttr "L_braid4_scaleY.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.sy"
		;
connectAttr "L_braid4_scaleZ.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.sz"
		;
connectAttr "L_braid4_visibility.o" "|Niabi|master|root1|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.v"
		;
connectAttr "L_foot_translateX.o" "|Niabi|master|L_foot.tx";
connectAttr "L_foot_translateY.o" "|Niabi|master|L_foot.ty";
connectAttr "L_foot_translateZ.o" "|Niabi|master|L_foot.tz";
connectAttr "L_foot_visibility.o" "|Niabi|master|L_foot.v";
connectAttr "L_foot_rotateX.o" "|Niabi|master|L_foot.rx";
connectAttr "L_foot_rotateY.o" "|Niabi|master|L_foot.ry";
connectAttr "L_foot_rotateZ.o" "|Niabi|master|L_foot.rz";
connectAttr "L_foot_scaleX.o" "|Niabi|master|L_foot.sx";
connectAttr "L_foot_scaleY.o" "|Niabi|master|L_foot.sy";
connectAttr "L_foot_scaleZ.o" "|Niabi|master|L_foot.sz";
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
connectAttr "|Niabi|master|L_foot|L_knee.t" "ikHandle1_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "|Niabi|master|L_foot|L_knee.rp" "ikHandle1_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "|Niabi|master|L_foot|L_knee.rpt" "ikHandle1_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "|Niabi|master|L_foot|L_knee.pm" "ikHandle1_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "ikHandle1_poleVectorConstraint1.w0" "ikHandle1_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "L_knee_translateX.o" "|Niabi|master|L_foot|L_knee.tx";
connectAttr "L_knee_translateY.o" "|Niabi|master|L_foot|L_knee.ty";
connectAttr "L_knee_translateZ.o" "|Niabi|master|L_foot|L_knee.tz";
connectAttr "L_knee_visibility.o" "|Niabi|master|L_foot|L_knee.v";
connectAttr "L_knee_rotateX.o" "|Niabi|master|L_foot|L_knee.rx";
connectAttr "L_knee_rotateY.o" "|Niabi|master|L_foot|L_knee.ry";
connectAttr "L_knee_rotateZ.o" "|Niabi|master|L_foot|L_knee.rz";
connectAttr "L_knee_scaleX.o" "|Niabi|master|L_foot|L_knee.sx";
connectAttr "L_knee_scaleY.o" "|Niabi|master|L_foot|L_knee.sy";
connectAttr "L_knee_scaleZ.o" "|Niabi|master|L_foot|L_knee.sz";
connectAttr "R_foot_translateX.o" "|Niabi|master|R_foot.tx";
connectAttr "R_foot_translateY.o" "|Niabi|master|R_foot.ty";
connectAttr "R_foot_translateZ.o" "|Niabi|master|R_foot.tz";
connectAttr "R_foot_visibility.o" "|Niabi|master|R_foot.v";
connectAttr "R_foot_rotateX.o" "|Niabi|master|R_foot.rx";
connectAttr "R_foot_rotateY.o" "|Niabi|master|R_foot.ry";
connectAttr "R_foot_rotateZ.o" "|Niabi|master|R_foot.rz";
connectAttr "R_foot_scaleX.o" "|Niabi|master|R_foot.sx";
connectAttr "R_foot_scaleY.o" "|Niabi|master|R_foot.sy";
connectAttr "R_foot_scaleZ.o" "|Niabi|master|R_foot.sz";
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
connectAttr "layer1.di" "niabiMesh.do";
connectAttr "skinCluster1GroupId.id" "niabiMeshShape.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "niabiMeshShape.iog.og[0].gco";
connectAttr "groupId3.id" "niabiMeshShape.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "niabiMeshShape.iog.og[1].gco";
connectAttr "skinCluster1.og[0]" "niabiMeshShape.i";
connectAttr "tweak1.vl[0].vt[2]" "niabiMeshShape.twl";
connectAttr "layer1.di" "niabiFeather.do";
connectAttr "skinCluster2GroupId.id" "niabiFeatherShape.iog.og[0].gid";
connectAttr "skinCluster2Set.mwc" "niabiFeatherShape.iog.og[0].gco";
connectAttr "groupId5.id" "niabiFeatherShape.iog.og[1].gid";
connectAttr "tweakSet2.mwc" "niabiFeatherShape.iog.og[1].gco";
connectAttr "skinCluster2.og[0]" "niabiFeatherShape.i";
connectAttr "tweak2.vl[0].vt[0]" "niabiFeatherShape.twl";
connectAttr "ArrowJoint_parentConstraint1.ctx" "ArrowJoint.tx";
connectAttr "ArrowJoint_parentConstraint1.cty" "ArrowJoint.ty";
connectAttr "ArrowJoint_parentConstraint1.ctz" "ArrowJoint.tz";
connectAttr "ArrowJoint_parentConstraint1.crx" "ArrowJoint.rx";
connectAttr "ArrowJoint_parentConstraint1.cry" "ArrowJoint.ry";
connectAttr "ArrowJoint_parentConstraint1.crz" "ArrowJoint.rz";
connectAttr "arrow1_translateX.o" "arrow1.tx";
connectAttr "arrow1_translateY.o" "arrow1.ty";
connectAttr "arrow1_translateZ.o" "arrow1.tz";
connectAttr "arrow1_rotateX.o" "arrow1.rx";
connectAttr "arrow1_rotateY.o" "arrow1.ry";
connectAttr "arrow1_rotateZ.o" "arrow1.rz";
connectAttr "arrow1_visibility.o" "arrow1.v";
connectAttr "arrow1_scaleX.o" "arrow1.sx";
connectAttr "arrow1_scaleY.o" "arrow1.sy";
connectAttr "arrow1_scaleZ.o" "arrow1.sz";
connectAttr "ArrowJoint.ro" "ArrowJoint_parentConstraint1.cro";
connectAttr "ArrowJoint.pim" "ArrowJoint_parentConstraint1.cpim";
connectAttr "ArrowJoint.rp" "ArrowJoint_parentConstraint1.crp";
connectAttr "ArrowJoint.rpt" "ArrowJoint_parentConstraint1.crt";
connectAttr "ArrowJoint.jo" "ArrowJoint_parentConstraint1.cjo";
connectAttr "|Niabi|master|root1|root|chest.t" "ArrowJoint_parentConstraint1.tg[0].tt"
		;
connectAttr "|Niabi|master|root1|root|chest.rp" "ArrowJoint_parentConstraint1.tg[0].trp"
		;
connectAttr "|Niabi|master|root1|root|chest.rpt" "ArrowJoint_parentConstraint1.tg[0].trt"
		;
connectAttr "|Niabi|master|root1|root|chest.r" "ArrowJoint_parentConstraint1.tg[0].tr"
		;
connectAttr "|Niabi|master|root1|root|chest.ro" "ArrowJoint_parentConstraint1.tg[0].tro"
		;
connectAttr "|Niabi|master|root1|root|chest.s" "ArrowJoint_parentConstraint1.tg[0].ts"
		;
connectAttr "|Niabi|master|root1|root|chest.pm" "ArrowJoint_parentConstraint1.tg[0].tpm"
		;
connectAttr "|Niabi|master|root1|root|chest.jo" "ArrowJoint_parentConstraint1.tg[0].tjo"
		;
connectAttr "ArrowJoint_parentConstraint1.w0" "ArrowJoint_parentConstraint1.tg[0].tw"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.t" "ArrowJoint_parentConstraint1.tg[1].tt"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.rp" "ArrowJoint_parentConstraint1.tg[1].trp"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.rpt" "ArrowJoint_parentConstraint1.tg[1].trt"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.r" "ArrowJoint_parentConstraint1.tg[1].tr"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.ro" "ArrowJoint_parentConstraint1.tg[1].tro"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.s" "ArrowJoint_parentConstraint1.tg[1].ts"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.pm" "ArrowJoint_parentConstraint1.tg[1].tpm"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.jo" "ArrowJoint_parentConstraint1.tg[1].tjo"
		;
connectAttr "ArrowJoint_parentConstraint1.w1" "ArrowJoint_parentConstraint1.tg[1].tw"
		;
connectAttr "ArrowJoint_parentConstraint1_chestW0.o" "ArrowJoint_parentConstraint1.w0"
		;
connectAttr "ArrowJoint_parentConstraint1_L_wristW1.o" "ArrowJoint_parentConstraint1.w1"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "hyperView1.msg" "nodeEditorPanel1Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "root.wm" "skinCluster1.ma[0]";
connectAttr "|Niabi|master|root1|root|chest.wm" "skinCluster1.ma[1]";
connectAttr "|Niabi|master|root1|root|chest|neck.wm" "skinCluster1.ma[2]";
connectAttr "jaw.wm" "skinCluster1.ma[3]";
connectAttr "L_eye.wm" "skinCluster1.ma[4]";
connectAttr "R_eye.wm" "skinCluster1.ma[5]";
connectAttr "|Niabi|master|root1|root|chest|neck|feather1.wm" "skinCluster1.ma[6]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|feather1|feather2.wm" "skinCluster1.ma[7]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1.wm" "skinCluster1.ma[9]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2.wm" "skinCluster1.ma[10]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3.wm" "skinCluster1.ma[11]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.wm" "skinCluster1.ma[12]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1.wm" "skinCluster1.ma[13]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2.wm" "skinCluster1.ma[14]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3.wm" "skinCluster1.ma[15]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.wm" "skinCluster1.ma[16]"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder.wm" "skinCluster1.ma[17]"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow.wm" "skinCluster1.ma[18]"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.wm" "skinCluster1.ma[19]"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.wm" "skinCluster1.ma[20]"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.wm" "skinCluster1.ma[21]"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.wm" "skinCluster1.ma[22]"
		;
connectAttr "R_shoulder1.wm" "skinCluster1.ma[23]";
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow.wm" "skinCluster1.ma[24]"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist.wm" "skinCluster1.ma[25]"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1.wm" "skinCluster1.ma[26]"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1|R_fingers2.wm" "skinCluster1.ma[27]"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_thumb.wm" "skinCluster1.ma[28]"
		;
connectAttr "L_Leg.wm" "skinCluster1.ma[29]";
connectAttr "|Niabi|master|root1|root|L_Leg|L_knee.wm" "skinCluster1.ma[30]";
connectAttr "L_ankle.wm" "skinCluster1.ma[31]";
connectAttr "|Niabi|master|root1|root|L_Leg|L_knee|L_ankle|L_foot.wm" "skinCluster1.ma[32]"
		;
connectAttr "R_Leg.wm" "skinCluster1.ma[33]";
connectAttr "R_knee.wm" "skinCluster1.ma[34]";
connectAttr "R_ankle.wm" "skinCluster1.ma[35]";
connectAttr "|Niabi|master|root1|root|R_Leg|R_knee|R_ankle|R_foot.wm" "skinCluster1.ma[36]"
		;
connectAttr "root.liw" "skinCluster1.lw[0]";
connectAttr "|Niabi|master|root1|root|chest.liw" "skinCluster1.lw[1]";
connectAttr "|Niabi|master|root1|root|chest|neck.liw" "skinCluster1.lw[2]";
connectAttr "jaw.liw" "skinCluster1.lw[3]";
connectAttr "L_eye.liw" "skinCluster1.lw[4]";
connectAttr "R_eye.liw" "skinCluster1.lw[5]";
connectAttr "|Niabi|master|root1|root|chest|neck|feather1.liw" "skinCluster1.lw[6]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|feather1|feather2.liw" "skinCluster1.lw[7]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1.liw" "skinCluster1.lw[9]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2.liw" "skinCluster1.lw[10]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3.liw" "skinCluster1.lw[11]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.liw" "skinCluster1.lw[12]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1.liw" "skinCluster1.lw[13]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2.liw" "skinCluster1.lw[14]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3.liw" "skinCluster1.lw[15]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.liw" "skinCluster1.lw[16]"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder.liw" "skinCluster1.lw[17]"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow.liw" "skinCluster1.lw[18]"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.liw" "skinCluster1.lw[19]"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.liw" "skinCluster1.lw[20]"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.liw" "skinCluster1.lw[21]"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.liw" "skinCluster1.lw[22]"
		;
connectAttr "R_shoulder1.liw" "skinCluster1.lw[23]";
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow.liw" "skinCluster1.lw[24]"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist.liw" "skinCluster1.lw[25]"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1.liw" "skinCluster1.lw[26]"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1|R_fingers2.liw" "skinCluster1.lw[27]"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_thumb.liw" "skinCluster1.lw[28]"
		;
connectAttr "L_Leg.liw" "skinCluster1.lw[29]";
connectAttr "|Niabi|master|root1|root|L_Leg|L_knee.liw" "skinCluster1.lw[30]";
connectAttr "L_ankle.liw" "skinCluster1.lw[31]";
connectAttr "|Niabi|master|root1|root|L_Leg|L_knee|L_ankle|L_foot.liw" "skinCluster1.lw[32]"
		;
connectAttr "R_Leg.liw" "skinCluster1.lw[33]";
connectAttr "R_knee.liw" "skinCluster1.lw[34]";
connectAttr "R_ankle.liw" "skinCluster1.lw[35]";
connectAttr "|Niabi|master|root1|root|R_Leg|R_knee|R_ankle|R_foot.liw" "skinCluster1.lw[36]"
		;
connectAttr "root.msg" "skinCluster1.ptt";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId3.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "niabiMeshShape.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId3.msg" "tweakSet1.gn" -na;
connectAttr "niabiMeshShape.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "niabiMeshShapeOrig.w" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "Niabi.msg" "bindPose1.m[0]";
connectAttr "master.msg" "bindPose1.m[1]";
connectAttr "root1.msg" "bindPose1.m[2]";
connectAttr "root.msg" "bindPose1.m[3]";
connectAttr "|Niabi|master|root1|root|chest.msg" "bindPose1.m[4]";
connectAttr "|Niabi|master|root1|root|chest|neck.msg" "bindPose1.m[5]";
connectAttr "jaw.msg" "bindPose1.m[6]";
connectAttr "L_eye.msg" "bindPose1.m[7]";
connectAttr "R_eye.msg" "bindPose1.m[8]";
connectAttr "|Niabi|master|root1|root|chest|neck|feather1.msg" "bindPose1.m[9]";
connectAttr "|Niabi|master|root1|root|chest|neck|feather1|feather2.msg" "bindPose1.m[10]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1.msg" "bindPose1.m[12]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2.msg" "bindPose1.m[13]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3.msg" "bindPose1.m[14]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.msg" "bindPose1.m[15]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1.msg" "bindPose1.m[16]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2.msg" "bindPose1.m[17]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3.msg" "bindPose1.m[18]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.msg" "bindPose1.m[19]"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder.msg" "bindPose1.m[20]";
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow.msg" "bindPose1.m[21]"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.msg" "bindPose1.m[22]"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.msg" "bindPose1.m[23]"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.msg" "bindPose1.m[24]"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.msg" "bindPose1.m[25]"
		;
connectAttr "R_shoulder1.msg" "bindPose1.m[26]";
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow.msg" "bindPose1.m[27]"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist.msg" "bindPose1.m[28]"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1.msg" "bindPose1.m[29]"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1|R_fingers2.msg" "bindPose1.m[30]"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_thumb.msg" "bindPose1.m[31]"
		;
connectAttr "L_Leg.msg" "bindPose1.m[32]";
connectAttr "|Niabi|master|root1|root|L_Leg|L_knee.msg" "bindPose1.m[33]";
connectAttr "L_ankle.msg" "bindPose1.m[34]";
connectAttr "|Niabi|master|root1|root|L_Leg|L_knee|L_ankle|L_foot.msg" "bindPose1.m[35]"
		;
connectAttr "R_Leg.msg" "bindPose1.m[36]";
connectAttr "R_knee.msg" "bindPose1.m[37]";
connectAttr "R_ankle.msg" "bindPose1.m[38]";
connectAttr "|Niabi|master|root1|root|R_Leg|R_knee|R_ankle|R_foot.msg" "bindPose1.m[39]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|feather1|feather2|feather3.msg" "bindPose1.m[40]"
		;
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[5]" "bindPose1.p[7]";
connectAttr "bindPose1.m[5]" "bindPose1.p[8]";
connectAttr "bindPose1.m[5]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[5]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[5]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[4]" "bindPose1.p[20]";
connectAttr "bindPose1.m[20]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[24]";
connectAttr "bindPose1.m[22]" "bindPose1.p[25]";
connectAttr "bindPose1.m[4]" "bindPose1.p[26]";
connectAttr "bindPose1.m[26]" "bindPose1.p[27]";
connectAttr "bindPose1.m[27]" "bindPose1.p[28]";
connectAttr "bindPose1.m[28]" "bindPose1.p[29]";
connectAttr "bindPose1.m[29]" "bindPose1.p[30]";
connectAttr "bindPose1.m[28]" "bindPose1.p[31]";
connectAttr "bindPose1.m[3]" "bindPose1.p[32]";
connectAttr "bindPose1.m[32]" "bindPose1.p[33]";
connectAttr "bindPose1.m[33]" "bindPose1.p[34]";
connectAttr "bindPose1.m[34]" "bindPose1.p[35]";
connectAttr "bindPose1.m[3]" "bindPose1.p[36]";
connectAttr "bindPose1.m[36]" "bindPose1.p[37]";
connectAttr "bindPose1.m[37]" "bindPose1.p[38]";
connectAttr "bindPose1.m[38]" "bindPose1.p[39]";
connectAttr "bindPose1.m[10]" "bindPose1.p[40]";
connectAttr "root.bps" "bindPose1.wm[3]";
connectAttr "|Niabi|master|root1|root|chest.bps" "bindPose1.wm[4]";
connectAttr "|Niabi|master|root1|root|chest|neck.bps" "bindPose1.wm[5]";
connectAttr "jaw.bps" "bindPose1.wm[6]";
connectAttr "L_eye.bps" "bindPose1.wm[7]";
connectAttr "R_eye.bps" "bindPose1.wm[8]";
connectAttr "|Niabi|master|root1|root|chest|neck|feather1.bps" "bindPose1.wm[9]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|feather1|feather2.bps" "bindPose1.wm[10]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1.bps" "bindPose1.wm[12]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2.bps" "bindPose1.wm[13]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3.bps" "bindPose1.wm[14]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|R_braid1|R_braid2|R_braid3|R_braid4.bps" "bindPose1.wm[15]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1.bps" "bindPose1.wm[16]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2.bps" "bindPose1.wm[17]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3.bps" "bindPose1.wm[18]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|L_braid1|L_braid2|L_braid3|L_braid4.bps" "bindPose1.wm[19]"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder.bps" "bindPose1.wm[20]";
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow.bps" "bindPose1.wm[21]"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist.bps" "bindPose1.wm[22]"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1.bps" "bindPose1.wm[23]"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_fingers1|L_fingers2.bps" "bindPose1.wm[24]"
		;
connectAttr "|Niabi|master|root1|root|chest|L_shoulder|L_elbow|L_wrist|L_thumb.bps" "bindPose1.wm[25]"
		;
connectAttr "R_shoulder1.bps" "bindPose1.wm[26]";
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow.bps" "bindPose1.wm[27]"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist.bps" "bindPose1.wm[28]"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1.bps" "bindPose1.wm[29]"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_fingers1|R_fingers2.bps" "bindPose1.wm[30]"
		;
connectAttr "|Niabi|master|root1|root|chest|R_shoulder1|R_elbow|R_wrist|R_thumb.bps" "bindPose1.wm[31]"
		;
connectAttr "L_Leg.bps" "bindPose1.wm[32]";
connectAttr "|Niabi|master|root1|root|L_Leg|L_knee.bps" "bindPose1.wm[33]";
connectAttr "L_ankle.bps" "bindPose1.wm[34]";
connectAttr "|Niabi|master|root1|root|L_Leg|L_knee|L_ankle|L_foot.bps" "bindPose1.wm[35]"
		;
connectAttr "R_Leg.bps" "bindPose1.wm[36]";
connectAttr "R_knee.bps" "bindPose1.wm[37]";
connectAttr "R_ankle.bps" "bindPose1.wm[38]";
connectAttr "|Niabi|master|root1|root|R_Leg|R_knee|R_ankle|R_foot.bps" "bindPose1.wm[39]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|feather1|feather2|feather3.bps" "bindPose1.wm[40]"
		;
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "|Niabi|master|root1|root|chest|neck.wm" "skinCluster2.ma[2]";
connectAttr "L_eye.wm" "skinCluster2.ma[4]";
connectAttr "|Niabi|master|root1|root|chest|neck|feather1.wm" "skinCluster2.ma[6]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|feather1|feather2.wm" "skinCluster2.ma[7]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|feather1|feather2|feather3.wm" "skinCluster2.ma[8]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck.liw" "skinCluster2.lw[2]";
connectAttr "L_eye.liw" "skinCluster2.lw[4]";
connectAttr "|Niabi|master|root1|root|chest|neck|feather1.liw" "skinCluster2.lw[6]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|feather1|feather2.liw" "skinCluster2.lw[7]"
		;
connectAttr "|Niabi|master|root1|root|chest|neck|feather1|feather2|feather3.liw" "skinCluster2.lw[8]"
		;
connectAttr "bindPose1.msg" "skinCluster2.bp";
connectAttr "groupParts4.og" "tweak2.ip[0].ig";
connectAttr "groupId5.id" "tweak2.ip[0].gi";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "niabiFeatherShape.iog.og[0]" "skinCluster2Set.dsm" -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "groupId5.msg" "tweakSet2.gn" -na;
connectAttr "niabiFeatherShape.iog.og[1]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "niabiFeatherShapeOrig.w" "groupParts4.ig";
connectAttr "groupId5.id" "groupParts4.gi";
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
connectAttr "layerManager.dli[1]" "layer1.id";
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist.Arrow" "ArrowJoint_parentConstraint1_chestW0.i"
		;
connectAttr "|Niabi|master|root1|chest|L_shoulder|L_elbow|L_wrist.Arrow" "ArrowJoint_parentConstraint1_L_wristW1.i"
		;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "niabiFeatherShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "CaseShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "arrowShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "bowShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "niabiMeshShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "arrowShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "arrowShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "arrowShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.oc" ":lambert1.c";
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "file4.msg" ":initialMaterialInfo.t" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of niabi_anims_01.ma
