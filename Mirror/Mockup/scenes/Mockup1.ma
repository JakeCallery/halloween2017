//Maya ASCII 8.5 scene
//Name: Mockup1.ma
//Last modified: Sun, Oct 08, 2017 09:02:05 PM
//Codeset: 1252
requires maya "8.5";
currentUnit -l inch -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya Unlimited 8.5";
fileInfo "version" "8.5 x64";
fileInfo "cutIdentifier" "200612170020-692032";
fileInfo "osv" "Microsoft Windows Vista Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 45.230469543900959 35.048215099609166 -31.326053180801964 ;
	setAttr ".r" -type "double3" -24.905266351486699 1202.9999999991007 0 ;
	setAttr ".rpt" -type "double3" 6.5646506812690924e-015 -1.2001458730713074e-015 
		2.6545030554593765e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".ncp" 0.03937007874015748;
	setAttr ".fd" 1.9685039370078738;
	setAttr ".coi" 61.205945368457229;
	setAttr ".ow" 3.9370078740157477;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 10.295644872442228 1.3879460737349649 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.6796025923446081 44.033219496194612 4.8390857497464026 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.03937007874015748;
	setAttr ".fcp" 393.70078740157476;
	setAttr ".fd" 1.9685039370078738;
	setAttr ".coi" 39.409448818897637;
	setAttr ".ow" 60.038150689311998;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.9536265061819373 12.469233951846523 42.066639359378833 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.03937007874015748;
	setAttr ".fcp" 393.70078740157476;
	setAttr ".fd" 1.9685039370078738;
	setAttr ".coi" 39.409448818897637;
	setAttr ".ow" 48.0849078002651;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 52.873299658742802 19.500252090504091 1.3854807700102649 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.03937007874015748;
	setAttr ".fcp" 393.70078740157476;
	setAttr ".fd" 1.9685039370078738;
	setAttr ".coi" 39.409448818897637;
	setAttr ".ow" 21.98288072627383;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "tv";
	setAttr ".t" -type "double3" 0 16.638161547136431 0.48913895817998604 ;
	setAttr ".s" -type "double3" 1 20.75 13 ;
	setAttr ".rp" -type "double3" 0 8.4064084980037484e-015 -2.4471808956994667e-015 ;
	setAttr ".spt" -type "double3" 0 8.3922370365366157e-015 -2.4477358023231794e-015 ;
createNode transform -n "transform1" -p "tv";
	setAttr ".v" no;
createNode mesh -n "tvShape" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "tv1";
	setAttr ".t" -type "double3" -0.99815547922936809 16.638161547136431 0.48913895817998604 ;
	setAttr ".s" -type "double3" 1 15.75 11.75 ;
	setAttr ".rp" -type "double3" 0 1.2588355554804924e-014 0.6249999906134347 ;
	setAttr ".spt" -type "double3" 0 1.2588355554804924e-014 0.6249999906134347 ;
createNode transform -n "transform2" -p "tv1";
	setAttr ".v" no;
createNode mesh -n "tv1Shape" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 
		0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 
		0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 
		0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 3 2 
		f 4 1 7 -3 -7 
		mu 0 4 2 3 5 4 
		f 4 2 9 -4 -9 
		mu 0 4 4 5 7 6 
		f 4 3 11 -1 -11 
		mu 0 4 6 7 9 8 
		f 4 -12 -10 -8 -6 
		mu 0 4 1 10 11 3 
		f 4 10 4 6 8 
		mu 0 4 12 0 2 13 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
createNode transform -n "tv2";
	setAttr ".t" -type "double3" 0 -5.4336743640619405 -0.489138805960107 ;
	setAttr ".rp" -type "double3" -0.49907766927884317 16.638158062311607 0.489138805960107 ;
	setAttr ".sp" -type "double3" -0.49907766927884317 16.638158062311607 0.489138805960107 ;
createNode mesh -n "tvShape2" -p "tv2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[0:8]" -type "float3" -0.17538969 0 0  0.30935374 0 0  -0.17538969 
		0 0  0.30935374 0 0  -0.17538969 0 0  0.30935374 0 0  -0.17538969 0 0  0.30935374 
		0 0  0.34887511 0 0 ;
	setAttr ".pt[10]" -type "float3" 0.34887511 0 0 ;
	setAttr ".pt[12]" -type "float3" 0.34887511 0 0 ;
	setAttr ".pt[14]" -type "float3" 0.34887511 0 0 ;
createNode transform -n "mirror";
	setAttr ".t" -type "double3" 0.54393251681735599 11.073079646860643 0 ;
	setAttr ".s" -type "double3" 0.0625 20.847286436438509 13.082469244655494 ;
createNode mesh -n "mirrorShape" -p "mirror";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube2";
	setAttr ".t" -type "double3" -1.5422601759930121 11.30692256373302 6.9016677485991593 ;
	setAttr ".s" -type "double3" 5.3175616202065257 20.630434837930942 0.48546121314168672 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 
		0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 
		0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 -0.045656055 0 0 -0.045656055 
		0 0 0.070570283 0 0 0.070570283 0 0 0.070570283 0 0 0.070570283 0 0 -0.045656055 
		0 0 -0.045656055 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 
		0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 3 2 
		f 4 1 7 -3 -7 
		mu 0 4 2 3 5 4 
		f 4 2 9 -4 -9 
		mu 0 4 4 5 7 6 
		f 4 3 11 -1 -11 
		mu 0 4 6 7 9 8 
		f 4 -12 -10 -8 -6 
		mu 0 4 1 10 11 3 
		f 4 10 4 6 8 
		mu 0 4 12 0 2 13 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
createNode transform -n "pCube3";
	setAttr ".t" -type "double3" -2.4278835696408105 34.484762912576748 0 ;
	setAttr ".s" -type "double3" 1 1.25 3 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube4";
	setAttr ".t" -type "double3" -2.4358082146015336 34.484762912576748 0 ;
	setAttr ".s" -type "double3" 1.0255098095080224 1.3541666711819094 3.2166667183686011 ;
	setAttr ".spt" -type "double3" 2.4263684338736828e-032 1.554117974910444e-016 0 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog";
	setAttr -s 4 ".iog[0].og";
	setAttr -s 2 ".iog[1].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "pCube4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 
		0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 
		0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 
		0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 3 2 
		f 4 1 7 -3 -7 
		mu 0 4 2 3 5 4 
		f 4 2 9 -4 -9 
		mu 0 4 4 5 7 6 
		f 4 3 11 -1 -11 
		mu 0 4 6 7 9 8 
		f 4 -12 -10 -8 -6 
		mu 0 4 1 10 11 3 
		f 4 10 4 6 8 
		mu 0 4 12 0 2 13 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
createNode mesh -n "pCubeShape4Orig" -p "pCube4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube6";
	setAttr ".t" -type "double3" -2.4278835696408105 36.250144280123259 0 ;
	setAttr ".s" -type "double3" 1 1.25 3 ;
	setAttr ".rp" -type "double3" 3.4967654318902565e-016 6.9935308637805131e-015 -1.4999999774722599 ;
	setAttr ".sp" -type "double3" 3.4967654318902565e-016 5.5948246910244104e-015 -0.49999999249075328 ;
	setAttr ".spt" -type "double3" 0 1.3987061727561022e-015 -0.99999998498150677 ;
createNode transform -n "transform4" -p "pCube6";
	setAttr ".v" no;
createNode mesh -n "pCubeShape6" -p "transform4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 
		0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 
		0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 
		0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 3 2 
		f 4 1 7 -3 -7 
		mu 0 4 2 3 5 4 
		f 4 2 9 -4 -9 
		mu 0 4 4 5 7 6 
		f 4 3 11 -1 -11 
		mu 0 4 6 7 9 8 
		f 4 -12 -10 -8 -6 
		mu 0 4 1 10 11 3 
		f 4 10 4 6 8 
		mu 0 4 12 0 2 13 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
createNode transform -n "pCube7";
	setAttr ".t" -type "double3" -2.4278835696408105 36.250144280123259 0 ;
	setAttr ".s" -type "double3" 1 1.25 -3 ;
	setAttr ".rp" -type "double3" 3.4967654318902565e-016 6.9935308637805131e-015 -1.4999999774722599 ;
	setAttr ".sp" -type "double3" 3.4967654318902565e-016 5.5948246910244104e-015 -0.49999999249075328 ;
	setAttr ".spt" -type "double3" 0 1.3987061727561022e-015 -0.99999998498150677 ;
createNode transform -n "transform3" -p "pCube7";
	setAttr ".v" no;
createNode mesh -n "pCubeShape7" -p "transform3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 
		0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 
		0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 
		0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 3 2 
		f 4 1 7 -3 -7 
		mu 0 4 2 3 5 4 
		f 4 2 9 -4 -9 
		mu 0 4 4 5 7 6 
		f 4 3 11 -1 -11 
		mu 0 4 6 7 9 8 
		f 4 -12 -10 -8 -6 
		mu 0 4 1 10 11 3 
		f 4 10 4 6 8 
		mu 0 4 12 0 2 13 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
createNode transform -n "pCube5SmoothProxyGroup";
	setAttr ".rp" -type "double3" -2.4278835841944821 36.250143323025988 -1.5000000713378425 ;
	setAttr ".sp" -type "double3" -2.4278835841944821 36.250143323025988 -1.5000000713378425 ;
createNode transform -n "ffd1Lattice";
	setAttr ".t" -type "double3" -2.4358082146015336 34.484762912576748 0 ;
	setAttr ".s" -type "double3" 2.2832184078860065 3.1849460906685501 7.4878773064931243 ;
createNode lattice -n "ffd1LatticeShape" -p "ffd1Lattice";
	setAttr -k off ".v";
	setAttr ".cc" -type "lattice" 2 5 2 20 -0.5 -0.5 -0.55555555740795848 -0.10250515517739217
		 -0.5 -0.55555555740795848 -0.5 -0.38750000129204792 -0.50617284288166242 -0.10250515517739217
		 -0.38750000129204792 -0.50617284288166242 -0.5 0 -0.50617284288166242 -0.10250515517739217
		 0 -0.50617284288166242 -0.5 0.38750000129204792 -0.50617284288166242 -0.10250515517739217
		 0.38750000129204792 -0.50617284288166242 -0.5 0.5 -0.55555555740795848 -0.10250515517739217
		 0.5 -0.55555555740795848 -0.5 -0.5 0.55555555740795848 0.079764941449961477 -0.5
		 0.55555555740795837 -0.5 -0.38750000129204792 0.50617284288166242 0.079764941449961477
		 -0.38750000129204792 0.50617284288166231 -0.5 0 0.50617284288166242 0.079764941449961477
		 0 0.50617284288166231 -0.5 0.38750000129204792 0.50617284288166242 0.079764941449961477
		 0.38750000129204792 0.50617284288166231 -0.5 0.5 0.55555555740795848 0.079764941449961477
		 0.5 0.55555555740795837 ;
createNode transform -n "ffd1Base";
	setAttr ".t" -type "double3" -2.4358082146015336 34.484762912576748 0 ;
	setAttr ".s" -type "double3" 2.2832184078860065 3.1849460906685501 7.4878773064931243 ;
createNode baseLattice -n "ffd1BaseShape" -p "ffd1Base";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode transform -n "pSphere1";
	setAttr ".t" -type "double3" 0.44487140930299923 27.716122471697709 0.75887227362884457 ;
	setAttr ".r" -type "double3" 0 0 -90.000000000000028 ;
	setAttr ".s" -type "double3" 0.54270983541401518 0.14624512415655927 0.54270983541401518 ;
createNode transform -n "transform6" -p "pSphere1";
	setAttr ".v" no;
createNode mesh -n "pSphereShape1" -p "transform6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube9";
	setAttr ".t" -type "double3" 0.5007135293736128 27.715203587797529 0 ;
	setAttr ".s" -type "double3" 1.0255098095080224 1.3541666711819094 3.2166667183686011 ;
	setAttr ".spt" -type "double3" 2.4263684338736828e-032 1.554117974910444e-016 0 ;
createNode transform -n "transform5" -p "pCube9";
	setAttr ".v" no;
createNode transform -n "webcam";
	setAttr ".t" -type "double3" 0.11915465061882055 -5.4336743640619405 -0.78436385589265989 ;
	setAttr ".rp" -type "double3" 0.308570852429848 27.715202391616938 0 ;
	setAttr ".sp" -type "double3" 0.308570852429848 27.715202391616938 0 ;
createNode mesh -n "webcamShape" -p "webcam";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube11";
	setAttr ".t" -type "double3" 0.8585455160238743 27.232028925135143 0 ;
	setAttr ".s" -type "double3" 0.5 2.511890563230756 13.276290242200828 ;
createNode transform -n "transform8" -p "pCube11";
	setAttr ".v" no;
createNode mesh -n "pCubeShape11" -p "transform8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube12";
	setAttr ".t" -type "double3" -1.5422601759930121 11.30692256373302 -6.8694805833920585 ;
	setAttr ".s" -type "double3" 5.3175616202065257 20.630434837930942 0.48546121314168672 ;
createNode mesh -n "pCubeShape12" -p "pCube12";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 
		0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 
		0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 -0.045766804 0 0 -0.045766804 
		0 0 0.070570283 0 0 0.070570283 0 0 0.070570283 0 0 0.070570283 0 0 -0.045766804 
		0 0 -0.045766804 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 
		0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 3 2 
		f 4 1 7 -3 -7 
		mu 0 4 2 3 5 4 
		f 4 2 9 -4 -9 
		mu 0 4 4 5 7 6 
		f 4 3 11 -1 -11 
		mu 0 4 6 7 9 8 
		f 4 -12 -10 -8 -6 
		mu 0 4 1 10 11 3 
		f 4 10 4 6 8 
		mu 0 4 12 0 2 13 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
createNode transform -n "pCube14";
	setAttr ".t" -type "double3" 0.8585455160238743 0.63076441730053934 0 ;
	setAttr ".s" -type "double3" 0.5 2.511890563230756 13.276290242200828 ;
createNode mesh -n "pCubeShape14" -p "pCube14";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 
		0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 
		0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[0:2]" -type "float3" 0 0.26773041 0  0 0.26773041 0  0 0 
		0 ;
	setAttr ".pt[6:7]" -type "float3" 0 0.26773041 0  0 0.26773041 0 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 
		0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 3 2 
		f 4 1 7 -3 -7 
		mu 0 4 2 3 5 4 
		f 4 2 9 -4 -9 
		mu 0 4 4 5 7 6 
		f 4 3 11 -1 -11 
		mu 0 4 6 7 9 8 
		f 4 -12 -10 -8 -6 
		mu 0 4 1 10 11 3 
		f 4 10 4 6 8 
		mu 0 4 12 0 2 13 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
createNode transform -n "pCylinder1";
	setAttr ".t" -type "double3" 0 27.717792518717491 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.57 2.2639232822826658 0.57 ;
createNode transform -n "transform7" -p "pCylinder1";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape1" -p "transform7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface1";
	setAttr ".t" -type "double3" 0 -5.4336743640619405 0 ;
createNode mesh -n "polySurfaceShape2" -p "polySurface1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube15";
	setAttr ".t" -type "double3" -0.33805734224741951 0.57435281697733109 0 ;
	setAttr ".s" -type "double3" 1.8708298109375661 0.5 13.318765456580534 ;
createNode mesh -n "pCubeShape15" -p "pCube15";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube16";
	setAttr ".t" -type "double3" -0.79934749153173368 20.128329166380883 0 ;
	setAttr ".r" -type "double3" 0 0 90.000000000000028 ;
	setAttr ".s" -type "double3" 1.8708298109375661 0.5 13.318765456580534 ;
createNode mesh -n "pCubeShape16" -p "pCube16";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 
		0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 
		0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 
		0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 3 2 
		f 4 1 7 -3 -7 
		mu 0 4 2 3 5 4 
		f 4 2 9 -4 -9 
		mu 0 4 4 5 7 6 
		f 4 3 11 -1 -11 
		mu 0 4 6 7 9 8 
		f 4 -12 -10 -8 -6 
		mu 0 4 1 10 11 3 
		f 4 10 4 6 8 
		mu 0 4 12 0 2 13 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
createNode transform -n "pCube17";
	setAttr ".t" -type "double3" 0.87325301541301614 10.912897702031721 5.711764452925113 ;
	setAttr ".r" -type "double3" -90.000000000000043 90 0 ;
	setAttr ".s" -type "double3" 1.8708298109375661 0.5 13.318765456580534 ;
createNode mesh -n "pCubeShape17" -p "pCube17";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 
		0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 
		0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 -2.7974123e-015 0.22181664 
		-0.42025822 -2.7974123e-015 0.22181664 0 -2.7974123e-015 0.22181664 -0.42025822 -2.7974123e-015 
		0.22181664 0 2.1854784e-015 -0.17709556 -0.42025822 2.1854784e-015 -0.17709556 0 
		2.1854784e-015 -0.17709556 -0.42025822 2.1854784e-015 -0.17709556;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 
		0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 3 2 
		f 4 1 7 -3 -7 
		mu 0 4 2 3 5 4 
		f 4 2 9 -4 -9 
		mu 0 4 4 5 7 6 
		f 4 3 11 -1 -11 
		mu 0 4 6 7 9 8 
		f 4 -12 -10 -8 -6 
		mu 0 4 1 10 11 3 
		f 4 10 4 6 8 
		mu 0 4 12 0 2 13 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
createNode transform -n "pCube18";
	setAttr ".t" -type "double3" 0.87325301541301614 10.912897702031721 -6.4629134260315944 ;
	setAttr ".r" -type "double3" -90.000000000000043 90 0 ;
	setAttr ".s" -type "double3" 1.8708298109375661 0.5 13.318765456580534 ;
createNode mesh -n "pCubeShape18" -p "pCube18";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 
		0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 
		0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 -2.7974123e-015 0.22181664 
		-0.42025822 -2.7974123e-015 0.22181664 0 -2.7974123e-015 0.22181664 -0.42025822 -2.7974123e-015 
		0.22181664 0 2.1854784e-015 -0.17709556 -0.42025822 2.1854784e-015 -0.17709556 0 
		2.1854784e-015 -0.17709556 -0.42025822 2.1854784e-015 -0.17709556;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 
		0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 3 2 
		f 4 1 7 -3 -7 
		mu 0 4 2 3 5 4 
		f 4 2 9 -4 -9 
		mu 0 4 4 5 7 6 
		f 4 3 11 -1 -11 
		mu 0 4 6 7 9 8 
		f 4 -12 -10 -8 -6 
		mu 0 4 1 10 11 3 
		f 4 10 4 6 8 
		mu 0 4 12 0 2 13 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
createNode transform -n "pCube19";
	setAttr ".t" -type "double3" 4.2213831404412749 1.6207976113734381 0 ;
	setAttr ".s" -type "double3" 6.4016218011021344 1.8026078906745648 7.7134622462766389 ;
	setAttr ".rp" -type "double3" 2.8648515577721421 -1.5588543443640916 3.8567310652160303 ;
	setAttr ".sp" -type "double3" 0.44751965154813028 -0.49999999249075339 0.49999999249075355 ;
	setAttr ".spt" -type "double3" 2.4173319062240117 -1.0588543518733382 3.3567310727252768 ;
createNode mesh -n "pCubeShape19" -p "pCube19";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[0:1]" -type "float3" 0 -0.027826693 0  0 -0.027826693 0 ;
	setAttr ".pt[6:13]" -type "float3" 0 -0.027826693 0  0 -0.027826693 0  
		0 -0.027826693 0  0 -0.027826693 0  0 0.4380351 0  0 0.4380351 0  0 -0.027826693 
		0  0 -0.027826693 0 ;
	setAttr ".pt[16:17]" -type "float3" 0 -0.027826693 0  0 -0.027826693 0 ;
createNode transform -n "button1";
	setAttr ".t" -type "double3" 2.0832314635837714 0.88688967825181797 0 ;
createNode mesh -n "buttonShape1" -p "button1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 90 ".pt";
	setAttr ".pt[67:155]" -type "float3" 5.6897909e-010 7.1687538e-011 -4.0269146e-011  
		1.2412495e-010 -1.8099957e-011 -3.9902682e-011  -1.4198311e-010 -1.8099957e-011 7.3502315e-011  
		3.5817019e-011 -1.6222194e-011 4.6746501e-010  -3.2078923e-011 2.9470915e-011 -4.709082e-010  
		3.2078912e-011 7.1687538e-011 -1.5101743e-010  4.9424158e-012 2.7872017e-011 -6.8888291e-011  
		4.857335e-011 -1.6222194e-011 -2.4983472e-011  4.6591198e-010 -1.6222194e-011 8.0995273e-011  
		-1.0748095e-010 -1.8099957e-011 -1.5421697e-011  -3.9232265e-010 -2.1855658e-011 
		3.1118063e-016  7.7142667e-011 2.7872017e-011 2.7566532e-011  3.3232506e-010 -2.1855658e-011 
		-9.8534521e-011  -3.6362929e-010 7.1687538e-011 -6.2097183e-010  -3.5817106e-011 
		3.1488197e-011 4.5503776e-010  3.2078912e-011 7.1687538e-011 1.1593875e-010  -5.948847e-011 
		-2.1855658e-011 4.709082e-010  3.5817019e-011 7.1687538e-011 6.2082955e-010  -9.7735382e-011 
		7.1687538e-011 -6.2097183e-010  1.2412495e-010 -1.8099957e-011 -8.9764855e-011  5.6897909e-010 
		7.1687538e-011 -3.4995628e-011  -1.5637884e-010 -1.8099957e-011 8.480384e-017  0.023912489 
		-0.053810142 -0.0079983138  0.020615781 -0.053810235 -0.015216729  0.015419211 -0.053810377 
		-0.021213986  0.0087436372 -0.053810235 -0.025504231  0.0011291722 -0.053810377 -0.027739905  
		-0.0068061347 -0.053810328 -0.02773989  -0.014419849 -0.05381028 -0.025504302  -0.02109585 
		-0.05381028 -0.021214059  -0.02629246 -0.053810377 -0.015216746  -0.029588887 -0.05381028 
		-0.0079983305  -0.030718371 -0.053810328 -0.00014365723  -0.029588981 -0.053810187 
		0.007710964  -0.026292646 -0.053810187 0.014929296  -0.021095943 -0.053810377 0.020926533  
		-0.014420037 -0.053810377 0.025216801  -0.0068059 -0.05381028 0.027452476  0.0011294098 
		-0.053810328 0.027452486  0.0087436847 -0.05381 0.025216863  0.015419117 -0.05381028 
		0.020926671  0.020615781 -0.053810235 0.014929356  0.023912303 -0.053810235 0.0077108787  
		0.02504185 -0.053810142 -0.00014372324  0.023912441 -0.036410291 -0.0079984888  0.020615915 
		-0.036410291 -0.0152169  0.015419117 -0.036410384 -0.021214023  0.0087434025 -0.036410194 
		-0.025504285  0.0011291722 -0.036410291 -0.027740043  -0.0068058502 -0.036410242 
		-0.027740005  -0.014419708 -0.036410335 -0.025504382  -0.021095792 -0.036410242 -0.021214079  
		-0.026292682 -0.036410429 -0.015216813  -0.029589074 -0.036410291 -0.0079983948  
		-0.030718571 -0.036410335 -0.00014375625  -0.029589027 -0.036410242 0.0077108154  
		-0.026292495 -0.036410242 0.014929419  -0.021095943 -0.036410384 0.020926757  -0.014420084 
		-0.036410335 0.02521693  -0.0068060406 -0.036410335 0.027452579  0.0011292191 -0.036410335 
		0.02745262  0.0087438785 -0.036410008 0.025216838  0.015419396 -0.036410194 0.020926552  
		0.020615781 -0.036410149 0.014929419  0.023912348 -0.036410194 0.0077110603  0.025041897 
		-0.036410101 -0.00014369427  0.01850633 -0.033841364 -0.0064111236  0.015875949 -0.033841364 
		-0.012170712  -0.0028383646 -0.033841271 -0.0001437225  0.011729382 -0.033841413 
		-0.016955862  0.0064027798 -0.033841219 -0.0203791  0.00032736061 -0.033841413 -0.022163002  
		-0.0060040858 -0.033841413 -0.022162963  -0.012079266 -0.033841457 -0.020379171  
		-0.017406208 -0.033841413 -0.01695591  -0.02155287 -0.03384155 -0.012170649  -0.02418296 
		-0.033841364 -0.0064110397  -0.025084116 -0.033841413 -0.00014376431  -0.024182912 
		-0.033841316 0.0061234767  -0.021552529 -0.033841316 0.011883258  -0.017406208 -0.033841413 
		0.016668571  -0.012079559 -0.033841364 0.02009172  -0.0060041794 -0.033841316 0.021875564  
		0.00032736061 -0.033841413 0.021875609  0.0064031552 -0.033841122 0.020091655  0.011729669 
		-0.033841316 0.016668374  0.015875855 -0.033841271 0.011883226  0.018506195 -0.033841219 
		0.0061236676  0.019407393 -0.033841219 -0.00014371774 ;
createNode transform -n "button2";
	setAttr ".t" -type "double3" 4.0628588294411916 0.88688967825181797 2.0000000000000013 ;
createNode mesh -n "buttonShape2" -p "button2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 202 ".uvst[0].uvsp[0:201]" -type "float2" 0.64992076 0.11222929 
		0.63144583 0.071774885 0.60232198 0.038164139 0.56490856 0.014120027 0.5222367 0.0015904158 
		0.4777633 0.0015904158 0.43509141 0.014120027 0.39767802 0.038164139 0.36855415 0.071774885 
		0.35007924 0.11222929 0.34375 0.15625 0.35007924 0.20027071 0.36855415 0.24072513 
		0.39767802 0.27433586 0.43509141 0.29837999 0.4777633 0.3109096 0.5222367 0.3109096 
		0.56490862 0.29837999 0.60232198 0.27433586 0.63144588 0.24072513 0.64992076 0.20027071 
		0.65625 0.15625 0.375 0.3125 0.38636363 0.3125 0.39772725 0.3125 0.40909088 0.3125 
		0.4204545 0.3125 0.43181813 0.3125 0.44318175 0.3125 0.45454538 0.3125 0.465909 0.3125 
		0.47727263 0.3125 0.48863626 0.3125 0.49999988 0.3125 0.51136351 0.3125 0.52272713 
		0.3125 0.53409076 0.3125 0.54545438 0.3125 0.55681801 0.3125 0.56818163 0.3125 0.57954526 
		0.3125 0.59090889 0.3125 0.60227251 0.3125 0.61363614 0.3125 0.62499976 0.3125 0.375 
		0.68843985 0.38636363 0.68843985 0.39772725 0.68843985 0.40909088 0.68843985 0.4204545 
		0.68843985 0.43181813 0.68843985 0.44318175 0.68843985 0.45454538 0.68843985 0.465909 
		0.68843985 0.47727263 0.68843985 0.48863626 0.68843985 0.49999988 0.68843985 0.51136351 
		0.68843985 0.52272713 0.68843985 0.53409076 0.68843985 0.54545438 0.68843985 0.55681801 
		0.68843985 0.56818163 0.68843985 0.57954526 0.68843985 0.59090889 0.68843985 0.60227251 
		0.68843985 0.61363614 0.68843985 0.62499976 0.68843985 0.64992076 0.79972929 0.63144583 
		0.7592749 0.60232198 0.72566414 0.56490856 0.70162004 0.5222367 0.68909043 0.4777633 
		0.68909043 0.43509141 0.70162004 0.39767802 0.72566414 0.36855415 0.7592749 0.35007924 
		0.79972929 0.34375 0.84375 0.35007924 0.88777071 0.36855415 0.92822516 0.39767802 
		0.96183586 0.43509141 0.98588002 0.4777633 0.99840963 0.5222367 0.99840963 0.56490862 
		0.98588002 0.60232198 0.96183586 0.63144588 0.92822516 0.64992076 0.88777071 0.65625 
		0.84375 0.5 0.15000001 0.5 0.83749998 0.64992076 0.88777071 0.63144588 0.92822516 
		0.60232198 0.96183586 0.56490862 0.98588002 0.5222367 0.99840963 0.4777633 0.99840963 
		0.43509141 0.98588002 0.39767802 0.96183586 0.36855415 0.92822516 0.35007924 0.88777071 
		0.34375 0.84375 0.35007924 0.79972929 0.36855415 0.7592749 0.39767802 0.72566414 
		0.43509141 0.70162004 0.4777633 0.68909043 0.5222367 0.68909043 0.56490856 0.70162004 
		0.60232198 0.72566414 0.63144583 0.7592749 0.64992076 0.79972929 0.65625 0.84375 
		0.64992076 0.88777071 0.63144588 0.92822516 0.60232198 0.96183586 0.56490862 0.98588002 
		0.5222367 0.99840963 0.4777633 0.99840963 0.43509141 0.98588002 0.39767802 0.96183586 
		0.36855415 0.92822516 0.35007924 0.88777071 0.34375 0.84375 0.35007924 0.79972929 
		0.36855415 0.7592749 0.39767802 0.72566414 0.43509141 0.70162004 0.4777633 0.68909043 
		0.5222367 0.68909043 0.56490856 0.70162004 0.60232198 0.72566414 0.63144583 0.7592749 
		0.64992076 0.79972929 0.65625 0.84375 0.64992076 0.88777071 0.63144588 0.92822516 
		0.60232198 0.96183586 0.56490862 0.98588002 0.5222367 0.99840963 0.4777633 0.99840963 
		0.43509141 0.98588002 0.39767802 0.96183586 0.36855415 0.92822516 0.35007924 0.88777071 
		0.34375 0.84375 0.35007924 0.79972929 0.36855415 0.7592749 0.39767802 0.72566414 
		0.43509141 0.70162004 0.4777633 0.68909043 0.5222367 0.68909043 0.56490856 0.70162004 
		0.60232198 0.72566414 0.63144583 0.7592749 0.64992076 0.79972929 0.65625 0.84375 
		0.64992076 0.88777071 0.63144588 0.92822516 0.60232198 0.96183586 0.56490862 0.98588002 
		0.5222367 0.99840963 0.4777633 0.99840963 0.43509141 0.98588002 0.39767802 0.96183586 
		0.36855415 0.92822516 0.35007924 0.88777071 0.34375 0.84375 0.35007924 0.79972929 
		0.36855415 0.7592749 0.39767802 0.72566414 0.43509141 0.70162004 0.4777633 0.68909043 
		0.5222367 0.68909043 0.56490856 0.70162004 0.60232198 0.72566414 0.63144583 0.7592749 
		0.64992076 0.79972929 0.65625 0.84375 0.64992076 0.88777071 0.63144588 0.92822516 
		0.60232198 0.96183586 0.56490862 0.98588002 0.5222367 0.99840963 0.4777633 0.99840963 
		0.43509141 0.98588002 0.39767802 0.96183586 0.36855415 0.92822516 0.35007924 0.88777071 
		0.34375 0.84375 0.35007924 0.79972929 0.36855415 0.7592749 0.39767802 0.72566414 
		0.43509141 0.70162004 0.4777633 0.68909043 0.5222367 0.68909043 0.56490856 0.70162004 
		0.60232198 0.72566414 0.63144583 0.7592749 0.64992076 0.79972929 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 90 ".pt";
	setAttr ".pt[67:155]" -type "float3" 5.6897909e-010 7.1687538e-011 -4.0269146e-011  
		1.2412495e-010 -1.8099957e-011 -3.9902682e-011  -1.4198311e-010 -1.8099957e-011 7.3502315e-011  
		3.5817019e-011 -1.6222194e-011 4.6746501e-010  -3.2078923e-011 2.9470915e-011 -4.709082e-010  
		3.2078912e-011 7.1687538e-011 -1.5101743e-010  4.9424158e-012 2.7872017e-011 -6.8888291e-011  
		4.857335e-011 -1.6222194e-011 -2.4983472e-011  4.6591198e-010 -1.6222194e-011 8.0995273e-011  
		-1.0748095e-010 -1.8099957e-011 -1.5421697e-011  -3.9232265e-010 -2.1855658e-011 
		3.1118063e-016  7.7142667e-011 2.7872017e-011 2.7566532e-011  3.3232506e-010 -2.1855658e-011 
		-9.8534521e-011  -3.6362929e-010 7.1687538e-011 -6.2097183e-010  -3.5817106e-011 
		3.1488197e-011 4.5503776e-010  3.2078912e-011 7.1687538e-011 1.1593875e-010  -5.948847e-011 
		-2.1855658e-011 4.709082e-010  3.5817019e-011 7.1687538e-011 6.2082955e-010  -9.7735382e-011 
		7.1687538e-011 -6.2097183e-010  1.2412495e-010 -1.8099957e-011 -8.9764855e-011  5.6897909e-010 
		7.1687538e-011 -3.4995628e-011  -1.5637884e-010 -1.8099957e-011 8.480384e-017  0.023912489 
		-0.053810142 -0.0079983138  0.020615781 -0.053810235 -0.015216729  0.015419211 -0.053810377 
		-0.021213986  0.0087436372 -0.053810235 -0.025504231  0.0011291722 -0.053810377 -0.027739905  
		-0.0068061347 -0.053810328 -0.02773989  -0.014419849 -0.05381028 -0.025504302  -0.02109585 
		-0.05381028 -0.021214059  -0.02629246 -0.053810377 -0.015216746  -0.029588887 -0.05381028 
		-0.0079983305  -0.030718371 -0.053810328 -0.00014365723  -0.029588981 -0.053810187 
		0.007710964  -0.026292646 -0.053810187 0.014929296  -0.021095943 -0.053810377 0.020926533  
		-0.014420037 -0.053810377 0.025216801  -0.0068059 -0.05381028 0.027452476  0.0011294098 
		-0.053810328 0.027452486  0.0087436847 -0.05381 0.025216863  0.015419117 -0.05381028 
		0.020926671  0.020615781 -0.053810235 0.014929356  0.023912303 -0.053810235 0.0077108787  
		0.02504185 -0.053810142 -0.00014372324  0.023912441 -0.036410291 -0.0079984888  0.020615915 
		-0.036410291 -0.0152169  0.015419117 -0.036410384 -0.021214023  0.0087434025 -0.036410194 
		-0.025504285  0.0011291722 -0.036410291 -0.027740043  -0.0068058502 -0.036410242 
		-0.027740005  -0.014419708 -0.036410335 -0.025504382  -0.021095792 -0.036410242 -0.021214079  
		-0.026292682 -0.036410429 -0.015216813  -0.029589074 -0.036410291 -0.0079983948  
		-0.030718571 -0.036410335 -0.00014375625  -0.029589027 -0.036410242 0.0077108154  
		-0.026292495 -0.036410242 0.014929419  -0.021095943 -0.036410384 0.020926757  -0.014420084 
		-0.036410335 0.02521693  -0.0068060406 -0.036410335 0.027452579  0.0011292191 -0.036410335 
		0.02745262  0.0087438785 -0.036410008 0.025216838  0.015419396 -0.036410194 0.020926552  
		0.020615781 -0.036410149 0.014929419  0.023912348 -0.036410194 0.0077110603  0.025041897 
		-0.036410101 -0.00014369427  0.01850633 -0.033841364 -0.0064111236  0.015875949 -0.033841364 
		-0.012170712  -0.0028383646 -0.033841271 -0.0001437225  0.011729382 -0.033841413 
		-0.016955862  0.0064027798 -0.033841219 -0.0203791  0.00032736061 -0.033841413 -0.022163002  
		-0.0060040858 -0.033841413 -0.022162963  -0.012079266 -0.033841457 -0.020379171  
		-0.017406208 -0.033841413 -0.01695591  -0.02155287 -0.03384155 -0.012170649  -0.02418296 
		-0.033841364 -0.0064110397  -0.025084116 -0.033841413 -0.00014376431  -0.024182912 
		-0.033841316 0.0061234767  -0.021552529 -0.033841316 0.011883258  -0.017406208 -0.033841413 
		0.016668571  -0.012079559 -0.033841364 0.02009172  -0.0060041794 -0.033841316 0.021875564  
		0.00032736061 -0.033841413 0.021875609  0.0064031552 -0.033841122 0.020091655  0.011729669 
		-0.033841316 0.016668374  0.015875855 -0.033841271 0.011883226  0.018506195 -0.033841219 
		0.0061236676  0.019407393 -0.033841219 -0.00014371774 ;
	setAttr -s 156 ".vt[0:155]"  0.6596505 -1.0000011 -0.19369078 0.57836217 
		-1.0000004 -0.37169024 0.45021689 -1.0000004 -0.51957756 0.28559616 -1.0000019 -0.62537187 
		0.09784098 -1.0000004 -0.68050224 -0.09784548 -1.0000049 -0.68050236 -0.28559768 
		-1.0000004 -0.62537223 -0.45021912 -1.0000026 -0.51957816 -0.57836366 -1.0000019 
		-0.37169087 -0.65965277 -1.0000019 -0.19369143 -0.68750083 -1.0000011 -2.4586916e-007 
		-0.65965277 -1.0000019 0.19369096 -0.57836366 -1.0000019 0.37169045 -0.45021912 -1.0000026 
		0.5195778 -0.28559843 -0.99999958 0.62537199 -0.097846232 -1.0000042 0.6805023 0.09784098 
		-1.0000004 0.68050236 0.28559616 -1.0000019 0.62537205 0.45021689 -1.0000004 0.51957792 
		0.57836139 -0.99999958 0.37169063 0.6596505 -1.0000011 0.19369116 0.68749928 -1.0000011 
		0 0.65964675 0.99999583 -0.19369078 0.57836068 0.99999887 -0.37169024 0.45021537 
		0.99999887 -0.51957756 0.28559542 0.9999966 -0.62537187 0.097840227 0.99999809 -0.68050224 
		-0.097841725 0.99999958 -0.68050236 -0.28559917 0.99999887 -0.62537223 -0.45021763 
		0.99999958 -0.51957816 -0.57836217 0.99999887 -0.37169087 -0.65965426 0.99999738 
		-0.19369143 -0.68750232 0.99999809 -2.4586916e-007 -0.65965426 0.99999738 0.19369096 
		-0.57836294 0.99999958 0.37169045 -0.45021763 0.99999958 0.5195778 -0.28559917 0.99999887 
		0.62537199 -0.097841725 0.99999958 0.6805023 0.097839475 0.99999887 0.68050236 0.28559467 
		0.99999738 0.62537205 0.45021537 0.99999887 0.51957792 0.57836068 0.99999887 0.37169063 
		0.65964675 0.99999583 0.19369116 0.68749779 0.99999809 0 -2.252774e-006 -1.0000026 
		0 0.58805436 1.1704745 -0.17266934 0.51558715 1.170473 -0.33135024 0.40135196 1.1704745 
		-0.46318728 0.25460175 1.1704775 -0.55749953 0.087218396 1.1704738 -0.60664636 -0.087222151 
		1.1704775 -0.60664648 -0.25460175 1.1704761 -0.55749959 -0.40135497 1.1704761 -0.46318737 
		-0.5155924 1.1704752 -0.33135077 -0.58806109 1.1704752 -0.17266981 -0.61288893 1.1704745 
		-2.1926414e-007 -0.58805889 1.1704775 0.17266934 -0.51559389 1.1704768 0.33135033 
		-0.40135571 1.1704768 0.46318704 -0.25460175 1.1704761 0.55749935 -0.087221399 1.1704768 
		0.60664636 0.087221399 1.1704768 0.60664642 0.25460175 1.1704775 0.55749959 0.40135121 
		1.1704752 0.46318752 0.51558715 1.170473 0.33135045 0.58805513 1.1704738 0.17266956 
		0.6128844 1.1704775 1.4666497e-008 0.46195084 1.2523426 -0.13564186 0.40502399 1.2523419 
		-0.2602945 0.31528547 1.2523419 -0.36385965 0.20000127 1.252341 -0.43794772 0.068512112 
		1.2523389 -0.47655541 -0.06851887 1.2523426 -0.47655505 -0.20000277 1.2523441 -0.43794742 
		-0.31528923 1.252341 -0.3638598 -0.40502775 1.252341 -0.26029474 -0.46195608 1.2523419 
		-0.13564205 -0.48145759 1.2523433 -7.1205847e-007 -0.46195382 1.2523441 0.13564122 
		-0.40502998 1.2523433 0.26029459 -0.31529075 1.2523426 0.36385974 -0.20000803 1.2523403 
		0.43794739 -0.06851887 1.2523426 0.47655505 0.06851662 1.2523433 0.47655514 0.20000127 
		1.2523426 0.43794751 0.31528473 1.2523426 0.36385974 0.40502399 1.2523419 0.26029453 
		0.46195084 1.2523426 0.13564201 0.48145309 1.2523419 -2.7866344e-008 0.42524713 1.0307462 
		-0.12486247 0.37284011 1.0307447 -0.23961177 0.29023162 1.0307424 -0.33494857 0.18411171 
		1.0307447 -0.40314963 0.063066408 1.0307424 -0.43868953 -0.063079171 1.0307432 -0.43868938 
		-0.18411246 1.030744 -0.4031508 -0.29023913 1.030744 -0.33494988 -0.37284836 1.0307424 
		-0.23961198 -0.42525089 1.030744 -0.12486273 -0.44320625 1.0307432 1.0313739e-006 
		-0.42525238 1.0307455 0.12486396 -0.37285137 1.0307455 0.23961198 -0.29024065 1.0307424 
		0.33494848 -0.18411547 1.0307424 0.40314975 -0.063075416 1.030744 0.43868986 0.063070163 
		1.0307432 0.43868995 0.18411246 1.0307485 0.4031508 0.29023013 1.030744 0.33495077 
		0.37284011 1.0307447 0.23961292 0.42524412 1.0307447 0.12486264 0.44320023 1.0307462 
		-1.5849984e-008 0.42524639 1.3073471 -0.12486524 0.37284234 1.3073471 -0.23961446 
		0.29023013 1.3073455 -0.33494917 0.18410796 1.3073486 -0.40315041 0.063066408 1.3073471 
		-0.43869174 -0.063074671 1.3073478 -0.43869108 -0.18411021 1.3073463 -0.40315196 
		-0.29023838 1.3073478 -0.33495006 -0.37285212 1.3073448 -0.23961319 -0.4252539 1.3073471 
		-0.12486374 -0.44320926 1.3073463 -5.3884605e-007 -0.42525315 1.3073478 0.12486165 
		-0.37284911 1.3073478 0.23961391 -0.29024065 1.3073455 0.33495206 -0.18411621 1.3073463 
		0.40315187 -0.063077673 1.3073463 0.43869141 0.063067161 1.3073463 0.43869212 0.18411547 
		1.3073516 0.40315047 0.29023463 1.3073486 0.3349489 0.37284011 1.3073493 0.23961391 
		0.42524487 1.3073486 0.1248655 0.44320098 1.30735 4.4543128e-007 0.3393068 1.3481846 
		-0.099631302 0.29749233 1.3481846 -0.19119003 -4.5055481e-006 1.3481861 -2.6575837e-009 
		0.2315754 1.3481839 -0.26725835 0.14689964 1.3481869 -0.32167661 0.050320212 1.3481839 
		-0.35003495 -0.050329223 1.3481839 -0.35003433 -0.14690489 1.3481832 -0.32167783 
		-0.23158592 1.3481839 -0.26725906 -0.29750434 1.3481816 -0.19118907 -0.33931431 1.3481846 
		-0.099629983 -0.35363972 1.3481839 -6.695256e-007 -0.33931357 1.3481853 0.099628098 
		-0.29749909 1.3481853 0.19118987 -0.23158592 1.3481839 0.26726076 -0.1469094 1.3481846 
		0.3216778 -0.050330725 1.3481853 0.35003495 0.050320212 1.3481839 0.35003585 0.14690565 
		1.3481884 0.32167673 0.23157991 1.3481853 0.26725769 0.29749081 1.3481861 0.19118935 
		0.33930457 1.3481869 0.099631108 0.35363069 1.3481869 7.2599164e-008;
	setAttr -s 330 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 
		0 3 4 0 4 5 0 5 6 0 6 7 
		0 7 8 0 8 9 0 9 10 0 10 11 
		0 11 12 0 12 13 0 13 14 0 14 15 
		0 15 16 0 16 17 0 17 18 0 18 19 
		0 19 20 0 20 21 0 21 0 0 22 23 
		1 23 24 1 24 25 1 25 26 1 26 27 
		1 27 28 1 28 29 1 29 30 1 30 31 
		1 31 32 1 32 33 1 33 34 1 34 35 
		1 35 36 1 36 37 1 37 38 1 38 39 
		1 39 40 1 40 41 1 41 42 1 42 43 
		1 43 22 1 0 22 1 1 23 1 2 24 
		1 3 25 1 4 26 1 5 27 1 6 28 
		1 7 29 1 8 30 1 9 31 1 10 32 
		1 11 33 1 12 34 1 13 35 1 14 36 
		1 15 37 1 16 38 1 17 39 1 18 40 
		1 19 41 1 20 42 1 21 43 1 44 0 
		1 44 1 1 44 2 1 44 3 1 44 4 
		1 44 5 1 44 6 1 44 7 1 44 8 
		1 44 9 1 44 10 1 44 11 1 44 12 
		1 44 13 1 44 14 1 44 15 1 44 16 
		1 44 17 1 44 18 1 44 19 1 44 20 
		1 44 21 1 22 45 1 23 46 1 45 46 
		0 24 47 1 46 47 0 25 48 1 47 48 
		0 26 49 1 48 49 0 27 50 1 49 50 
		0 28 51 1 50 51 0 29 52 1 51 52 
		0 30 53 1 52 53 0 31 54 1 53 54 
		0 32 55 1 54 55 0 33 56 1 55 56 
		0 34 57 1 56 57 0 35 58 1 57 58 
		0 36 59 1 58 59 0 37 60 1 59 60 
		0 38 61 1 60 61 0 39 62 1 61 62 
		0 40 63 1 62 63 0 41 64 1 63 64 
		0 42 65 1 64 65 0 43 66 1 65 66 
		0 66 45 0 45 67 1 46 68 1 67 68 
		0 47 69 1 68 69 0 48 70 1 69 70 
		0 49 71 1 70 71 0 50 72 1 71 72 
		0 51 73 1 72 73 0 52 74 1 73 74 
		0 53 75 1 74 75 0 54 76 1 75 76 
		0 55 77 1 76 77 0 56 78 1 77 78 
		0 57 79 1 78 79 0 58 80 1 79 80 
		0 59 81 1 80 81 0 60 82 1 81 82 
		0 61 83 1 82 83 0 62 84 1;
	setAttr ".ed[166:329]" 83 84 0 63 85 1 84 85 
		0 64 86 1 85 86 0 65 87 1 86 87 
		0 66 88 1 87 88 0 88 67 0 67 89 
		1 68 90 1 89 90 0 69 91 1 90 91 
		0 70 92 1 91 92 0 71 93 1 92 93 
		0 72 94 1 93 94 0 73 95 1 94 95 
		0 74 96 1 95 96 0 75 97 1 96 97 
		0 76 98 1 97 98 0 77 99 1 98 99 
		0 78 100 1 99 100 0 79 101 1 100 101 
		0 80 102 1 101 102 0 81 103 1 102 103 
		0 82 104 1 103 104 0 83 105 1 104 105 
		0 84 106 1 105 106 0 85 107 1 106 107 
		0 86 108 1 107 108 0 87 109 1 108 109 
		0 88 110 1 109 110 0 110 89 0 89 111 
		1 90 112 1 111 112 0 91 113 1 112 113 
		0 92 114 1 113 114 0 93 115 1 114 115 
		0 94 116 1 115 116 0 95 117 1 116 117 
		0 96 118 1 117 118 0 97 119 1 118 119 
		0 98 120 1 119 120 0 99 121 1 120 121 
		0 100 122 1 121 122 0 101 123 1 122 123 
		0 102 124 1 123 124 0 103 125 1 124 125 
		0 104 126 1 125 126 0 105 127 1 126 127 
		0 106 128 1 127 128 0 107 129 1 128 129 
		0 108 130 1 129 130 0 109 131 1 130 131 
		0 110 132 1 131 132 0 132 111 0 111 133 
		1 112 134 1 133 134 1 134 135 1 133 135 
		1 113 136 1 134 136 1 136 135 1 114 137 
		1 136 137 1 137 135 1 115 138 1 137 138 
		1 138 135 1 116 139 1 138 139 1 139 135 
		1 117 140 1 139 140 1 140 135 1 118 141 
		1 140 141 1 141 135 1 119 142 1 141 142 
		1 142 135 1 120 143 1 142 143 1 143 135 
		1 121 144 1 143 144 1 144 135 1 122 145 
		1 144 145 1 145 135 1 123 146 1 145 146 
		1 146 135 1 124 147 1 146 147 1 147 135 
		1 125 148 1 147 148 1 148 135 1 126 149 
		1 148 149 1 149 135 1 127 150 1 149 150 
		1 150 135 1 128 151 1 150 151 1 151 135 
		1 129 152 1 151 152 1 152 135 1 130 153 
		1 152 153 1 153 135 1 131 154 1 153 154 
		1 154 135 1 132 155 1 154 155 1 155 135 
		1 155 133 1;
	setAttr -s 176 ".fc[0:175]" -type "polyFaces" 
		f 4 0 45 -23 -45 
		mu 0 4 22 23 46 45 
		f 4 1 46 -24 -46 
		mu 0 4 23 24 47 46 
		f 4 2 47 -25 -47 
		mu 0 4 24 25 48 47 
		f 4 3 48 -26 -48 
		mu 0 4 25 26 49 48 
		f 4 4 49 -27 -49 
		mu 0 4 26 27 50 49 
		f 4 5 50 -28 -50 
		mu 0 4 27 28 51 50 
		f 4 6 51 -29 -51 
		mu 0 4 28 29 52 51 
		f 4 7 52 -30 -52 
		mu 0 4 29 30 53 52 
		f 4 8 53 -31 -53 
		mu 0 4 30 31 54 53 
		f 4 9 54 -32 -54 
		mu 0 4 31 32 55 54 
		f 4 10 55 -33 -55 
		mu 0 4 32 33 56 55 
		f 4 11 56 -34 -56 
		mu 0 4 33 34 57 56 
		f 4 12 57 -35 -57 
		mu 0 4 34 35 58 57 
		f 4 13 58 -36 -58 
		mu 0 4 35 36 59 58 
		f 4 14 59 -37 -59 
		mu 0 4 36 37 60 59 
		f 4 15 60 -38 -60 
		mu 0 4 37 38 61 60 
		f 4 16 61 -39 -61 
		mu 0 4 38 39 62 61 
		f 4 17 62 -40 -62 
		mu 0 4 39 40 63 62 
		f 4 18 63 -41 -63 
		mu 0 4 40 41 64 63 
		f 4 19 64 -42 -64 
		mu 0 4 41 42 65 64 
		f 4 20 65 -43 -65 
		mu 0 4 42 43 66 65 
		f 4 21 44 -44 -66 
		mu 0 4 43 44 67 66 
		f 3 -1 -67 67 
		mu 0 3 1 0 90 
		f 3 -2 -68 68 
		mu 0 3 2 1 90 
		f 3 -3 -69 69 
		mu 0 3 3 2 90 
		f 3 -4 -70 70 
		mu 0 3 4 3 90 
		f 3 -5 -71 71 
		mu 0 3 5 4 90 
		f 3 -6 -72 72 
		mu 0 3 6 5 90 
		f 3 -7 -73 73 
		mu 0 3 7 6 90 
		f 3 -8 -74 74 
		mu 0 3 8 7 90 
		f 3 -9 -75 75 
		mu 0 3 9 8 90 
		f 3 -10 -76 76 
		mu 0 3 10 9 90 
		f 3 -11 -77 77 
		mu 0 3 11 10 90 
		f 3 -12 -78 78 
		mu 0 3 12 11 90 
		f 3 -13 -79 79 
		mu 0 3 13 12 90 
		f 3 -14 -80 80 
		mu 0 3 14 13 90 
		f 3 -15 -81 81 
		mu 0 3 15 14 90 
		f 3 -16 -82 82 
		mu 0 3 16 15 90 
		f 3 -17 -83 83 
		mu 0 3 17 16 90 
		f 3 -18 -84 84 
		mu 0 3 18 17 90 
		f 3 -19 -85 85 
		mu 0 3 19 18 90 
		f 3 -20 -86 86 
		mu 0 3 20 19 90 
		f 3 -21 -87 87 
		mu 0 3 21 20 90 
		f 3 -22 -88 66 
		mu 0 3 0 21 90 
		f 3 266 267 -269 
		mu 0 3 180 181 91 
		f 3 270 271 -268 
		mu 0 3 181 182 91 
		f 3 273 274 -272 
		mu 0 3 182 183 91 
		f 3 276 277 -275 
		mu 0 3 183 184 91 
		f 3 279 280 -278 
		mu 0 3 184 185 91 
		f 3 282 283 -281 
		mu 0 3 185 186 91 
		f 3 285 286 -284 
		mu 0 3 186 187 91 
		f 3 288 289 -287 
		mu 0 3 187 188 91 
		f 3 291 292 -290 
		mu 0 3 188 189 91 
		f 3 294 295 -293 
		mu 0 3 189 190 91 
		f 3 297 298 -296 
		mu 0 3 190 191 91 
		f 3 300 301 -299 
		mu 0 3 191 192 91 
		f 3 303 304 -302 
		mu 0 3 192 193 91 
		f 3 306 307 -305 
		mu 0 3 193 194 91 
		f 3 309 310 -308 
		mu 0 3 194 195 91 
		f 3 312 313 -311 
		mu 0 3 195 196 91 
		f 3 315 316 -314 
		mu 0 3 196 197 91 
		f 3 318 319 -317 
		mu 0 3 197 198 91 
		f 3 321 322 -320 
		mu 0 3 198 199 91 
		f 3 324 325 -323 
		mu 0 3 199 200 91 
		f 3 327 328 -326 
		mu 0 3 200 201 91 
		f 3 329 268 -329 
		mu 0 3 201 180 91 
		f 4 22 89 -91 -89 
		mu 0 4 88 87 93 92 
		f 4 23 91 -93 -90 
		mu 0 4 87 86 94 93 
		f 4 24 93 -95 -92 
		mu 0 4 86 85 95 94 
		f 4 25 95 -97 -94 
		mu 0 4 85 84 96 95 
		f 4 26 97 -99 -96 
		mu 0 4 84 83 97 96 
		f 4 27 99 -101 -98 
		mu 0 4 83 82 98 97 
		f 4 28 101 -103 -100 
		mu 0 4 82 81 99 98 
		f 4 29 103 -105 -102 
		mu 0 4 81 80 100 99 
		f 4 30 105 -107 -104 
		mu 0 4 80 79 101 100 
		f 4 31 107 -109 -106 
		mu 0 4 79 78 102 101 
		f 4 32 109 -111 -108 
		mu 0 4 78 77 103 102 
		f 4 33 111 -113 -110 
		mu 0 4 77 76 104 103 
		f 4 34 113 -115 -112 
		mu 0 4 76 75 105 104 
		f 4 35 115 -117 -114 
		mu 0 4 75 74 106 105 
		f 4 36 117 -119 -116 
		mu 0 4 74 73 107 106 
		f 4 37 119 -121 -118 
		mu 0 4 73 72 108 107 
		f 4 38 121 -123 -120 
		mu 0 4 72 71 109 108 
		f 4 39 123 -125 -122 
		mu 0 4 71 70 110 109 
		f 4 40 125 -127 -124 
		mu 0 4 70 69 111 110 
		f 4 41 127 -129 -126 
		mu 0 4 69 68 112 111 
		f 4 42 129 -131 -128 
		mu 0 4 68 89 113 112 
		f 4 43 88 -132 -130 
		mu 0 4 89 88 92 113 
		f 4 90 133 -135 -133 
		mu 0 4 92 93 115 114 
		f 4 92 135 -137 -134 
		mu 0 4 93 94 116 115 
		f 4 94 137 -139 -136 
		mu 0 4 94 95 117 116 
		f 4 96 139 -141 -138 
		mu 0 4 95 96 118 117 
		f 4 98 141 -143 -140 
		mu 0 4 96 97 119 118 
		f 4 100 143 -145 -142 
		mu 0 4 97 98 120 119 
		f 4 102 145 -147 -144 
		mu 0 4 98 99 121 120 
		f 4 104 147 -149 -146 
		mu 0 4 99 100 122 121 
		f 4 106 149 -151 -148 
		mu 0 4 100 101 123 122 
		f 4 108 151 -153 -150 
		mu 0 4 101 102 124 123 
		f 4 110 153 -155 -152 
		mu 0 4 102 103 125 124 
		f 4 112 155 -157 -154 
		mu 0 4 103 104 126 125 
		f 4 114 157 -159 -156 
		mu 0 4 104 105 127 126 
		f 4 116 159 -161 -158 
		mu 0 4 105 106 128 127 
		f 4 118 161 -163 -160 
		mu 0 4 106 107 129 128 
		f 4 120 163 -165 -162 
		mu 0 4 107 108 130 129 
		f 4 122 165 -167 -164 
		mu 0 4 108 109 131 130 
		f 4 124 167 -169 -166 
		mu 0 4 109 110 132 131 
		f 4 126 169 -171 -168 
		mu 0 4 110 111 133 132 
		f 4 128 171 -173 -170 
		mu 0 4 111 112 134 133 
		f 4 130 173 -175 -172 
		mu 0 4 112 113 135 134 
		f 4 131 132 -176 -174 
		mu 0 4 113 92 114 135 
		f 4 134 177 -179 -177 
		mu 0 4 114 115 137 136 
		f 4 136 179 -181 -178 
		mu 0 4 115 116 138 137 
		f 4 138 181 -183 -180 
		mu 0 4 116 117 139 138 
		f 4 140 183 -185 -182 
		mu 0 4 117 118 140 139 
		f 4 142 185 -187 -184 
		mu 0 4 118 119 141 140 
		f 4 144 187 -189 -186 
		mu 0 4 119 120 142 141 
		f 4 146 189 -191 -188 
		mu 0 4 120 121 143 142 
		f 4 148 191 -193 -190 
		mu 0 4 121 122 144 143 
		f 4 150 193 -195 -192 
		mu 0 4 122 123 145 144 
		f 4 152 195 -197 -194 
		mu 0 4 123 124 146 145 
		f 4 154 197 -199 -196 
		mu 0 4 124 125 147 146 
		f 4 156 199 -201 -198 
		mu 0 4 125 126 148 147 
		f 4 158 201 -203 -200 
		mu 0 4 126 127 149 148 
		f 4 160 203 -205 -202 
		mu 0 4 127 128 150 149 
		f 4 162 205 -207 -204 
		mu 0 4 128 129 151 150 
		f 4 164 207 -209 -206 
		mu 0 4 129 130 152 151 
		f 4 166 209 -211 -208 
		mu 0 4 130 131 153 152 
		f 4 168 211 -213 -210 
		mu 0 4 131 132 154 153 
		f 4 170 213 -215 -212 
		mu 0 4 132 133 155 154 
		f 4 172 215 -217 -214 
		mu 0 4 133 134 156 155 
		f 4 174 217 -219 -216 
		mu 0 4 134 135 157 156 
		f 4 175 176 -220 -218 
		mu 0 4 135 114 136 157 
		f 4 178 221 -223 -221 
		mu 0 4 136 137 159 158 
		f 4 180 223 -225 -222 
		mu 0 4 137 138 160 159 
		f 4 182 225 -227 -224 
		mu 0 4 138 139 161 160 
		f 4 184 227 -229 -226 
		mu 0 4 139 140 162 161 
		f 4 186 229 -231 -228 
		mu 0 4 140 141 163 162 
		f 4 188 231 -233 -230 
		mu 0 4 141 142 164 163 
		f 4 190 233 -235 -232 
		mu 0 4 142 143 165 164 
		f 4 192 235 -237 -234 
		mu 0 4 143 144 166 165 
		f 4 194 237 -239 -236 
		mu 0 4 144 145 167 166 
		f 4 196 239 -241 -238 
		mu 0 4 145 146 168 167 
		f 4 198 241 -243 -240 
		mu 0 4 146 147 169 168 
		f 4 200 243 -245 -242 
		mu 0 4 147 148 170 169 
		f 4 202 245 -247 -244 
		mu 0 4 148 149 171 170 
		f 4 204 247 -249 -246 
		mu 0 4 149 150 172 171 
		f 4 206 249 -251 -248 
		mu 0 4 150 151 173 172 
		f 4 208 251 -253 -250 
		mu 0 4 151 152 174 173 
		f 4 210 253 -255 -252 
		mu 0 4 152 153 175 174 
		f 4 212 255 -257 -254 
		mu 0 4 153 154 176 175 
		f 4 214 257 -259 -256 
		mu 0 4 154 155 177 176 
		f 4 216 259 -261 -258 
		mu 0 4 155 156 178 177 
		f 4 218 261 -263 -260 
		mu 0 4 156 157 179 178 
		f 4 219 220 -264 -262 
		mu 0 4 157 136 158 179 
		f 4 222 265 -267 -265 
		mu 0 4 158 159 181 180 
		f 4 224 269 -271 -266 
		mu 0 4 159 160 182 181 
		f 4 226 272 -274 -270 
		mu 0 4 160 161 183 182 
		f 4 228 275 -277 -273 
		mu 0 4 161 162 184 183 
		f 4 230 278 -280 -276 
		mu 0 4 162 163 185 184 
		f 4 232 281 -283 -279 
		mu 0 4 163 164 186 185 
		f 4 234 284 -286 -282 
		mu 0 4 164 165 187 186 
		f 4 236 287 -289 -285 
		mu 0 4 165 166 188 187 
		f 4 238 290 -292 -288 
		mu 0 4 166 167 189 188 
		f 4 240 293 -295 -291 
		mu 0 4 167 168 190 189 
		f 4 242 296 -298 -294 
		mu 0 4 168 169 191 190 
		f 4 244 299 -301 -297 
		mu 0 4 169 170 192 191 
		f 4 246 302 -304 -300 
		mu 0 4 170 171 193 192 
		f 4 248 305 -307 -303 
		mu 0 4 171 172 194 193 
		f 4 250 308 -310 -306 
		mu 0 4 172 173 195 194 
		f 4 252 311 -313 -309 
		mu 0 4 173 174 196 195 
		f 4 254 314 -316 -312 
		mu 0 4 174 175 197 196 
		f 4 256 317 -319 -315 
		mu 0 4 175 176 198 197 
		f 4 258 320 -322 -318 
		mu 0 4 176 177 199 198 
		f 4 260 323 -325 -321 
		mu 0 4 177 178 200 199 
		f 4 262 326 -328 -324 
		mu 0 4 178 179 201 200 
		f 4 263 264 -330 -327 
		mu 0 4 179 158 180 201 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
createNode transform -n "button3";
	setAttr ".t" -type "double3" 4.0628588294411916 0.88688967825181797 0 ;
createNode mesh -n "buttonShape3" -p "button3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 202 ".uvst[0].uvsp[0:201]" -type "float2" 0.64992076 0.11222929 
		0.63144583 0.071774885 0.60232198 0.038164139 0.56490856 0.014120027 0.5222367 0.0015904158 
		0.4777633 0.0015904158 0.43509141 0.014120027 0.39767802 0.038164139 0.36855415 0.071774885 
		0.35007924 0.11222929 0.34375 0.15625 0.35007924 0.20027071 0.36855415 0.24072513 
		0.39767802 0.27433586 0.43509141 0.29837999 0.4777633 0.3109096 0.5222367 0.3109096 
		0.56490862 0.29837999 0.60232198 0.27433586 0.63144588 0.24072513 0.64992076 0.20027071 
		0.65625 0.15625 0.375 0.3125 0.38636363 0.3125 0.39772725 0.3125 0.40909088 0.3125 
		0.4204545 0.3125 0.43181813 0.3125 0.44318175 0.3125 0.45454538 0.3125 0.465909 0.3125 
		0.47727263 0.3125 0.48863626 0.3125 0.49999988 0.3125 0.51136351 0.3125 0.52272713 
		0.3125 0.53409076 0.3125 0.54545438 0.3125 0.55681801 0.3125 0.56818163 0.3125 0.57954526 
		0.3125 0.59090889 0.3125 0.60227251 0.3125 0.61363614 0.3125 0.62499976 0.3125 0.375 
		0.68843985 0.38636363 0.68843985 0.39772725 0.68843985 0.40909088 0.68843985 0.4204545 
		0.68843985 0.43181813 0.68843985 0.44318175 0.68843985 0.45454538 0.68843985 0.465909 
		0.68843985 0.47727263 0.68843985 0.48863626 0.68843985 0.49999988 0.68843985 0.51136351 
		0.68843985 0.52272713 0.68843985 0.53409076 0.68843985 0.54545438 0.68843985 0.55681801 
		0.68843985 0.56818163 0.68843985 0.57954526 0.68843985 0.59090889 0.68843985 0.60227251 
		0.68843985 0.61363614 0.68843985 0.62499976 0.68843985 0.64992076 0.79972929 0.63144583 
		0.7592749 0.60232198 0.72566414 0.56490856 0.70162004 0.5222367 0.68909043 0.4777633 
		0.68909043 0.43509141 0.70162004 0.39767802 0.72566414 0.36855415 0.7592749 0.35007924 
		0.79972929 0.34375 0.84375 0.35007924 0.88777071 0.36855415 0.92822516 0.39767802 
		0.96183586 0.43509141 0.98588002 0.4777633 0.99840963 0.5222367 0.99840963 0.56490862 
		0.98588002 0.60232198 0.96183586 0.63144588 0.92822516 0.64992076 0.88777071 0.65625 
		0.84375 0.5 0.15000001 0.5 0.83749998 0.64992076 0.88777071 0.63144588 0.92822516 
		0.60232198 0.96183586 0.56490862 0.98588002 0.5222367 0.99840963 0.4777633 0.99840963 
		0.43509141 0.98588002 0.39767802 0.96183586 0.36855415 0.92822516 0.35007924 0.88777071 
		0.34375 0.84375 0.35007924 0.79972929 0.36855415 0.7592749 0.39767802 0.72566414 
		0.43509141 0.70162004 0.4777633 0.68909043 0.5222367 0.68909043 0.56490856 0.70162004 
		0.60232198 0.72566414 0.63144583 0.7592749 0.64992076 0.79972929 0.65625 0.84375 
		0.64992076 0.88777071 0.63144588 0.92822516 0.60232198 0.96183586 0.56490862 0.98588002 
		0.5222367 0.99840963 0.4777633 0.99840963 0.43509141 0.98588002 0.39767802 0.96183586 
		0.36855415 0.92822516 0.35007924 0.88777071 0.34375 0.84375 0.35007924 0.79972929 
		0.36855415 0.7592749 0.39767802 0.72566414 0.43509141 0.70162004 0.4777633 0.68909043 
		0.5222367 0.68909043 0.56490856 0.70162004 0.60232198 0.72566414 0.63144583 0.7592749 
		0.64992076 0.79972929 0.65625 0.84375 0.64992076 0.88777071 0.63144588 0.92822516 
		0.60232198 0.96183586 0.56490862 0.98588002 0.5222367 0.99840963 0.4777633 0.99840963 
		0.43509141 0.98588002 0.39767802 0.96183586 0.36855415 0.92822516 0.35007924 0.88777071 
		0.34375 0.84375 0.35007924 0.79972929 0.36855415 0.7592749 0.39767802 0.72566414 
		0.43509141 0.70162004 0.4777633 0.68909043 0.5222367 0.68909043 0.56490856 0.70162004 
		0.60232198 0.72566414 0.63144583 0.7592749 0.64992076 0.79972929 0.65625 0.84375 
		0.64992076 0.88777071 0.63144588 0.92822516 0.60232198 0.96183586 0.56490862 0.98588002 
		0.5222367 0.99840963 0.4777633 0.99840963 0.43509141 0.98588002 0.39767802 0.96183586 
		0.36855415 0.92822516 0.35007924 0.88777071 0.34375 0.84375 0.35007924 0.79972929 
		0.36855415 0.7592749 0.39767802 0.72566414 0.43509141 0.70162004 0.4777633 0.68909043 
		0.5222367 0.68909043 0.56490856 0.70162004 0.60232198 0.72566414 0.63144583 0.7592749 
		0.64992076 0.79972929 0.65625 0.84375 0.64992076 0.88777071 0.63144588 0.92822516 
		0.60232198 0.96183586 0.56490862 0.98588002 0.5222367 0.99840963 0.4777633 0.99840963 
		0.43509141 0.98588002 0.39767802 0.96183586 0.36855415 0.92822516 0.35007924 0.88777071 
		0.34375 0.84375 0.35007924 0.79972929 0.36855415 0.7592749 0.39767802 0.72566414 
		0.43509141 0.70162004 0.4777633 0.68909043 0.5222367 0.68909043 0.56490856 0.70162004 
		0.60232198 0.72566414 0.63144583 0.7592749 0.64992076 0.79972929 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 90 ".pt";
	setAttr ".pt[67:155]" -type "float3" 5.6897909e-010 7.1687538e-011 -4.0269146e-011  
		1.2412495e-010 -1.8099957e-011 -3.9902682e-011  -1.4198311e-010 -1.8099957e-011 7.3502315e-011  
		3.5817019e-011 -1.6222194e-011 4.6746501e-010  -3.2078923e-011 2.9470915e-011 -4.709082e-010  
		3.2078912e-011 7.1687538e-011 -1.5101743e-010  4.9424158e-012 2.7872017e-011 -6.8888291e-011  
		4.857335e-011 -1.6222194e-011 -2.4983472e-011  4.6591198e-010 -1.6222194e-011 8.0995273e-011  
		-1.0748095e-010 -1.8099957e-011 -1.5421697e-011  -3.9232265e-010 -2.1855658e-011 
		3.1118063e-016  7.7142667e-011 2.7872017e-011 2.7566532e-011  3.3232506e-010 -2.1855658e-011 
		-9.8534521e-011  -3.6362929e-010 7.1687538e-011 -6.2097183e-010  -3.5817106e-011 
		3.1488197e-011 4.5503776e-010  3.2078912e-011 7.1687538e-011 1.1593875e-010  -5.948847e-011 
		-2.1855658e-011 4.709082e-010  3.5817019e-011 7.1687538e-011 6.2082955e-010  -9.7735382e-011 
		7.1687538e-011 -6.2097183e-010  1.2412495e-010 -1.8099957e-011 -8.9764855e-011  5.6897909e-010 
		7.1687538e-011 -3.4995628e-011  -1.5637884e-010 -1.8099957e-011 8.480384e-017  0.023912489 
		-0.053810142 -0.0079983138  0.020615781 -0.053810235 -0.015216729  0.015419211 -0.053810377 
		-0.021213986  0.0087436372 -0.053810235 -0.025504231  0.0011291722 -0.053810377 -0.027739905  
		-0.0068061347 -0.053810328 -0.02773989  -0.014419849 -0.05381028 -0.025504302  -0.02109585 
		-0.05381028 -0.021214059  -0.02629246 -0.053810377 -0.015216746  -0.029588887 -0.05381028 
		-0.0079983305  -0.030718371 -0.053810328 -0.00014365723  -0.029588981 -0.053810187 
		0.007710964  -0.026292646 -0.053810187 0.014929296  -0.021095943 -0.053810377 0.020926533  
		-0.014420037 -0.053810377 0.025216801  -0.0068059 -0.05381028 0.027452476  0.0011294098 
		-0.053810328 0.027452486  0.0087436847 -0.05381 0.025216863  0.015419117 -0.05381028 
		0.020926671  0.020615781 -0.053810235 0.014929356  0.023912303 -0.053810235 0.0077108787  
		0.02504185 -0.053810142 -0.00014372324  0.023912441 -0.036410291 -0.0079984888  0.020615915 
		-0.036410291 -0.0152169  0.015419117 -0.036410384 -0.021214023  0.0087434025 -0.036410194 
		-0.025504285  0.0011291722 -0.036410291 -0.027740043  -0.0068058502 -0.036410242 
		-0.027740005  -0.014419708 -0.036410335 -0.025504382  -0.021095792 -0.036410242 -0.021214079  
		-0.026292682 -0.036410429 -0.015216813  -0.029589074 -0.036410291 -0.0079983948  
		-0.030718571 -0.036410335 -0.00014375625  -0.029589027 -0.036410242 0.0077108154  
		-0.026292495 -0.036410242 0.014929419  -0.021095943 -0.036410384 0.020926757  -0.014420084 
		-0.036410335 0.02521693  -0.0068060406 -0.036410335 0.027452579  0.0011292191 -0.036410335 
		0.02745262  0.0087438785 -0.036410008 0.025216838  0.015419396 -0.036410194 0.020926552  
		0.020615781 -0.036410149 0.014929419  0.023912348 -0.036410194 0.0077110603  0.025041897 
		-0.036410101 -0.00014369427  0.01850633 -0.033841364 -0.0064111236  0.015875949 -0.033841364 
		-0.012170712  -0.0028383646 -0.033841271 -0.0001437225  0.011729382 -0.033841413 
		-0.016955862  0.0064027798 -0.033841219 -0.0203791  0.00032736061 -0.033841413 -0.022163002  
		-0.0060040858 -0.033841413 -0.022162963  -0.012079266 -0.033841457 -0.020379171  
		-0.017406208 -0.033841413 -0.01695591  -0.02155287 -0.03384155 -0.012170649  -0.02418296 
		-0.033841364 -0.0064110397  -0.025084116 -0.033841413 -0.00014376431  -0.024182912 
		-0.033841316 0.0061234767  -0.021552529 -0.033841316 0.011883258  -0.017406208 -0.033841413 
		0.016668571  -0.012079559 -0.033841364 0.02009172  -0.0060041794 -0.033841316 0.021875564  
		0.00032736061 -0.033841413 0.021875609  0.0064031552 -0.033841122 0.020091655  0.011729669 
		-0.033841316 0.016668374  0.015875855 -0.033841271 0.011883226  0.018506195 -0.033841219 
		0.0061236676  0.019407393 -0.033841219 -0.00014371774 ;
	setAttr -s 156 ".vt[0:155]"  0.6596505 -1.0000011 -0.19369078 0.57836217 
		-1.0000004 -0.37169024 0.45021689 -1.0000004 -0.51957756 0.28559616 -1.0000019 -0.62537187 
		0.09784098 -1.0000004 -0.68050224 -0.09784548 -1.0000049 -0.68050236 -0.28559768 
		-1.0000004 -0.62537223 -0.45021912 -1.0000026 -0.51957816 -0.57836366 -1.0000019 
		-0.37169087 -0.65965277 -1.0000019 -0.19369143 -0.68750083 -1.0000011 -2.4586916e-007 
		-0.65965277 -1.0000019 0.19369096 -0.57836366 -1.0000019 0.37169045 -0.45021912 -1.0000026 
		0.5195778 -0.28559843 -0.99999958 0.62537199 -0.097846232 -1.0000042 0.6805023 0.09784098 
		-1.0000004 0.68050236 0.28559616 -1.0000019 0.62537205 0.45021689 -1.0000004 0.51957792 
		0.57836139 -0.99999958 0.37169063 0.6596505 -1.0000011 0.19369116 0.68749928 -1.0000011 
		0 0.65964675 0.99999583 -0.19369078 0.57836068 0.99999887 -0.37169024 0.45021537 
		0.99999887 -0.51957756 0.28559542 0.9999966 -0.62537187 0.097840227 0.99999809 -0.68050224 
		-0.097841725 0.99999958 -0.68050236 -0.28559917 0.99999887 -0.62537223 -0.45021763 
		0.99999958 -0.51957816 -0.57836217 0.99999887 -0.37169087 -0.65965426 0.99999738 
		-0.19369143 -0.68750232 0.99999809 -2.4586916e-007 -0.65965426 0.99999738 0.19369096 
		-0.57836294 0.99999958 0.37169045 -0.45021763 0.99999958 0.5195778 -0.28559917 0.99999887 
		0.62537199 -0.097841725 0.99999958 0.6805023 0.097839475 0.99999887 0.68050236 0.28559467 
		0.99999738 0.62537205 0.45021537 0.99999887 0.51957792 0.57836068 0.99999887 0.37169063 
		0.65964675 0.99999583 0.19369116 0.68749779 0.99999809 0 -2.252774e-006 -1.0000026 
		0 0.58805436 1.1704745 -0.17266934 0.51558715 1.170473 -0.33135024 0.40135196 1.1704745 
		-0.46318728 0.25460175 1.1704775 -0.55749953 0.087218396 1.1704738 -0.60664636 -0.087222151 
		1.1704775 -0.60664648 -0.25460175 1.1704761 -0.55749959 -0.40135497 1.1704761 -0.46318737 
		-0.5155924 1.1704752 -0.33135077 -0.58806109 1.1704752 -0.17266981 -0.61288893 1.1704745 
		-2.1926414e-007 -0.58805889 1.1704775 0.17266934 -0.51559389 1.1704768 0.33135033 
		-0.40135571 1.1704768 0.46318704 -0.25460175 1.1704761 0.55749935 -0.087221399 1.1704768 
		0.60664636 0.087221399 1.1704768 0.60664642 0.25460175 1.1704775 0.55749959 0.40135121 
		1.1704752 0.46318752 0.51558715 1.170473 0.33135045 0.58805513 1.1704738 0.17266956 
		0.6128844 1.1704775 1.4666497e-008 0.46195084 1.2523426 -0.13564186 0.40502399 1.2523419 
		-0.2602945 0.31528547 1.2523419 -0.36385965 0.20000127 1.252341 -0.43794772 0.068512112 
		1.2523389 -0.47655541 -0.06851887 1.2523426 -0.47655505 -0.20000277 1.2523441 -0.43794742 
		-0.31528923 1.252341 -0.3638598 -0.40502775 1.252341 -0.26029474 -0.46195608 1.2523419 
		-0.13564205 -0.48145759 1.2523433 -7.1205847e-007 -0.46195382 1.2523441 0.13564122 
		-0.40502998 1.2523433 0.26029459 -0.31529075 1.2523426 0.36385974 -0.20000803 1.2523403 
		0.43794739 -0.06851887 1.2523426 0.47655505 0.06851662 1.2523433 0.47655514 0.20000127 
		1.2523426 0.43794751 0.31528473 1.2523426 0.36385974 0.40502399 1.2523419 0.26029453 
		0.46195084 1.2523426 0.13564201 0.48145309 1.2523419 -2.7866344e-008 0.42524713 1.0307462 
		-0.12486247 0.37284011 1.0307447 -0.23961177 0.29023162 1.0307424 -0.33494857 0.18411171 
		1.0307447 -0.40314963 0.063066408 1.0307424 -0.43868953 -0.063079171 1.0307432 -0.43868938 
		-0.18411246 1.030744 -0.4031508 -0.29023913 1.030744 -0.33494988 -0.37284836 1.0307424 
		-0.23961198 -0.42525089 1.030744 -0.12486273 -0.44320625 1.0307432 1.0313739e-006 
		-0.42525238 1.0307455 0.12486396 -0.37285137 1.0307455 0.23961198 -0.29024065 1.0307424 
		0.33494848 -0.18411547 1.0307424 0.40314975 -0.063075416 1.030744 0.43868986 0.063070163 
		1.0307432 0.43868995 0.18411246 1.0307485 0.4031508 0.29023013 1.030744 0.33495077 
		0.37284011 1.0307447 0.23961292 0.42524412 1.0307447 0.12486264 0.44320023 1.0307462 
		-1.5849984e-008 0.42524639 1.3073471 -0.12486524 0.37284234 1.3073471 -0.23961446 
		0.29023013 1.3073455 -0.33494917 0.18410796 1.3073486 -0.40315041 0.063066408 1.3073471 
		-0.43869174 -0.063074671 1.3073478 -0.43869108 -0.18411021 1.3073463 -0.40315196 
		-0.29023838 1.3073478 -0.33495006 -0.37285212 1.3073448 -0.23961319 -0.4252539 1.3073471 
		-0.12486374 -0.44320926 1.3073463 -5.3884605e-007 -0.42525315 1.3073478 0.12486165 
		-0.37284911 1.3073478 0.23961391 -0.29024065 1.3073455 0.33495206 -0.18411621 1.3073463 
		0.40315187 -0.063077673 1.3073463 0.43869141 0.063067161 1.3073463 0.43869212 0.18411547 
		1.3073516 0.40315047 0.29023463 1.3073486 0.3349489 0.37284011 1.3073493 0.23961391 
		0.42524487 1.3073486 0.1248655 0.44320098 1.30735 4.4543128e-007 0.3393068 1.3481846 
		-0.099631302 0.29749233 1.3481846 -0.19119003 -4.5055481e-006 1.3481861 -2.6575837e-009 
		0.2315754 1.3481839 -0.26725835 0.14689964 1.3481869 -0.32167661 0.050320212 1.3481839 
		-0.35003495 -0.050329223 1.3481839 -0.35003433 -0.14690489 1.3481832 -0.32167783 
		-0.23158592 1.3481839 -0.26725906 -0.29750434 1.3481816 -0.19118907 -0.33931431 1.3481846 
		-0.099629983 -0.35363972 1.3481839 -6.695256e-007 -0.33931357 1.3481853 0.099628098 
		-0.29749909 1.3481853 0.19118987 -0.23158592 1.3481839 0.26726076 -0.1469094 1.3481846 
		0.3216778 -0.050330725 1.3481853 0.35003495 0.050320212 1.3481839 0.35003585 0.14690565 
		1.3481884 0.32167673 0.23157991 1.3481853 0.26725769 0.29749081 1.3481861 0.19118935 
		0.33930457 1.3481869 0.099631108 0.35363069 1.3481869 7.2599164e-008;
	setAttr -s 330 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 
		0 3 4 0 4 5 0 5 6 0 6 7 
		0 7 8 0 8 9 0 9 10 0 10 11 
		0 11 12 0 12 13 0 13 14 0 14 15 
		0 15 16 0 16 17 0 17 18 0 18 19 
		0 19 20 0 20 21 0 21 0 0 22 23 
		1 23 24 1 24 25 1 25 26 1 26 27 
		1 27 28 1 28 29 1 29 30 1 30 31 
		1 31 32 1 32 33 1 33 34 1 34 35 
		1 35 36 1 36 37 1 37 38 1 38 39 
		1 39 40 1 40 41 1 41 42 1 42 43 
		1 43 22 1 0 22 1 1 23 1 2 24 
		1 3 25 1 4 26 1 5 27 1 6 28 
		1 7 29 1 8 30 1 9 31 1 10 32 
		1 11 33 1 12 34 1 13 35 1 14 36 
		1 15 37 1 16 38 1 17 39 1 18 40 
		1 19 41 1 20 42 1 21 43 1 44 0 
		1 44 1 1 44 2 1 44 3 1 44 4 
		1 44 5 1 44 6 1 44 7 1 44 8 
		1 44 9 1 44 10 1 44 11 1 44 12 
		1 44 13 1 44 14 1 44 15 1 44 16 
		1 44 17 1 44 18 1 44 19 1 44 20 
		1 44 21 1 22 45 1 23 46 1 45 46 
		0 24 47 1 46 47 0 25 48 1 47 48 
		0 26 49 1 48 49 0 27 50 1 49 50 
		0 28 51 1 50 51 0 29 52 1 51 52 
		0 30 53 1 52 53 0 31 54 1 53 54 
		0 32 55 1 54 55 0 33 56 1 55 56 
		0 34 57 1 56 57 0 35 58 1 57 58 
		0 36 59 1 58 59 0 37 60 1 59 60 
		0 38 61 1 60 61 0 39 62 1 61 62 
		0 40 63 1 62 63 0 41 64 1 63 64 
		0 42 65 1 64 65 0 43 66 1 65 66 
		0 66 45 0 45 67 1 46 68 1 67 68 
		0 47 69 1 68 69 0 48 70 1 69 70 
		0 49 71 1 70 71 0 50 72 1 71 72 
		0 51 73 1 72 73 0 52 74 1 73 74 
		0 53 75 1 74 75 0 54 76 1 75 76 
		0 55 77 1 76 77 0 56 78 1 77 78 
		0 57 79 1 78 79 0 58 80 1 79 80 
		0 59 81 1 80 81 0 60 82 1 81 82 
		0 61 83 1 82 83 0 62 84 1;
	setAttr ".ed[166:329]" 83 84 0 63 85 1 84 85 
		0 64 86 1 85 86 0 65 87 1 86 87 
		0 66 88 1 87 88 0 88 67 0 67 89 
		1 68 90 1 89 90 0 69 91 1 90 91 
		0 70 92 1 91 92 0 71 93 1 92 93 
		0 72 94 1 93 94 0 73 95 1 94 95 
		0 74 96 1 95 96 0 75 97 1 96 97 
		0 76 98 1 97 98 0 77 99 1 98 99 
		0 78 100 1 99 100 0 79 101 1 100 101 
		0 80 102 1 101 102 0 81 103 1 102 103 
		0 82 104 1 103 104 0 83 105 1 104 105 
		0 84 106 1 105 106 0 85 107 1 106 107 
		0 86 108 1 107 108 0 87 109 1 108 109 
		0 88 110 1 109 110 0 110 89 0 89 111 
		1 90 112 1 111 112 0 91 113 1 112 113 
		0 92 114 1 113 114 0 93 115 1 114 115 
		0 94 116 1 115 116 0 95 117 1 116 117 
		0 96 118 1 117 118 0 97 119 1 118 119 
		0 98 120 1 119 120 0 99 121 1 120 121 
		0 100 122 1 121 122 0 101 123 1 122 123 
		0 102 124 1 123 124 0 103 125 1 124 125 
		0 104 126 1 125 126 0 105 127 1 126 127 
		0 106 128 1 127 128 0 107 129 1 128 129 
		0 108 130 1 129 130 0 109 131 1 130 131 
		0 110 132 1 131 132 0 132 111 0 111 133 
		1 112 134 1 133 134 1 134 135 1 133 135 
		1 113 136 1 134 136 1 136 135 1 114 137 
		1 136 137 1 137 135 1 115 138 1 137 138 
		1 138 135 1 116 139 1 138 139 1 139 135 
		1 117 140 1 139 140 1 140 135 1 118 141 
		1 140 141 1 141 135 1 119 142 1 141 142 
		1 142 135 1 120 143 1 142 143 1 143 135 
		1 121 144 1 143 144 1 144 135 1 122 145 
		1 144 145 1 145 135 1 123 146 1 145 146 
		1 146 135 1 124 147 1 146 147 1 147 135 
		1 125 148 1 147 148 1 148 135 1 126 149 
		1 148 149 1 149 135 1 127 150 1 149 150 
		1 150 135 1 128 151 1 150 151 1 151 135 
		1 129 152 1 151 152 1 152 135 1 130 153 
		1 152 153 1 153 135 1 131 154 1 153 154 
		1 154 135 1 132 155 1 154 155 1 155 135 
		1 155 133 1;
	setAttr -s 176 ".fc[0:175]" -type "polyFaces" 
		f 4 0 45 -23 -45 
		mu 0 4 22 23 46 45 
		f 4 1 46 -24 -46 
		mu 0 4 23 24 47 46 
		f 4 2 47 -25 -47 
		mu 0 4 24 25 48 47 
		f 4 3 48 -26 -48 
		mu 0 4 25 26 49 48 
		f 4 4 49 -27 -49 
		mu 0 4 26 27 50 49 
		f 4 5 50 -28 -50 
		mu 0 4 27 28 51 50 
		f 4 6 51 -29 -51 
		mu 0 4 28 29 52 51 
		f 4 7 52 -30 -52 
		mu 0 4 29 30 53 52 
		f 4 8 53 -31 -53 
		mu 0 4 30 31 54 53 
		f 4 9 54 -32 -54 
		mu 0 4 31 32 55 54 
		f 4 10 55 -33 -55 
		mu 0 4 32 33 56 55 
		f 4 11 56 -34 -56 
		mu 0 4 33 34 57 56 
		f 4 12 57 -35 -57 
		mu 0 4 34 35 58 57 
		f 4 13 58 -36 -58 
		mu 0 4 35 36 59 58 
		f 4 14 59 -37 -59 
		mu 0 4 36 37 60 59 
		f 4 15 60 -38 -60 
		mu 0 4 37 38 61 60 
		f 4 16 61 -39 -61 
		mu 0 4 38 39 62 61 
		f 4 17 62 -40 -62 
		mu 0 4 39 40 63 62 
		f 4 18 63 -41 -63 
		mu 0 4 40 41 64 63 
		f 4 19 64 -42 -64 
		mu 0 4 41 42 65 64 
		f 4 20 65 -43 -65 
		mu 0 4 42 43 66 65 
		f 4 21 44 -44 -66 
		mu 0 4 43 44 67 66 
		f 3 -1 -67 67 
		mu 0 3 1 0 90 
		f 3 -2 -68 68 
		mu 0 3 2 1 90 
		f 3 -3 -69 69 
		mu 0 3 3 2 90 
		f 3 -4 -70 70 
		mu 0 3 4 3 90 
		f 3 -5 -71 71 
		mu 0 3 5 4 90 
		f 3 -6 -72 72 
		mu 0 3 6 5 90 
		f 3 -7 -73 73 
		mu 0 3 7 6 90 
		f 3 -8 -74 74 
		mu 0 3 8 7 90 
		f 3 -9 -75 75 
		mu 0 3 9 8 90 
		f 3 -10 -76 76 
		mu 0 3 10 9 90 
		f 3 -11 -77 77 
		mu 0 3 11 10 90 
		f 3 -12 -78 78 
		mu 0 3 12 11 90 
		f 3 -13 -79 79 
		mu 0 3 13 12 90 
		f 3 -14 -80 80 
		mu 0 3 14 13 90 
		f 3 -15 -81 81 
		mu 0 3 15 14 90 
		f 3 -16 -82 82 
		mu 0 3 16 15 90 
		f 3 -17 -83 83 
		mu 0 3 17 16 90 
		f 3 -18 -84 84 
		mu 0 3 18 17 90 
		f 3 -19 -85 85 
		mu 0 3 19 18 90 
		f 3 -20 -86 86 
		mu 0 3 20 19 90 
		f 3 -21 -87 87 
		mu 0 3 21 20 90 
		f 3 -22 -88 66 
		mu 0 3 0 21 90 
		f 3 266 267 -269 
		mu 0 3 180 181 91 
		f 3 270 271 -268 
		mu 0 3 181 182 91 
		f 3 273 274 -272 
		mu 0 3 182 183 91 
		f 3 276 277 -275 
		mu 0 3 183 184 91 
		f 3 279 280 -278 
		mu 0 3 184 185 91 
		f 3 282 283 -281 
		mu 0 3 185 186 91 
		f 3 285 286 -284 
		mu 0 3 186 187 91 
		f 3 288 289 -287 
		mu 0 3 187 188 91 
		f 3 291 292 -290 
		mu 0 3 188 189 91 
		f 3 294 295 -293 
		mu 0 3 189 190 91 
		f 3 297 298 -296 
		mu 0 3 190 191 91 
		f 3 300 301 -299 
		mu 0 3 191 192 91 
		f 3 303 304 -302 
		mu 0 3 192 193 91 
		f 3 306 307 -305 
		mu 0 3 193 194 91 
		f 3 309 310 -308 
		mu 0 3 194 195 91 
		f 3 312 313 -311 
		mu 0 3 195 196 91 
		f 3 315 316 -314 
		mu 0 3 196 197 91 
		f 3 318 319 -317 
		mu 0 3 197 198 91 
		f 3 321 322 -320 
		mu 0 3 198 199 91 
		f 3 324 325 -323 
		mu 0 3 199 200 91 
		f 3 327 328 -326 
		mu 0 3 200 201 91 
		f 3 329 268 -329 
		mu 0 3 201 180 91 
		f 4 22 89 -91 -89 
		mu 0 4 88 87 93 92 
		f 4 23 91 -93 -90 
		mu 0 4 87 86 94 93 
		f 4 24 93 -95 -92 
		mu 0 4 86 85 95 94 
		f 4 25 95 -97 -94 
		mu 0 4 85 84 96 95 
		f 4 26 97 -99 -96 
		mu 0 4 84 83 97 96 
		f 4 27 99 -101 -98 
		mu 0 4 83 82 98 97 
		f 4 28 101 -103 -100 
		mu 0 4 82 81 99 98 
		f 4 29 103 -105 -102 
		mu 0 4 81 80 100 99 
		f 4 30 105 -107 -104 
		mu 0 4 80 79 101 100 
		f 4 31 107 -109 -106 
		mu 0 4 79 78 102 101 
		f 4 32 109 -111 -108 
		mu 0 4 78 77 103 102 
		f 4 33 111 -113 -110 
		mu 0 4 77 76 104 103 
		f 4 34 113 -115 -112 
		mu 0 4 76 75 105 104 
		f 4 35 115 -117 -114 
		mu 0 4 75 74 106 105 
		f 4 36 117 -119 -116 
		mu 0 4 74 73 107 106 
		f 4 37 119 -121 -118 
		mu 0 4 73 72 108 107 
		f 4 38 121 -123 -120 
		mu 0 4 72 71 109 108 
		f 4 39 123 -125 -122 
		mu 0 4 71 70 110 109 
		f 4 40 125 -127 -124 
		mu 0 4 70 69 111 110 
		f 4 41 127 -129 -126 
		mu 0 4 69 68 112 111 
		f 4 42 129 -131 -128 
		mu 0 4 68 89 113 112 
		f 4 43 88 -132 -130 
		mu 0 4 89 88 92 113 
		f 4 90 133 -135 -133 
		mu 0 4 92 93 115 114 
		f 4 92 135 -137 -134 
		mu 0 4 93 94 116 115 
		f 4 94 137 -139 -136 
		mu 0 4 94 95 117 116 
		f 4 96 139 -141 -138 
		mu 0 4 95 96 118 117 
		f 4 98 141 -143 -140 
		mu 0 4 96 97 119 118 
		f 4 100 143 -145 -142 
		mu 0 4 97 98 120 119 
		f 4 102 145 -147 -144 
		mu 0 4 98 99 121 120 
		f 4 104 147 -149 -146 
		mu 0 4 99 100 122 121 
		f 4 106 149 -151 -148 
		mu 0 4 100 101 123 122 
		f 4 108 151 -153 -150 
		mu 0 4 101 102 124 123 
		f 4 110 153 -155 -152 
		mu 0 4 102 103 125 124 
		f 4 112 155 -157 -154 
		mu 0 4 103 104 126 125 
		f 4 114 157 -159 -156 
		mu 0 4 104 105 127 126 
		f 4 116 159 -161 -158 
		mu 0 4 105 106 128 127 
		f 4 118 161 -163 -160 
		mu 0 4 106 107 129 128 
		f 4 120 163 -165 -162 
		mu 0 4 107 108 130 129 
		f 4 122 165 -167 -164 
		mu 0 4 108 109 131 130 
		f 4 124 167 -169 -166 
		mu 0 4 109 110 132 131 
		f 4 126 169 -171 -168 
		mu 0 4 110 111 133 132 
		f 4 128 171 -173 -170 
		mu 0 4 111 112 134 133 
		f 4 130 173 -175 -172 
		mu 0 4 112 113 135 134 
		f 4 131 132 -176 -174 
		mu 0 4 113 92 114 135 
		f 4 134 177 -179 -177 
		mu 0 4 114 115 137 136 
		f 4 136 179 -181 -178 
		mu 0 4 115 116 138 137 
		f 4 138 181 -183 -180 
		mu 0 4 116 117 139 138 
		f 4 140 183 -185 -182 
		mu 0 4 117 118 140 139 
		f 4 142 185 -187 -184 
		mu 0 4 118 119 141 140 
		f 4 144 187 -189 -186 
		mu 0 4 119 120 142 141 
		f 4 146 189 -191 -188 
		mu 0 4 120 121 143 142 
		f 4 148 191 -193 -190 
		mu 0 4 121 122 144 143 
		f 4 150 193 -195 -192 
		mu 0 4 122 123 145 144 
		f 4 152 195 -197 -194 
		mu 0 4 123 124 146 145 
		f 4 154 197 -199 -196 
		mu 0 4 124 125 147 146 
		f 4 156 199 -201 -198 
		mu 0 4 125 126 148 147 
		f 4 158 201 -203 -200 
		mu 0 4 126 127 149 148 
		f 4 160 203 -205 -202 
		mu 0 4 127 128 150 149 
		f 4 162 205 -207 -204 
		mu 0 4 128 129 151 150 
		f 4 164 207 -209 -206 
		mu 0 4 129 130 152 151 
		f 4 166 209 -211 -208 
		mu 0 4 130 131 153 152 
		f 4 168 211 -213 -210 
		mu 0 4 131 132 154 153 
		f 4 170 213 -215 -212 
		mu 0 4 132 133 155 154 
		f 4 172 215 -217 -214 
		mu 0 4 133 134 156 155 
		f 4 174 217 -219 -216 
		mu 0 4 134 135 157 156 
		f 4 175 176 -220 -218 
		mu 0 4 135 114 136 157 
		f 4 178 221 -223 -221 
		mu 0 4 136 137 159 158 
		f 4 180 223 -225 -222 
		mu 0 4 137 138 160 159 
		f 4 182 225 -227 -224 
		mu 0 4 138 139 161 160 
		f 4 184 227 -229 -226 
		mu 0 4 139 140 162 161 
		f 4 186 229 -231 -228 
		mu 0 4 140 141 163 162 
		f 4 188 231 -233 -230 
		mu 0 4 141 142 164 163 
		f 4 190 233 -235 -232 
		mu 0 4 142 143 165 164 
		f 4 192 235 -237 -234 
		mu 0 4 143 144 166 165 
		f 4 194 237 -239 -236 
		mu 0 4 144 145 167 166 
		f 4 196 239 -241 -238 
		mu 0 4 145 146 168 167 
		f 4 198 241 -243 -240 
		mu 0 4 146 147 169 168 
		f 4 200 243 -245 -242 
		mu 0 4 147 148 170 169 
		f 4 202 245 -247 -244 
		mu 0 4 148 149 171 170 
		f 4 204 247 -249 -246 
		mu 0 4 149 150 172 171 
		f 4 206 249 -251 -248 
		mu 0 4 150 151 173 172 
		f 4 208 251 -253 -250 
		mu 0 4 151 152 174 173 
		f 4 210 253 -255 -252 
		mu 0 4 152 153 175 174 
		f 4 212 255 -257 -254 
		mu 0 4 153 154 176 175 
		f 4 214 257 -259 -256 
		mu 0 4 154 155 177 176 
		f 4 216 259 -261 -258 
		mu 0 4 155 156 178 177 
		f 4 218 261 -263 -260 
		mu 0 4 156 157 179 178 
		f 4 219 220 -264 -262 
		mu 0 4 157 136 158 179 
		f 4 222 265 -267 -265 
		mu 0 4 158 159 181 180 
		f 4 224 269 -271 -266 
		mu 0 4 159 160 182 181 
		f 4 226 272 -274 -270 
		mu 0 4 160 161 183 182 
		f 4 228 275 -277 -273 
		mu 0 4 161 162 184 183 
		f 4 230 278 -280 -276 
		mu 0 4 162 163 185 184 
		f 4 232 281 -283 -279 
		mu 0 4 163 164 186 185 
		f 4 234 284 -286 -282 
		mu 0 4 164 165 187 186 
		f 4 236 287 -289 -285 
		mu 0 4 165 166 188 187 
		f 4 238 290 -292 -288 
		mu 0 4 166 167 189 188 
		f 4 240 293 -295 -291 
		mu 0 4 167 168 190 189 
		f 4 242 296 -298 -294 
		mu 0 4 168 169 191 190 
		f 4 244 299 -301 -297 
		mu 0 4 169 170 192 191 
		f 4 246 302 -304 -300 
		mu 0 4 170 171 193 192 
		f 4 248 305 -307 -303 
		mu 0 4 171 172 194 193 
		f 4 250 308 -310 -306 
		mu 0 4 172 173 195 194 
		f 4 252 311 -313 -309 
		mu 0 4 173 174 196 195 
		f 4 254 314 -316 -312 
		mu 0 4 174 175 197 196 
		f 4 256 317 -319 -315 
		mu 0 4 175 176 198 197 
		f 4 258 320 -322 -318 
		mu 0 4 176 177 199 198 
		f 4 260 323 -325 -321 
		mu 0 4 177 178 200 199 
		f 4 262 326 -328 -324 
		mu 0 4 178 179 201 200 
		f 4 263 264 -330 -327 
		mu 0 4 179 158 180 201 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
createNode transform -n "button4";
	setAttr ".t" -type "double3" 4.0628588294411916 0.88688967825181797 -1.9999999999999989 ;
createNode mesh -n "buttonShape4" -p "button4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 202 ".uvst[0].uvsp[0:201]" -type "float2" 0.64992076 0.11222929 
		0.63144583 0.071774885 0.60232198 0.038164139 0.56490856 0.014120027 0.5222367 0.0015904158 
		0.4777633 0.0015904158 0.43509141 0.014120027 0.39767802 0.038164139 0.36855415 0.071774885 
		0.35007924 0.11222929 0.34375 0.15625 0.35007924 0.20027071 0.36855415 0.24072513 
		0.39767802 0.27433586 0.43509141 0.29837999 0.4777633 0.3109096 0.5222367 0.3109096 
		0.56490862 0.29837999 0.60232198 0.27433586 0.63144588 0.24072513 0.64992076 0.20027071 
		0.65625 0.15625 0.375 0.3125 0.38636363 0.3125 0.39772725 0.3125 0.40909088 0.3125 
		0.4204545 0.3125 0.43181813 0.3125 0.44318175 0.3125 0.45454538 0.3125 0.465909 0.3125 
		0.47727263 0.3125 0.48863626 0.3125 0.49999988 0.3125 0.51136351 0.3125 0.52272713 
		0.3125 0.53409076 0.3125 0.54545438 0.3125 0.55681801 0.3125 0.56818163 0.3125 0.57954526 
		0.3125 0.59090889 0.3125 0.60227251 0.3125 0.61363614 0.3125 0.62499976 0.3125 0.375 
		0.68843985 0.38636363 0.68843985 0.39772725 0.68843985 0.40909088 0.68843985 0.4204545 
		0.68843985 0.43181813 0.68843985 0.44318175 0.68843985 0.45454538 0.68843985 0.465909 
		0.68843985 0.47727263 0.68843985 0.48863626 0.68843985 0.49999988 0.68843985 0.51136351 
		0.68843985 0.52272713 0.68843985 0.53409076 0.68843985 0.54545438 0.68843985 0.55681801 
		0.68843985 0.56818163 0.68843985 0.57954526 0.68843985 0.59090889 0.68843985 0.60227251 
		0.68843985 0.61363614 0.68843985 0.62499976 0.68843985 0.64992076 0.79972929 0.63144583 
		0.7592749 0.60232198 0.72566414 0.56490856 0.70162004 0.5222367 0.68909043 0.4777633 
		0.68909043 0.43509141 0.70162004 0.39767802 0.72566414 0.36855415 0.7592749 0.35007924 
		0.79972929 0.34375 0.84375 0.35007924 0.88777071 0.36855415 0.92822516 0.39767802 
		0.96183586 0.43509141 0.98588002 0.4777633 0.99840963 0.5222367 0.99840963 0.56490862 
		0.98588002 0.60232198 0.96183586 0.63144588 0.92822516 0.64992076 0.88777071 0.65625 
		0.84375 0.5 0.15000001 0.5 0.83749998 0.64992076 0.88777071 0.63144588 0.92822516 
		0.60232198 0.96183586 0.56490862 0.98588002 0.5222367 0.99840963 0.4777633 0.99840963 
		0.43509141 0.98588002 0.39767802 0.96183586 0.36855415 0.92822516 0.35007924 0.88777071 
		0.34375 0.84375 0.35007924 0.79972929 0.36855415 0.7592749 0.39767802 0.72566414 
		0.43509141 0.70162004 0.4777633 0.68909043 0.5222367 0.68909043 0.56490856 0.70162004 
		0.60232198 0.72566414 0.63144583 0.7592749 0.64992076 0.79972929 0.65625 0.84375 
		0.64992076 0.88777071 0.63144588 0.92822516 0.60232198 0.96183586 0.56490862 0.98588002 
		0.5222367 0.99840963 0.4777633 0.99840963 0.43509141 0.98588002 0.39767802 0.96183586 
		0.36855415 0.92822516 0.35007924 0.88777071 0.34375 0.84375 0.35007924 0.79972929 
		0.36855415 0.7592749 0.39767802 0.72566414 0.43509141 0.70162004 0.4777633 0.68909043 
		0.5222367 0.68909043 0.56490856 0.70162004 0.60232198 0.72566414 0.63144583 0.7592749 
		0.64992076 0.79972929 0.65625 0.84375 0.64992076 0.88777071 0.63144588 0.92822516 
		0.60232198 0.96183586 0.56490862 0.98588002 0.5222367 0.99840963 0.4777633 0.99840963 
		0.43509141 0.98588002 0.39767802 0.96183586 0.36855415 0.92822516 0.35007924 0.88777071 
		0.34375 0.84375 0.35007924 0.79972929 0.36855415 0.7592749 0.39767802 0.72566414 
		0.43509141 0.70162004 0.4777633 0.68909043 0.5222367 0.68909043 0.56490856 0.70162004 
		0.60232198 0.72566414 0.63144583 0.7592749 0.64992076 0.79972929 0.65625 0.84375 
		0.64992076 0.88777071 0.63144588 0.92822516 0.60232198 0.96183586 0.56490862 0.98588002 
		0.5222367 0.99840963 0.4777633 0.99840963 0.43509141 0.98588002 0.39767802 0.96183586 
		0.36855415 0.92822516 0.35007924 0.88777071 0.34375 0.84375 0.35007924 0.79972929 
		0.36855415 0.7592749 0.39767802 0.72566414 0.43509141 0.70162004 0.4777633 0.68909043 
		0.5222367 0.68909043 0.56490856 0.70162004 0.60232198 0.72566414 0.63144583 0.7592749 
		0.64992076 0.79972929 0.65625 0.84375 0.64992076 0.88777071 0.63144588 0.92822516 
		0.60232198 0.96183586 0.56490862 0.98588002 0.5222367 0.99840963 0.4777633 0.99840963 
		0.43509141 0.98588002 0.39767802 0.96183586 0.36855415 0.92822516 0.35007924 0.88777071 
		0.34375 0.84375 0.35007924 0.79972929 0.36855415 0.7592749 0.39767802 0.72566414 
		0.43509141 0.70162004 0.4777633 0.68909043 0.5222367 0.68909043 0.56490856 0.70162004 
		0.60232198 0.72566414 0.63144583 0.7592749 0.64992076 0.79972929 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 90 ".pt";
	setAttr ".pt[67:155]" -type "float3" 5.6897909e-010 7.1687538e-011 -4.0269146e-011  
		1.2412495e-010 -1.8099957e-011 -3.9902682e-011  -1.4198311e-010 -1.8099957e-011 7.3502315e-011  
		3.5817019e-011 -1.6222194e-011 4.6746501e-010  -3.2078923e-011 2.9470915e-011 -4.709082e-010  
		3.2078912e-011 7.1687538e-011 -1.5101743e-010  4.9424158e-012 2.7872017e-011 -6.8888291e-011  
		4.857335e-011 -1.6222194e-011 -2.4983472e-011  4.6591198e-010 -1.6222194e-011 8.0995273e-011  
		-1.0748095e-010 -1.8099957e-011 -1.5421697e-011  -3.9232265e-010 -2.1855658e-011 
		3.1118063e-016  7.7142667e-011 2.7872017e-011 2.7566532e-011  3.3232506e-010 -2.1855658e-011 
		-9.8534521e-011  -3.6362929e-010 7.1687538e-011 -6.2097183e-010  -3.5817106e-011 
		3.1488197e-011 4.5503776e-010  3.2078912e-011 7.1687538e-011 1.1593875e-010  -5.948847e-011 
		-2.1855658e-011 4.709082e-010  3.5817019e-011 7.1687538e-011 6.2082955e-010  -9.7735382e-011 
		7.1687538e-011 -6.2097183e-010  1.2412495e-010 -1.8099957e-011 -8.9764855e-011  5.6897909e-010 
		7.1687538e-011 -3.4995628e-011  -1.5637884e-010 -1.8099957e-011 8.480384e-017  0.023912489 
		-0.053810142 -0.0079983138  0.020615781 -0.053810235 -0.015216729  0.015419211 -0.053810377 
		-0.021213986  0.0087436372 -0.053810235 -0.025504231  0.0011291722 -0.053810377 -0.027739905  
		-0.0068061347 -0.053810328 -0.02773989  -0.014419849 -0.05381028 -0.025504302  -0.02109585 
		-0.05381028 -0.021214059  -0.02629246 -0.053810377 -0.015216746  -0.029588887 -0.05381028 
		-0.0079983305  -0.030718371 -0.053810328 -0.00014365723  -0.029588981 -0.053810187 
		0.007710964  -0.026292646 -0.053810187 0.014929296  -0.021095943 -0.053810377 0.020926533  
		-0.014420037 -0.053810377 0.025216801  -0.0068059 -0.05381028 0.027452476  0.0011294098 
		-0.053810328 0.027452486  0.0087436847 -0.05381 0.025216863  0.015419117 -0.05381028 
		0.020926671  0.020615781 -0.053810235 0.014929356  0.023912303 -0.053810235 0.0077108787  
		0.02504185 -0.053810142 -0.00014372324  0.023912441 -0.036410291 -0.0079984888  0.020615915 
		-0.036410291 -0.0152169  0.015419117 -0.036410384 -0.021214023  0.0087434025 -0.036410194 
		-0.025504285  0.0011291722 -0.036410291 -0.027740043  -0.0068058502 -0.036410242 
		-0.027740005  -0.014419708 -0.036410335 -0.025504382  -0.021095792 -0.036410242 -0.021214079  
		-0.026292682 -0.036410429 -0.015216813  -0.029589074 -0.036410291 -0.0079983948  
		-0.030718571 -0.036410335 -0.00014375625  -0.029589027 -0.036410242 0.0077108154  
		-0.026292495 -0.036410242 0.014929419  -0.021095943 -0.036410384 0.020926757  -0.014420084 
		-0.036410335 0.02521693  -0.0068060406 -0.036410335 0.027452579  0.0011292191 -0.036410335 
		0.02745262  0.0087438785 -0.036410008 0.025216838  0.015419396 -0.036410194 0.020926552  
		0.020615781 -0.036410149 0.014929419  0.023912348 -0.036410194 0.0077110603  0.025041897 
		-0.036410101 -0.00014369427  0.01850633 -0.033841364 -0.0064111236  0.015875949 -0.033841364 
		-0.012170712  -0.0028383646 -0.033841271 -0.0001437225  0.011729382 -0.033841413 
		-0.016955862  0.0064027798 -0.033841219 -0.0203791  0.00032736061 -0.033841413 -0.022163002  
		-0.0060040858 -0.033841413 -0.022162963  -0.012079266 -0.033841457 -0.020379171  
		-0.017406208 -0.033841413 -0.01695591  -0.02155287 -0.03384155 -0.012170649  -0.02418296 
		-0.033841364 -0.0064110397  -0.025084116 -0.033841413 -0.00014376431  -0.024182912 
		-0.033841316 0.0061234767  -0.021552529 -0.033841316 0.011883258  -0.017406208 -0.033841413 
		0.016668571  -0.012079559 -0.033841364 0.02009172  -0.0060041794 -0.033841316 0.021875564  
		0.00032736061 -0.033841413 0.021875609  0.0064031552 -0.033841122 0.020091655  0.011729669 
		-0.033841316 0.016668374  0.015875855 -0.033841271 0.011883226  0.018506195 -0.033841219 
		0.0061236676  0.019407393 -0.033841219 -0.00014371774 ;
	setAttr -s 156 ".vt[0:155]"  0.6596505 -1.0000011 -0.19369078 0.57836217 
		-1.0000004 -0.37169024 0.45021689 -1.0000004 -0.51957756 0.28559616 -1.0000019 -0.62537187 
		0.09784098 -1.0000004 -0.68050224 -0.09784548 -1.0000049 -0.68050236 -0.28559768 
		-1.0000004 -0.62537223 -0.45021912 -1.0000026 -0.51957816 -0.57836366 -1.0000019 
		-0.37169087 -0.65965277 -1.0000019 -0.19369143 -0.68750083 -1.0000011 -2.4586916e-007 
		-0.65965277 -1.0000019 0.19369096 -0.57836366 -1.0000019 0.37169045 -0.45021912 -1.0000026 
		0.5195778 -0.28559843 -0.99999958 0.62537199 -0.097846232 -1.0000042 0.6805023 0.09784098 
		-1.0000004 0.68050236 0.28559616 -1.0000019 0.62537205 0.45021689 -1.0000004 0.51957792 
		0.57836139 -0.99999958 0.37169063 0.6596505 -1.0000011 0.19369116 0.68749928 -1.0000011 
		0 0.65964675 0.99999583 -0.19369078 0.57836068 0.99999887 -0.37169024 0.45021537 
		0.99999887 -0.51957756 0.28559542 0.9999966 -0.62537187 0.097840227 0.99999809 -0.68050224 
		-0.097841725 0.99999958 -0.68050236 -0.28559917 0.99999887 -0.62537223 -0.45021763 
		0.99999958 -0.51957816 -0.57836217 0.99999887 -0.37169087 -0.65965426 0.99999738 
		-0.19369143 -0.68750232 0.99999809 -2.4586916e-007 -0.65965426 0.99999738 0.19369096 
		-0.57836294 0.99999958 0.37169045 -0.45021763 0.99999958 0.5195778 -0.28559917 0.99999887 
		0.62537199 -0.097841725 0.99999958 0.6805023 0.097839475 0.99999887 0.68050236 0.28559467 
		0.99999738 0.62537205 0.45021537 0.99999887 0.51957792 0.57836068 0.99999887 0.37169063 
		0.65964675 0.99999583 0.19369116 0.68749779 0.99999809 0 -2.252774e-006 -1.0000026 
		0 0.58805436 1.1704745 -0.17266934 0.51558715 1.170473 -0.33135024 0.40135196 1.1704745 
		-0.46318728 0.25460175 1.1704775 -0.55749953 0.087218396 1.1704738 -0.60664636 -0.087222151 
		1.1704775 -0.60664648 -0.25460175 1.1704761 -0.55749959 -0.40135497 1.1704761 -0.46318737 
		-0.5155924 1.1704752 -0.33135077 -0.58806109 1.1704752 -0.17266981 -0.61288893 1.1704745 
		-2.1926414e-007 -0.58805889 1.1704775 0.17266934 -0.51559389 1.1704768 0.33135033 
		-0.40135571 1.1704768 0.46318704 -0.25460175 1.1704761 0.55749935 -0.087221399 1.1704768 
		0.60664636 0.087221399 1.1704768 0.60664642 0.25460175 1.1704775 0.55749959 0.40135121 
		1.1704752 0.46318752 0.51558715 1.170473 0.33135045 0.58805513 1.1704738 0.17266956 
		0.6128844 1.1704775 1.4666497e-008 0.46195084 1.2523426 -0.13564186 0.40502399 1.2523419 
		-0.2602945 0.31528547 1.2523419 -0.36385965 0.20000127 1.252341 -0.43794772 0.068512112 
		1.2523389 -0.47655541 -0.06851887 1.2523426 -0.47655505 -0.20000277 1.2523441 -0.43794742 
		-0.31528923 1.252341 -0.3638598 -0.40502775 1.252341 -0.26029474 -0.46195608 1.2523419 
		-0.13564205 -0.48145759 1.2523433 -7.1205847e-007 -0.46195382 1.2523441 0.13564122 
		-0.40502998 1.2523433 0.26029459 -0.31529075 1.2523426 0.36385974 -0.20000803 1.2523403 
		0.43794739 -0.06851887 1.2523426 0.47655505 0.06851662 1.2523433 0.47655514 0.20000127 
		1.2523426 0.43794751 0.31528473 1.2523426 0.36385974 0.40502399 1.2523419 0.26029453 
		0.46195084 1.2523426 0.13564201 0.48145309 1.2523419 -2.7866344e-008 0.42524713 1.0307462 
		-0.12486247 0.37284011 1.0307447 -0.23961177 0.29023162 1.0307424 -0.33494857 0.18411171 
		1.0307447 -0.40314963 0.063066408 1.0307424 -0.43868953 -0.063079171 1.0307432 -0.43868938 
		-0.18411246 1.030744 -0.4031508 -0.29023913 1.030744 -0.33494988 -0.37284836 1.0307424 
		-0.23961198 -0.42525089 1.030744 -0.12486273 -0.44320625 1.0307432 1.0313739e-006 
		-0.42525238 1.0307455 0.12486396 -0.37285137 1.0307455 0.23961198 -0.29024065 1.0307424 
		0.33494848 -0.18411547 1.0307424 0.40314975 -0.063075416 1.030744 0.43868986 0.063070163 
		1.0307432 0.43868995 0.18411246 1.0307485 0.4031508 0.29023013 1.030744 0.33495077 
		0.37284011 1.0307447 0.23961292 0.42524412 1.0307447 0.12486264 0.44320023 1.0307462 
		-1.5849984e-008 0.42524639 1.3073471 -0.12486524 0.37284234 1.3073471 -0.23961446 
		0.29023013 1.3073455 -0.33494917 0.18410796 1.3073486 -0.40315041 0.063066408 1.3073471 
		-0.43869174 -0.063074671 1.3073478 -0.43869108 -0.18411021 1.3073463 -0.40315196 
		-0.29023838 1.3073478 -0.33495006 -0.37285212 1.3073448 -0.23961319 -0.4252539 1.3073471 
		-0.12486374 -0.44320926 1.3073463 -5.3884605e-007 -0.42525315 1.3073478 0.12486165 
		-0.37284911 1.3073478 0.23961391 -0.29024065 1.3073455 0.33495206 -0.18411621 1.3073463 
		0.40315187 -0.063077673 1.3073463 0.43869141 0.063067161 1.3073463 0.43869212 0.18411547 
		1.3073516 0.40315047 0.29023463 1.3073486 0.3349489 0.37284011 1.3073493 0.23961391 
		0.42524487 1.3073486 0.1248655 0.44320098 1.30735 4.4543128e-007 0.3393068 1.3481846 
		-0.099631302 0.29749233 1.3481846 -0.19119003 -4.5055481e-006 1.3481861 -2.6575837e-009 
		0.2315754 1.3481839 -0.26725835 0.14689964 1.3481869 -0.32167661 0.050320212 1.3481839 
		-0.35003495 -0.050329223 1.3481839 -0.35003433 -0.14690489 1.3481832 -0.32167783 
		-0.23158592 1.3481839 -0.26725906 -0.29750434 1.3481816 -0.19118907 -0.33931431 1.3481846 
		-0.099629983 -0.35363972 1.3481839 -6.695256e-007 -0.33931357 1.3481853 0.099628098 
		-0.29749909 1.3481853 0.19118987 -0.23158592 1.3481839 0.26726076 -0.1469094 1.3481846 
		0.3216778 -0.050330725 1.3481853 0.35003495 0.050320212 1.3481839 0.35003585 0.14690565 
		1.3481884 0.32167673 0.23157991 1.3481853 0.26725769 0.29749081 1.3481861 0.19118935 
		0.33930457 1.3481869 0.099631108 0.35363069 1.3481869 7.2599164e-008;
	setAttr -s 330 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 
		0 3 4 0 4 5 0 5 6 0 6 7 
		0 7 8 0 8 9 0 9 10 0 10 11 
		0 11 12 0 12 13 0 13 14 0 14 15 
		0 15 16 0 16 17 0 17 18 0 18 19 
		0 19 20 0 20 21 0 21 0 0 22 23 
		1 23 24 1 24 25 1 25 26 1 26 27 
		1 27 28 1 28 29 1 29 30 1 30 31 
		1 31 32 1 32 33 1 33 34 1 34 35 
		1 35 36 1 36 37 1 37 38 1 38 39 
		1 39 40 1 40 41 1 41 42 1 42 43 
		1 43 22 1 0 22 1 1 23 1 2 24 
		1 3 25 1 4 26 1 5 27 1 6 28 
		1 7 29 1 8 30 1 9 31 1 10 32 
		1 11 33 1 12 34 1 13 35 1 14 36 
		1 15 37 1 16 38 1 17 39 1 18 40 
		1 19 41 1 20 42 1 21 43 1 44 0 
		1 44 1 1 44 2 1 44 3 1 44 4 
		1 44 5 1 44 6 1 44 7 1 44 8 
		1 44 9 1 44 10 1 44 11 1 44 12 
		1 44 13 1 44 14 1 44 15 1 44 16 
		1 44 17 1 44 18 1 44 19 1 44 20 
		1 44 21 1 22 45 1 23 46 1 45 46 
		0 24 47 1 46 47 0 25 48 1 47 48 
		0 26 49 1 48 49 0 27 50 1 49 50 
		0 28 51 1 50 51 0 29 52 1 51 52 
		0 30 53 1 52 53 0 31 54 1 53 54 
		0 32 55 1 54 55 0 33 56 1 55 56 
		0 34 57 1 56 57 0 35 58 1 57 58 
		0 36 59 1 58 59 0 37 60 1 59 60 
		0 38 61 1 60 61 0 39 62 1 61 62 
		0 40 63 1 62 63 0 41 64 1 63 64 
		0 42 65 1 64 65 0 43 66 1 65 66 
		0 66 45 0 45 67 1 46 68 1 67 68 
		0 47 69 1 68 69 0 48 70 1 69 70 
		0 49 71 1 70 71 0 50 72 1 71 72 
		0 51 73 1 72 73 0 52 74 1 73 74 
		0 53 75 1 74 75 0 54 76 1 75 76 
		0 55 77 1 76 77 0 56 78 1 77 78 
		0 57 79 1 78 79 0 58 80 1 79 80 
		0 59 81 1 80 81 0 60 82 1 81 82 
		0 61 83 1 82 83 0 62 84 1;
	setAttr ".ed[166:329]" 83 84 0 63 85 1 84 85 
		0 64 86 1 85 86 0 65 87 1 86 87 
		0 66 88 1 87 88 0 88 67 0 67 89 
		1 68 90 1 89 90 0 69 91 1 90 91 
		0 70 92 1 91 92 0 71 93 1 92 93 
		0 72 94 1 93 94 0 73 95 1 94 95 
		0 74 96 1 95 96 0 75 97 1 96 97 
		0 76 98 1 97 98 0 77 99 1 98 99 
		0 78 100 1 99 100 0 79 101 1 100 101 
		0 80 102 1 101 102 0 81 103 1 102 103 
		0 82 104 1 103 104 0 83 105 1 104 105 
		0 84 106 1 105 106 0 85 107 1 106 107 
		0 86 108 1 107 108 0 87 109 1 108 109 
		0 88 110 1 109 110 0 110 89 0 89 111 
		1 90 112 1 111 112 0 91 113 1 112 113 
		0 92 114 1 113 114 0 93 115 1 114 115 
		0 94 116 1 115 116 0 95 117 1 116 117 
		0 96 118 1 117 118 0 97 119 1 118 119 
		0 98 120 1 119 120 0 99 121 1 120 121 
		0 100 122 1 121 122 0 101 123 1 122 123 
		0 102 124 1 123 124 0 103 125 1 124 125 
		0 104 126 1 125 126 0 105 127 1 126 127 
		0 106 128 1 127 128 0 107 129 1 128 129 
		0 108 130 1 129 130 0 109 131 1 130 131 
		0 110 132 1 131 132 0 132 111 0 111 133 
		1 112 134 1 133 134 1 134 135 1 133 135 
		1 113 136 1 134 136 1 136 135 1 114 137 
		1 136 137 1 137 135 1 115 138 1 137 138 
		1 138 135 1 116 139 1 138 139 1 139 135 
		1 117 140 1 139 140 1 140 135 1 118 141 
		1 140 141 1 141 135 1 119 142 1 141 142 
		1 142 135 1 120 143 1 142 143 1 143 135 
		1 121 144 1 143 144 1 144 135 1 122 145 
		1 144 145 1 145 135 1 123 146 1 145 146 
		1 146 135 1 124 147 1 146 147 1 147 135 
		1 125 148 1 147 148 1 148 135 1 126 149 
		1 148 149 1 149 135 1 127 150 1 149 150 
		1 150 135 1 128 151 1 150 151 1 151 135 
		1 129 152 1 151 152 1 152 135 1 130 153 
		1 152 153 1 153 135 1 131 154 1 153 154 
		1 154 135 1 132 155 1 154 155 1 155 135 
		1 155 133 1;
	setAttr -s 176 ".fc[0:175]" -type "polyFaces" 
		f 4 0 45 -23 -45 
		mu 0 4 22 23 46 45 
		f 4 1 46 -24 -46 
		mu 0 4 23 24 47 46 
		f 4 2 47 -25 -47 
		mu 0 4 24 25 48 47 
		f 4 3 48 -26 -48 
		mu 0 4 25 26 49 48 
		f 4 4 49 -27 -49 
		mu 0 4 26 27 50 49 
		f 4 5 50 -28 -50 
		mu 0 4 27 28 51 50 
		f 4 6 51 -29 -51 
		mu 0 4 28 29 52 51 
		f 4 7 52 -30 -52 
		mu 0 4 29 30 53 52 
		f 4 8 53 -31 -53 
		mu 0 4 30 31 54 53 
		f 4 9 54 -32 -54 
		mu 0 4 31 32 55 54 
		f 4 10 55 -33 -55 
		mu 0 4 32 33 56 55 
		f 4 11 56 -34 -56 
		mu 0 4 33 34 57 56 
		f 4 12 57 -35 -57 
		mu 0 4 34 35 58 57 
		f 4 13 58 -36 -58 
		mu 0 4 35 36 59 58 
		f 4 14 59 -37 -59 
		mu 0 4 36 37 60 59 
		f 4 15 60 -38 -60 
		mu 0 4 37 38 61 60 
		f 4 16 61 -39 -61 
		mu 0 4 38 39 62 61 
		f 4 17 62 -40 -62 
		mu 0 4 39 40 63 62 
		f 4 18 63 -41 -63 
		mu 0 4 40 41 64 63 
		f 4 19 64 -42 -64 
		mu 0 4 41 42 65 64 
		f 4 20 65 -43 -65 
		mu 0 4 42 43 66 65 
		f 4 21 44 -44 -66 
		mu 0 4 43 44 67 66 
		f 3 -1 -67 67 
		mu 0 3 1 0 90 
		f 3 -2 -68 68 
		mu 0 3 2 1 90 
		f 3 -3 -69 69 
		mu 0 3 3 2 90 
		f 3 -4 -70 70 
		mu 0 3 4 3 90 
		f 3 -5 -71 71 
		mu 0 3 5 4 90 
		f 3 -6 -72 72 
		mu 0 3 6 5 90 
		f 3 -7 -73 73 
		mu 0 3 7 6 90 
		f 3 -8 -74 74 
		mu 0 3 8 7 90 
		f 3 -9 -75 75 
		mu 0 3 9 8 90 
		f 3 -10 -76 76 
		mu 0 3 10 9 90 
		f 3 -11 -77 77 
		mu 0 3 11 10 90 
		f 3 -12 -78 78 
		mu 0 3 12 11 90 
		f 3 -13 -79 79 
		mu 0 3 13 12 90 
		f 3 -14 -80 80 
		mu 0 3 14 13 90 
		f 3 -15 -81 81 
		mu 0 3 15 14 90 
		f 3 -16 -82 82 
		mu 0 3 16 15 90 
		f 3 -17 -83 83 
		mu 0 3 17 16 90 
		f 3 -18 -84 84 
		mu 0 3 18 17 90 
		f 3 -19 -85 85 
		mu 0 3 19 18 90 
		f 3 -20 -86 86 
		mu 0 3 20 19 90 
		f 3 -21 -87 87 
		mu 0 3 21 20 90 
		f 3 -22 -88 66 
		mu 0 3 0 21 90 
		f 3 266 267 -269 
		mu 0 3 180 181 91 
		f 3 270 271 -268 
		mu 0 3 181 182 91 
		f 3 273 274 -272 
		mu 0 3 182 183 91 
		f 3 276 277 -275 
		mu 0 3 183 184 91 
		f 3 279 280 -278 
		mu 0 3 184 185 91 
		f 3 282 283 -281 
		mu 0 3 185 186 91 
		f 3 285 286 -284 
		mu 0 3 186 187 91 
		f 3 288 289 -287 
		mu 0 3 187 188 91 
		f 3 291 292 -290 
		mu 0 3 188 189 91 
		f 3 294 295 -293 
		mu 0 3 189 190 91 
		f 3 297 298 -296 
		mu 0 3 190 191 91 
		f 3 300 301 -299 
		mu 0 3 191 192 91 
		f 3 303 304 -302 
		mu 0 3 192 193 91 
		f 3 306 307 -305 
		mu 0 3 193 194 91 
		f 3 309 310 -308 
		mu 0 3 194 195 91 
		f 3 312 313 -311 
		mu 0 3 195 196 91 
		f 3 315 316 -314 
		mu 0 3 196 197 91 
		f 3 318 319 -317 
		mu 0 3 197 198 91 
		f 3 321 322 -320 
		mu 0 3 198 199 91 
		f 3 324 325 -323 
		mu 0 3 199 200 91 
		f 3 327 328 -326 
		mu 0 3 200 201 91 
		f 3 329 268 -329 
		mu 0 3 201 180 91 
		f 4 22 89 -91 -89 
		mu 0 4 88 87 93 92 
		f 4 23 91 -93 -90 
		mu 0 4 87 86 94 93 
		f 4 24 93 -95 -92 
		mu 0 4 86 85 95 94 
		f 4 25 95 -97 -94 
		mu 0 4 85 84 96 95 
		f 4 26 97 -99 -96 
		mu 0 4 84 83 97 96 
		f 4 27 99 -101 -98 
		mu 0 4 83 82 98 97 
		f 4 28 101 -103 -100 
		mu 0 4 82 81 99 98 
		f 4 29 103 -105 -102 
		mu 0 4 81 80 100 99 
		f 4 30 105 -107 -104 
		mu 0 4 80 79 101 100 
		f 4 31 107 -109 -106 
		mu 0 4 79 78 102 101 
		f 4 32 109 -111 -108 
		mu 0 4 78 77 103 102 
		f 4 33 111 -113 -110 
		mu 0 4 77 76 104 103 
		f 4 34 113 -115 -112 
		mu 0 4 76 75 105 104 
		f 4 35 115 -117 -114 
		mu 0 4 75 74 106 105 
		f 4 36 117 -119 -116 
		mu 0 4 74 73 107 106 
		f 4 37 119 -121 -118 
		mu 0 4 73 72 108 107 
		f 4 38 121 -123 -120 
		mu 0 4 72 71 109 108 
		f 4 39 123 -125 -122 
		mu 0 4 71 70 110 109 
		f 4 40 125 -127 -124 
		mu 0 4 70 69 111 110 
		f 4 41 127 -129 -126 
		mu 0 4 69 68 112 111 
		f 4 42 129 -131 -128 
		mu 0 4 68 89 113 112 
		f 4 43 88 -132 -130 
		mu 0 4 89 88 92 113 
		f 4 90 133 -135 -133 
		mu 0 4 92 93 115 114 
		f 4 92 135 -137 -134 
		mu 0 4 93 94 116 115 
		f 4 94 137 -139 -136 
		mu 0 4 94 95 117 116 
		f 4 96 139 -141 -138 
		mu 0 4 95 96 118 117 
		f 4 98 141 -143 -140 
		mu 0 4 96 97 119 118 
		f 4 100 143 -145 -142 
		mu 0 4 97 98 120 119 
		f 4 102 145 -147 -144 
		mu 0 4 98 99 121 120 
		f 4 104 147 -149 -146 
		mu 0 4 99 100 122 121 
		f 4 106 149 -151 -148 
		mu 0 4 100 101 123 122 
		f 4 108 151 -153 -150 
		mu 0 4 101 102 124 123 
		f 4 110 153 -155 -152 
		mu 0 4 102 103 125 124 
		f 4 112 155 -157 -154 
		mu 0 4 103 104 126 125 
		f 4 114 157 -159 -156 
		mu 0 4 104 105 127 126 
		f 4 116 159 -161 -158 
		mu 0 4 105 106 128 127 
		f 4 118 161 -163 -160 
		mu 0 4 106 107 129 128 
		f 4 120 163 -165 -162 
		mu 0 4 107 108 130 129 
		f 4 122 165 -167 -164 
		mu 0 4 108 109 131 130 
		f 4 124 167 -169 -166 
		mu 0 4 109 110 132 131 
		f 4 126 169 -171 -168 
		mu 0 4 110 111 133 132 
		f 4 128 171 -173 -170 
		mu 0 4 111 112 134 133 
		f 4 130 173 -175 -172 
		mu 0 4 112 113 135 134 
		f 4 131 132 -176 -174 
		mu 0 4 113 92 114 135 
		f 4 134 177 -179 -177 
		mu 0 4 114 115 137 136 
		f 4 136 179 -181 -178 
		mu 0 4 115 116 138 137 
		f 4 138 181 -183 -180 
		mu 0 4 116 117 139 138 
		f 4 140 183 -185 -182 
		mu 0 4 117 118 140 139 
		f 4 142 185 -187 -184 
		mu 0 4 118 119 141 140 
		f 4 144 187 -189 -186 
		mu 0 4 119 120 142 141 
		f 4 146 189 -191 -188 
		mu 0 4 120 121 143 142 
		f 4 148 191 -193 -190 
		mu 0 4 121 122 144 143 
		f 4 150 193 -195 -192 
		mu 0 4 122 123 145 144 
		f 4 152 195 -197 -194 
		mu 0 4 123 124 146 145 
		f 4 154 197 -199 -196 
		mu 0 4 124 125 147 146 
		f 4 156 199 -201 -198 
		mu 0 4 125 126 148 147 
		f 4 158 201 -203 -200 
		mu 0 4 126 127 149 148 
		f 4 160 203 -205 -202 
		mu 0 4 127 128 150 149 
		f 4 162 205 -207 -204 
		mu 0 4 128 129 151 150 
		f 4 164 207 -209 -206 
		mu 0 4 129 130 152 151 
		f 4 166 209 -211 -208 
		mu 0 4 130 131 153 152 
		f 4 168 211 -213 -210 
		mu 0 4 131 132 154 153 
		f 4 170 213 -215 -212 
		mu 0 4 132 133 155 154 
		f 4 172 215 -217 -214 
		mu 0 4 133 134 156 155 
		f 4 174 217 -219 -216 
		mu 0 4 134 135 157 156 
		f 4 175 176 -220 -218 
		mu 0 4 135 114 136 157 
		f 4 178 221 -223 -221 
		mu 0 4 136 137 159 158 
		f 4 180 223 -225 -222 
		mu 0 4 137 138 160 159 
		f 4 182 225 -227 -224 
		mu 0 4 138 139 161 160 
		f 4 184 227 -229 -226 
		mu 0 4 139 140 162 161 
		f 4 186 229 -231 -228 
		mu 0 4 140 141 163 162 
		f 4 188 231 -233 -230 
		mu 0 4 141 142 164 163 
		f 4 190 233 -235 -232 
		mu 0 4 142 143 165 164 
		f 4 192 235 -237 -234 
		mu 0 4 143 144 166 165 
		f 4 194 237 -239 -236 
		mu 0 4 144 145 167 166 
		f 4 196 239 -241 -238 
		mu 0 4 145 146 168 167 
		f 4 198 241 -243 -240 
		mu 0 4 146 147 169 168 
		f 4 200 243 -245 -242 
		mu 0 4 147 148 170 169 
		f 4 202 245 -247 -244 
		mu 0 4 148 149 171 170 
		f 4 204 247 -249 -246 
		mu 0 4 149 150 172 171 
		f 4 206 249 -251 -248 
		mu 0 4 150 151 173 172 
		f 4 208 251 -253 -250 
		mu 0 4 151 152 174 173 
		f 4 210 253 -255 -252 
		mu 0 4 152 153 175 174 
		f 4 212 255 -257 -254 
		mu 0 4 153 154 176 175 
		f 4 214 257 -259 -256 
		mu 0 4 154 155 177 176 
		f 4 216 259 -261 -258 
		mu 0 4 155 156 178 177 
		f 4 218 261 -263 -260 
		mu 0 4 156 157 179 178 
		f 4 219 220 -264 -262 
		mu 0 4 157 136 158 179 
		f 4 222 265 -267 -265 
		mu 0 4 158 159 181 180 
		f 4 224 269 -271 -266 
		mu 0 4 159 160 182 181 
		f 4 226 272 -274 -270 
		mu 0 4 160 161 183 182 
		f 4 228 275 -277 -273 
		mu 0 4 161 162 184 183 
		f 4 230 278 -280 -276 
		mu 0 4 162 163 185 184 
		f 4 232 281 -283 -279 
		mu 0 4 163 164 186 185 
		f 4 234 284 -286 -282 
		mu 0 4 164 165 187 186 
		f 4 236 287 -289 -285 
		mu 0 4 165 166 188 187 
		f 4 238 290 -292 -288 
		mu 0 4 166 167 189 188 
		f 4 240 293 -295 -291 
		mu 0 4 167 168 190 189 
		f 4 242 296 -298 -294 
		mu 0 4 168 169 191 190 
		f 4 244 299 -301 -297 
		mu 0 4 169 170 192 191 
		f 4 246 302 -304 -300 
		mu 0 4 170 171 193 192 
		f 4 248 305 -307 -303 
		mu 0 4 171 172 194 193 
		f 4 250 308 -310 -306 
		mu 0 4 172 173 195 194 
		f 4 252 311 -313 -309 
		mu 0 4 173 174 196 195 
		f 4 254 314 -316 -312 
		mu 0 4 174 175 197 196 
		f 4 256 317 -319 -315 
		mu 0 4 175 176 198 197 
		f 4 258 320 -322 -318 
		mu 0 4 176 177 199 198 
		f 4 260 323 -325 -321 
		mu 0 4 177 178 200 199 
		f 4 262 326 -328 -324 
		mu 0 4 178 179 201 200 
		f 4 263 264 -330 -327 
		mu 0 4 179 158 180 201 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
createNode transform -n "button5";
	setAttr ".t" -type "double3" 6.0424861952986042 0.87295998952506071 0 ;
createNode mesh -n "buttonShape5" -p "button5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 202 ".uvst[0].uvsp[0:201]" -type "float2" 0.64992076 0.11222929 
		0.63144583 0.071774885 0.60232198 0.038164139 0.56490856 0.014120027 0.5222367 0.0015904158 
		0.4777633 0.0015904158 0.43509141 0.014120027 0.39767802 0.038164139 0.36855415 0.071774885 
		0.35007924 0.11222929 0.34375 0.15625 0.35007924 0.20027071 0.36855415 0.24072513 
		0.39767802 0.27433586 0.43509141 0.29837999 0.4777633 0.3109096 0.5222367 0.3109096 
		0.56490862 0.29837999 0.60232198 0.27433586 0.63144588 0.24072513 0.64992076 0.20027071 
		0.65625 0.15625 0.375 0.3125 0.38636363 0.3125 0.39772725 0.3125 0.40909088 0.3125 
		0.4204545 0.3125 0.43181813 0.3125 0.44318175 0.3125 0.45454538 0.3125 0.465909 0.3125 
		0.47727263 0.3125 0.48863626 0.3125 0.49999988 0.3125 0.51136351 0.3125 0.52272713 
		0.3125 0.53409076 0.3125 0.54545438 0.3125 0.55681801 0.3125 0.56818163 0.3125 0.57954526 
		0.3125 0.59090889 0.3125 0.60227251 0.3125 0.61363614 0.3125 0.62499976 0.3125 0.375 
		0.68843985 0.38636363 0.68843985 0.39772725 0.68843985 0.40909088 0.68843985 0.4204545 
		0.68843985 0.43181813 0.68843985 0.44318175 0.68843985 0.45454538 0.68843985 0.465909 
		0.68843985 0.47727263 0.68843985 0.48863626 0.68843985 0.49999988 0.68843985 0.51136351 
		0.68843985 0.52272713 0.68843985 0.53409076 0.68843985 0.54545438 0.68843985 0.55681801 
		0.68843985 0.56818163 0.68843985 0.57954526 0.68843985 0.59090889 0.68843985 0.60227251 
		0.68843985 0.61363614 0.68843985 0.62499976 0.68843985 0.64992076 0.79972929 0.63144583 
		0.7592749 0.60232198 0.72566414 0.56490856 0.70162004 0.5222367 0.68909043 0.4777633 
		0.68909043 0.43509141 0.70162004 0.39767802 0.72566414 0.36855415 0.7592749 0.35007924 
		0.79972929 0.34375 0.84375 0.35007924 0.88777071 0.36855415 0.92822516 0.39767802 
		0.96183586 0.43509141 0.98588002 0.4777633 0.99840963 0.5222367 0.99840963 0.56490862 
		0.98588002 0.60232198 0.96183586 0.63144588 0.92822516 0.64992076 0.88777071 0.65625 
		0.84375 0.5 0.15000001 0.5 0.83749998 0.64992076 0.88777071 0.63144588 0.92822516 
		0.60232198 0.96183586 0.56490862 0.98588002 0.5222367 0.99840963 0.4777633 0.99840963 
		0.43509141 0.98588002 0.39767802 0.96183586 0.36855415 0.92822516 0.35007924 0.88777071 
		0.34375 0.84375 0.35007924 0.79972929 0.36855415 0.7592749 0.39767802 0.72566414 
		0.43509141 0.70162004 0.4777633 0.68909043 0.5222367 0.68909043 0.56490856 0.70162004 
		0.60232198 0.72566414 0.63144583 0.7592749 0.64992076 0.79972929 0.65625 0.84375 
		0.64992076 0.88777071 0.63144588 0.92822516 0.60232198 0.96183586 0.56490862 0.98588002 
		0.5222367 0.99840963 0.4777633 0.99840963 0.43509141 0.98588002 0.39767802 0.96183586 
		0.36855415 0.92822516 0.35007924 0.88777071 0.34375 0.84375 0.35007924 0.79972929 
		0.36855415 0.7592749 0.39767802 0.72566414 0.43509141 0.70162004 0.4777633 0.68909043 
		0.5222367 0.68909043 0.56490856 0.70162004 0.60232198 0.72566414 0.63144583 0.7592749 
		0.64992076 0.79972929 0.65625 0.84375 0.64992076 0.88777071 0.63144588 0.92822516 
		0.60232198 0.96183586 0.56490862 0.98588002 0.5222367 0.99840963 0.4777633 0.99840963 
		0.43509141 0.98588002 0.39767802 0.96183586 0.36855415 0.92822516 0.35007924 0.88777071 
		0.34375 0.84375 0.35007924 0.79972929 0.36855415 0.7592749 0.39767802 0.72566414 
		0.43509141 0.70162004 0.4777633 0.68909043 0.5222367 0.68909043 0.56490856 0.70162004 
		0.60232198 0.72566414 0.63144583 0.7592749 0.64992076 0.79972929 0.65625 0.84375 
		0.64992076 0.88777071 0.63144588 0.92822516 0.60232198 0.96183586 0.56490862 0.98588002 
		0.5222367 0.99840963 0.4777633 0.99840963 0.43509141 0.98588002 0.39767802 0.96183586 
		0.36855415 0.92822516 0.35007924 0.88777071 0.34375 0.84375 0.35007924 0.79972929 
		0.36855415 0.7592749 0.39767802 0.72566414 0.43509141 0.70162004 0.4777633 0.68909043 
		0.5222367 0.68909043 0.56490856 0.70162004 0.60232198 0.72566414 0.63144583 0.7592749 
		0.64992076 0.79972929 0.65625 0.84375 0.64992076 0.88777071 0.63144588 0.92822516 
		0.60232198 0.96183586 0.56490862 0.98588002 0.5222367 0.99840963 0.4777633 0.99840963 
		0.43509141 0.98588002 0.39767802 0.96183586 0.36855415 0.92822516 0.35007924 0.88777071 
		0.34375 0.84375 0.35007924 0.79972929 0.36855415 0.7592749 0.39767802 0.72566414 
		0.43509141 0.70162004 0.4777633 0.68909043 0.5222367 0.68909043 0.56490856 0.70162004 
		0.60232198 0.72566414 0.63144583 0.7592749 0.64992076 0.79972929 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 112 ".pt";
	setAttr ".pt[0:21]" -type "float3" 0 0.49686506 0  0 0.49686506 0  0 0.49686506 
		0  0 0.49686506 0  0 0.49686506 0  0 0.49686506 0  0 0.49686506 0  0 0.49686506 0  
		0 0.49686506 0  0 0.49686506 0  0 0.49686506 0  0 0.49686506 0  0 0.49686506 0  0 
		0.49686506 0  0 0.49686506 0  0 0.49686506 0  0 0.49686506 0  0 0.49686506 0  0 0.49686506 
		0  0 0.49686506 0  0 0.49686506 0  0 0.49686506 0 ;
	setAttr ".pt[44]" -type "float3" 0 0.49686506 0 ;
	setAttr ".pt[67:155]" -type "float3" 5.6897909e-010 7.1687538e-011 -4.0269146e-011  
		1.2412495e-010 -1.8099957e-011 -3.9902682e-011  -1.4198311e-010 -1.8099957e-011 7.3502315e-011  
		3.5817019e-011 -1.6222194e-011 4.6746501e-010  -3.2078923e-011 2.9470915e-011 -4.709082e-010  
		3.2078912e-011 7.1687538e-011 -1.5101743e-010  4.9424158e-012 2.7872017e-011 -6.8888291e-011  
		4.857335e-011 -1.6222194e-011 -2.4983472e-011  4.6591198e-010 -1.6222194e-011 8.0995273e-011  
		-1.0748095e-010 -1.8099957e-011 -1.5421697e-011  -3.9232265e-010 -2.1855658e-011 
		3.1118063e-016  7.7142667e-011 2.7872017e-011 2.7566532e-011  3.3232506e-010 -2.1855658e-011 
		-9.8534521e-011  -3.6362929e-010 7.1687538e-011 -6.2097183e-010  -3.5817106e-011 
		3.1488197e-011 4.5503776e-010  3.2078912e-011 7.1687538e-011 1.1593875e-010  -5.948847e-011 
		-2.1855658e-011 4.709082e-010  3.5817019e-011 7.1687538e-011 6.2082955e-010  -9.7735382e-011 
		7.1687538e-011 -6.2097183e-010  1.2412495e-010 -1.8099957e-011 -8.9764855e-011  5.6897909e-010 
		7.1687538e-011 -3.4995628e-011  -1.5637884e-010 -1.8099957e-011 8.480384e-017  0.023912489 
		-0.053810142 -0.0079983138  0.020615781 -0.053810235 -0.015216729  0.015419211 -0.053810377 
		-0.021213986  0.0087436372 -0.053810235 -0.025504231  0.0011291722 -0.053810377 -0.027739905  
		-0.0068061347 -0.053810328 -0.02773989  -0.014419849 -0.05381028 -0.025504302  -0.02109585 
		-0.05381028 -0.021214059  -0.02629246 -0.053810377 -0.015216746  -0.029588887 -0.05381028 
		-0.0079983305  -0.030718371 -0.053810328 -0.00014365723  -0.029588981 -0.053810187 
		0.007710964  -0.026292646 -0.053810187 0.014929296  -0.021095943 -0.053810377 0.020926533  
		-0.014420037 -0.053810377 0.025216801  -0.0068059 -0.05381028 0.027452476  0.0011294098 
		-0.053810328 0.027452486  0.0087436847 -0.05381 0.025216863  0.015419117 -0.05381028 
		0.020926671  0.020615781 -0.053810235 0.014929356  0.023912303 -0.053810235 0.0077108787  
		0.02504185 -0.053810142 -0.00014372324  0.023912441 -0.036410291 -0.0079984888  0.020615915 
		-0.036410291 -0.0152169  0.015419117 -0.036410384 -0.021214023  0.0087434025 -0.036410194 
		-0.025504285  0.0011291722 -0.036410291 -0.027740043  -0.0068058502 -0.036410242 
		-0.027740005  -0.014419708 -0.036410335 -0.025504382  -0.021095792 -0.036410242 -0.021214079  
		-0.026292682 -0.036410429 -0.015216813  -0.029589074 -0.036410291 -0.0079983948  
		-0.030718571 -0.036410335 -0.00014375625  -0.029589027 -0.036410242 0.0077108154  
		-0.026292495 -0.036410242 0.014929419  -0.021095943 -0.036410384 0.020926757  -0.014420084 
		-0.036410335 0.02521693  -0.0068060406 -0.036410335 0.027452579  0.0011292191 -0.036410335 
		0.02745262  0.0087438785 -0.036410008 0.025216838  0.015419396 -0.036410194 0.020926552  
		0.020615781 -0.036410149 0.014929419  0.023912348 -0.036410194 0.0077110603  0.025041897 
		-0.036410101 -0.00014369427  0.01850633 -0.033841364 -0.0064111236  0.015875949 -0.033841364 
		-0.012170712  -0.0028383646 -0.033841271 -0.0001437225  0.011729382 -0.033841413 
		-0.016955862  0.0064027798 -0.033841219 -0.0203791  0.00032736061 -0.033841413 -0.022163002  
		-0.0060040858 -0.033841413 -0.022162963  -0.012079266 -0.033841457 -0.020379171  
		-0.017406208 -0.033841413 -0.01695591  -0.02155287 -0.03384155 -0.012170649  -0.02418296 
		-0.033841364 -0.0064110397  -0.025084116 -0.033841413 -0.00014376431  -0.024182912 
		-0.033841316 0.0061234767  -0.021552529 -0.033841316 0.011883258  -0.017406208 -0.033841413 
		0.016668571  -0.012079559 -0.033841364 0.02009172  -0.0060041794 -0.033841316 0.021875564  
		0.00032736061 -0.033841413 0.021875609  0.0064031552 -0.033841122 0.020091655  0.011729669 
		-0.033841316 0.016668374  0.015875855 -0.033841271 0.011883226  0.018506195 -0.033841219 
		0.0061236676  0.019407393 -0.033841219 -0.00014371774 ;
	setAttr -s 156 ".vt[0:155]"  0.6596505 -1.0000011 -0.19369078 0.57836217 
		-1.0000004 -0.37169024 0.45021689 -1.0000004 -0.51957756 0.28559616 -1.0000019 -0.62537187 
		0.09784098 -1.0000004 -0.68050224 -0.09784548 -1.0000049 -0.68050236 -0.28559768 
		-1.0000004 -0.62537223 -0.45021912 -1.0000026 -0.51957816 -0.57836366 -1.0000019 
		-0.37169087 -0.65965277 -1.0000019 -0.19369143 -0.68750083 -1.0000011 -2.4586916e-007 
		-0.65965277 -1.0000019 0.19369096 -0.57836366 -1.0000019 0.37169045 -0.45021912 -1.0000026 
		0.5195778 -0.28559843 -0.99999958 0.62537199 -0.097846232 -1.0000042 0.6805023 0.09784098 
		-1.0000004 0.68050236 0.28559616 -1.0000019 0.62537205 0.45021689 -1.0000004 0.51957792 
		0.57836139 -0.99999958 0.37169063 0.6596505 -1.0000011 0.19369116 0.68749928 -1.0000011 
		0 0.65964675 0.99999583 -0.19369078 0.57836068 0.99999887 -0.37169024 0.45021537 
		0.99999887 -0.51957756 0.28559542 0.9999966 -0.62537187 0.097840227 0.99999809 -0.68050224 
		-0.097841725 0.99999958 -0.68050236 -0.28559917 0.99999887 -0.62537223 -0.45021763 
		0.99999958 -0.51957816 -0.57836217 0.99999887 -0.37169087 -0.65965426 0.99999738 
		-0.19369143 -0.68750232 0.99999809 -2.4586916e-007 -0.65965426 0.99999738 0.19369096 
		-0.57836294 0.99999958 0.37169045 -0.45021763 0.99999958 0.5195778 -0.28559917 0.99999887 
		0.62537199 -0.097841725 0.99999958 0.6805023 0.097839475 0.99999887 0.68050236 0.28559467 
		0.99999738 0.62537205 0.45021537 0.99999887 0.51957792 0.57836068 0.99999887 0.37169063 
		0.65964675 0.99999583 0.19369116 0.68749779 0.99999809 0 -2.252774e-006 -1.0000026 
		0 0.58805436 1.1704745 -0.17266934 0.51558715 1.170473 -0.33135024 0.40135196 1.1704745 
		-0.46318728 0.25460175 1.1704775 -0.55749953 0.087218396 1.1704738 -0.60664636 -0.087222151 
		1.1704775 -0.60664648 -0.25460175 1.1704761 -0.55749959 -0.40135497 1.1704761 -0.46318737 
		-0.5155924 1.1704752 -0.33135077 -0.58806109 1.1704752 -0.17266981 -0.61288893 1.1704745 
		-2.1926414e-007 -0.58805889 1.1704775 0.17266934 -0.51559389 1.1704768 0.33135033 
		-0.40135571 1.1704768 0.46318704 -0.25460175 1.1704761 0.55749935 -0.087221399 1.1704768 
		0.60664636 0.087221399 1.1704768 0.60664642 0.25460175 1.1704775 0.55749959 0.40135121 
		1.1704752 0.46318752 0.51558715 1.170473 0.33135045 0.58805513 1.1704738 0.17266956 
		0.6128844 1.1704775 1.4666497e-008 0.46195084 1.2523426 -0.13564186 0.40502399 1.2523419 
		-0.2602945 0.31528547 1.2523419 -0.36385965 0.20000127 1.252341 -0.43794772 0.068512112 
		1.2523389 -0.47655541 -0.06851887 1.2523426 -0.47655505 -0.20000277 1.2523441 -0.43794742 
		-0.31528923 1.252341 -0.3638598 -0.40502775 1.252341 -0.26029474 -0.46195608 1.2523419 
		-0.13564205 -0.48145759 1.2523433 -7.1205847e-007 -0.46195382 1.2523441 0.13564122 
		-0.40502998 1.2523433 0.26029459 -0.31529075 1.2523426 0.36385974 -0.20000803 1.2523403 
		0.43794739 -0.06851887 1.2523426 0.47655505 0.06851662 1.2523433 0.47655514 0.20000127 
		1.2523426 0.43794751 0.31528473 1.2523426 0.36385974 0.40502399 1.2523419 0.26029453 
		0.46195084 1.2523426 0.13564201 0.48145309 1.2523419 -2.7866344e-008 0.42524713 1.0307462 
		-0.12486247 0.37284011 1.0307447 -0.23961177 0.29023162 1.0307424 -0.33494857 0.18411171 
		1.0307447 -0.40314963 0.063066408 1.0307424 -0.43868953 -0.063079171 1.0307432 -0.43868938 
		-0.18411246 1.030744 -0.4031508 -0.29023913 1.030744 -0.33494988 -0.37284836 1.0307424 
		-0.23961198 -0.42525089 1.030744 -0.12486273 -0.44320625 1.0307432 1.0313739e-006 
		-0.42525238 1.0307455 0.12486396 -0.37285137 1.0307455 0.23961198 -0.29024065 1.0307424 
		0.33494848 -0.18411547 1.0307424 0.40314975 -0.063075416 1.030744 0.43868986 0.063070163 
		1.0307432 0.43868995 0.18411246 1.0307485 0.4031508 0.29023013 1.030744 0.33495077 
		0.37284011 1.0307447 0.23961292 0.42524412 1.0307447 0.12486264 0.44320023 1.0307462 
		-1.5849984e-008 0.42524639 1.3073471 -0.12486524 0.37284234 1.3073471 -0.23961446 
		0.29023013 1.3073455 -0.33494917 0.18410796 1.3073486 -0.40315041 0.063066408 1.3073471 
		-0.43869174 -0.063074671 1.3073478 -0.43869108 -0.18411021 1.3073463 -0.40315196 
		-0.29023838 1.3073478 -0.33495006 -0.37285212 1.3073448 -0.23961319 -0.4252539 1.3073471 
		-0.12486374 -0.44320926 1.3073463 -5.3884605e-007 -0.42525315 1.3073478 0.12486165 
		-0.37284911 1.3073478 0.23961391 -0.29024065 1.3073455 0.33495206 -0.18411621 1.3073463 
		0.40315187 -0.063077673 1.3073463 0.43869141 0.063067161 1.3073463 0.43869212 0.18411547 
		1.3073516 0.40315047 0.29023463 1.3073486 0.3349489 0.37284011 1.3073493 0.23961391 
		0.42524487 1.3073486 0.1248655 0.44320098 1.30735 4.4543128e-007 0.3393068 1.3481846 
		-0.099631302 0.29749233 1.3481846 -0.19119003 -4.5055481e-006 1.3481861 -2.6575837e-009 
		0.2315754 1.3481839 -0.26725835 0.14689964 1.3481869 -0.32167661 0.050320212 1.3481839 
		-0.35003495 -0.050329223 1.3481839 -0.35003433 -0.14690489 1.3481832 -0.32167783 
		-0.23158592 1.3481839 -0.26725906 -0.29750434 1.3481816 -0.19118907 -0.33931431 1.3481846 
		-0.099629983 -0.35363972 1.3481839 -6.695256e-007 -0.33931357 1.3481853 0.099628098 
		-0.29749909 1.3481853 0.19118987 -0.23158592 1.3481839 0.26726076 -0.1469094 1.3481846 
		0.3216778 -0.050330725 1.3481853 0.35003495 0.050320212 1.3481839 0.35003585 0.14690565 
		1.3481884 0.32167673 0.23157991 1.3481853 0.26725769 0.29749081 1.3481861 0.19118935 
		0.33930457 1.3481869 0.099631108 0.35363069 1.3481869 7.2599164e-008;
	setAttr -s 330 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 
		0 3 4 0 4 5 0 5 6 0 6 7 
		0 7 8 0 8 9 0 9 10 0 10 11 
		0 11 12 0 12 13 0 13 14 0 14 15 
		0 15 16 0 16 17 0 17 18 0 18 19 
		0 19 20 0 20 21 0 21 0 0 22 23 
		1 23 24 1 24 25 1 25 26 1 26 27 
		1 27 28 1 28 29 1 29 30 1 30 31 
		1 31 32 1 32 33 1 33 34 1 34 35 
		1 35 36 1 36 37 1 37 38 1 38 39 
		1 39 40 1 40 41 1 41 42 1 42 43 
		1 43 22 1 0 22 1 1 23 1 2 24 
		1 3 25 1 4 26 1 5 27 1 6 28 
		1 7 29 1 8 30 1 9 31 1 10 32 
		1 11 33 1 12 34 1 13 35 1 14 36 
		1 15 37 1 16 38 1 17 39 1 18 40 
		1 19 41 1 20 42 1 21 43 1 44 0 
		1 44 1 1 44 2 1 44 3 1 44 4 
		1 44 5 1 44 6 1 44 7 1 44 8 
		1 44 9 1 44 10 1 44 11 1 44 12 
		1 44 13 1 44 14 1 44 15 1 44 16 
		1 44 17 1 44 18 1 44 19 1 44 20 
		1 44 21 1 22 45 1 23 46 1 45 46 
		0 24 47 1 46 47 0 25 48 1 47 48 
		0 26 49 1 48 49 0 27 50 1 49 50 
		0 28 51 1 50 51 0 29 52 1 51 52 
		0 30 53 1 52 53 0 31 54 1 53 54 
		0 32 55 1 54 55 0 33 56 1 55 56 
		0 34 57 1 56 57 0 35 58 1 57 58 
		0 36 59 1 58 59 0 37 60 1 59 60 
		0 38 61 1 60 61 0 39 62 1 61 62 
		0 40 63 1 62 63 0 41 64 1 63 64 
		0 42 65 1 64 65 0 43 66 1 65 66 
		0 66 45 0 45 67 1 46 68 1 67 68 
		0 47 69 1 68 69 0 48 70 1 69 70 
		0 49 71 1 70 71 0 50 72 1 71 72 
		0 51 73 1 72 73 0 52 74 1 73 74 
		0 53 75 1 74 75 0 54 76 1 75 76 
		0 55 77 1 76 77 0 56 78 1 77 78 
		0 57 79 1 78 79 0 58 80 1 79 80 
		0 59 81 1 80 81 0 60 82 1 81 82 
		0 61 83 1 82 83 0 62 84 1;
	setAttr ".ed[166:329]" 83 84 0 63 85 1 84 85 
		0 64 86 1 85 86 0 65 87 1 86 87 
		0 66 88 1 87 88 0 88 67 0 67 89 
		1 68 90 1 89 90 0 69 91 1 90 91 
		0 70 92 1 91 92 0 71 93 1 92 93 
		0 72 94 1 93 94 0 73 95 1 94 95 
		0 74 96 1 95 96 0 75 97 1 96 97 
		0 76 98 1 97 98 0 77 99 1 98 99 
		0 78 100 1 99 100 0 79 101 1 100 101 
		0 80 102 1 101 102 0 81 103 1 102 103 
		0 82 104 1 103 104 0 83 105 1 104 105 
		0 84 106 1 105 106 0 85 107 1 106 107 
		0 86 108 1 107 108 0 87 109 1 108 109 
		0 88 110 1 109 110 0 110 89 0 89 111 
		1 90 112 1 111 112 0 91 113 1 112 113 
		0 92 114 1 113 114 0 93 115 1 114 115 
		0 94 116 1 115 116 0 95 117 1 116 117 
		0 96 118 1 117 118 0 97 119 1 118 119 
		0 98 120 1 119 120 0 99 121 1 120 121 
		0 100 122 1 121 122 0 101 123 1 122 123 
		0 102 124 1 123 124 0 103 125 1 124 125 
		0 104 126 1 125 126 0 105 127 1 126 127 
		0 106 128 1 127 128 0 107 129 1 128 129 
		0 108 130 1 129 130 0 109 131 1 130 131 
		0 110 132 1 131 132 0 132 111 0 111 133 
		1 112 134 1 133 134 1 134 135 1 133 135 
		1 113 136 1 134 136 1 136 135 1 114 137 
		1 136 137 1 137 135 1 115 138 1 137 138 
		1 138 135 1 116 139 1 138 139 1 139 135 
		1 117 140 1 139 140 1 140 135 1 118 141 
		1 140 141 1 141 135 1 119 142 1 141 142 
		1 142 135 1 120 143 1 142 143 1 143 135 
		1 121 144 1 143 144 1 144 135 1 122 145 
		1 144 145 1 145 135 1 123 146 1 145 146 
		1 146 135 1 124 147 1 146 147 1 147 135 
		1 125 148 1 147 148 1 148 135 1 126 149 
		1 148 149 1 149 135 1 127 150 1 149 150 
		1 150 135 1 128 151 1 150 151 1 151 135 
		1 129 152 1 151 152 1 152 135 1 130 153 
		1 152 153 1 153 135 1 131 154 1 153 154 
		1 154 135 1 132 155 1 154 155 1 155 135 
		1 155 133 1;
	setAttr -s 176 ".fc[0:175]" -type "polyFaces" 
		f 4 0 45 -23 -45 
		mu 0 4 22 23 46 45 
		f 4 1 46 -24 -46 
		mu 0 4 23 24 47 46 
		f 4 2 47 -25 -47 
		mu 0 4 24 25 48 47 
		f 4 3 48 -26 -48 
		mu 0 4 25 26 49 48 
		f 4 4 49 -27 -49 
		mu 0 4 26 27 50 49 
		f 4 5 50 -28 -50 
		mu 0 4 27 28 51 50 
		f 4 6 51 -29 -51 
		mu 0 4 28 29 52 51 
		f 4 7 52 -30 -52 
		mu 0 4 29 30 53 52 
		f 4 8 53 -31 -53 
		mu 0 4 30 31 54 53 
		f 4 9 54 -32 -54 
		mu 0 4 31 32 55 54 
		f 4 10 55 -33 -55 
		mu 0 4 32 33 56 55 
		f 4 11 56 -34 -56 
		mu 0 4 33 34 57 56 
		f 4 12 57 -35 -57 
		mu 0 4 34 35 58 57 
		f 4 13 58 -36 -58 
		mu 0 4 35 36 59 58 
		f 4 14 59 -37 -59 
		mu 0 4 36 37 60 59 
		f 4 15 60 -38 -60 
		mu 0 4 37 38 61 60 
		f 4 16 61 -39 -61 
		mu 0 4 38 39 62 61 
		f 4 17 62 -40 -62 
		mu 0 4 39 40 63 62 
		f 4 18 63 -41 -63 
		mu 0 4 40 41 64 63 
		f 4 19 64 -42 -64 
		mu 0 4 41 42 65 64 
		f 4 20 65 -43 -65 
		mu 0 4 42 43 66 65 
		f 4 21 44 -44 -66 
		mu 0 4 43 44 67 66 
		f 3 -1 -67 67 
		mu 0 3 1 0 90 
		f 3 -2 -68 68 
		mu 0 3 2 1 90 
		f 3 -3 -69 69 
		mu 0 3 3 2 90 
		f 3 -4 -70 70 
		mu 0 3 4 3 90 
		f 3 -5 -71 71 
		mu 0 3 5 4 90 
		f 3 -6 -72 72 
		mu 0 3 6 5 90 
		f 3 -7 -73 73 
		mu 0 3 7 6 90 
		f 3 -8 -74 74 
		mu 0 3 8 7 90 
		f 3 -9 -75 75 
		mu 0 3 9 8 90 
		f 3 -10 -76 76 
		mu 0 3 10 9 90 
		f 3 -11 -77 77 
		mu 0 3 11 10 90 
		f 3 -12 -78 78 
		mu 0 3 12 11 90 
		f 3 -13 -79 79 
		mu 0 3 13 12 90 
		f 3 -14 -80 80 
		mu 0 3 14 13 90 
		f 3 -15 -81 81 
		mu 0 3 15 14 90 
		f 3 -16 -82 82 
		mu 0 3 16 15 90 
		f 3 -17 -83 83 
		mu 0 3 17 16 90 
		f 3 -18 -84 84 
		mu 0 3 18 17 90 
		f 3 -19 -85 85 
		mu 0 3 19 18 90 
		f 3 -20 -86 86 
		mu 0 3 20 19 90 
		f 3 -21 -87 87 
		mu 0 3 21 20 90 
		f 3 -22 -88 66 
		mu 0 3 0 21 90 
		f 3 266 267 -269 
		mu 0 3 180 181 91 
		f 3 270 271 -268 
		mu 0 3 181 182 91 
		f 3 273 274 -272 
		mu 0 3 182 183 91 
		f 3 276 277 -275 
		mu 0 3 183 184 91 
		f 3 279 280 -278 
		mu 0 3 184 185 91 
		f 3 282 283 -281 
		mu 0 3 185 186 91 
		f 3 285 286 -284 
		mu 0 3 186 187 91 
		f 3 288 289 -287 
		mu 0 3 187 188 91 
		f 3 291 292 -290 
		mu 0 3 188 189 91 
		f 3 294 295 -293 
		mu 0 3 189 190 91 
		f 3 297 298 -296 
		mu 0 3 190 191 91 
		f 3 300 301 -299 
		mu 0 3 191 192 91 
		f 3 303 304 -302 
		mu 0 3 192 193 91 
		f 3 306 307 -305 
		mu 0 3 193 194 91 
		f 3 309 310 -308 
		mu 0 3 194 195 91 
		f 3 312 313 -311 
		mu 0 3 195 196 91 
		f 3 315 316 -314 
		mu 0 3 196 197 91 
		f 3 318 319 -317 
		mu 0 3 197 198 91 
		f 3 321 322 -320 
		mu 0 3 198 199 91 
		f 3 324 325 -323 
		mu 0 3 199 200 91 
		f 3 327 328 -326 
		mu 0 3 200 201 91 
		f 3 329 268 -329 
		mu 0 3 201 180 91 
		f 4 22 89 -91 -89 
		mu 0 4 88 87 93 92 
		f 4 23 91 -93 -90 
		mu 0 4 87 86 94 93 
		f 4 24 93 -95 -92 
		mu 0 4 86 85 95 94 
		f 4 25 95 -97 -94 
		mu 0 4 85 84 96 95 
		f 4 26 97 -99 -96 
		mu 0 4 84 83 97 96 
		f 4 27 99 -101 -98 
		mu 0 4 83 82 98 97 
		f 4 28 101 -103 -100 
		mu 0 4 82 81 99 98 
		f 4 29 103 -105 -102 
		mu 0 4 81 80 100 99 
		f 4 30 105 -107 -104 
		mu 0 4 80 79 101 100 
		f 4 31 107 -109 -106 
		mu 0 4 79 78 102 101 
		f 4 32 109 -111 -108 
		mu 0 4 78 77 103 102 
		f 4 33 111 -113 -110 
		mu 0 4 77 76 104 103 
		f 4 34 113 -115 -112 
		mu 0 4 76 75 105 104 
		f 4 35 115 -117 -114 
		mu 0 4 75 74 106 105 
		f 4 36 117 -119 -116 
		mu 0 4 74 73 107 106 
		f 4 37 119 -121 -118 
		mu 0 4 73 72 108 107 
		f 4 38 121 -123 -120 
		mu 0 4 72 71 109 108 
		f 4 39 123 -125 -122 
		mu 0 4 71 70 110 109 
		f 4 40 125 -127 -124 
		mu 0 4 70 69 111 110 
		f 4 41 127 -129 -126 
		mu 0 4 69 68 112 111 
		f 4 42 129 -131 -128 
		mu 0 4 68 89 113 112 
		f 4 43 88 -132 -130 
		mu 0 4 89 88 92 113 
		f 4 90 133 -135 -133 
		mu 0 4 92 93 115 114 
		f 4 92 135 -137 -134 
		mu 0 4 93 94 116 115 
		f 4 94 137 -139 -136 
		mu 0 4 94 95 117 116 
		f 4 96 139 -141 -138 
		mu 0 4 95 96 118 117 
		f 4 98 141 -143 -140 
		mu 0 4 96 97 119 118 
		f 4 100 143 -145 -142 
		mu 0 4 97 98 120 119 
		f 4 102 145 -147 -144 
		mu 0 4 98 99 121 120 
		f 4 104 147 -149 -146 
		mu 0 4 99 100 122 121 
		f 4 106 149 -151 -148 
		mu 0 4 100 101 123 122 
		f 4 108 151 -153 -150 
		mu 0 4 101 102 124 123 
		f 4 110 153 -155 -152 
		mu 0 4 102 103 125 124 
		f 4 112 155 -157 -154 
		mu 0 4 103 104 126 125 
		f 4 114 157 -159 -156 
		mu 0 4 104 105 127 126 
		f 4 116 159 -161 -158 
		mu 0 4 105 106 128 127 
		f 4 118 161 -163 -160 
		mu 0 4 106 107 129 128 
		f 4 120 163 -165 -162 
		mu 0 4 107 108 130 129 
		f 4 122 165 -167 -164 
		mu 0 4 108 109 131 130 
		f 4 124 167 -169 -166 
		mu 0 4 109 110 132 131 
		f 4 126 169 -171 -168 
		mu 0 4 110 111 133 132 
		f 4 128 171 -173 -170 
		mu 0 4 111 112 134 133 
		f 4 130 173 -175 -172 
		mu 0 4 112 113 135 134 
		f 4 131 132 -176 -174 
		mu 0 4 113 92 114 135 
		f 4 134 177 -179 -177 
		mu 0 4 114 115 137 136 
		f 4 136 179 -181 -178 
		mu 0 4 115 116 138 137 
		f 4 138 181 -183 -180 
		mu 0 4 116 117 139 138 
		f 4 140 183 -185 -182 
		mu 0 4 117 118 140 139 
		f 4 142 185 -187 -184 
		mu 0 4 118 119 141 140 
		f 4 144 187 -189 -186 
		mu 0 4 119 120 142 141 
		f 4 146 189 -191 -188 
		mu 0 4 120 121 143 142 
		f 4 148 191 -193 -190 
		mu 0 4 121 122 144 143 
		f 4 150 193 -195 -192 
		mu 0 4 122 123 145 144 
		f 4 152 195 -197 -194 
		mu 0 4 123 124 146 145 
		f 4 154 197 -199 -196 
		mu 0 4 124 125 147 146 
		f 4 156 199 -201 -198 
		mu 0 4 125 126 148 147 
		f 4 158 201 -203 -200 
		mu 0 4 126 127 149 148 
		f 4 160 203 -205 -202 
		mu 0 4 127 128 150 149 
		f 4 162 205 -207 -204 
		mu 0 4 128 129 151 150 
		f 4 164 207 -209 -206 
		mu 0 4 129 130 152 151 
		f 4 166 209 -211 -208 
		mu 0 4 130 131 153 152 
		f 4 168 211 -213 -210 
		mu 0 4 131 132 154 153 
		f 4 170 213 -215 -212 
		mu 0 4 132 133 155 154 
		f 4 172 215 -217 -214 
		mu 0 4 133 134 156 155 
		f 4 174 217 -219 -216 
		mu 0 4 134 135 157 156 
		f 4 175 176 -220 -218 
		mu 0 4 135 114 136 157 
		f 4 178 221 -223 -221 
		mu 0 4 136 137 159 158 
		f 4 180 223 -225 -222 
		mu 0 4 137 138 160 159 
		f 4 182 225 -227 -224 
		mu 0 4 138 139 161 160 
		f 4 184 227 -229 -226 
		mu 0 4 139 140 162 161 
		f 4 186 229 -231 -228 
		mu 0 4 140 141 163 162 
		f 4 188 231 -233 -230 
		mu 0 4 141 142 164 163 
		f 4 190 233 -235 -232 
		mu 0 4 142 143 165 164 
		f 4 192 235 -237 -234 
		mu 0 4 143 144 166 165 
		f 4 194 237 -239 -236 
		mu 0 4 144 145 167 166 
		f 4 196 239 -241 -238 
		mu 0 4 145 146 168 167 
		f 4 198 241 -243 -240 
		mu 0 4 146 147 169 168 
		f 4 200 243 -245 -242 
		mu 0 4 147 148 170 169 
		f 4 202 245 -247 -244 
		mu 0 4 148 149 171 170 
		f 4 204 247 -249 -246 
		mu 0 4 149 150 172 171 
		f 4 206 249 -251 -248 
		mu 0 4 150 151 173 172 
		f 4 208 251 -253 -250 
		mu 0 4 151 152 174 173 
		f 4 210 253 -255 -252 
		mu 0 4 152 153 175 174 
		f 4 212 255 -257 -254 
		mu 0 4 153 154 176 175 
		f 4 214 257 -259 -256 
		mu 0 4 154 155 177 176 
		f 4 216 259 -261 -258 
		mu 0 4 155 156 178 177 
		f 4 218 261 -263 -260 
		mu 0 4 156 157 179 178 
		f 4 219 220 -264 -262 
		mu 0 4 157 136 158 179 
		f 4 222 265 -267 -265 
		mu 0 4 158 159 181 180 
		f 4 224 269 -271 -266 
		mu 0 4 159 160 182 181 
		f 4 226 272 -274 -270 
		mu 0 4 160 161 183 182 
		f 4 228 275 -277 -273 
		mu 0 4 161 162 184 183 
		f 4 230 278 -280 -276 
		mu 0 4 162 163 185 184 
		f 4 232 281 -283 -279 
		mu 0 4 163 164 186 185 
		f 4 234 284 -286 -282 
		mu 0 4 164 165 187 186 
		f 4 236 287 -289 -285 
		mu 0 4 165 166 188 187 
		f 4 238 290 -292 -288 
		mu 0 4 166 167 189 188 
		f 4 240 293 -295 -291 
		mu 0 4 167 168 190 189 
		f 4 242 296 -298 -294 
		mu 0 4 168 169 191 190 
		f 4 244 299 -301 -297 
		mu 0 4 169 170 192 191 
		f 4 246 302 -304 -300 
		mu 0 4 170 171 193 192 
		f 4 248 305 -307 -303 
		mu 0 4 171 172 194 193 
		f 4 250 308 -310 -306 
		mu 0 4 172 173 195 194 
		f 4 252 311 -313 -309 
		mu 0 4 173 174 196 195 
		f 4 254 314 -316 -312 
		mu 0 4 174 175 197 196 
		f 4 256 317 -319 -315 
		mu 0 4 175 176 198 197 
		f 4 258 320 -322 -318 
		mu 0 4 176 177 199 198 
		f 4 260 323 -325 -321 
		mu 0 4 177 178 200 199 
		f 4 262 326 -328 -324 
		mu 0 4 178 179 201 200 
		f 4 263 264 -330 -327 
		mu 0 4 179 158 180 201 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
createNode transform -n "pCube20";
	setAttr ".t" -type "double3" 4.2213831404412749 35.310679073330412 -30.879489074027756 ;
	setAttr ".s" -type "double3" 6.4016218011021344 6.4016218011021344 14.116260472573794 ;
	setAttr ".rp" -type "double3" 2.8648515577721412 -3.2008108524797083 -7.0581301302844173 ;
	setAttr ".sp" -type "double3" 0.44751965154813028 -0.49999999249075355 -0.49999999249075344 ;
	setAttr ".spt" -type "double3" 2.4173319062240108 -2.7008108599889553 -6.5581301377936638 ;
createNode mesh -n "pCubeShape20" -p "pCube20";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 
		0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 
		0 0.875 0.25 0.125 0 0.125 0.25 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.125 0 0.375 
		0 0.375 0.25 0.125 0.25 0.125 0 0.375 0 0.375 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt[10:11]" -type "float3"  0 0.057861604 0 0 0.057861604 
		0;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.5 0.5 -0.22432917 -0.5 0.5 -0.5 
		0.49999994 0.5 -0.22432917 0.49999994 0.5 -0.5 0.49999994 -0.5 -0.22432917 0.49999994 
		-0.5 -0.5 -0.5 -0.5 -0.22432917 -0.5 -0.5 0.44751966 -0.5 -0.5 0.44751966 -0.5 0.5 
		0.44751966 0.061954994 -0.5 0.44751966 0.061954994 0.5 -0.5 -0.43333337 -0.47244301 
		-0.5 -0.43333337 0.47244301 -0.5 0.43333334 0.47244301 -0.5 0.43333334 -0.47244301 
		-0.22944865 -0.43333337 -0.47244301 -0.22944865 -0.43333337 0.47244301 -0.22944865 
		0.43333334 0.47244301 -0.22944865 0.43333334 -0.47244301;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 1 
		2 4 0 3 5 1 4 6 0 5 7 1 
		6 0 0 7 1 1 7 8 0 1 9 0 
		8 9 0 5 10 0 10 8 0 3 11 0 
		11 10 0 9 11 0 6 12 1 0 13 1 
		12 13 0 2 14 1 13 14 0 4 15 1 
		14 15 0 15 12 0 12 16 0 13 17 0 
		16 17 0 14 18 0 17 18 0 15 19 0 
		18 19 0 19 16 0;
	setAttr -s 18 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 3 2 
		f 4 1 7 -3 -7 
		mu 0 4 2 3 5 4 
		f 4 2 9 -4 -9 
		mu 0 4 4 5 7 6 
		f 4 3 11 -1 -11 
		mu 0 4 6 7 9 8 
		f 4 -15 -17 -19 -20 
		mu 0 4 14 15 16 17 
		f 4 30 32 34 35 
		mu 0 4 22 23 24 25 
		f 4 -12 12 14 -14 
		mu 0 4 1 10 15 14 
		f 4 -10 15 16 -13 
		mu 0 4 10 11 16 15 
		f 4 -8 17 18 -16 
		mu 0 4 11 3 17 16 
		f 4 -6 13 19 -18 
		mu 0 4 3 1 14 17 
		f 4 10 21 -23 -21 
		mu 0 4 12 0 19 18 
		f 4 4 23 -25 -22 
		mu 0 4 0 2 20 19 
		f 4 6 25 -27 -24 
		mu 0 4 2 13 21 20 
		f 4 8 20 -28 -26 
		mu 0 4 13 12 18 21 
		f 4 22 29 -31 -29 
		mu 0 4 18 19 23 22 
		f 4 24 31 -33 -30 
		mu 0 4 19 20 24 23 
		f 4 26 33 -35 -32 
		mu 0 4 20 21 25 24 
		f 4 27 28 -36 -34 
		mu 0 4 21 18 22 25 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
createNode transform -n "button6";
	setAttr ".t" -type "double3" 4.6027928534307714 36.355907397456811 -30.879489074027756 ;
	setAttr ".r" -type "double3" 0 0 -30.000000000000011 ;
createNode mesh -n "buttonShape6" -p "button6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 202 ".uvst[0].uvsp[0:201]" -type "float2" 0.64992076 0.11222929 
		0.63144583 0.071774885 0.60232198 0.038164139 0.56490856 0.014120027 0.5222367 0.0015904158 
		0.4777633 0.0015904158 0.43509141 0.014120027 0.39767802 0.038164139 0.36855415 0.071774885 
		0.35007924 0.11222929 0.34375 0.15625 0.35007924 0.20027071 0.36855415 0.24072513 
		0.39767802 0.27433586 0.43509141 0.29837999 0.4777633 0.3109096 0.5222367 0.3109096 
		0.56490862 0.29837999 0.60232198 0.27433586 0.63144588 0.24072513 0.64992076 0.20027071 
		0.65625 0.15625 0.375 0.3125 0.38636363 0.3125 0.39772725 0.3125 0.40909088 0.3125 
		0.4204545 0.3125 0.43181813 0.3125 0.44318175 0.3125 0.45454538 0.3125 0.465909 0.3125 
		0.47727263 0.3125 0.48863626 0.3125 0.49999988 0.3125 0.51136351 0.3125 0.52272713 
		0.3125 0.53409076 0.3125 0.54545438 0.3125 0.55681801 0.3125 0.56818163 0.3125 0.57954526 
		0.3125 0.59090889 0.3125 0.60227251 0.3125 0.61363614 0.3125 0.62499976 0.3125 0.375 
		0.68843985 0.38636363 0.68843985 0.39772725 0.68843985 0.40909088 0.68843985 0.4204545 
		0.68843985 0.43181813 0.68843985 0.44318175 0.68843985 0.45454538 0.68843985 0.465909 
		0.68843985 0.47727263 0.68843985 0.48863626 0.68843985 0.49999988 0.68843985 0.51136351 
		0.68843985 0.52272713 0.68843985 0.53409076 0.68843985 0.54545438 0.68843985 0.55681801 
		0.68843985 0.56818163 0.68843985 0.57954526 0.68843985 0.59090889 0.68843985 0.60227251 
		0.68843985 0.61363614 0.68843985 0.62499976 0.68843985 0.64992076 0.79972929 0.63144583 
		0.7592749 0.60232198 0.72566414 0.56490856 0.70162004 0.5222367 0.68909043 0.4777633 
		0.68909043 0.43509141 0.70162004 0.39767802 0.72566414 0.36855415 0.7592749 0.35007924 
		0.79972929 0.34375 0.84375 0.35007924 0.88777071 0.36855415 0.92822516 0.39767802 
		0.96183586 0.43509141 0.98588002 0.4777633 0.99840963 0.5222367 0.99840963 0.56490862 
		0.98588002 0.60232198 0.96183586 0.63144588 0.92822516 0.64992076 0.88777071 0.65625 
		0.84375 0.5 0.15000001 0.5 0.83749998 0.64992076 0.88777071 0.63144588 0.92822516 
		0.60232198 0.96183586 0.56490862 0.98588002 0.5222367 0.99840963 0.4777633 0.99840963 
		0.43509141 0.98588002 0.39767802 0.96183586 0.36855415 0.92822516 0.35007924 0.88777071 
		0.34375 0.84375 0.35007924 0.79972929 0.36855415 0.7592749 0.39767802 0.72566414 
		0.43509141 0.70162004 0.4777633 0.68909043 0.5222367 0.68909043 0.56490856 0.70162004 
		0.60232198 0.72566414 0.63144583 0.7592749 0.64992076 0.79972929 0.65625 0.84375 
		0.64992076 0.88777071 0.63144588 0.92822516 0.60232198 0.96183586 0.56490862 0.98588002 
		0.5222367 0.99840963 0.4777633 0.99840963 0.43509141 0.98588002 0.39767802 0.96183586 
		0.36855415 0.92822516 0.35007924 0.88777071 0.34375 0.84375 0.35007924 0.79972929 
		0.36855415 0.7592749 0.39767802 0.72566414 0.43509141 0.70162004 0.4777633 0.68909043 
		0.5222367 0.68909043 0.56490856 0.70162004 0.60232198 0.72566414 0.63144583 0.7592749 
		0.64992076 0.79972929 0.65625 0.84375 0.64992076 0.88777071 0.63144588 0.92822516 
		0.60232198 0.96183586 0.56490862 0.98588002 0.5222367 0.99840963 0.4777633 0.99840963 
		0.43509141 0.98588002 0.39767802 0.96183586 0.36855415 0.92822516 0.35007924 0.88777071 
		0.34375 0.84375 0.35007924 0.79972929 0.36855415 0.7592749 0.39767802 0.72566414 
		0.43509141 0.70162004 0.4777633 0.68909043 0.5222367 0.68909043 0.56490856 0.70162004 
		0.60232198 0.72566414 0.63144583 0.7592749 0.64992076 0.79972929 0.65625 0.84375 
		0.64992076 0.88777071 0.63144588 0.92822516 0.60232198 0.96183586 0.56490862 0.98588002 
		0.5222367 0.99840963 0.4777633 0.99840963 0.43509141 0.98588002 0.39767802 0.96183586 
		0.36855415 0.92822516 0.35007924 0.88777071 0.34375 0.84375 0.35007924 0.79972929 
		0.36855415 0.7592749 0.39767802 0.72566414 0.43509141 0.70162004 0.4777633 0.68909043 
		0.5222367 0.68909043 0.56490856 0.70162004 0.60232198 0.72566414 0.63144583 0.7592749 
		0.64992076 0.79972929 0.65625 0.84375 0.64992076 0.88777071 0.63144588 0.92822516 
		0.60232198 0.96183586 0.56490862 0.98588002 0.5222367 0.99840963 0.4777633 0.99840963 
		0.43509141 0.98588002 0.39767802 0.96183586 0.36855415 0.92822516 0.35007924 0.88777071 
		0.34375 0.84375 0.35007924 0.79972929 0.36855415 0.7592749 0.39767802 0.72566414 
		0.43509141 0.70162004 0.4777633 0.68909043 0.5222367 0.68909043 0.56490856 0.70162004 
		0.60232198 0.72566414 0.63144583 0.7592749 0.64992076 0.79972929 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 90 ".pt";
	setAttr ".pt[67:155]" -type "float3" 5.6897909e-010 7.1687538e-011 -4.0269146e-011  
		1.2412495e-010 -1.8099957e-011 -3.9902682e-011  -1.4198311e-010 -1.8099957e-011 7.3502315e-011  
		3.5817019e-011 -1.6222194e-011 4.6746501e-010  -3.2078923e-011 2.9470915e-011 -4.709082e-010  
		3.2078912e-011 7.1687538e-011 -1.5101743e-010  4.9424158e-012 2.7872017e-011 -6.8888291e-011  
		4.857335e-011 -1.6222194e-011 -2.4983472e-011  4.6591198e-010 -1.6222194e-011 8.0995273e-011  
		-1.0748095e-010 -1.8099957e-011 -1.5421697e-011  -3.9232265e-010 -2.1855658e-011 
		3.1118063e-016  7.7142667e-011 2.7872017e-011 2.7566532e-011  3.3232506e-010 -2.1855658e-011 
		-9.8534521e-011  -3.6362929e-010 7.1687538e-011 -6.2097183e-010  -3.5817106e-011 
		3.1488197e-011 4.5503776e-010  3.2078912e-011 7.1687538e-011 1.1593875e-010  -5.948847e-011 
		-2.1855658e-011 4.709082e-010  3.5817019e-011 7.1687538e-011 6.2082955e-010  -9.7735382e-011 
		7.1687538e-011 -6.2097183e-010  1.2412495e-010 -1.8099957e-011 -8.9764855e-011  5.6897909e-010 
		7.1687538e-011 -3.4995628e-011  -1.5637884e-010 -1.8099957e-011 8.480384e-017  0.023912489 
		-0.053810142 -0.0079983138  0.020615781 -0.053810235 -0.015216729  0.015419211 -0.053810377 
		-0.021213986  0.0087436372 -0.053810235 -0.025504231  0.0011291722 -0.053810377 -0.027739905  
		-0.0068061347 -0.053810328 -0.02773989  -0.014419849 -0.05381028 -0.025504302  -0.02109585 
		-0.05381028 -0.021214059  -0.02629246 -0.053810377 -0.015216746  -0.029588887 -0.05381028 
		-0.0079983305  -0.030718371 -0.053810328 -0.00014365723  -0.029588981 -0.053810187 
		0.007710964  -0.026292646 -0.053810187 0.014929296  -0.021095943 -0.053810377 0.020926533  
		-0.014420037 -0.053810377 0.025216801  -0.0068059 -0.05381028 0.027452476  0.0011294098 
		-0.053810328 0.027452486  0.0087436847 -0.05381 0.025216863  0.015419117 -0.05381028 
		0.020926671  0.020615781 -0.053810235 0.014929356  0.023912303 -0.053810235 0.0077108787  
		0.02504185 -0.053810142 -0.00014372324  0.023912441 -0.036410291 -0.0079984888  0.020615915 
		-0.036410291 -0.0152169  0.015419117 -0.036410384 -0.021214023  0.0087434025 -0.036410194 
		-0.025504285  0.0011291722 -0.036410291 -0.027740043  -0.0068058502 -0.036410242 
		-0.027740005  -0.014419708 -0.036410335 -0.025504382  -0.021095792 -0.036410242 -0.021214079  
		-0.026292682 -0.036410429 -0.015216813  -0.029589074 -0.036410291 -0.0079983948  
		-0.030718571 -0.036410335 -0.00014375625  -0.029589027 -0.036410242 0.0077108154  
		-0.026292495 -0.036410242 0.014929419  -0.021095943 -0.036410384 0.020926757  -0.014420084 
		-0.036410335 0.02521693  -0.0068060406 -0.036410335 0.027452579  0.0011292191 -0.036410335 
		0.02745262  0.0087438785 -0.036410008 0.025216838  0.015419396 -0.036410194 0.020926552  
		0.020615781 -0.036410149 0.014929419  0.023912348 -0.036410194 0.0077110603  0.025041897 
		-0.036410101 -0.00014369427  0.01850633 -0.033841364 -0.0064111236  0.015875949 -0.033841364 
		-0.012170712  -0.0028383646 -0.033841271 -0.0001437225  0.011729382 -0.033841413 
		-0.016955862  0.0064027798 -0.033841219 -0.0203791  0.00032736061 -0.033841413 -0.022163002  
		-0.0060040858 -0.033841413 -0.022162963  -0.012079266 -0.033841457 -0.020379171  
		-0.017406208 -0.033841413 -0.01695591  -0.02155287 -0.03384155 -0.012170649  -0.02418296 
		-0.033841364 -0.0064110397  -0.025084116 -0.033841413 -0.00014376431  -0.024182912 
		-0.033841316 0.0061234767  -0.021552529 -0.033841316 0.011883258  -0.017406208 -0.033841413 
		0.016668571  -0.012079559 -0.033841364 0.02009172  -0.0060041794 -0.033841316 0.021875564  
		0.00032736061 -0.033841413 0.021875609  0.0064031552 -0.033841122 0.020091655  0.011729669 
		-0.033841316 0.016668374  0.015875855 -0.033841271 0.011883226  0.018506195 -0.033841219 
		0.0061236676  0.019407393 -0.033841219 -0.00014371774 ;
	setAttr -s 156 ".vt[0:155]"  0.6596505 -1.0000011 -0.19369078 0.57836217 
		-1.0000004 -0.37169024 0.45021689 -1.0000004 -0.51957756 0.28559616 -1.0000019 -0.62537187 
		0.09784098 -1.0000004 -0.68050224 -0.09784548 -1.0000049 -0.68050236 -0.28559768 
		-1.0000004 -0.62537223 -0.45021912 -1.0000026 -0.51957816 -0.57836366 -1.0000019 
		-0.37169087 -0.65965277 -1.0000019 -0.19369143 -0.68750083 -1.0000011 -2.4586916e-007 
		-0.65965277 -1.0000019 0.19369096 -0.57836366 -1.0000019 0.37169045 -0.45021912 -1.0000026 
		0.5195778 -0.28559843 -0.99999958 0.62537199 -0.097846232 -1.0000042 0.6805023 0.09784098 
		-1.0000004 0.68050236 0.28559616 -1.0000019 0.62537205 0.45021689 -1.0000004 0.51957792 
		0.57836139 -0.99999958 0.37169063 0.6596505 -1.0000011 0.19369116 0.68749928 -1.0000011 
		0 0.65964675 0.99999583 -0.19369078 0.57836068 0.99999887 -0.37169024 0.45021537 
		0.99999887 -0.51957756 0.28559542 0.9999966 -0.62537187 0.097840227 0.99999809 -0.68050224 
		-0.097841725 0.99999958 -0.68050236 -0.28559917 0.99999887 -0.62537223 -0.45021763 
		0.99999958 -0.51957816 -0.57836217 0.99999887 -0.37169087 -0.65965426 0.99999738 
		-0.19369143 -0.68750232 0.99999809 -2.4586916e-007 -0.65965426 0.99999738 0.19369096 
		-0.57836294 0.99999958 0.37169045 -0.45021763 0.99999958 0.5195778 -0.28559917 0.99999887 
		0.62537199 -0.097841725 0.99999958 0.6805023 0.097839475 0.99999887 0.68050236 0.28559467 
		0.99999738 0.62537205 0.45021537 0.99999887 0.51957792 0.57836068 0.99999887 0.37169063 
		0.65964675 0.99999583 0.19369116 0.68749779 0.99999809 0 -2.252774e-006 -1.0000026 
		0 0.58805436 1.1704745 -0.17266934 0.51558715 1.170473 -0.33135024 0.40135196 1.1704745 
		-0.46318728 0.25460175 1.1704775 -0.55749953 0.087218396 1.1704738 -0.60664636 -0.087222151 
		1.1704775 -0.60664648 -0.25460175 1.1704761 -0.55749959 -0.40135497 1.1704761 -0.46318737 
		-0.5155924 1.1704752 -0.33135077 -0.58806109 1.1704752 -0.17266981 -0.61288893 1.1704745 
		-2.1926414e-007 -0.58805889 1.1704775 0.17266934 -0.51559389 1.1704768 0.33135033 
		-0.40135571 1.1704768 0.46318704 -0.25460175 1.1704761 0.55749935 -0.087221399 1.1704768 
		0.60664636 0.087221399 1.1704768 0.60664642 0.25460175 1.1704775 0.55749959 0.40135121 
		1.1704752 0.46318752 0.51558715 1.170473 0.33135045 0.58805513 1.1704738 0.17266956 
		0.6128844 1.1704775 1.4666497e-008 0.46195084 1.2523426 -0.13564186 0.40502399 1.2523419 
		-0.2602945 0.31528547 1.2523419 -0.36385965 0.20000127 1.252341 -0.43794772 0.068512112 
		1.2523389 -0.47655541 -0.06851887 1.2523426 -0.47655505 -0.20000277 1.2523441 -0.43794742 
		-0.31528923 1.252341 -0.3638598 -0.40502775 1.252341 -0.26029474 -0.46195608 1.2523419 
		-0.13564205 -0.48145759 1.2523433 -7.1205847e-007 -0.46195382 1.2523441 0.13564122 
		-0.40502998 1.2523433 0.26029459 -0.31529075 1.2523426 0.36385974 -0.20000803 1.2523403 
		0.43794739 -0.06851887 1.2523426 0.47655505 0.06851662 1.2523433 0.47655514 0.20000127 
		1.2523426 0.43794751 0.31528473 1.2523426 0.36385974 0.40502399 1.2523419 0.26029453 
		0.46195084 1.2523426 0.13564201 0.48145309 1.2523419 -2.7866344e-008 0.42524713 1.0307462 
		-0.12486247 0.37284011 1.0307447 -0.23961177 0.29023162 1.0307424 -0.33494857 0.18411171 
		1.0307447 -0.40314963 0.063066408 1.0307424 -0.43868953 -0.063079171 1.0307432 -0.43868938 
		-0.18411246 1.030744 -0.4031508 -0.29023913 1.030744 -0.33494988 -0.37284836 1.0307424 
		-0.23961198 -0.42525089 1.030744 -0.12486273 -0.44320625 1.0307432 1.0313739e-006 
		-0.42525238 1.0307455 0.12486396 -0.37285137 1.0307455 0.23961198 -0.29024065 1.0307424 
		0.33494848 -0.18411547 1.0307424 0.40314975 -0.063075416 1.030744 0.43868986 0.063070163 
		1.0307432 0.43868995 0.18411246 1.0307485 0.4031508 0.29023013 1.030744 0.33495077 
		0.37284011 1.0307447 0.23961292 0.42524412 1.0307447 0.12486264 0.44320023 1.0307462 
		-1.5849984e-008 0.42524639 1.3073471 -0.12486524 0.37284234 1.3073471 -0.23961446 
		0.29023013 1.3073455 -0.33494917 0.18410796 1.3073486 -0.40315041 0.063066408 1.3073471 
		-0.43869174 -0.063074671 1.3073478 -0.43869108 -0.18411021 1.3073463 -0.40315196 
		-0.29023838 1.3073478 -0.33495006 -0.37285212 1.3073448 -0.23961319 -0.4252539 1.3073471 
		-0.12486374 -0.44320926 1.3073463 -5.3884605e-007 -0.42525315 1.3073478 0.12486165 
		-0.37284911 1.3073478 0.23961391 -0.29024065 1.3073455 0.33495206 -0.18411621 1.3073463 
		0.40315187 -0.063077673 1.3073463 0.43869141 0.063067161 1.3073463 0.43869212 0.18411547 
		1.3073516 0.40315047 0.29023463 1.3073486 0.3349489 0.37284011 1.3073493 0.23961391 
		0.42524487 1.3073486 0.1248655 0.44320098 1.30735 4.4543128e-007 0.3393068 1.3481846 
		-0.099631302 0.29749233 1.3481846 -0.19119003 -4.5055481e-006 1.3481861 -2.6575837e-009 
		0.2315754 1.3481839 -0.26725835 0.14689964 1.3481869 -0.32167661 0.050320212 1.3481839 
		-0.35003495 -0.050329223 1.3481839 -0.35003433 -0.14690489 1.3481832 -0.32167783 
		-0.23158592 1.3481839 -0.26725906 -0.29750434 1.3481816 -0.19118907 -0.33931431 1.3481846 
		-0.099629983 -0.35363972 1.3481839 -6.695256e-007 -0.33931357 1.3481853 0.099628098 
		-0.29749909 1.3481853 0.19118987 -0.23158592 1.3481839 0.26726076 -0.1469094 1.3481846 
		0.3216778 -0.050330725 1.3481853 0.35003495 0.050320212 1.3481839 0.35003585 0.14690565 
		1.3481884 0.32167673 0.23157991 1.3481853 0.26725769 0.29749081 1.3481861 0.19118935 
		0.33930457 1.3481869 0.099631108 0.35363069 1.3481869 7.2599164e-008;
	setAttr -s 330 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 
		0 3 4 0 4 5 0 5 6 0 6 7 
		0 7 8 0 8 9 0 9 10 0 10 11 
		0 11 12 0 12 13 0 13 14 0 14 15 
		0 15 16 0 16 17 0 17 18 0 18 19 
		0 19 20 0 20 21 0 21 0 0 22 23 
		1 23 24 1 24 25 1 25 26 1 26 27 
		1 27 28 1 28 29 1 29 30 1 30 31 
		1 31 32 1 32 33 1 33 34 1 34 35 
		1 35 36 1 36 37 1 37 38 1 38 39 
		1 39 40 1 40 41 1 41 42 1 42 43 
		1 43 22 1 0 22 1 1 23 1 2 24 
		1 3 25 1 4 26 1 5 27 1 6 28 
		1 7 29 1 8 30 1 9 31 1 10 32 
		1 11 33 1 12 34 1 13 35 1 14 36 
		1 15 37 1 16 38 1 17 39 1 18 40 
		1 19 41 1 20 42 1 21 43 1 44 0 
		1 44 1 1 44 2 1 44 3 1 44 4 
		1 44 5 1 44 6 1 44 7 1 44 8 
		1 44 9 1 44 10 1 44 11 1 44 12 
		1 44 13 1 44 14 1 44 15 1 44 16 
		1 44 17 1 44 18 1 44 19 1 44 20 
		1 44 21 1 22 45 1 23 46 1 45 46 
		0 24 47 1 46 47 0 25 48 1 47 48 
		0 26 49 1 48 49 0 27 50 1 49 50 
		0 28 51 1 50 51 0 29 52 1 51 52 
		0 30 53 1 52 53 0 31 54 1 53 54 
		0 32 55 1 54 55 0 33 56 1 55 56 
		0 34 57 1 56 57 0 35 58 1 57 58 
		0 36 59 1 58 59 0 37 60 1 59 60 
		0 38 61 1 60 61 0 39 62 1 61 62 
		0 40 63 1 62 63 0 41 64 1 63 64 
		0 42 65 1 64 65 0 43 66 1 65 66 
		0 66 45 0 45 67 1 46 68 1 67 68 
		0 47 69 1 68 69 0 48 70 1 69 70 
		0 49 71 1 70 71 0 50 72 1 71 72 
		0 51 73 1 72 73 0 52 74 1 73 74 
		0 53 75 1 74 75 0 54 76 1 75 76 
		0 55 77 1 76 77 0 56 78 1 77 78 
		0 57 79 1 78 79 0 58 80 1 79 80 
		0 59 81 1 80 81 0 60 82 1 81 82 
		0 61 83 1 82 83 0 62 84 1;
	setAttr ".ed[166:329]" 83 84 0 63 85 1 84 85 
		0 64 86 1 85 86 0 65 87 1 86 87 
		0 66 88 1 87 88 0 88 67 0 67 89 
		1 68 90 1 89 90 0 69 91 1 90 91 
		0 70 92 1 91 92 0 71 93 1 92 93 
		0 72 94 1 93 94 0 73 95 1 94 95 
		0 74 96 1 95 96 0 75 97 1 96 97 
		0 76 98 1 97 98 0 77 99 1 98 99 
		0 78 100 1 99 100 0 79 101 1 100 101 
		0 80 102 1 101 102 0 81 103 1 102 103 
		0 82 104 1 103 104 0 83 105 1 104 105 
		0 84 106 1 105 106 0 85 107 1 106 107 
		0 86 108 1 107 108 0 87 109 1 108 109 
		0 88 110 1 109 110 0 110 89 0 89 111 
		1 90 112 1 111 112 0 91 113 1 112 113 
		0 92 114 1 113 114 0 93 115 1 114 115 
		0 94 116 1 115 116 0 95 117 1 116 117 
		0 96 118 1 117 118 0 97 119 1 118 119 
		0 98 120 1 119 120 0 99 121 1 120 121 
		0 100 122 1 121 122 0 101 123 1 122 123 
		0 102 124 1 123 124 0 103 125 1 124 125 
		0 104 126 1 125 126 0 105 127 1 126 127 
		0 106 128 1 127 128 0 107 129 1 128 129 
		0 108 130 1 129 130 0 109 131 1 130 131 
		0 110 132 1 131 132 0 132 111 0 111 133 
		1 112 134 1 133 134 1 134 135 1 133 135 
		1 113 136 1 134 136 1 136 135 1 114 137 
		1 136 137 1 137 135 1 115 138 1 137 138 
		1 138 135 1 116 139 1 138 139 1 139 135 
		1 117 140 1 139 140 1 140 135 1 118 141 
		1 140 141 1 141 135 1 119 142 1 141 142 
		1 142 135 1 120 143 1 142 143 1 143 135 
		1 121 144 1 143 144 1 144 135 1 122 145 
		1 144 145 1 145 135 1 123 146 1 145 146 
		1 146 135 1 124 147 1 146 147 1 147 135 
		1 125 148 1 147 148 1 148 135 1 126 149 
		1 148 149 1 149 135 1 127 150 1 149 150 
		1 150 135 1 128 151 1 150 151 1 151 135 
		1 129 152 1 151 152 1 152 135 1 130 153 
		1 152 153 1 153 135 1 131 154 1 153 154 
		1 154 135 1 132 155 1 154 155 1 155 135 
		1 155 133 1;
	setAttr -s 176 ".fc[0:175]" -type "polyFaces" 
		f 4 0 45 -23 -45 
		mu 0 4 22 23 46 45 
		f 4 1 46 -24 -46 
		mu 0 4 23 24 47 46 
		f 4 2 47 -25 -47 
		mu 0 4 24 25 48 47 
		f 4 3 48 -26 -48 
		mu 0 4 25 26 49 48 
		f 4 4 49 -27 -49 
		mu 0 4 26 27 50 49 
		f 4 5 50 -28 -50 
		mu 0 4 27 28 51 50 
		f 4 6 51 -29 -51 
		mu 0 4 28 29 52 51 
		f 4 7 52 -30 -52 
		mu 0 4 29 30 53 52 
		f 4 8 53 -31 -53 
		mu 0 4 30 31 54 53 
		f 4 9 54 -32 -54 
		mu 0 4 31 32 55 54 
		f 4 10 55 -33 -55 
		mu 0 4 32 33 56 55 
		f 4 11 56 -34 -56 
		mu 0 4 33 34 57 56 
		f 4 12 57 -35 -57 
		mu 0 4 34 35 58 57 
		f 4 13 58 -36 -58 
		mu 0 4 35 36 59 58 
		f 4 14 59 -37 -59 
		mu 0 4 36 37 60 59 
		f 4 15 60 -38 -60 
		mu 0 4 37 38 61 60 
		f 4 16 61 -39 -61 
		mu 0 4 38 39 62 61 
		f 4 17 62 -40 -62 
		mu 0 4 39 40 63 62 
		f 4 18 63 -41 -63 
		mu 0 4 40 41 64 63 
		f 4 19 64 -42 -64 
		mu 0 4 41 42 65 64 
		f 4 20 65 -43 -65 
		mu 0 4 42 43 66 65 
		f 4 21 44 -44 -66 
		mu 0 4 43 44 67 66 
		f 3 -1 -67 67 
		mu 0 3 1 0 90 
		f 3 -2 -68 68 
		mu 0 3 2 1 90 
		f 3 -3 -69 69 
		mu 0 3 3 2 90 
		f 3 -4 -70 70 
		mu 0 3 4 3 90 
		f 3 -5 -71 71 
		mu 0 3 5 4 90 
		f 3 -6 -72 72 
		mu 0 3 6 5 90 
		f 3 -7 -73 73 
		mu 0 3 7 6 90 
		f 3 -8 -74 74 
		mu 0 3 8 7 90 
		f 3 -9 -75 75 
		mu 0 3 9 8 90 
		f 3 -10 -76 76 
		mu 0 3 10 9 90 
		f 3 -11 -77 77 
		mu 0 3 11 10 90 
		f 3 -12 -78 78 
		mu 0 3 12 11 90 
		f 3 -13 -79 79 
		mu 0 3 13 12 90 
		f 3 -14 -80 80 
		mu 0 3 14 13 90 
		f 3 -15 -81 81 
		mu 0 3 15 14 90 
		f 3 -16 -82 82 
		mu 0 3 16 15 90 
		f 3 -17 -83 83 
		mu 0 3 17 16 90 
		f 3 -18 -84 84 
		mu 0 3 18 17 90 
		f 3 -19 -85 85 
		mu 0 3 19 18 90 
		f 3 -20 -86 86 
		mu 0 3 20 19 90 
		f 3 -21 -87 87 
		mu 0 3 21 20 90 
		f 3 -22 -88 66 
		mu 0 3 0 21 90 
		f 3 266 267 -269 
		mu 0 3 180 181 91 
		f 3 270 271 -268 
		mu 0 3 181 182 91 
		f 3 273 274 -272 
		mu 0 3 182 183 91 
		f 3 276 277 -275 
		mu 0 3 183 184 91 
		f 3 279 280 -278 
		mu 0 3 184 185 91 
		f 3 282 283 -281 
		mu 0 3 185 186 91 
		f 3 285 286 -284 
		mu 0 3 186 187 91 
		f 3 288 289 -287 
		mu 0 3 187 188 91 
		f 3 291 292 -290 
		mu 0 3 188 189 91 
		f 3 294 295 -293 
		mu 0 3 189 190 91 
		f 3 297 298 -296 
		mu 0 3 190 191 91 
		f 3 300 301 -299 
		mu 0 3 191 192 91 
		f 3 303 304 -302 
		mu 0 3 192 193 91 
		f 3 306 307 -305 
		mu 0 3 193 194 91 
		f 3 309 310 -308 
		mu 0 3 194 195 91 
		f 3 312 313 -311 
		mu 0 3 195 196 91 
		f 3 315 316 -314 
		mu 0 3 196 197 91 
		f 3 318 319 -317 
		mu 0 3 197 198 91 
		f 3 321 322 -320 
		mu 0 3 198 199 91 
		f 3 324 325 -323 
		mu 0 3 199 200 91 
		f 3 327 328 -326 
		mu 0 3 200 201 91 
		f 3 329 268 -329 
		mu 0 3 201 180 91 
		f 4 22 89 -91 -89 
		mu 0 4 88 87 93 92 
		f 4 23 91 -93 -90 
		mu 0 4 87 86 94 93 
		f 4 24 93 -95 -92 
		mu 0 4 86 85 95 94 
		f 4 25 95 -97 -94 
		mu 0 4 85 84 96 95 
		f 4 26 97 -99 -96 
		mu 0 4 84 83 97 96 
		f 4 27 99 -101 -98 
		mu 0 4 83 82 98 97 
		f 4 28 101 -103 -100 
		mu 0 4 82 81 99 98 
		f 4 29 103 -105 -102 
		mu 0 4 81 80 100 99 
		f 4 30 105 -107 -104 
		mu 0 4 80 79 101 100 
		f 4 31 107 -109 -106 
		mu 0 4 79 78 102 101 
		f 4 32 109 -111 -108 
		mu 0 4 78 77 103 102 
		f 4 33 111 -113 -110 
		mu 0 4 77 76 104 103 
		f 4 34 113 -115 -112 
		mu 0 4 76 75 105 104 
		f 4 35 115 -117 -114 
		mu 0 4 75 74 106 105 
		f 4 36 117 -119 -116 
		mu 0 4 74 73 107 106 
		f 4 37 119 -121 -118 
		mu 0 4 73 72 108 107 
		f 4 38 121 -123 -120 
		mu 0 4 72 71 109 108 
		f 4 39 123 -125 -122 
		mu 0 4 71 70 110 109 
		f 4 40 125 -127 -124 
		mu 0 4 70 69 111 110 
		f 4 41 127 -129 -126 
		mu 0 4 69 68 112 111 
		f 4 42 129 -131 -128 
		mu 0 4 68 89 113 112 
		f 4 43 88 -132 -130 
		mu 0 4 89 88 92 113 
		f 4 90 133 -135 -133 
		mu 0 4 92 93 115 114 
		f 4 92 135 -137 -134 
		mu 0 4 93 94 116 115 
		f 4 94 137 -139 -136 
		mu 0 4 94 95 117 116 
		f 4 96 139 -141 -138 
		mu 0 4 95 96 118 117 
		f 4 98 141 -143 -140 
		mu 0 4 96 97 119 118 
		f 4 100 143 -145 -142 
		mu 0 4 97 98 120 119 
		f 4 102 145 -147 -144 
		mu 0 4 98 99 121 120 
		f 4 104 147 -149 -146 
		mu 0 4 99 100 122 121 
		f 4 106 149 -151 -148 
		mu 0 4 100 101 123 122 
		f 4 108 151 -153 -150 
		mu 0 4 101 102 124 123 
		f 4 110 153 -155 -152 
		mu 0 4 102 103 125 124 
		f 4 112 155 -157 -154 
		mu 0 4 103 104 126 125 
		f 4 114 157 -159 -156 
		mu 0 4 104 105 127 126 
		f 4 116 159 -161 -158 
		mu 0 4 105 106 128 127 
		f 4 118 161 -163 -160 
		mu 0 4 106 107 129 128 
		f 4 120 163 -165 -162 
		mu 0 4 107 108 130 129 
		f 4 122 165 -167 -164 
		mu 0 4 108 109 131 130 
		f 4 124 167 -169 -166 
		mu 0 4 109 110 132 131 
		f 4 126 169 -171 -168 
		mu 0 4 110 111 133 132 
		f 4 128 171 -173 -170 
		mu 0 4 111 112 134 133 
		f 4 130 173 -175 -172 
		mu 0 4 112 113 135 134 
		f 4 131 132 -176 -174 
		mu 0 4 113 92 114 135 
		f 4 134 177 -179 -177 
		mu 0 4 114 115 137 136 
		f 4 136 179 -181 -178 
		mu 0 4 115 116 138 137 
		f 4 138 181 -183 -180 
		mu 0 4 116 117 139 138 
		f 4 140 183 -185 -182 
		mu 0 4 117 118 140 139 
		f 4 142 185 -187 -184 
		mu 0 4 118 119 141 140 
		f 4 144 187 -189 -186 
		mu 0 4 119 120 142 141 
		f 4 146 189 -191 -188 
		mu 0 4 120 121 143 142 
		f 4 148 191 -193 -190 
		mu 0 4 121 122 144 143 
		f 4 150 193 -195 -192 
		mu 0 4 122 123 145 144 
		f 4 152 195 -197 -194 
		mu 0 4 123 124 146 145 
		f 4 154 197 -199 -196 
		mu 0 4 124 125 147 146 
		f 4 156 199 -201 -198 
		mu 0 4 125 126 148 147 
		f 4 158 201 -203 -200 
		mu 0 4 126 127 149 148 
		f 4 160 203 -205 -202 
		mu 0 4 127 128 150 149 
		f 4 162 205 -207 -204 
		mu 0 4 128 129 151 150 
		f 4 164 207 -209 -206 
		mu 0 4 129 130 152 151 
		f 4 166 209 -211 -208 
		mu 0 4 130 131 153 152 
		f 4 168 211 -213 -210 
		mu 0 4 131 132 154 153 
		f 4 170 213 -215 -212 
		mu 0 4 132 133 155 154 
		f 4 172 215 -217 -214 
		mu 0 4 133 134 156 155 
		f 4 174 217 -219 -216 
		mu 0 4 134 135 157 156 
		f 4 175 176 -220 -218 
		mu 0 4 135 114 136 157 
		f 4 178 221 -223 -221 
		mu 0 4 136 137 159 158 
		f 4 180 223 -225 -222 
		mu 0 4 137 138 160 159 
		f 4 182 225 -227 -224 
		mu 0 4 138 139 161 160 
		f 4 184 227 -229 -226 
		mu 0 4 139 140 162 161 
		f 4 186 229 -231 -228 
		mu 0 4 140 141 163 162 
		f 4 188 231 -233 -230 
		mu 0 4 141 142 164 163 
		f 4 190 233 -235 -232 
		mu 0 4 142 143 165 164 
		f 4 192 235 -237 -234 
		mu 0 4 143 144 166 165 
		f 4 194 237 -239 -236 
		mu 0 4 144 145 167 166 
		f 4 196 239 -241 -238 
		mu 0 4 145 146 168 167 
		f 4 198 241 -243 -240 
		mu 0 4 146 147 169 168 
		f 4 200 243 -245 -242 
		mu 0 4 147 148 170 169 
		f 4 202 245 -247 -244 
		mu 0 4 148 149 171 170 
		f 4 204 247 -249 -246 
		mu 0 4 149 150 172 171 
		f 4 206 249 -251 -248 
		mu 0 4 150 151 173 172 
		f 4 208 251 -253 -250 
		mu 0 4 151 152 174 173 
		f 4 210 253 -255 -252 
		mu 0 4 152 153 175 174 
		f 4 212 255 -257 -254 
		mu 0 4 153 154 176 175 
		f 4 214 257 -259 -256 
		mu 0 4 154 155 177 176 
		f 4 216 259 -261 -258 
		mu 0 4 155 156 178 177 
		f 4 218 261 -263 -260 
		mu 0 4 156 157 179 178 
		f 4 219 220 -264 -262 
		mu 0 4 157 136 158 179 
		f 4 222 265 -267 -265 
		mu 0 4 158 159 181 180 
		f 4 224 269 -271 -266 
		mu 0 4 159 160 182 181 
		f 4 226 272 -274 -270 
		mu 0 4 160 161 183 182 
		f 4 228 275 -277 -273 
		mu 0 4 161 162 184 183 
		f 4 230 278 -280 -276 
		mu 0 4 162 163 185 184 
		f 4 232 281 -283 -279 
		mu 0 4 163 164 186 185 
		f 4 234 284 -286 -282 
		mu 0 4 164 165 187 186 
		f 4 236 287 -289 -285 
		mu 0 4 165 166 188 187 
		f 4 238 290 -292 -288 
		mu 0 4 166 167 189 188 
		f 4 240 293 -295 -291 
		mu 0 4 167 168 190 189 
		f 4 242 296 -298 -294 
		mu 0 4 168 169 191 190 
		f 4 244 299 -301 -297 
		mu 0 4 169 170 192 191 
		f 4 246 302 -304 -300 
		mu 0 4 170 171 193 192 
		f 4 248 305 -307 -303 
		mu 0 4 171 172 194 193 
		f 4 250 308 -310 -306 
		mu 0 4 172 173 195 194 
		f 4 252 311 -313 -309 
		mu 0 4 173 174 196 195 
		f 4 254 314 -316 -312 
		mu 0 4 174 175 197 196 
		f 4 256 317 -319 -315 
		mu 0 4 175 176 198 197 
		f 4 258 320 -322 -318 
		mu 0 4 176 177 199 198 
		f 4 260 323 -325 -321 
		mu 0 4 177 178 200 199 
		f 4 262 326 -328 -324 
		mu 0 4 178 179 201 200 
		f 4 263 264 -330 -327 
		mu 0 4 179 158 180 201 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
createNode transform -n "button7";
	setAttr ".t" -type "double3" 4.6027928534307714 36.355907397456811 -28.486185159225251 ;
	setAttr ".r" -type "double3" 0 0 -30.000000000000011 ;
createNode mesh -n "buttonShape7" -p "button7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 202 ".uvst[0].uvsp[0:201]" -type "float2" 0.64992076 0.11222929 
		0.63144583 0.071774885 0.60232198 0.038164139 0.56490856 0.014120027 0.5222367 0.0015904158 
		0.4777633 0.0015904158 0.43509141 0.014120027 0.39767802 0.038164139 0.36855415 0.071774885 
		0.35007924 0.11222929 0.34375 0.15625 0.35007924 0.20027071 0.36855415 0.24072513 
		0.39767802 0.27433586 0.43509141 0.29837999 0.4777633 0.3109096 0.5222367 0.3109096 
		0.56490862 0.29837999 0.60232198 0.27433586 0.63144588 0.24072513 0.64992076 0.20027071 
		0.65625 0.15625 0.375 0.3125 0.38636363 0.3125 0.39772725 0.3125 0.40909088 0.3125 
		0.4204545 0.3125 0.43181813 0.3125 0.44318175 0.3125 0.45454538 0.3125 0.465909 0.3125 
		0.47727263 0.3125 0.48863626 0.3125 0.49999988 0.3125 0.51136351 0.3125 0.52272713 
		0.3125 0.53409076 0.3125 0.54545438 0.3125 0.55681801 0.3125 0.56818163 0.3125 0.57954526 
		0.3125 0.59090889 0.3125 0.60227251 0.3125 0.61363614 0.3125 0.62499976 0.3125 0.375 
		0.68843985 0.38636363 0.68843985 0.39772725 0.68843985 0.40909088 0.68843985 0.4204545 
		0.68843985 0.43181813 0.68843985 0.44318175 0.68843985 0.45454538 0.68843985 0.465909 
		0.68843985 0.47727263 0.68843985 0.48863626 0.68843985 0.49999988 0.68843985 0.51136351 
		0.68843985 0.52272713 0.68843985 0.53409076 0.68843985 0.54545438 0.68843985 0.55681801 
		0.68843985 0.56818163 0.68843985 0.57954526 0.68843985 0.59090889 0.68843985 0.60227251 
		0.68843985 0.61363614 0.68843985 0.62499976 0.68843985 0.64992076 0.79972929 0.63144583 
		0.7592749 0.60232198 0.72566414 0.56490856 0.70162004 0.5222367 0.68909043 0.4777633 
		0.68909043 0.43509141 0.70162004 0.39767802 0.72566414 0.36855415 0.7592749 0.35007924 
		0.79972929 0.34375 0.84375 0.35007924 0.88777071 0.36855415 0.92822516 0.39767802 
		0.96183586 0.43509141 0.98588002 0.4777633 0.99840963 0.5222367 0.99840963 0.56490862 
		0.98588002 0.60232198 0.96183586 0.63144588 0.92822516 0.64992076 0.88777071 0.65625 
		0.84375 0.5 0.15000001 0.5 0.83749998 0.64992076 0.88777071 0.63144588 0.92822516 
		0.60232198 0.96183586 0.56490862 0.98588002 0.5222367 0.99840963 0.4777633 0.99840963 
		0.43509141 0.98588002 0.39767802 0.96183586 0.36855415 0.92822516 0.35007924 0.88777071 
		0.34375 0.84375 0.35007924 0.79972929 0.36855415 0.7592749 0.39767802 0.72566414 
		0.43509141 0.70162004 0.4777633 0.68909043 0.5222367 0.68909043 0.56490856 0.70162004 
		0.60232198 0.72566414 0.63144583 0.7592749 0.64992076 0.79972929 0.65625 0.84375 
		0.64992076 0.88777071 0.63144588 0.92822516 0.60232198 0.96183586 0.56490862 0.98588002 
		0.5222367 0.99840963 0.4777633 0.99840963 0.43509141 0.98588002 0.39767802 0.96183586 
		0.36855415 0.92822516 0.35007924 0.88777071 0.34375 0.84375 0.35007924 0.79972929 
		0.36855415 0.7592749 0.39767802 0.72566414 0.43509141 0.70162004 0.4777633 0.68909043 
		0.5222367 0.68909043 0.56490856 0.70162004 0.60232198 0.72566414 0.63144583 0.7592749 
		0.64992076 0.79972929 0.65625 0.84375 0.64992076 0.88777071 0.63144588 0.92822516 
		0.60232198 0.96183586 0.56490862 0.98588002 0.5222367 0.99840963 0.4777633 0.99840963 
		0.43509141 0.98588002 0.39767802 0.96183586 0.36855415 0.92822516 0.35007924 0.88777071 
		0.34375 0.84375 0.35007924 0.79972929 0.36855415 0.7592749 0.39767802 0.72566414 
		0.43509141 0.70162004 0.4777633 0.68909043 0.5222367 0.68909043 0.56490856 0.70162004 
		0.60232198 0.72566414 0.63144583 0.7592749 0.64992076 0.79972929 0.65625 0.84375 
		0.64992076 0.88777071 0.63144588 0.92822516 0.60232198 0.96183586 0.56490862 0.98588002 
		0.5222367 0.99840963 0.4777633 0.99840963 0.43509141 0.98588002 0.39767802 0.96183586 
		0.36855415 0.92822516 0.35007924 0.88777071 0.34375 0.84375 0.35007924 0.79972929 
		0.36855415 0.7592749 0.39767802 0.72566414 0.43509141 0.70162004 0.4777633 0.68909043 
		0.5222367 0.68909043 0.56490856 0.70162004 0.60232198 0.72566414 0.63144583 0.7592749 
		0.64992076 0.79972929 0.65625 0.84375 0.64992076 0.88777071 0.63144588 0.92822516 
		0.60232198 0.96183586 0.56490862 0.98588002 0.5222367 0.99840963 0.4777633 0.99840963 
		0.43509141 0.98588002 0.39767802 0.96183586 0.36855415 0.92822516 0.35007924 0.88777071 
		0.34375 0.84375 0.35007924 0.79972929 0.36855415 0.7592749 0.39767802 0.72566414 
		0.43509141 0.70162004 0.4777633 0.68909043 0.5222367 0.68909043 0.56490856 0.70162004 
		0.60232198 0.72566414 0.63144583 0.7592749 0.64992076 0.79972929 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 90 ".pt";
	setAttr ".pt[67:155]" -type "float3" 5.6897909e-010 7.1687538e-011 -4.0269146e-011  
		1.2412495e-010 -1.8099957e-011 -3.9902682e-011  -1.4198311e-010 -1.8099957e-011 7.3502315e-011  
		3.5817019e-011 -1.6222194e-011 4.6746501e-010  -3.2078923e-011 2.9470915e-011 -4.709082e-010  
		3.2078912e-011 7.1687538e-011 -1.5101743e-010  4.9424158e-012 2.7872017e-011 -6.8888291e-011  
		4.857335e-011 -1.6222194e-011 -2.4983472e-011  4.6591198e-010 -1.6222194e-011 8.0995273e-011  
		-1.0748095e-010 -1.8099957e-011 -1.5421697e-011  -3.9232265e-010 -2.1855658e-011 
		3.1118063e-016  7.7142667e-011 2.7872017e-011 2.7566532e-011  3.3232506e-010 -2.1855658e-011 
		-9.8534521e-011  -3.6362929e-010 7.1687538e-011 -6.2097183e-010  -3.5817106e-011 
		3.1488197e-011 4.5503776e-010  3.2078912e-011 7.1687538e-011 1.1593875e-010  -5.948847e-011 
		-2.1855658e-011 4.709082e-010  3.5817019e-011 7.1687538e-011 6.2082955e-010  -9.7735382e-011 
		7.1687538e-011 -6.2097183e-010  1.2412495e-010 -1.8099957e-011 -8.9764855e-011  5.6897909e-010 
		7.1687538e-011 -3.4995628e-011  -1.5637884e-010 -1.8099957e-011 8.480384e-017  0.023912489 
		-0.053810142 -0.0079983138  0.020615781 -0.053810235 -0.015216729  0.015419211 -0.053810377 
		-0.021213986  0.0087436372 -0.053810235 -0.025504231  0.0011291722 -0.053810377 -0.027739905  
		-0.0068061347 -0.053810328 -0.02773989  -0.014419849 -0.05381028 -0.025504302  -0.02109585 
		-0.05381028 -0.021214059  -0.02629246 -0.053810377 -0.015216746  -0.029588887 -0.05381028 
		-0.0079983305  -0.030718371 -0.053810328 -0.00014365723  -0.029588981 -0.053810187 
		0.007710964  -0.026292646 -0.053810187 0.014929296  -0.021095943 -0.053810377 0.020926533  
		-0.014420037 -0.053810377 0.025216801  -0.0068059 -0.05381028 0.027452476  0.0011294098 
		-0.053810328 0.027452486  0.0087436847 -0.05381 0.025216863  0.015419117 -0.05381028 
		0.020926671  0.020615781 -0.053810235 0.014929356  0.023912303 -0.053810235 0.0077108787  
		0.02504185 -0.053810142 -0.00014372324  0.023912441 -0.036410291 -0.0079984888  0.020615915 
		-0.036410291 -0.0152169  0.015419117 -0.036410384 -0.021214023  0.0087434025 -0.036410194 
		-0.025504285  0.0011291722 -0.036410291 -0.027740043  -0.0068058502 -0.036410242 
		-0.027740005  -0.014419708 -0.036410335 -0.025504382  -0.021095792 -0.036410242 -0.021214079  
		-0.026292682 -0.036410429 -0.015216813  -0.029589074 -0.036410291 -0.0079983948  
		-0.030718571 -0.036410335 -0.00014375625  -0.029589027 -0.036410242 0.0077108154  
		-0.026292495 -0.036410242 0.014929419  -0.021095943 -0.036410384 0.020926757  -0.014420084 
		-0.036410335 0.02521693  -0.0068060406 -0.036410335 0.027452579  0.0011292191 -0.036410335 
		0.02745262  0.0087438785 -0.036410008 0.025216838  0.015419396 -0.036410194 0.020926552  
		0.020615781 -0.036410149 0.014929419  0.023912348 -0.036410194 0.0077110603  0.025041897 
		-0.036410101 -0.00014369427  0.01850633 -0.033841364 -0.0064111236  0.015875949 -0.033841364 
		-0.012170712  -0.0028383646 -0.033841271 -0.0001437225  0.011729382 -0.033841413 
		-0.016955862  0.0064027798 -0.033841219 -0.0203791  0.00032736061 -0.033841413 -0.022163002  
		-0.0060040858 -0.033841413 -0.022162963  -0.012079266 -0.033841457 -0.020379171  
		-0.017406208 -0.033841413 -0.01695591  -0.02155287 -0.03384155 -0.012170649  -0.02418296 
		-0.033841364 -0.0064110397  -0.025084116 -0.033841413 -0.00014376431  -0.024182912 
		-0.033841316 0.0061234767  -0.021552529 -0.033841316 0.011883258  -0.017406208 -0.033841413 
		0.016668571  -0.012079559 -0.033841364 0.02009172  -0.0060041794 -0.033841316 0.021875564  
		0.00032736061 -0.033841413 0.021875609  0.0064031552 -0.033841122 0.020091655  0.011729669 
		-0.033841316 0.016668374  0.015875855 -0.033841271 0.011883226  0.018506195 -0.033841219 
		0.0061236676  0.019407393 -0.033841219 -0.00014371774 ;
	setAttr -s 156 ".vt[0:155]"  0.6596505 -1.0000011 -0.19369078 0.57836217 
		-1.0000004 -0.37169024 0.45021689 -1.0000004 -0.51957756 0.28559616 -1.0000019 -0.62537187 
		0.09784098 -1.0000004 -0.68050224 -0.09784548 -1.0000049 -0.68050236 -0.28559768 
		-1.0000004 -0.62537223 -0.45021912 -1.0000026 -0.51957816 -0.57836366 -1.0000019 
		-0.37169087 -0.65965277 -1.0000019 -0.19369143 -0.68750083 -1.0000011 -2.4586916e-007 
		-0.65965277 -1.0000019 0.19369096 -0.57836366 -1.0000019 0.37169045 -0.45021912 -1.0000026 
		0.5195778 -0.28559843 -0.99999958 0.62537199 -0.097846232 -1.0000042 0.6805023 0.09784098 
		-1.0000004 0.68050236 0.28559616 -1.0000019 0.62537205 0.45021689 -1.0000004 0.51957792 
		0.57836139 -0.99999958 0.37169063 0.6596505 -1.0000011 0.19369116 0.68749928 -1.0000011 
		0 0.65964675 0.99999583 -0.19369078 0.57836068 0.99999887 -0.37169024 0.45021537 
		0.99999887 -0.51957756 0.28559542 0.9999966 -0.62537187 0.097840227 0.99999809 -0.68050224 
		-0.097841725 0.99999958 -0.68050236 -0.28559917 0.99999887 -0.62537223 -0.45021763 
		0.99999958 -0.51957816 -0.57836217 0.99999887 -0.37169087 -0.65965426 0.99999738 
		-0.19369143 -0.68750232 0.99999809 -2.4586916e-007 -0.65965426 0.99999738 0.19369096 
		-0.57836294 0.99999958 0.37169045 -0.45021763 0.99999958 0.5195778 -0.28559917 0.99999887 
		0.62537199 -0.097841725 0.99999958 0.6805023 0.097839475 0.99999887 0.68050236 0.28559467 
		0.99999738 0.62537205 0.45021537 0.99999887 0.51957792 0.57836068 0.99999887 0.37169063 
		0.65964675 0.99999583 0.19369116 0.68749779 0.99999809 0 -2.252774e-006 -1.0000026 
		0 0.58805436 1.1704745 -0.17266934 0.51558715 1.170473 -0.33135024 0.40135196 1.1704745 
		-0.46318728 0.25460175 1.1704775 -0.55749953 0.087218396 1.1704738 -0.60664636 -0.087222151 
		1.1704775 -0.60664648 -0.25460175 1.1704761 -0.55749959 -0.40135497 1.1704761 -0.46318737 
		-0.5155924 1.1704752 -0.33135077 -0.58806109 1.1704752 -0.17266981 -0.61288893 1.1704745 
		-2.1926414e-007 -0.58805889 1.1704775 0.17266934 -0.51559389 1.1704768 0.33135033 
		-0.40135571 1.1704768 0.46318704 -0.25460175 1.1704761 0.55749935 -0.087221399 1.1704768 
		0.60664636 0.087221399 1.1704768 0.60664642 0.25460175 1.1704775 0.55749959 0.40135121 
		1.1704752 0.46318752 0.51558715 1.170473 0.33135045 0.58805513 1.1704738 0.17266956 
		0.6128844 1.1704775 1.4666497e-008 0.46195084 1.2523426 -0.13564186 0.40502399 1.2523419 
		-0.2602945 0.31528547 1.2523419 -0.36385965 0.20000127 1.252341 -0.43794772 0.068512112 
		1.2523389 -0.47655541 -0.06851887 1.2523426 -0.47655505 -0.20000277 1.2523441 -0.43794742 
		-0.31528923 1.252341 -0.3638598 -0.40502775 1.252341 -0.26029474 -0.46195608 1.2523419 
		-0.13564205 -0.48145759 1.2523433 -7.1205847e-007 -0.46195382 1.2523441 0.13564122 
		-0.40502998 1.2523433 0.26029459 -0.31529075 1.2523426 0.36385974 -0.20000803 1.2523403 
		0.43794739 -0.06851887 1.2523426 0.47655505 0.06851662 1.2523433 0.47655514 0.20000127 
		1.2523426 0.43794751 0.31528473 1.2523426 0.36385974 0.40502399 1.2523419 0.26029453 
		0.46195084 1.2523426 0.13564201 0.48145309 1.2523419 -2.7866344e-008 0.42524713 1.0307462 
		-0.12486247 0.37284011 1.0307447 -0.23961177 0.29023162 1.0307424 -0.33494857 0.18411171 
		1.0307447 -0.40314963 0.063066408 1.0307424 -0.43868953 -0.063079171 1.0307432 -0.43868938 
		-0.18411246 1.030744 -0.4031508 -0.29023913 1.030744 -0.33494988 -0.37284836 1.0307424 
		-0.23961198 -0.42525089 1.030744 -0.12486273 -0.44320625 1.0307432 1.0313739e-006 
		-0.42525238 1.0307455 0.12486396 -0.37285137 1.0307455 0.23961198 -0.29024065 1.0307424 
		0.33494848 -0.18411547 1.0307424 0.40314975 -0.063075416 1.030744 0.43868986 0.063070163 
		1.0307432 0.43868995 0.18411246 1.0307485 0.4031508 0.29023013 1.030744 0.33495077 
		0.37284011 1.0307447 0.23961292 0.42524412 1.0307447 0.12486264 0.44320023 1.0307462 
		-1.5849984e-008 0.42524639 1.3073471 -0.12486524 0.37284234 1.3073471 -0.23961446 
		0.29023013 1.3073455 -0.33494917 0.18410796 1.3073486 -0.40315041 0.063066408 1.3073471 
		-0.43869174 -0.063074671 1.3073478 -0.43869108 -0.18411021 1.3073463 -0.40315196 
		-0.29023838 1.3073478 -0.33495006 -0.37285212 1.3073448 -0.23961319 -0.4252539 1.3073471 
		-0.12486374 -0.44320926 1.3073463 -5.3884605e-007 -0.42525315 1.3073478 0.12486165 
		-0.37284911 1.3073478 0.23961391 -0.29024065 1.3073455 0.33495206 -0.18411621 1.3073463 
		0.40315187 -0.063077673 1.3073463 0.43869141 0.063067161 1.3073463 0.43869212 0.18411547 
		1.3073516 0.40315047 0.29023463 1.3073486 0.3349489 0.37284011 1.3073493 0.23961391 
		0.42524487 1.3073486 0.1248655 0.44320098 1.30735 4.4543128e-007 0.3393068 1.3481846 
		-0.099631302 0.29749233 1.3481846 -0.19119003 -4.5055481e-006 1.3481861 -2.6575837e-009 
		0.2315754 1.3481839 -0.26725835 0.14689964 1.3481869 -0.32167661 0.050320212 1.3481839 
		-0.35003495 -0.050329223 1.3481839 -0.35003433 -0.14690489 1.3481832 -0.32167783 
		-0.23158592 1.3481839 -0.26725906 -0.29750434 1.3481816 -0.19118907 -0.33931431 1.3481846 
		-0.099629983 -0.35363972 1.3481839 -6.695256e-007 -0.33931357 1.3481853 0.099628098 
		-0.29749909 1.3481853 0.19118987 -0.23158592 1.3481839 0.26726076 -0.1469094 1.3481846 
		0.3216778 -0.050330725 1.3481853 0.35003495 0.050320212 1.3481839 0.35003585 0.14690565 
		1.3481884 0.32167673 0.23157991 1.3481853 0.26725769 0.29749081 1.3481861 0.19118935 
		0.33930457 1.3481869 0.099631108 0.35363069 1.3481869 7.2599164e-008;
	setAttr -s 330 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 
		0 3 4 0 4 5 0 5 6 0 6 7 
		0 7 8 0 8 9 0 9 10 0 10 11 
		0 11 12 0 12 13 0 13 14 0 14 15 
		0 15 16 0 16 17 0 17 18 0 18 19 
		0 19 20 0 20 21 0 21 0 0 22 23 
		1 23 24 1 24 25 1 25 26 1 26 27 
		1 27 28 1 28 29 1 29 30 1 30 31 
		1 31 32 1 32 33 1 33 34 1 34 35 
		1 35 36 1 36 37 1 37 38 1 38 39 
		1 39 40 1 40 41 1 41 42 1 42 43 
		1 43 22 1 0 22 1 1 23 1 2 24 
		1 3 25 1 4 26 1 5 27 1 6 28 
		1 7 29 1 8 30 1 9 31 1 10 32 
		1 11 33 1 12 34 1 13 35 1 14 36 
		1 15 37 1 16 38 1 17 39 1 18 40 
		1 19 41 1 20 42 1 21 43 1 44 0 
		1 44 1 1 44 2 1 44 3 1 44 4 
		1 44 5 1 44 6 1 44 7 1 44 8 
		1 44 9 1 44 10 1 44 11 1 44 12 
		1 44 13 1 44 14 1 44 15 1 44 16 
		1 44 17 1 44 18 1 44 19 1 44 20 
		1 44 21 1 22 45 1 23 46 1 45 46 
		0 24 47 1 46 47 0 25 48 1 47 48 
		0 26 49 1 48 49 0 27 50 1 49 50 
		0 28 51 1 50 51 0 29 52 1 51 52 
		0 30 53 1 52 53 0 31 54 1 53 54 
		0 32 55 1 54 55 0 33 56 1 55 56 
		0 34 57 1 56 57 0 35 58 1 57 58 
		0 36 59 1 58 59 0 37 60 1 59 60 
		0 38 61 1 60 61 0 39 62 1 61 62 
		0 40 63 1 62 63 0 41 64 1 63 64 
		0 42 65 1 64 65 0 43 66 1 65 66 
		0 66 45 0 45 67 1 46 68 1 67 68 
		0 47 69 1 68 69 0 48 70 1 69 70 
		0 49 71 1 70 71 0 50 72 1 71 72 
		0 51 73 1 72 73 0 52 74 1 73 74 
		0 53 75 1 74 75 0 54 76 1 75 76 
		0 55 77 1 76 77 0 56 78 1 77 78 
		0 57 79 1 78 79 0 58 80 1 79 80 
		0 59 81 1 80 81 0 60 82 1 81 82 
		0 61 83 1 82 83 0 62 84 1;
	setAttr ".ed[166:329]" 83 84 0 63 85 1 84 85 
		0 64 86 1 85 86 0 65 87 1 86 87 
		0 66 88 1 87 88 0 88 67 0 67 89 
		1 68 90 1 89 90 0 69 91 1 90 91 
		0 70 92 1 91 92 0 71 93 1 92 93 
		0 72 94 1 93 94 0 73 95 1 94 95 
		0 74 96 1 95 96 0 75 97 1 96 97 
		0 76 98 1 97 98 0 77 99 1 98 99 
		0 78 100 1 99 100 0 79 101 1 100 101 
		0 80 102 1 101 102 0 81 103 1 102 103 
		0 82 104 1 103 104 0 83 105 1 104 105 
		0 84 106 1 105 106 0 85 107 1 106 107 
		0 86 108 1 107 108 0 87 109 1 108 109 
		0 88 110 1 109 110 0 110 89 0 89 111 
		1 90 112 1 111 112 0 91 113 1 112 113 
		0 92 114 1 113 114 0 93 115 1 114 115 
		0 94 116 1 115 116 0 95 117 1 116 117 
		0 96 118 1 117 118 0 97 119 1 118 119 
		0 98 120 1 119 120 0 99 121 1 120 121 
		0 100 122 1 121 122 0 101 123 1 122 123 
		0 102 124 1 123 124 0 103 125 1 124 125 
		0 104 126 1 125 126 0 105 127 1 126 127 
		0 106 128 1 127 128 0 107 129 1 128 129 
		0 108 130 1 129 130 0 109 131 1 130 131 
		0 110 132 1 131 132 0 132 111 0 111 133 
		1 112 134 1 133 134 1 134 135 1 133 135 
		1 113 136 1 134 136 1 136 135 1 114 137 
		1 136 137 1 137 135 1 115 138 1 137 138 
		1 138 135 1 116 139 1 138 139 1 139 135 
		1 117 140 1 139 140 1 140 135 1 118 141 
		1 140 141 1 141 135 1 119 142 1 141 142 
		1 142 135 1 120 143 1 142 143 1 143 135 
		1 121 144 1 143 144 1 144 135 1 122 145 
		1 144 145 1 145 135 1 123 146 1 145 146 
		1 146 135 1 124 147 1 146 147 1 147 135 
		1 125 148 1 147 148 1 148 135 1 126 149 
		1 148 149 1 149 135 1 127 150 1 149 150 
		1 150 135 1 128 151 1 150 151 1 151 135 
		1 129 152 1 151 152 1 152 135 1 130 153 
		1 152 153 1 153 135 1 131 154 1 153 154 
		1 154 135 1 132 155 1 154 155 1 155 135 
		1 155 133 1;
	setAttr -s 176 ".fc[0:175]" -type "polyFaces" 
		f 4 0 45 -23 -45 
		mu 0 4 22 23 46 45 
		f 4 1 46 -24 -46 
		mu 0 4 23 24 47 46 
		f 4 2 47 -25 -47 
		mu 0 4 24 25 48 47 
		f 4 3 48 -26 -48 
		mu 0 4 25 26 49 48 
		f 4 4 49 -27 -49 
		mu 0 4 26 27 50 49 
		f 4 5 50 -28 -50 
		mu 0 4 27 28 51 50 
		f 4 6 51 -29 -51 
		mu 0 4 28 29 52 51 
		f 4 7 52 -30 -52 
		mu 0 4 29 30 53 52 
		f 4 8 53 -31 -53 
		mu 0 4 30 31 54 53 
		f 4 9 54 -32 -54 
		mu 0 4 31 32 55 54 
		f 4 10 55 -33 -55 
		mu 0 4 32 33 56 55 
		f 4 11 56 -34 -56 
		mu 0 4 33 34 57 56 
		f 4 12 57 -35 -57 
		mu 0 4 34 35 58 57 
		f 4 13 58 -36 -58 
		mu 0 4 35 36 59 58 
		f 4 14 59 -37 -59 
		mu 0 4 36 37 60 59 
		f 4 15 60 -38 -60 
		mu 0 4 37 38 61 60 
		f 4 16 61 -39 -61 
		mu 0 4 38 39 62 61 
		f 4 17 62 -40 -62 
		mu 0 4 39 40 63 62 
		f 4 18 63 -41 -63 
		mu 0 4 40 41 64 63 
		f 4 19 64 -42 -64 
		mu 0 4 41 42 65 64 
		f 4 20 65 -43 -65 
		mu 0 4 42 43 66 65 
		f 4 21 44 -44 -66 
		mu 0 4 43 44 67 66 
		f 3 -1 -67 67 
		mu 0 3 1 0 90 
		f 3 -2 -68 68 
		mu 0 3 2 1 90 
		f 3 -3 -69 69 
		mu 0 3 3 2 90 
		f 3 -4 -70 70 
		mu 0 3 4 3 90 
		f 3 -5 -71 71 
		mu 0 3 5 4 90 
		f 3 -6 -72 72 
		mu 0 3 6 5 90 
		f 3 -7 -73 73 
		mu 0 3 7 6 90 
		f 3 -8 -74 74 
		mu 0 3 8 7 90 
		f 3 -9 -75 75 
		mu 0 3 9 8 90 
		f 3 -10 -76 76 
		mu 0 3 10 9 90 
		f 3 -11 -77 77 
		mu 0 3 11 10 90 
		f 3 -12 -78 78 
		mu 0 3 12 11 90 
		f 3 -13 -79 79 
		mu 0 3 13 12 90 
		f 3 -14 -80 80 
		mu 0 3 14 13 90 
		f 3 -15 -81 81 
		mu 0 3 15 14 90 
		f 3 -16 -82 82 
		mu 0 3 16 15 90 
		f 3 -17 -83 83 
		mu 0 3 17 16 90 
		f 3 -18 -84 84 
		mu 0 3 18 17 90 
		f 3 -19 -85 85 
		mu 0 3 19 18 90 
		f 3 -20 -86 86 
		mu 0 3 20 19 90 
		f 3 -21 -87 87 
		mu 0 3 21 20 90 
		f 3 -22 -88 66 
		mu 0 3 0 21 90 
		f 3 266 267 -269 
		mu 0 3 180 181 91 
		f 3 270 271 -268 
		mu 0 3 181 182 91 
		f 3 273 274 -272 
		mu 0 3 182 183 91 
		f 3 276 277 -275 
		mu 0 3 183 184 91 
		f 3 279 280 -278 
		mu 0 3 184 185 91 
		f 3 282 283 -281 
		mu 0 3 185 186 91 
		f 3 285 286 -284 
		mu 0 3 186 187 91 
		f 3 288 289 -287 
		mu 0 3 187 188 91 
		f 3 291 292 -290 
		mu 0 3 188 189 91 
		f 3 294 295 -293 
		mu 0 3 189 190 91 
		f 3 297 298 -296 
		mu 0 3 190 191 91 
		f 3 300 301 -299 
		mu 0 3 191 192 91 
		f 3 303 304 -302 
		mu 0 3 192 193 91 
		f 3 306 307 -305 
		mu 0 3 193 194 91 
		f 3 309 310 -308 
		mu 0 3 194 195 91 
		f 3 312 313 -311 
		mu 0 3 195 196 91 
		f 3 315 316 -314 
		mu 0 3 196 197 91 
		f 3 318 319 -317 
		mu 0 3 197 198 91 
		f 3 321 322 -320 
		mu 0 3 198 199 91 
		f 3 324 325 -323 
		mu 0 3 199 200 91 
		f 3 327 328 -326 
		mu 0 3 200 201 91 
		f 3 329 268 -329 
		mu 0 3 201 180 91 
		f 4 22 89 -91 -89 
		mu 0 4 88 87 93 92 
		f 4 23 91 -93 -90 
		mu 0 4 87 86 94 93 
		f 4 24 93 -95 -92 
		mu 0 4 86 85 95 94 
		f 4 25 95 -97 -94 
		mu 0 4 85 84 96 95 
		f 4 26 97 -99 -96 
		mu 0 4 84 83 97 96 
		f 4 27 99 -101 -98 
		mu 0 4 83 82 98 97 
		f 4 28 101 -103 -100 
		mu 0 4 82 81 99 98 
		f 4 29 103 -105 -102 
		mu 0 4 81 80 100 99 
		f 4 30 105 -107 -104 
		mu 0 4 80 79 101 100 
		f 4 31 107 -109 -106 
		mu 0 4 79 78 102 101 
		f 4 32 109 -111 -108 
		mu 0 4 78 77 103 102 
		f 4 33 111 -113 -110 
		mu 0 4 77 76 104 103 
		f 4 34 113 -115 -112 
		mu 0 4 76 75 105 104 
		f 4 35 115 -117 -114 
		mu 0 4 75 74 106 105 
		f 4 36 117 -119 -116 
		mu 0 4 74 73 107 106 
		f 4 37 119 -121 -118 
		mu 0 4 73 72 108 107 
		f 4 38 121 -123 -120 
		mu 0 4 72 71 109 108 
		f 4 39 123 -125 -122 
		mu 0 4 71 70 110 109 
		f 4 40 125 -127 -124 
		mu 0 4 70 69 111 110 
		f 4 41 127 -129 -126 
		mu 0 4 69 68 112 111 
		f 4 42 129 -131 -128 
		mu 0 4 68 89 113 112 
		f 4 43 88 -132 -130 
		mu 0 4 89 88 92 113 
		f 4 90 133 -135 -133 
		mu 0 4 92 93 115 114 
		f 4 92 135 -137 -134 
		mu 0 4 93 94 116 115 
		f 4 94 137 -139 -136 
		mu 0 4 94 95 117 116 
		f 4 96 139 -141 -138 
		mu 0 4 95 96 118 117 
		f 4 98 141 -143 -140 
		mu 0 4 96 97 119 118 
		f 4 100 143 -145 -142 
		mu 0 4 97 98 120 119 
		f 4 102 145 -147 -144 
		mu 0 4 98 99 121 120 
		f 4 104 147 -149 -146 
		mu 0 4 99 100 122 121 
		f 4 106 149 -151 -148 
		mu 0 4 100 101 123 122 
		f 4 108 151 -153 -150 
		mu 0 4 101 102 124 123 
		f 4 110 153 -155 -152 
		mu 0 4 102 103 125 124 
		f 4 112 155 -157 -154 
		mu 0 4 103 104 126 125 
		f 4 114 157 -159 -156 
		mu 0 4 104 105 127 126 
		f 4 116 159 -161 -158 
		mu 0 4 105 106 128 127 
		f 4 118 161 -163 -160 
		mu 0 4 106 107 129 128 
		f 4 120 163 -165 -162 
		mu 0 4 107 108 130 129 
		f 4 122 165 -167 -164 
		mu 0 4 108 109 131 130 
		f 4 124 167 -169 -166 
		mu 0 4 109 110 132 131 
		f 4 126 169 -171 -168 
		mu 0 4 110 111 133 132 
		f 4 128 171 -173 -170 
		mu 0 4 111 112 134 133 
		f 4 130 173 -175 -172 
		mu 0 4 112 113 135 134 
		f 4 131 132 -176 -174 
		mu 0 4 113 92 114 135 
		f 4 134 177 -179 -177 
		mu 0 4 114 115 137 136 
		f 4 136 179 -181 -178 
		mu 0 4 115 116 138 137 
		f 4 138 181 -183 -180 
		mu 0 4 116 117 139 138 
		f 4 140 183 -185 -182 
		mu 0 4 117 118 140 139 
		f 4 142 185 -187 -184 
		mu 0 4 118 119 141 140 
		f 4 144 187 -189 -186 
		mu 0 4 119 120 142 141 
		f 4 146 189 -191 -188 
		mu 0 4 120 121 143 142 
		f 4 148 191 -193 -190 
		mu 0 4 121 122 144 143 
		f 4 150 193 -195 -192 
		mu 0 4 122 123 145 144 
		f 4 152 195 -197 -194 
		mu 0 4 123 124 146 145 
		f 4 154 197 -199 -196 
		mu 0 4 124 125 147 146 
		f 4 156 199 -201 -198 
		mu 0 4 125 126 148 147 
		f 4 158 201 -203 -200 
		mu 0 4 126 127 149 148 
		f 4 160 203 -205 -202 
		mu 0 4 127 128 150 149 
		f 4 162 205 -207 -204 
		mu 0 4 128 129 151 150 
		f 4 164 207 -209 -206 
		mu 0 4 129 130 152 151 
		f 4 166 209 -211 -208 
		mu 0 4 130 131 153 152 
		f 4 168 211 -213 -210 
		mu 0 4 131 132 154 153 
		f 4 170 213 -215 -212 
		mu 0 4 132 133 155 154 
		f 4 172 215 -217 -214 
		mu 0 4 133 134 156 155 
		f 4 174 217 -219 -216 
		mu 0 4 134 135 157 156 
		f 4 175 176 -220 -218 
		mu 0 4 135 114 136 157 
		f 4 178 221 -223 -221 
		mu 0 4 136 137 159 158 
		f 4 180 223 -225 -222 
		mu 0 4 137 138 160 159 
		f 4 182 225 -227 -224 
		mu 0 4 138 139 161 160 
		f 4 184 227 -229 -226 
		mu 0 4 139 140 162 161 
		f 4 186 229 -231 -228 
		mu 0 4 140 141 163 162 
		f 4 188 231 -233 -230 
		mu 0 4 141 142 164 163 
		f 4 190 233 -235 -232 
		mu 0 4 142 143 165 164 
		f 4 192 235 -237 -234 
		mu 0 4 143 144 166 165 
		f 4 194 237 -239 -236 
		mu 0 4 144 145 167 166 
		f 4 196 239 -241 -238 
		mu 0 4 145 146 168 167 
		f 4 198 241 -243 -240 
		mu 0 4 146 147 169 168 
		f 4 200 243 -245 -242 
		mu 0 4 147 148 170 169 
		f 4 202 245 -247 -244 
		mu 0 4 148 149 171 170 
		f 4 204 247 -249 -246 
		mu 0 4 149 150 172 171 
		f 4 206 249 -251 -248 
		mu 0 4 150 151 173 172 
		f 4 208 251 -253 -250 
		mu 0 4 151 152 174 173 
		f 4 210 253 -255 -252 
		mu 0 4 152 153 175 174 
		f 4 212 255 -257 -254 
		mu 0 4 153 154 176 175 
		f 4 214 257 -259 -256 
		mu 0 4 154 155 177 176 
		f 4 216 259 -261 -258 
		mu 0 4 155 156 178 177 
		f 4 218 261 -263 -260 
		mu 0 4 156 157 179 178 
		f 4 219 220 -264 -262 
		mu 0 4 157 136 158 179 
		f 4 222 265 -267 -265 
		mu 0 4 158 159 181 180 
		f 4 224 269 -271 -266 
		mu 0 4 159 160 182 181 
		f 4 226 272 -274 -270 
		mu 0 4 160 161 183 182 
		f 4 228 275 -277 -273 
		mu 0 4 161 162 184 183 
		f 4 230 278 -280 -276 
		mu 0 4 162 163 185 184 
		f 4 232 281 -283 -279 
		mu 0 4 163 164 186 185 
		f 4 234 284 -286 -282 
		mu 0 4 164 165 187 186 
		f 4 236 287 -289 -285 
		mu 0 4 165 166 188 187 
		f 4 238 290 -292 -288 
		mu 0 4 166 167 189 188 
		f 4 240 293 -295 -291 
		mu 0 4 167 168 190 189 
		f 4 242 296 -298 -294 
		mu 0 4 168 169 191 190 
		f 4 244 299 -301 -297 
		mu 0 4 169 170 192 191 
		f 4 246 302 -304 -300 
		mu 0 4 170 171 193 192 
		f 4 248 305 -307 -303 
		mu 0 4 171 172 194 193 
		f 4 250 308 -310 -306 
		mu 0 4 172 173 195 194 
		f 4 252 311 -313 -309 
		mu 0 4 173 174 196 195 
		f 4 254 314 -316 -312 
		mu 0 4 174 175 197 196 
		f 4 256 317 -319 -315 
		mu 0 4 175 176 198 197 
		f 4 258 320 -322 -318 
		mu 0 4 176 177 199 198 
		f 4 260 323 -325 -321 
		mu 0 4 177 178 200 199 
		f 4 262 326 -328 -324 
		mu 0 4 178 179 201 200 
		f 4 263 264 -330 -327 
		mu 0 4 179 158 180 201 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
createNode transform -n "button8";
	setAttr ".t" -type "double3" 4.6027928534307714 36.355907397456811 -34.202656089165664 ;
	setAttr ".r" -type "double3" 0 0 -30.000000000000011 ;
createNode mesh -n "buttonShape8" -p "button8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 202 ".uvst[0].uvsp[0:201]" -type "float2" 0.64992076 0.11222929 
		0.63144583 0.071774885 0.60232198 0.038164139 0.56490856 0.014120027 0.5222367 0.0015904158 
		0.4777633 0.0015904158 0.43509141 0.014120027 0.39767802 0.038164139 0.36855415 0.071774885 
		0.35007924 0.11222929 0.34375 0.15625 0.35007924 0.20027071 0.36855415 0.24072513 
		0.39767802 0.27433586 0.43509141 0.29837999 0.4777633 0.3109096 0.5222367 0.3109096 
		0.56490862 0.29837999 0.60232198 0.27433586 0.63144588 0.24072513 0.64992076 0.20027071 
		0.65625 0.15625 0.375 0.3125 0.38636363 0.3125 0.39772725 0.3125 0.40909088 0.3125 
		0.4204545 0.3125 0.43181813 0.3125 0.44318175 0.3125 0.45454538 0.3125 0.465909 0.3125 
		0.47727263 0.3125 0.48863626 0.3125 0.49999988 0.3125 0.51136351 0.3125 0.52272713 
		0.3125 0.53409076 0.3125 0.54545438 0.3125 0.55681801 0.3125 0.56818163 0.3125 0.57954526 
		0.3125 0.59090889 0.3125 0.60227251 0.3125 0.61363614 0.3125 0.62499976 0.3125 0.375 
		0.68843985 0.38636363 0.68843985 0.39772725 0.68843985 0.40909088 0.68843985 0.4204545 
		0.68843985 0.43181813 0.68843985 0.44318175 0.68843985 0.45454538 0.68843985 0.465909 
		0.68843985 0.47727263 0.68843985 0.48863626 0.68843985 0.49999988 0.68843985 0.51136351 
		0.68843985 0.52272713 0.68843985 0.53409076 0.68843985 0.54545438 0.68843985 0.55681801 
		0.68843985 0.56818163 0.68843985 0.57954526 0.68843985 0.59090889 0.68843985 0.60227251 
		0.68843985 0.61363614 0.68843985 0.62499976 0.68843985 0.64992076 0.79972929 0.63144583 
		0.7592749 0.60232198 0.72566414 0.56490856 0.70162004 0.5222367 0.68909043 0.4777633 
		0.68909043 0.43509141 0.70162004 0.39767802 0.72566414 0.36855415 0.7592749 0.35007924 
		0.79972929 0.34375 0.84375 0.35007924 0.88777071 0.36855415 0.92822516 0.39767802 
		0.96183586 0.43509141 0.98588002 0.4777633 0.99840963 0.5222367 0.99840963 0.56490862 
		0.98588002 0.60232198 0.96183586 0.63144588 0.92822516 0.64992076 0.88777071 0.65625 
		0.84375 0.5 0.15000001 0.5 0.83749998 0.64992076 0.88777071 0.63144588 0.92822516 
		0.60232198 0.96183586 0.56490862 0.98588002 0.5222367 0.99840963 0.4777633 0.99840963 
		0.43509141 0.98588002 0.39767802 0.96183586 0.36855415 0.92822516 0.35007924 0.88777071 
		0.34375 0.84375 0.35007924 0.79972929 0.36855415 0.7592749 0.39767802 0.72566414 
		0.43509141 0.70162004 0.4777633 0.68909043 0.5222367 0.68909043 0.56490856 0.70162004 
		0.60232198 0.72566414 0.63144583 0.7592749 0.64992076 0.79972929 0.65625 0.84375 
		0.64992076 0.88777071 0.63144588 0.92822516 0.60232198 0.96183586 0.56490862 0.98588002 
		0.5222367 0.99840963 0.4777633 0.99840963 0.43509141 0.98588002 0.39767802 0.96183586 
		0.36855415 0.92822516 0.35007924 0.88777071 0.34375 0.84375 0.35007924 0.79972929 
		0.36855415 0.7592749 0.39767802 0.72566414 0.43509141 0.70162004 0.4777633 0.68909043 
		0.5222367 0.68909043 0.56490856 0.70162004 0.60232198 0.72566414 0.63144583 0.7592749 
		0.64992076 0.79972929 0.65625 0.84375 0.64992076 0.88777071 0.63144588 0.92822516 
		0.60232198 0.96183586 0.56490862 0.98588002 0.5222367 0.99840963 0.4777633 0.99840963 
		0.43509141 0.98588002 0.39767802 0.96183586 0.36855415 0.92822516 0.35007924 0.88777071 
		0.34375 0.84375 0.35007924 0.79972929 0.36855415 0.7592749 0.39767802 0.72566414 
		0.43509141 0.70162004 0.4777633 0.68909043 0.5222367 0.68909043 0.56490856 0.70162004 
		0.60232198 0.72566414 0.63144583 0.7592749 0.64992076 0.79972929 0.65625 0.84375 
		0.64992076 0.88777071 0.63144588 0.92822516 0.60232198 0.96183586 0.56490862 0.98588002 
		0.5222367 0.99840963 0.4777633 0.99840963 0.43509141 0.98588002 0.39767802 0.96183586 
		0.36855415 0.92822516 0.35007924 0.88777071 0.34375 0.84375 0.35007924 0.79972929 
		0.36855415 0.7592749 0.39767802 0.72566414 0.43509141 0.70162004 0.4777633 0.68909043 
		0.5222367 0.68909043 0.56490856 0.70162004 0.60232198 0.72566414 0.63144583 0.7592749 
		0.64992076 0.79972929 0.65625 0.84375 0.64992076 0.88777071 0.63144588 0.92822516 
		0.60232198 0.96183586 0.56490862 0.98588002 0.5222367 0.99840963 0.4777633 0.99840963 
		0.43509141 0.98588002 0.39767802 0.96183586 0.36855415 0.92822516 0.35007924 0.88777071 
		0.34375 0.84375 0.35007924 0.79972929 0.36855415 0.7592749 0.39767802 0.72566414 
		0.43509141 0.70162004 0.4777633 0.68909043 0.5222367 0.68909043 0.56490856 0.70162004 
		0.60232198 0.72566414 0.63144583 0.7592749 0.64992076 0.79972929 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 90 ".pt";
	setAttr ".pt[67:155]" -type "float3" 5.6897909e-010 7.1687538e-011 -4.0269146e-011  
		1.2412495e-010 -1.8099957e-011 -3.9902682e-011  -1.4198311e-010 -1.8099957e-011 7.3502315e-011  
		3.5817019e-011 -1.6222194e-011 4.6746501e-010  -3.2078923e-011 2.9470915e-011 -4.709082e-010  
		3.2078912e-011 7.1687538e-011 -1.5101743e-010  4.9424158e-012 2.7872017e-011 -6.8888291e-011  
		4.857335e-011 -1.6222194e-011 -2.4983472e-011  4.6591198e-010 -1.6222194e-011 8.0995273e-011  
		-1.0748095e-010 -1.8099957e-011 -1.5421697e-011  -3.9232265e-010 -2.1855658e-011 
		3.1118063e-016  7.7142667e-011 2.7872017e-011 2.7566532e-011  3.3232506e-010 -2.1855658e-011 
		-9.8534521e-011  -3.6362929e-010 7.1687538e-011 -6.2097183e-010  -3.5817106e-011 
		3.1488197e-011 4.5503776e-010  3.2078912e-011 7.1687538e-011 1.1593875e-010  -5.948847e-011 
		-2.1855658e-011 4.709082e-010  3.5817019e-011 7.1687538e-011 6.2082955e-010  -9.7735382e-011 
		7.1687538e-011 -6.2097183e-010  1.2412495e-010 -1.8099957e-011 -8.9764855e-011  5.6897909e-010 
		7.1687538e-011 -3.4995628e-011  -1.5637884e-010 -1.8099957e-011 8.480384e-017  0.023912489 
		-0.053810142 -0.0079983138  0.020615781 -0.053810235 -0.015216729  0.015419211 -0.053810377 
		-0.021213986  0.0087436372 -0.053810235 -0.025504231  0.0011291722 -0.053810377 -0.027739905  
		-0.0068061347 -0.053810328 -0.02773989  -0.014419849 -0.05381028 -0.025504302  -0.02109585 
		-0.05381028 -0.021214059  -0.02629246 -0.053810377 -0.015216746  -0.029588887 -0.05381028 
		-0.0079983305  -0.030718371 -0.053810328 -0.00014365723  -0.029588981 -0.053810187 
		0.007710964  -0.026292646 -0.053810187 0.014929296  -0.021095943 -0.053810377 0.020926533  
		-0.014420037 -0.053810377 0.025216801  -0.0068059 -0.05381028 0.027452476  0.0011294098 
		-0.053810328 0.027452486  0.0087436847 -0.05381 0.025216863  0.015419117 -0.05381028 
		0.020926671  0.020615781 -0.053810235 0.014929356  0.023912303 -0.053810235 0.0077108787  
		0.02504185 -0.053810142 -0.00014372324  0.023912441 -0.036410291 -0.0079984888  0.020615915 
		-0.036410291 -0.0152169  0.015419117 -0.036410384 -0.021214023  0.0087434025 -0.036410194 
		-0.025504285  0.0011291722 -0.036410291 -0.027740043  -0.0068058502 -0.036410242 
		-0.027740005  -0.014419708 -0.036410335 -0.025504382  -0.021095792 -0.036410242 -0.021214079  
		-0.026292682 -0.036410429 -0.015216813  -0.029589074 -0.036410291 -0.0079983948  
		-0.030718571 -0.036410335 -0.00014375625  -0.029589027 -0.036410242 0.0077108154  
		-0.026292495 -0.036410242 0.014929419  -0.021095943 -0.036410384 0.020926757  -0.014420084 
		-0.036410335 0.02521693  -0.0068060406 -0.036410335 0.027452579  0.0011292191 -0.036410335 
		0.02745262  0.0087438785 -0.036410008 0.025216838  0.015419396 -0.036410194 0.020926552  
		0.020615781 -0.036410149 0.014929419  0.023912348 -0.036410194 0.0077110603  0.025041897 
		-0.036410101 -0.00014369427  0.01850633 -0.033841364 -0.0064111236  0.015875949 -0.033841364 
		-0.012170712  -0.0028383646 -0.033841271 -0.0001437225  0.011729382 -0.033841413 
		-0.016955862  0.0064027798 -0.033841219 -0.0203791  0.00032736061 -0.033841413 -0.022163002  
		-0.0060040858 -0.033841413 -0.022162963  -0.012079266 -0.033841457 -0.020379171  
		-0.017406208 -0.033841413 -0.01695591  -0.02155287 -0.03384155 -0.012170649  -0.02418296 
		-0.033841364 -0.0064110397  -0.025084116 -0.033841413 -0.00014376431  -0.024182912 
		-0.033841316 0.0061234767  -0.021552529 -0.033841316 0.011883258  -0.017406208 -0.033841413 
		0.016668571  -0.012079559 -0.033841364 0.02009172  -0.0060041794 -0.033841316 0.021875564  
		0.00032736061 -0.033841413 0.021875609  0.0064031552 -0.033841122 0.020091655  0.011729669 
		-0.033841316 0.016668374  0.015875855 -0.033841271 0.011883226  0.018506195 -0.033841219 
		0.0061236676  0.019407393 -0.033841219 -0.00014371774 ;
	setAttr -s 156 ".vt[0:155]"  0.6596505 -1.0000011 -0.19369078 0.57836217 
		-1.0000004 -0.37169024 0.45021689 -1.0000004 -0.51957756 0.28559616 -1.0000019 -0.62537187 
		0.09784098 -1.0000004 -0.68050224 -0.09784548 -1.0000049 -0.68050236 -0.28559768 
		-1.0000004 -0.62537223 -0.45021912 -1.0000026 -0.51957816 -0.57836366 -1.0000019 
		-0.37169087 -0.65965277 -1.0000019 -0.19369143 -0.68750083 -1.0000011 -2.4586916e-007 
		-0.65965277 -1.0000019 0.19369096 -0.57836366 -1.0000019 0.37169045 -0.45021912 -1.0000026 
		0.5195778 -0.28559843 -0.99999958 0.62537199 -0.097846232 -1.0000042 0.6805023 0.09784098 
		-1.0000004 0.68050236 0.28559616 -1.0000019 0.62537205 0.45021689 -1.0000004 0.51957792 
		0.57836139 -0.99999958 0.37169063 0.6596505 -1.0000011 0.19369116 0.68749928 -1.0000011 
		0 0.65964675 0.99999583 -0.19369078 0.57836068 0.99999887 -0.37169024 0.45021537 
		0.99999887 -0.51957756 0.28559542 0.9999966 -0.62537187 0.097840227 0.99999809 -0.68050224 
		-0.097841725 0.99999958 -0.68050236 -0.28559917 0.99999887 -0.62537223 -0.45021763 
		0.99999958 -0.51957816 -0.57836217 0.99999887 -0.37169087 -0.65965426 0.99999738 
		-0.19369143 -0.68750232 0.99999809 -2.4586916e-007 -0.65965426 0.99999738 0.19369096 
		-0.57836294 0.99999958 0.37169045 -0.45021763 0.99999958 0.5195778 -0.28559917 0.99999887 
		0.62537199 -0.097841725 0.99999958 0.6805023 0.097839475 0.99999887 0.68050236 0.28559467 
		0.99999738 0.62537205 0.45021537 0.99999887 0.51957792 0.57836068 0.99999887 0.37169063 
		0.65964675 0.99999583 0.19369116 0.68749779 0.99999809 0 -2.252774e-006 -1.0000026 
		0 0.58805436 1.1704745 -0.17266934 0.51558715 1.170473 -0.33135024 0.40135196 1.1704745 
		-0.46318728 0.25460175 1.1704775 -0.55749953 0.087218396 1.1704738 -0.60664636 -0.087222151 
		1.1704775 -0.60664648 -0.25460175 1.1704761 -0.55749959 -0.40135497 1.1704761 -0.46318737 
		-0.5155924 1.1704752 -0.33135077 -0.58806109 1.1704752 -0.17266981 -0.61288893 1.1704745 
		-2.1926414e-007 -0.58805889 1.1704775 0.17266934 -0.51559389 1.1704768 0.33135033 
		-0.40135571 1.1704768 0.46318704 -0.25460175 1.1704761 0.55749935 -0.087221399 1.1704768 
		0.60664636 0.087221399 1.1704768 0.60664642 0.25460175 1.1704775 0.55749959 0.40135121 
		1.1704752 0.46318752 0.51558715 1.170473 0.33135045 0.58805513 1.1704738 0.17266956 
		0.6128844 1.1704775 1.4666497e-008 0.46195084 1.2523426 -0.13564186 0.40502399 1.2523419 
		-0.2602945 0.31528547 1.2523419 -0.36385965 0.20000127 1.252341 -0.43794772 0.068512112 
		1.2523389 -0.47655541 -0.06851887 1.2523426 -0.47655505 -0.20000277 1.2523441 -0.43794742 
		-0.31528923 1.252341 -0.3638598 -0.40502775 1.252341 -0.26029474 -0.46195608 1.2523419 
		-0.13564205 -0.48145759 1.2523433 -7.1205847e-007 -0.46195382 1.2523441 0.13564122 
		-0.40502998 1.2523433 0.26029459 -0.31529075 1.2523426 0.36385974 -0.20000803 1.2523403 
		0.43794739 -0.06851887 1.2523426 0.47655505 0.06851662 1.2523433 0.47655514 0.20000127 
		1.2523426 0.43794751 0.31528473 1.2523426 0.36385974 0.40502399 1.2523419 0.26029453 
		0.46195084 1.2523426 0.13564201 0.48145309 1.2523419 -2.7866344e-008 0.42524713 1.0307462 
		-0.12486247 0.37284011 1.0307447 -0.23961177 0.29023162 1.0307424 -0.33494857 0.18411171 
		1.0307447 -0.40314963 0.063066408 1.0307424 -0.43868953 -0.063079171 1.0307432 -0.43868938 
		-0.18411246 1.030744 -0.4031508 -0.29023913 1.030744 -0.33494988 -0.37284836 1.0307424 
		-0.23961198 -0.42525089 1.030744 -0.12486273 -0.44320625 1.0307432 1.0313739e-006 
		-0.42525238 1.0307455 0.12486396 -0.37285137 1.0307455 0.23961198 -0.29024065 1.0307424 
		0.33494848 -0.18411547 1.0307424 0.40314975 -0.063075416 1.030744 0.43868986 0.063070163 
		1.0307432 0.43868995 0.18411246 1.0307485 0.4031508 0.29023013 1.030744 0.33495077 
		0.37284011 1.0307447 0.23961292 0.42524412 1.0307447 0.12486264 0.44320023 1.0307462 
		-1.5849984e-008 0.42524639 1.3073471 -0.12486524 0.37284234 1.3073471 -0.23961446 
		0.29023013 1.3073455 -0.33494917 0.18410796 1.3073486 -0.40315041 0.063066408 1.3073471 
		-0.43869174 -0.063074671 1.3073478 -0.43869108 -0.18411021 1.3073463 -0.40315196 
		-0.29023838 1.3073478 -0.33495006 -0.37285212 1.3073448 -0.23961319 -0.4252539 1.3073471 
		-0.12486374 -0.44320926 1.3073463 -5.3884605e-007 -0.42525315 1.3073478 0.12486165 
		-0.37284911 1.3073478 0.23961391 -0.29024065 1.3073455 0.33495206 -0.18411621 1.3073463 
		0.40315187 -0.063077673 1.3073463 0.43869141 0.063067161 1.3073463 0.43869212 0.18411547 
		1.3073516 0.40315047 0.29023463 1.3073486 0.3349489 0.37284011 1.3073493 0.23961391 
		0.42524487 1.3073486 0.1248655 0.44320098 1.30735 4.4543128e-007 0.3393068 1.3481846 
		-0.099631302 0.29749233 1.3481846 -0.19119003 -4.5055481e-006 1.3481861 -2.6575837e-009 
		0.2315754 1.3481839 -0.26725835 0.14689964 1.3481869 -0.32167661 0.050320212 1.3481839 
		-0.35003495 -0.050329223 1.3481839 -0.35003433 -0.14690489 1.3481832 -0.32167783 
		-0.23158592 1.3481839 -0.26725906 -0.29750434 1.3481816 -0.19118907 -0.33931431 1.3481846 
		-0.099629983 -0.35363972 1.3481839 -6.695256e-007 -0.33931357 1.3481853 0.099628098 
		-0.29749909 1.3481853 0.19118987 -0.23158592 1.3481839 0.26726076 -0.1469094 1.3481846 
		0.3216778 -0.050330725 1.3481853 0.35003495 0.050320212 1.3481839 0.35003585 0.14690565 
		1.3481884 0.32167673 0.23157991 1.3481853 0.26725769 0.29749081 1.3481861 0.19118935 
		0.33930457 1.3481869 0.099631108 0.35363069 1.3481869 7.2599164e-008;
	setAttr -s 330 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 
		0 3 4 0 4 5 0 5 6 0 6 7 
		0 7 8 0 8 9 0 9 10 0 10 11 
		0 11 12 0 12 13 0 13 14 0 14 15 
		0 15 16 0 16 17 0 17 18 0 18 19 
		0 19 20 0 20 21 0 21 0 0 22 23 
		1 23 24 1 24 25 1 25 26 1 26 27 
		1 27 28 1 28 29 1 29 30 1 30 31 
		1 31 32 1 32 33 1 33 34 1 34 35 
		1 35 36 1 36 37 1 37 38 1 38 39 
		1 39 40 1 40 41 1 41 42 1 42 43 
		1 43 22 1 0 22 1 1 23 1 2 24 
		1 3 25 1 4 26 1 5 27 1 6 28 
		1 7 29 1 8 30 1 9 31 1 10 32 
		1 11 33 1 12 34 1 13 35 1 14 36 
		1 15 37 1 16 38 1 17 39 1 18 40 
		1 19 41 1 20 42 1 21 43 1 44 0 
		1 44 1 1 44 2 1 44 3 1 44 4 
		1 44 5 1 44 6 1 44 7 1 44 8 
		1 44 9 1 44 10 1 44 11 1 44 12 
		1 44 13 1 44 14 1 44 15 1 44 16 
		1 44 17 1 44 18 1 44 19 1 44 20 
		1 44 21 1 22 45 1 23 46 1 45 46 
		0 24 47 1 46 47 0 25 48 1 47 48 
		0 26 49 1 48 49 0 27 50 1 49 50 
		0 28 51 1 50 51 0 29 52 1 51 52 
		0 30 53 1 52 53 0 31 54 1 53 54 
		0 32 55 1 54 55 0 33 56 1 55 56 
		0 34 57 1 56 57 0 35 58 1 57 58 
		0 36 59 1 58 59 0 37 60 1 59 60 
		0 38 61 1 60 61 0 39 62 1 61 62 
		0 40 63 1 62 63 0 41 64 1 63 64 
		0 42 65 1 64 65 0 43 66 1 65 66 
		0 66 45 0 45 67 1 46 68 1 67 68 
		0 47 69 1 68 69 0 48 70 1 69 70 
		0 49 71 1 70 71 0 50 72 1 71 72 
		0 51 73 1 72 73 0 52 74 1 73 74 
		0 53 75 1 74 75 0 54 76 1 75 76 
		0 55 77 1 76 77 0 56 78 1 77 78 
		0 57 79 1 78 79 0 58 80 1 79 80 
		0 59 81 1 80 81 0 60 82 1 81 82 
		0 61 83 1 82 83 0 62 84 1;
	setAttr ".ed[166:329]" 83 84 0 63 85 1 84 85 
		0 64 86 1 85 86 0 65 87 1 86 87 
		0 66 88 1 87 88 0 88 67 0 67 89 
		1 68 90 1 89 90 0 69 91 1 90 91 
		0 70 92 1 91 92 0 71 93 1 92 93 
		0 72 94 1 93 94 0 73 95 1 94 95 
		0 74 96 1 95 96 0 75 97 1 96 97 
		0 76 98 1 97 98 0 77 99 1 98 99 
		0 78 100 1 99 100 0 79 101 1 100 101 
		0 80 102 1 101 102 0 81 103 1 102 103 
		0 82 104 1 103 104 0 83 105 1 104 105 
		0 84 106 1 105 106 0 85 107 1 106 107 
		0 86 108 1 107 108 0 87 109 1 108 109 
		0 88 110 1 109 110 0 110 89 0 89 111 
		1 90 112 1 111 112 0 91 113 1 112 113 
		0 92 114 1 113 114 0 93 115 1 114 115 
		0 94 116 1 115 116 0 95 117 1 116 117 
		0 96 118 1 117 118 0 97 119 1 118 119 
		0 98 120 1 119 120 0 99 121 1 120 121 
		0 100 122 1 121 122 0 101 123 1 122 123 
		0 102 124 1 123 124 0 103 125 1 124 125 
		0 104 126 1 125 126 0 105 127 1 126 127 
		0 106 128 1 127 128 0 107 129 1 128 129 
		0 108 130 1 129 130 0 109 131 1 130 131 
		0 110 132 1 131 132 0 132 111 0 111 133 
		1 112 134 1 133 134 1 134 135 1 133 135 
		1 113 136 1 134 136 1 136 135 1 114 137 
		1 136 137 1 137 135 1 115 138 1 137 138 
		1 138 135 1 116 139 1 138 139 1 139 135 
		1 117 140 1 139 140 1 140 135 1 118 141 
		1 140 141 1 141 135 1 119 142 1 141 142 
		1 142 135 1 120 143 1 142 143 1 143 135 
		1 121 144 1 143 144 1 144 135 1 122 145 
		1 144 145 1 145 135 1 123 146 1 145 146 
		1 146 135 1 124 147 1 146 147 1 147 135 
		1 125 148 1 147 148 1 148 135 1 126 149 
		1 148 149 1 149 135 1 127 150 1 149 150 
		1 150 135 1 128 151 1 150 151 1 151 135 
		1 129 152 1 151 152 1 152 135 1 130 153 
		1 152 153 1 153 135 1 131 154 1 153 154 
		1 154 135 1 132 155 1 154 155 1 155 135 
		1 155 133 1;
	setAttr -s 176 ".fc[0:175]" -type "polyFaces" 
		f 4 0 45 -23 -45 
		mu 0 4 22 23 46 45 
		f 4 1 46 -24 -46 
		mu 0 4 23 24 47 46 
		f 4 2 47 -25 -47 
		mu 0 4 24 25 48 47 
		f 4 3 48 -26 -48 
		mu 0 4 25 26 49 48 
		f 4 4 49 -27 -49 
		mu 0 4 26 27 50 49 
		f 4 5 50 -28 -50 
		mu 0 4 27 28 51 50 
		f 4 6 51 -29 -51 
		mu 0 4 28 29 52 51 
		f 4 7 52 -30 -52 
		mu 0 4 29 30 53 52 
		f 4 8 53 -31 -53 
		mu 0 4 30 31 54 53 
		f 4 9 54 -32 -54 
		mu 0 4 31 32 55 54 
		f 4 10 55 -33 -55 
		mu 0 4 32 33 56 55 
		f 4 11 56 -34 -56 
		mu 0 4 33 34 57 56 
		f 4 12 57 -35 -57 
		mu 0 4 34 35 58 57 
		f 4 13 58 -36 -58 
		mu 0 4 35 36 59 58 
		f 4 14 59 -37 -59 
		mu 0 4 36 37 60 59 
		f 4 15 60 -38 -60 
		mu 0 4 37 38 61 60 
		f 4 16 61 -39 -61 
		mu 0 4 38 39 62 61 
		f 4 17 62 -40 -62 
		mu 0 4 39 40 63 62 
		f 4 18 63 -41 -63 
		mu 0 4 40 41 64 63 
		f 4 19 64 -42 -64 
		mu 0 4 41 42 65 64 
		f 4 20 65 -43 -65 
		mu 0 4 42 43 66 65 
		f 4 21 44 -44 -66 
		mu 0 4 43 44 67 66 
		f 3 -1 -67 67 
		mu 0 3 1 0 90 
		f 3 -2 -68 68 
		mu 0 3 2 1 90 
		f 3 -3 -69 69 
		mu 0 3 3 2 90 
		f 3 -4 -70 70 
		mu 0 3 4 3 90 
		f 3 -5 -71 71 
		mu 0 3 5 4 90 
		f 3 -6 -72 72 
		mu 0 3 6 5 90 
		f 3 -7 -73 73 
		mu 0 3 7 6 90 
		f 3 -8 -74 74 
		mu 0 3 8 7 90 
		f 3 -9 -75 75 
		mu 0 3 9 8 90 
		f 3 -10 -76 76 
		mu 0 3 10 9 90 
		f 3 -11 -77 77 
		mu 0 3 11 10 90 
		f 3 -12 -78 78 
		mu 0 3 12 11 90 
		f 3 -13 -79 79 
		mu 0 3 13 12 90 
		f 3 -14 -80 80 
		mu 0 3 14 13 90 
		f 3 -15 -81 81 
		mu 0 3 15 14 90 
		f 3 -16 -82 82 
		mu 0 3 16 15 90 
		f 3 -17 -83 83 
		mu 0 3 17 16 90 
		f 3 -18 -84 84 
		mu 0 3 18 17 90 
		f 3 -19 -85 85 
		mu 0 3 19 18 90 
		f 3 -20 -86 86 
		mu 0 3 20 19 90 
		f 3 -21 -87 87 
		mu 0 3 21 20 90 
		f 3 -22 -88 66 
		mu 0 3 0 21 90 
		f 3 266 267 -269 
		mu 0 3 180 181 91 
		f 3 270 271 -268 
		mu 0 3 181 182 91 
		f 3 273 274 -272 
		mu 0 3 182 183 91 
		f 3 276 277 -275 
		mu 0 3 183 184 91 
		f 3 279 280 -278 
		mu 0 3 184 185 91 
		f 3 282 283 -281 
		mu 0 3 185 186 91 
		f 3 285 286 -284 
		mu 0 3 186 187 91 
		f 3 288 289 -287 
		mu 0 3 187 188 91 
		f 3 291 292 -290 
		mu 0 3 188 189 91 
		f 3 294 295 -293 
		mu 0 3 189 190 91 
		f 3 297 298 -296 
		mu 0 3 190 191 91 
		f 3 300 301 -299 
		mu 0 3 191 192 91 
		f 3 303 304 -302 
		mu 0 3 192 193 91 
		f 3 306 307 -305 
		mu 0 3 193 194 91 
		f 3 309 310 -308 
		mu 0 3 194 195 91 
		f 3 312 313 -311 
		mu 0 3 195 196 91 
		f 3 315 316 -314 
		mu 0 3 196 197 91 
		f 3 318 319 -317 
		mu 0 3 197 198 91 
		f 3 321 322 -320 
		mu 0 3 198 199 91 
		f 3 324 325 -323 
		mu 0 3 199 200 91 
		f 3 327 328 -326 
		mu 0 3 200 201 91 
		f 3 329 268 -329 
		mu 0 3 201 180 91 
		f 4 22 89 -91 -89 
		mu 0 4 88 87 93 92 
		f 4 23 91 -93 -90 
		mu 0 4 87 86 94 93 
		f 4 24 93 -95 -92 
		mu 0 4 86 85 95 94 
		f 4 25 95 -97 -94 
		mu 0 4 85 84 96 95 
		f 4 26 97 -99 -96 
		mu 0 4 84 83 97 96 
		f 4 27 99 -101 -98 
		mu 0 4 83 82 98 97 
		f 4 28 101 -103 -100 
		mu 0 4 82 81 99 98 
		f 4 29 103 -105 -102 
		mu 0 4 81 80 100 99 
		f 4 30 105 -107 -104 
		mu 0 4 80 79 101 100 
		f 4 31 107 -109 -106 
		mu 0 4 79 78 102 101 
		f 4 32 109 -111 -108 
		mu 0 4 78 77 103 102 
		f 4 33 111 -113 -110 
		mu 0 4 77 76 104 103 
		f 4 34 113 -115 -112 
		mu 0 4 76 75 105 104 
		f 4 35 115 -117 -114 
		mu 0 4 75 74 106 105 
		f 4 36 117 -119 -116 
		mu 0 4 74 73 107 106 
		f 4 37 119 -121 -118 
		mu 0 4 73 72 108 107 
		f 4 38 121 -123 -120 
		mu 0 4 72 71 109 108 
		f 4 39 123 -125 -122 
		mu 0 4 71 70 110 109 
		f 4 40 125 -127 -124 
		mu 0 4 70 69 111 110 
		f 4 41 127 -129 -126 
		mu 0 4 69 68 112 111 
		f 4 42 129 -131 -128 
		mu 0 4 68 89 113 112 
		f 4 43 88 -132 -130 
		mu 0 4 89 88 92 113 
		f 4 90 133 -135 -133 
		mu 0 4 92 93 115 114 
		f 4 92 135 -137 -134 
		mu 0 4 93 94 116 115 
		f 4 94 137 -139 -136 
		mu 0 4 94 95 117 116 
		f 4 96 139 -141 -138 
		mu 0 4 95 96 118 117 
		f 4 98 141 -143 -140 
		mu 0 4 96 97 119 118 
		f 4 100 143 -145 -142 
		mu 0 4 97 98 120 119 
		f 4 102 145 -147 -144 
		mu 0 4 98 99 121 120 
		f 4 104 147 -149 -146 
		mu 0 4 99 100 122 121 
		f 4 106 149 -151 -148 
		mu 0 4 100 101 123 122 
		f 4 108 151 -153 -150 
		mu 0 4 101 102 124 123 
		f 4 110 153 -155 -152 
		mu 0 4 102 103 125 124 
		f 4 112 155 -157 -154 
		mu 0 4 103 104 126 125 
		f 4 114 157 -159 -156 
		mu 0 4 104 105 127 126 
		f 4 116 159 -161 -158 
		mu 0 4 105 106 128 127 
		f 4 118 161 -163 -160 
		mu 0 4 106 107 129 128 
		f 4 120 163 -165 -162 
		mu 0 4 107 108 130 129 
		f 4 122 165 -167 -164 
		mu 0 4 108 109 131 130 
		f 4 124 167 -169 -166 
		mu 0 4 109 110 132 131 
		f 4 126 169 -171 -168 
		mu 0 4 110 111 133 132 
		f 4 128 171 -173 -170 
		mu 0 4 111 112 134 133 
		f 4 130 173 -175 -172 
		mu 0 4 112 113 135 134 
		f 4 131 132 -176 -174 
		mu 0 4 113 92 114 135 
		f 4 134 177 -179 -177 
		mu 0 4 114 115 137 136 
		f 4 136 179 -181 -178 
		mu 0 4 115 116 138 137 
		f 4 138 181 -183 -180 
		mu 0 4 116 117 139 138 
		f 4 140 183 -185 -182 
		mu 0 4 117 118 140 139 
		f 4 142 185 -187 -184 
		mu 0 4 118 119 141 140 
		f 4 144 187 -189 -186 
		mu 0 4 119 120 142 141 
		f 4 146 189 -191 -188 
		mu 0 4 120 121 143 142 
		f 4 148 191 -193 -190 
		mu 0 4 121 122 144 143 
		f 4 150 193 -195 -192 
		mu 0 4 122 123 145 144 
		f 4 152 195 -197 -194 
		mu 0 4 123 124 146 145 
		f 4 154 197 -199 -196 
		mu 0 4 124 125 147 146 
		f 4 156 199 -201 -198 
		mu 0 4 125 126 148 147 
		f 4 158 201 -203 -200 
		mu 0 4 126 127 149 148 
		f 4 160 203 -205 -202 
		mu 0 4 127 128 150 149 
		f 4 162 205 -207 -204 
		mu 0 4 128 129 151 150 
		f 4 164 207 -209 -206 
		mu 0 4 129 130 152 151 
		f 4 166 209 -211 -208 
		mu 0 4 130 131 153 152 
		f 4 168 211 -213 -210 
		mu 0 4 131 132 154 153 
		f 4 170 213 -215 -212 
		mu 0 4 132 133 155 154 
		f 4 172 215 -217 -214 
		mu 0 4 133 134 156 155 
		f 4 174 217 -219 -216 
		mu 0 4 134 135 157 156 
		f 4 175 176 -220 -218 
		mu 0 4 135 114 136 157 
		f 4 178 221 -223 -221 
		mu 0 4 136 137 159 158 
		f 4 180 223 -225 -222 
		mu 0 4 137 138 160 159 
		f 4 182 225 -227 -224 
		mu 0 4 138 139 161 160 
		f 4 184 227 -229 -226 
		mu 0 4 139 140 162 161 
		f 4 186 229 -231 -228 
		mu 0 4 140 141 163 162 
		f 4 188 231 -233 -230 
		mu 0 4 141 142 164 163 
		f 4 190 233 -235 -232 
		mu 0 4 142 143 165 164 
		f 4 192 235 -237 -234 
		mu 0 4 143 144 166 165 
		f 4 194 237 -239 -236 
		mu 0 4 144 145 167 166 
		f 4 196 239 -241 -238 
		mu 0 4 145 146 168 167 
		f 4 198 241 -243 -240 
		mu 0 4 146 147 169 168 
		f 4 200 243 -245 -242 
		mu 0 4 147 148 170 169 
		f 4 202 245 -247 -244 
		mu 0 4 148 149 171 170 
		f 4 204 247 -249 -246 
		mu 0 4 149 150 172 171 
		f 4 206 249 -251 -248 
		mu 0 4 150 151 173 172 
		f 4 208 251 -253 -250 
		mu 0 4 151 152 174 173 
		f 4 210 253 -255 -252 
		mu 0 4 152 153 175 174 
		f 4 212 255 -257 -254 
		mu 0 4 153 154 176 175 
		f 4 214 257 -259 -256 
		mu 0 4 154 155 177 176 
		f 4 216 259 -261 -258 
		mu 0 4 155 156 178 177 
		f 4 218 261 -263 -260 
		mu 0 4 156 157 179 178 
		f 4 219 220 -264 -262 
		mu 0 4 157 136 158 179 
		f 4 222 265 -267 -265 
		mu 0 4 158 159 181 180 
		f 4 224 269 -271 -266 
		mu 0 4 159 160 182 181 
		f 4 226 272 -274 -270 
		mu 0 4 160 161 183 182 
		f 4 228 275 -277 -273 
		mu 0 4 161 162 184 183 
		f 4 230 278 -280 -276 
		mu 0 4 162 163 185 184 
		f 4 232 281 -283 -279 
		mu 0 4 163 164 186 185 
		f 4 234 284 -286 -282 
		mu 0 4 164 165 187 186 
		f 4 236 287 -289 -285 
		mu 0 4 165 166 188 187 
		f 4 238 290 -292 -288 
		mu 0 4 166 167 189 188 
		f 4 240 293 -295 -291 
		mu 0 4 167 168 190 189 
		f 4 242 296 -298 -294 
		mu 0 4 168 169 191 190 
		f 4 244 299 -301 -297 
		mu 0 4 169 170 192 191 
		f 4 246 302 -304 -300 
		mu 0 4 170 171 193 192 
		f 4 248 305 -307 -303 
		mu 0 4 171 172 194 193 
		f 4 250 308 -310 -306 
		mu 0 4 172 173 195 194 
		f 4 252 311 -313 -309 
		mu 0 4 173 174 196 195 
		f 4 254 314 -316 -312 
		mu 0 4 174 175 197 196 
		f 4 256 317 -319 -315 
		mu 0 4 175 176 198 197 
		f 4 258 320 -322 -318 
		mu 0 4 176 177 199 198 
		f 4 260 323 -325 -321 
		mu 0 4 177 178 200 199 
		f 4 262 326 -328 -324 
		mu 0 4 178 179 201 200 
		f 4 263 264 -330 -327 
		mu 0 4 179 158 180 201 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
createNode transform -n "button9";
	setAttr ".t" -type "double3" 4.6027928534307714 36.355907397456811 -32.66049825289759 ;
	setAttr ".r" -type "double3" 0 0 -30.000000000000011 ;
createNode mesh -n "buttonShape9" -p "button9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 202 ".uvst[0].uvsp[0:201]" -type "float2" 0.64992076 0.11222929 
		0.63144583 0.071774885 0.60232198 0.038164139 0.56490856 0.014120027 0.5222367 0.0015904158 
		0.4777633 0.0015904158 0.43509141 0.014120027 0.39767802 0.038164139 0.36855415 0.071774885 
		0.35007924 0.11222929 0.34375 0.15625 0.35007924 0.20027071 0.36855415 0.24072513 
		0.39767802 0.27433586 0.43509141 0.29837999 0.4777633 0.3109096 0.5222367 0.3109096 
		0.56490862 0.29837999 0.60232198 0.27433586 0.63144588 0.24072513 0.64992076 0.20027071 
		0.65625 0.15625 0.375 0.3125 0.38636363 0.3125 0.39772725 0.3125 0.40909088 0.3125 
		0.4204545 0.3125 0.43181813 0.3125 0.44318175 0.3125 0.45454538 0.3125 0.465909 0.3125 
		0.47727263 0.3125 0.48863626 0.3125 0.49999988 0.3125 0.51136351 0.3125 0.52272713 
		0.3125 0.53409076 0.3125 0.54545438 0.3125 0.55681801 0.3125 0.56818163 0.3125 0.57954526 
		0.3125 0.59090889 0.3125 0.60227251 0.3125 0.61363614 0.3125 0.62499976 0.3125 0.375 
		0.68843985 0.38636363 0.68843985 0.39772725 0.68843985 0.40909088 0.68843985 0.4204545 
		0.68843985 0.43181813 0.68843985 0.44318175 0.68843985 0.45454538 0.68843985 0.465909 
		0.68843985 0.47727263 0.68843985 0.48863626 0.68843985 0.49999988 0.68843985 0.51136351 
		0.68843985 0.52272713 0.68843985 0.53409076 0.68843985 0.54545438 0.68843985 0.55681801 
		0.68843985 0.56818163 0.68843985 0.57954526 0.68843985 0.59090889 0.68843985 0.60227251 
		0.68843985 0.61363614 0.68843985 0.62499976 0.68843985 0.64992076 0.79972929 0.63144583 
		0.7592749 0.60232198 0.72566414 0.56490856 0.70162004 0.5222367 0.68909043 0.4777633 
		0.68909043 0.43509141 0.70162004 0.39767802 0.72566414 0.36855415 0.7592749 0.35007924 
		0.79972929 0.34375 0.84375 0.35007924 0.88777071 0.36855415 0.92822516 0.39767802 
		0.96183586 0.43509141 0.98588002 0.4777633 0.99840963 0.5222367 0.99840963 0.56490862 
		0.98588002 0.60232198 0.96183586 0.63144588 0.92822516 0.64992076 0.88777071 0.65625 
		0.84375 0.5 0.15000001 0.5 0.83749998 0.64992076 0.88777071 0.63144588 0.92822516 
		0.60232198 0.96183586 0.56490862 0.98588002 0.5222367 0.99840963 0.4777633 0.99840963 
		0.43509141 0.98588002 0.39767802 0.96183586 0.36855415 0.92822516 0.35007924 0.88777071 
		0.34375 0.84375 0.35007924 0.79972929 0.36855415 0.7592749 0.39767802 0.72566414 
		0.43509141 0.70162004 0.4777633 0.68909043 0.5222367 0.68909043 0.56490856 0.70162004 
		0.60232198 0.72566414 0.63144583 0.7592749 0.64992076 0.79972929 0.65625 0.84375 
		0.64992076 0.88777071 0.63144588 0.92822516 0.60232198 0.96183586 0.56490862 0.98588002 
		0.5222367 0.99840963 0.4777633 0.99840963 0.43509141 0.98588002 0.39767802 0.96183586 
		0.36855415 0.92822516 0.35007924 0.88777071 0.34375 0.84375 0.35007924 0.79972929 
		0.36855415 0.7592749 0.39767802 0.72566414 0.43509141 0.70162004 0.4777633 0.68909043 
		0.5222367 0.68909043 0.56490856 0.70162004 0.60232198 0.72566414 0.63144583 0.7592749 
		0.64992076 0.79972929 0.65625 0.84375 0.64992076 0.88777071 0.63144588 0.92822516 
		0.60232198 0.96183586 0.56490862 0.98588002 0.5222367 0.99840963 0.4777633 0.99840963 
		0.43509141 0.98588002 0.39767802 0.96183586 0.36855415 0.92822516 0.35007924 0.88777071 
		0.34375 0.84375 0.35007924 0.79972929 0.36855415 0.7592749 0.39767802 0.72566414 
		0.43509141 0.70162004 0.4777633 0.68909043 0.5222367 0.68909043 0.56490856 0.70162004 
		0.60232198 0.72566414 0.63144583 0.7592749 0.64992076 0.79972929 0.65625 0.84375 
		0.64992076 0.88777071 0.63144588 0.92822516 0.60232198 0.96183586 0.56490862 0.98588002 
		0.5222367 0.99840963 0.4777633 0.99840963 0.43509141 0.98588002 0.39767802 0.96183586 
		0.36855415 0.92822516 0.35007924 0.88777071 0.34375 0.84375 0.35007924 0.79972929 
		0.36855415 0.7592749 0.39767802 0.72566414 0.43509141 0.70162004 0.4777633 0.68909043 
		0.5222367 0.68909043 0.56490856 0.70162004 0.60232198 0.72566414 0.63144583 0.7592749 
		0.64992076 0.79972929 0.65625 0.84375 0.64992076 0.88777071 0.63144588 0.92822516 
		0.60232198 0.96183586 0.56490862 0.98588002 0.5222367 0.99840963 0.4777633 0.99840963 
		0.43509141 0.98588002 0.39767802 0.96183586 0.36855415 0.92822516 0.35007924 0.88777071 
		0.34375 0.84375 0.35007924 0.79972929 0.36855415 0.7592749 0.39767802 0.72566414 
		0.43509141 0.70162004 0.4777633 0.68909043 0.5222367 0.68909043 0.56490856 0.70162004 
		0.60232198 0.72566414 0.63144583 0.7592749 0.64992076 0.79972929 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 90 ".pt";
	setAttr ".pt[67:155]" -type "float3" 5.6897909e-010 7.1687538e-011 -4.0269146e-011  
		1.2412495e-010 -1.8099957e-011 -3.9902682e-011  -1.4198311e-010 -1.8099957e-011 7.3502315e-011  
		3.5817019e-011 -1.6222194e-011 4.6746501e-010  -3.2078923e-011 2.9470915e-011 -4.709082e-010  
		3.2078912e-011 7.1687538e-011 -1.5101743e-010  4.9424158e-012 2.7872017e-011 -6.8888291e-011  
		4.857335e-011 -1.6222194e-011 -2.4983472e-011  4.6591198e-010 -1.6222194e-011 8.0995273e-011  
		-1.0748095e-010 -1.8099957e-011 -1.5421697e-011  -3.9232265e-010 -2.1855658e-011 
		3.1118063e-016  7.7142667e-011 2.7872017e-011 2.7566532e-011  3.3232506e-010 -2.1855658e-011 
		-9.8534521e-011  -3.6362929e-010 7.1687538e-011 -6.2097183e-010  -3.5817106e-011 
		3.1488197e-011 4.5503776e-010  3.2078912e-011 7.1687538e-011 1.1593875e-010  -5.948847e-011 
		-2.1855658e-011 4.709082e-010  3.5817019e-011 7.1687538e-011 6.2082955e-010  -9.7735382e-011 
		7.1687538e-011 -6.2097183e-010  1.2412495e-010 -1.8099957e-011 -8.9764855e-011  5.6897909e-010 
		7.1687538e-011 -3.4995628e-011  -1.5637884e-010 -1.8099957e-011 8.480384e-017  0.023912489 
		-0.053810142 -0.0079983138  0.020615781 -0.053810235 -0.015216729  0.015419211 -0.053810377 
		-0.021213986  0.0087436372 -0.053810235 -0.025504231  0.0011291722 -0.053810377 -0.027739905  
		-0.0068061347 -0.053810328 -0.02773989  -0.014419849 -0.05381028 -0.025504302  -0.02109585 
		-0.05381028 -0.021214059  -0.02629246 -0.053810377 -0.015216746  -0.029588887 -0.05381028 
		-0.0079983305  -0.030718371 -0.053810328 -0.00014365723  -0.029588981 -0.053810187 
		0.007710964  -0.026292646 -0.053810187 0.014929296  -0.021095943 -0.053810377 0.020926533  
		-0.014420037 -0.053810377 0.025216801  -0.0068059 -0.05381028 0.027452476  0.0011294098 
		-0.053810328 0.027452486  0.0087436847 -0.05381 0.025216863  0.015419117 -0.05381028 
		0.020926671  0.020615781 -0.053810235 0.014929356  0.023912303 -0.053810235 0.0077108787  
		0.02504185 -0.053810142 -0.00014372324  0.023912441 -0.036410291 -0.0079984888  0.020615915 
		-0.036410291 -0.0152169  0.015419117 -0.036410384 -0.021214023  0.0087434025 -0.036410194 
		-0.025504285  0.0011291722 -0.036410291 -0.027740043  -0.0068058502 -0.036410242 
		-0.027740005  -0.014419708 -0.036410335 -0.025504382  -0.021095792 -0.036410242 -0.021214079  
		-0.026292682 -0.036410429 -0.015216813  -0.029589074 -0.036410291 -0.0079983948  
		-0.030718571 -0.036410335 -0.00014375625  -0.029589027 -0.036410242 0.0077108154  
		-0.026292495 -0.036410242 0.014929419  -0.021095943 -0.036410384 0.020926757  -0.014420084 
		-0.036410335 0.02521693  -0.0068060406 -0.036410335 0.027452579  0.0011292191 -0.036410335 
		0.02745262  0.0087438785 -0.036410008 0.025216838  0.015419396 -0.036410194 0.020926552  
		0.020615781 -0.036410149 0.014929419  0.023912348 -0.036410194 0.0077110603  0.025041897 
		-0.036410101 -0.00014369427  0.01850633 -0.033841364 -0.0064111236  0.015875949 -0.033841364 
		-0.012170712  -0.0028383646 -0.033841271 -0.0001437225  0.011729382 -0.033841413 
		-0.016955862  0.0064027798 -0.033841219 -0.0203791  0.00032736061 -0.033841413 -0.022163002  
		-0.0060040858 -0.033841413 -0.022162963  -0.012079266 -0.033841457 -0.020379171  
		-0.017406208 -0.033841413 -0.01695591  -0.02155287 -0.03384155 -0.012170649  -0.02418296 
		-0.033841364 -0.0064110397  -0.025084116 -0.033841413 -0.00014376431  -0.024182912 
		-0.033841316 0.0061234767  -0.021552529 -0.033841316 0.011883258  -0.017406208 -0.033841413 
		0.016668571  -0.012079559 -0.033841364 0.02009172  -0.0060041794 -0.033841316 0.021875564  
		0.00032736061 -0.033841413 0.021875609  0.0064031552 -0.033841122 0.020091655  0.011729669 
		-0.033841316 0.016668374  0.015875855 -0.033841271 0.011883226  0.018506195 -0.033841219 
		0.0061236676  0.019407393 -0.033841219 -0.00014371774 ;
	setAttr -s 156 ".vt[0:155]"  0.6596505 -1.0000011 -0.19369078 0.57836217 
		-1.0000004 -0.37169024 0.45021689 -1.0000004 -0.51957756 0.28559616 -1.0000019 -0.62537187 
		0.09784098 -1.0000004 -0.68050224 -0.09784548 -1.0000049 -0.68050236 -0.28559768 
		-1.0000004 -0.62537223 -0.45021912 -1.0000026 -0.51957816 -0.57836366 -1.0000019 
		-0.37169087 -0.65965277 -1.0000019 -0.19369143 -0.68750083 -1.0000011 -2.4586916e-007 
		-0.65965277 -1.0000019 0.19369096 -0.57836366 -1.0000019 0.37169045 -0.45021912 -1.0000026 
		0.5195778 -0.28559843 -0.99999958 0.62537199 -0.097846232 -1.0000042 0.6805023 0.09784098 
		-1.0000004 0.68050236 0.28559616 -1.0000019 0.62537205 0.45021689 -1.0000004 0.51957792 
		0.57836139 -0.99999958 0.37169063 0.6596505 -1.0000011 0.19369116 0.68749928 -1.0000011 
		0 0.65964675 0.99999583 -0.19369078 0.57836068 0.99999887 -0.37169024 0.45021537 
		0.99999887 -0.51957756 0.28559542 0.9999966 -0.62537187 0.097840227 0.99999809 -0.68050224 
		-0.097841725 0.99999958 -0.68050236 -0.28559917 0.99999887 -0.62537223 -0.45021763 
		0.99999958 -0.51957816 -0.57836217 0.99999887 -0.37169087 -0.65965426 0.99999738 
		-0.19369143 -0.68750232 0.99999809 -2.4586916e-007 -0.65965426 0.99999738 0.19369096 
		-0.57836294 0.99999958 0.37169045 -0.45021763 0.99999958 0.5195778 -0.28559917 0.99999887 
		0.62537199 -0.097841725 0.99999958 0.6805023 0.097839475 0.99999887 0.68050236 0.28559467 
		0.99999738 0.62537205 0.45021537 0.99999887 0.51957792 0.57836068 0.99999887 0.37169063 
		0.65964675 0.99999583 0.19369116 0.68749779 0.99999809 0 -2.252774e-006 -1.0000026 
		0 0.58805436 1.1704745 -0.17266934 0.51558715 1.170473 -0.33135024 0.40135196 1.1704745 
		-0.46318728 0.25460175 1.1704775 -0.55749953 0.087218396 1.1704738 -0.60664636 -0.087222151 
		1.1704775 -0.60664648 -0.25460175 1.1704761 -0.55749959 -0.40135497 1.1704761 -0.46318737 
		-0.5155924 1.1704752 -0.33135077 -0.58806109 1.1704752 -0.17266981 -0.61288893 1.1704745 
		-2.1926414e-007 -0.58805889 1.1704775 0.17266934 -0.51559389 1.1704768 0.33135033 
		-0.40135571 1.1704768 0.46318704 -0.25460175 1.1704761 0.55749935 -0.087221399 1.1704768 
		0.60664636 0.087221399 1.1704768 0.60664642 0.25460175 1.1704775 0.55749959 0.40135121 
		1.1704752 0.46318752 0.51558715 1.170473 0.33135045 0.58805513 1.1704738 0.17266956 
		0.6128844 1.1704775 1.4666497e-008 0.46195084 1.2523426 -0.13564186 0.40502399 1.2523419 
		-0.2602945 0.31528547 1.2523419 -0.36385965 0.20000127 1.252341 -0.43794772 0.068512112 
		1.2523389 -0.47655541 -0.06851887 1.2523426 -0.47655505 -0.20000277 1.2523441 -0.43794742 
		-0.31528923 1.252341 -0.3638598 -0.40502775 1.252341 -0.26029474 -0.46195608 1.2523419 
		-0.13564205 -0.48145759 1.2523433 -7.1205847e-007 -0.46195382 1.2523441 0.13564122 
		-0.40502998 1.2523433 0.26029459 -0.31529075 1.2523426 0.36385974 -0.20000803 1.2523403 
		0.43794739 -0.06851887 1.2523426 0.47655505 0.06851662 1.2523433 0.47655514 0.20000127 
		1.2523426 0.43794751 0.31528473 1.2523426 0.36385974 0.40502399 1.2523419 0.26029453 
		0.46195084 1.2523426 0.13564201 0.48145309 1.2523419 -2.7866344e-008 0.42524713 1.0307462 
		-0.12486247 0.37284011 1.0307447 -0.23961177 0.29023162 1.0307424 -0.33494857 0.18411171 
		1.0307447 -0.40314963 0.063066408 1.0307424 -0.43868953 -0.063079171 1.0307432 -0.43868938 
		-0.18411246 1.030744 -0.4031508 -0.29023913 1.030744 -0.33494988 -0.37284836 1.0307424 
		-0.23961198 -0.42525089 1.030744 -0.12486273 -0.44320625 1.0307432 1.0313739e-006 
		-0.42525238 1.0307455 0.12486396 -0.37285137 1.0307455 0.23961198 -0.29024065 1.0307424 
		0.33494848 -0.18411547 1.0307424 0.40314975 -0.063075416 1.030744 0.43868986 0.063070163 
		1.0307432 0.43868995 0.18411246 1.0307485 0.4031508 0.29023013 1.030744 0.33495077 
		0.37284011 1.0307447 0.23961292 0.42524412 1.0307447 0.12486264 0.44320023 1.0307462 
		-1.5849984e-008 0.42524639 1.3073471 -0.12486524 0.37284234 1.3073471 -0.23961446 
		0.29023013 1.3073455 -0.33494917 0.18410796 1.3073486 -0.40315041 0.063066408 1.3073471 
		-0.43869174 -0.063074671 1.3073478 -0.43869108 -0.18411021 1.3073463 -0.40315196 
		-0.29023838 1.3073478 -0.33495006 -0.37285212 1.3073448 -0.23961319 -0.4252539 1.3073471 
		-0.12486374 -0.44320926 1.3073463 -5.3884605e-007 -0.42525315 1.3073478 0.12486165 
		-0.37284911 1.3073478 0.23961391 -0.29024065 1.3073455 0.33495206 -0.18411621 1.3073463 
		0.40315187 -0.063077673 1.3073463 0.43869141 0.063067161 1.3073463 0.43869212 0.18411547 
		1.3073516 0.40315047 0.29023463 1.3073486 0.3349489 0.37284011 1.3073493 0.23961391 
		0.42524487 1.3073486 0.1248655 0.44320098 1.30735 4.4543128e-007 0.3393068 1.3481846 
		-0.099631302 0.29749233 1.3481846 -0.19119003 -4.5055481e-006 1.3481861 -2.6575837e-009 
		0.2315754 1.3481839 -0.26725835 0.14689964 1.3481869 -0.32167661 0.050320212 1.3481839 
		-0.35003495 -0.050329223 1.3481839 -0.35003433 -0.14690489 1.3481832 -0.32167783 
		-0.23158592 1.3481839 -0.26725906 -0.29750434 1.3481816 -0.19118907 -0.33931431 1.3481846 
		-0.099629983 -0.35363972 1.3481839 -6.695256e-007 -0.33931357 1.3481853 0.099628098 
		-0.29749909 1.3481853 0.19118987 -0.23158592 1.3481839 0.26726076 -0.1469094 1.3481846 
		0.3216778 -0.050330725 1.3481853 0.35003495 0.050320212 1.3481839 0.35003585 0.14690565 
		1.3481884 0.32167673 0.23157991 1.3481853 0.26725769 0.29749081 1.3481861 0.19118935 
		0.33930457 1.3481869 0.099631108 0.35363069 1.3481869 7.2599164e-008;
	setAttr -s 330 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 
		0 3 4 0 4 5 0 5 6 0 6 7 
		0 7 8 0 8 9 0 9 10 0 10 11 
		0 11 12 0 12 13 0 13 14 0 14 15 
		0 15 16 0 16 17 0 17 18 0 18 19 
		0 19 20 0 20 21 0 21 0 0 22 23 
		1 23 24 1 24 25 1 25 26 1 26 27 
		1 27 28 1 28 29 1 29 30 1 30 31 
		1 31 32 1 32 33 1 33 34 1 34 35 
		1 35 36 1 36 37 1 37 38 1 38 39 
		1 39 40 1 40 41 1 41 42 1 42 43 
		1 43 22 1 0 22 1 1 23 1 2 24 
		1 3 25 1 4 26 1 5 27 1 6 28 
		1 7 29 1 8 30 1 9 31 1 10 32 
		1 11 33 1 12 34 1 13 35 1 14 36 
		1 15 37 1 16 38 1 17 39 1 18 40 
		1 19 41 1 20 42 1 21 43 1 44 0 
		1 44 1 1 44 2 1 44 3 1 44 4 
		1 44 5 1 44 6 1 44 7 1 44 8 
		1 44 9 1 44 10 1 44 11 1 44 12 
		1 44 13 1 44 14 1 44 15 1 44 16 
		1 44 17 1 44 18 1 44 19 1 44 20 
		1 44 21 1 22 45 1 23 46 1 45 46 
		0 24 47 1 46 47 0 25 48 1 47 48 
		0 26 49 1 48 49 0 27 50 1 49 50 
		0 28 51 1 50 51 0 29 52 1 51 52 
		0 30 53 1 52 53 0 31 54 1 53 54 
		0 32 55 1 54 55 0 33 56 1 55 56 
		0 34 57 1 56 57 0 35 58 1 57 58 
		0 36 59 1 58 59 0 37 60 1 59 60 
		0 38 61 1 60 61 0 39 62 1 61 62 
		0 40 63 1 62 63 0 41 64 1 63 64 
		0 42 65 1 64 65 0 43 66 1 65 66 
		0 66 45 0 45 67 1 46 68 1 67 68 
		0 47 69 1 68 69 0 48 70 1 69 70 
		0 49 71 1 70 71 0 50 72 1 71 72 
		0 51 73 1 72 73 0 52 74 1 73 74 
		0 53 75 1 74 75 0 54 76 1 75 76 
		0 55 77 1 76 77 0 56 78 1 77 78 
		0 57 79 1 78 79 0 58 80 1 79 80 
		0 59 81 1 80 81 0 60 82 1 81 82 
		0 61 83 1 82 83 0 62 84 1;
	setAttr ".ed[166:329]" 83 84 0 63 85 1 84 85 
		0 64 86 1 85 86 0 65 87 1 86 87 
		0 66 88 1 87 88 0 88 67 0 67 89 
		1 68 90 1 89 90 0 69 91 1 90 91 
		0 70 92 1 91 92 0 71 93 1 92 93 
		0 72 94 1 93 94 0 73 95 1 94 95 
		0 74 96 1 95 96 0 75 97 1 96 97 
		0 76 98 1 97 98 0 77 99 1 98 99 
		0 78 100 1 99 100 0 79 101 1 100 101 
		0 80 102 1 101 102 0 81 103 1 102 103 
		0 82 104 1 103 104 0 83 105 1 104 105 
		0 84 106 1 105 106 0 85 107 1 106 107 
		0 86 108 1 107 108 0 87 109 1 108 109 
		0 88 110 1 109 110 0 110 89 0 89 111 
		1 90 112 1 111 112 0 91 113 1 112 113 
		0 92 114 1 113 114 0 93 115 1 114 115 
		0 94 116 1 115 116 0 95 117 1 116 117 
		0 96 118 1 117 118 0 97 119 1 118 119 
		0 98 120 1 119 120 0 99 121 1 120 121 
		0 100 122 1 121 122 0 101 123 1 122 123 
		0 102 124 1 123 124 0 103 125 1 124 125 
		0 104 126 1 125 126 0 105 127 1 126 127 
		0 106 128 1 127 128 0 107 129 1 128 129 
		0 108 130 1 129 130 0 109 131 1 130 131 
		0 110 132 1 131 132 0 132 111 0 111 133 
		1 112 134 1 133 134 1 134 135 1 133 135 
		1 113 136 1 134 136 1 136 135 1 114 137 
		1 136 137 1 137 135 1 115 138 1 137 138 
		1 138 135 1 116 139 1 138 139 1 139 135 
		1 117 140 1 139 140 1 140 135 1 118 141 
		1 140 141 1 141 135 1 119 142 1 141 142 
		1 142 135 1 120 143 1 142 143 1 143 135 
		1 121 144 1 143 144 1 144 135 1 122 145 
		1 144 145 1 145 135 1 123 146 1 145 146 
		1 146 135 1 124 147 1 146 147 1 147 135 
		1 125 148 1 147 148 1 148 135 1 126 149 
		1 148 149 1 149 135 1 127 150 1 149 150 
		1 150 135 1 128 151 1 150 151 1 151 135 
		1 129 152 1 151 152 1 152 135 1 130 153 
		1 152 153 1 153 135 1 131 154 1 153 154 
		1 154 135 1 132 155 1 154 155 1 155 135 
		1 155 133 1;
	setAttr -s 176 ".fc[0:175]" -type "polyFaces" 
		f 4 0 45 -23 -45 
		mu 0 4 22 23 46 45 
		f 4 1 46 -24 -46 
		mu 0 4 23 24 47 46 
		f 4 2 47 -25 -47 
		mu 0 4 24 25 48 47 
		f 4 3 48 -26 -48 
		mu 0 4 25 26 49 48 
		f 4 4 49 -27 -49 
		mu 0 4 26 27 50 49 
		f 4 5 50 -28 -50 
		mu 0 4 27 28 51 50 
		f 4 6 51 -29 -51 
		mu 0 4 28 29 52 51 
		f 4 7 52 -30 -52 
		mu 0 4 29 30 53 52 
		f 4 8 53 -31 -53 
		mu 0 4 30 31 54 53 
		f 4 9 54 -32 -54 
		mu 0 4 31 32 55 54 
		f 4 10 55 -33 -55 
		mu 0 4 32 33 56 55 
		f 4 11 56 -34 -56 
		mu 0 4 33 34 57 56 
		f 4 12 57 -35 -57 
		mu 0 4 34 35 58 57 
		f 4 13 58 -36 -58 
		mu 0 4 35 36 59 58 
		f 4 14 59 -37 -59 
		mu 0 4 36 37 60 59 
		f 4 15 60 -38 -60 
		mu 0 4 37 38 61 60 
		f 4 16 61 -39 -61 
		mu 0 4 38 39 62 61 
		f 4 17 62 -40 -62 
		mu 0 4 39 40 63 62 
		f 4 18 63 -41 -63 
		mu 0 4 40 41 64 63 
		f 4 19 64 -42 -64 
		mu 0 4 41 42 65 64 
		f 4 20 65 -43 -65 
		mu 0 4 42 43 66 65 
		f 4 21 44 -44 -66 
		mu 0 4 43 44 67 66 
		f 3 -1 -67 67 
		mu 0 3 1 0 90 
		f 3 -2 -68 68 
		mu 0 3 2 1 90 
		f 3 -3 -69 69 
		mu 0 3 3 2 90 
		f 3 -4 -70 70 
		mu 0 3 4 3 90 
		f 3 -5 -71 71 
		mu 0 3 5 4 90 
		f 3 -6 -72 72 
		mu 0 3 6 5 90 
		f 3 -7 -73 73 
		mu 0 3 7 6 90 
		f 3 -8 -74 74 
		mu 0 3 8 7 90 
		f 3 -9 -75 75 
		mu 0 3 9 8 90 
		f 3 -10 -76 76 
		mu 0 3 10 9 90 
		f 3 -11 -77 77 
		mu 0 3 11 10 90 
		f 3 -12 -78 78 
		mu 0 3 12 11 90 
		f 3 -13 -79 79 
		mu 0 3 13 12 90 
		f 3 -14 -80 80 
		mu 0 3 14 13 90 
		f 3 -15 -81 81 
		mu 0 3 15 14 90 
		f 3 -16 -82 82 
		mu 0 3 16 15 90 
		f 3 -17 -83 83 
		mu 0 3 17 16 90 
		f 3 -18 -84 84 
		mu 0 3 18 17 90 
		f 3 -19 -85 85 
		mu 0 3 19 18 90 
		f 3 -20 -86 86 
		mu 0 3 20 19 90 
		f 3 -21 -87 87 
		mu 0 3 21 20 90 
		f 3 -22 -88 66 
		mu 0 3 0 21 90 
		f 3 266 267 -269 
		mu 0 3 180 181 91 
		f 3 270 271 -268 
		mu 0 3 181 182 91 
		f 3 273 274 -272 
		mu 0 3 182 183 91 
		f 3 276 277 -275 
		mu 0 3 183 184 91 
		f 3 279 280 -278 
		mu 0 3 184 185 91 
		f 3 282 283 -281 
		mu 0 3 185 186 91 
		f 3 285 286 -284 
		mu 0 3 186 187 91 
		f 3 288 289 -287 
		mu 0 3 187 188 91 
		f 3 291 292 -290 
		mu 0 3 188 189 91 
		f 3 294 295 -293 
		mu 0 3 189 190 91 
		f 3 297 298 -296 
		mu 0 3 190 191 91 
		f 3 300 301 -299 
		mu 0 3 191 192 91 
		f 3 303 304 -302 
		mu 0 3 192 193 91 
		f 3 306 307 -305 
		mu 0 3 193 194 91 
		f 3 309 310 -308 
		mu 0 3 194 195 91 
		f 3 312 313 -311 
		mu 0 3 195 196 91 
		f 3 315 316 -314 
		mu 0 3 196 197 91 
		f 3 318 319 -317 
		mu 0 3 197 198 91 
		f 3 321 322 -320 
		mu 0 3 198 199 91 
		f 3 324 325 -323 
		mu 0 3 199 200 91 
		f 3 327 328 -326 
		mu 0 3 200 201 91 
		f 3 329 268 -329 
		mu 0 3 201 180 91 
		f 4 22 89 -91 -89 
		mu 0 4 88 87 93 92 
		f 4 23 91 -93 -90 
		mu 0 4 87 86 94 93 
		f 4 24 93 -95 -92 
		mu 0 4 86 85 95 94 
		f 4 25 95 -97 -94 
		mu 0 4 85 84 96 95 
		f 4 26 97 -99 -96 
		mu 0 4 84 83 97 96 
		f 4 27 99 -101 -98 
		mu 0 4 83 82 98 97 
		f 4 28 101 -103 -100 
		mu 0 4 82 81 99 98 
		f 4 29 103 -105 -102 
		mu 0 4 81 80 100 99 
		f 4 30 105 -107 -104 
		mu 0 4 80 79 101 100 
		f 4 31 107 -109 -106 
		mu 0 4 79 78 102 101 
		f 4 32 109 -111 -108 
		mu 0 4 78 77 103 102 
		f 4 33 111 -113 -110 
		mu 0 4 77 76 104 103 
		f 4 34 113 -115 -112 
		mu 0 4 76 75 105 104 
		f 4 35 115 -117 -114 
		mu 0 4 75 74 106 105 
		f 4 36 117 -119 -116 
		mu 0 4 74 73 107 106 
		f 4 37 119 -121 -118 
		mu 0 4 73 72 108 107 
		f 4 38 121 -123 -120 
		mu 0 4 72 71 109 108 
		f 4 39 123 -125 -122 
		mu 0 4 71 70 110 109 
		f 4 40 125 -127 -124 
		mu 0 4 70 69 111 110 
		f 4 41 127 -129 -126 
		mu 0 4 69 68 112 111 
		f 4 42 129 -131 -128 
		mu 0 4 68 89 113 112 
		f 4 43 88 -132 -130 
		mu 0 4 89 88 92 113 
		f 4 90 133 -135 -133 
		mu 0 4 92 93 115 114 
		f 4 92 135 -137 -134 
		mu 0 4 93 94 116 115 
		f 4 94 137 -139 -136 
		mu 0 4 94 95 117 116 
		f 4 96 139 -141 -138 
		mu 0 4 95 96 118 117 
		f 4 98 141 -143 -140 
		mu 0 4 96 97 119 118 
		f 4 100 143 -145 -142 
		mu 0 4 97 98 120 119 
		f 4 102 145 -147 -144 
		mu 0 4 98 99 121 120 
		f 4 104 147 -149 -146 
		mu 0 4 99 100 122 121 
		f 4 106 149 -151 -148 
		mu 0 4 100 101 123 122 
		f 4 108 151 -153 -150 
		mu 0 4 101 102 124 123 
		f 4 110 153 -155 -152 
		mu 0 4 102 103 125 124 
		f 4 112 155 -157 -154 
		mu 0 4 103 104 126 125 
		f 4 114 157 -159 -156 
		mu 0 4 104 105 127 126 
		f 4 116 159 -161 -158 
		mu 0 4 105 106 128 127 
		f 4 118 161 -163 -160 
		mu 0 4 106 107 129 128 
		f 4 120 163 -165 -162 
		mu 0 4 107 108 130 129 
		f 4 122 165 -167 -164 
		mu 0 4 108 109 131 130 
		f 4 124 167 -169 -166 
		mu 0 4 109 110 132 131 
		f 4 126 169 -171 -168 
		mu 0 4 110 111 133 132 
		f 4 128 171 -173 -170 
		mu 0 4 111 112 134 133 
		f 4 130 173 -175 -172 
		mu 0 4 112 113 135 134 
		f 4 131 132 -176 -174 
		mu 0 4 113 92 114 135 
		f 4 134 177 -179 -177 
		mu 0 4 114 115 137 136 
		f 4 136 179 -181 -178 
		mu 0 4 115 116 138 137 
		f 4 138 181 -183 -180 
		mu 0 4 116 117 139 138 
		f 4 140 183 -185 -182 
		mu 0 4 117 118 140 139 
		f 4 142 185 -187 -184 
		mu 0 4 118 119 141 140 
		f 4 144 187 -189 -186 
		mu 0 4 119 120 142 141 
		f 4 146 189 -191 -188 
		mu 0 4 120 121 143 142 
		f 4 148 191 -193 -190 
		mu 0 4 121 122 144 143 
		f 4 150 193 -195 -192 
		mu 0 4 122 123 145 144 
		f 4 152 195 -197 -194 
		mu 0 4 123 124 146 145 
		f 4 154 197 -199 -196 
		mu 0 4 124 125 147 146 
		f 4 156 199 -201 -198 
		mu 0 4 125 126 148 147 
		f 4 158 201 -203 -200 
		mu 0 4 126 127 149 148 
		f 4 160 203 -205 -202 
		mu 0 4 127 128 150 149 
		f 4 162 205 -207 -204 
		mu 0 4 128 129 151 150 
		f 4 164 207 -209 -206 
		mu 0 4 129 130 152 151 
		f 4 166 209 -211 -208 
		mu 0 4 130 131 153 152 
		f 4 168 211 -213 -210 
		mu 0 4 131 132 154 153 
		f 4 170 213 -215 -212 
		mu 0 4 132 133 155 154 
		f 4 172 215 -217 -214 
		mu 0 4 133 134 156 155 
		f 4 174 217 -219 -216 
		mu 0 4 134 135 157 156 
		f 4 175 176 -220 -218 
		mu 0 4 135 114 136 157 
		f 4 178 221 -223 -221 
		mu 0 4 136 137 159 158 
		f 4 180 223 -225 -222 
		mu 0 4 137 138 160 159 
		f 4 182 225 -227 -224 
		mu 0 4 138 139 161 160 
		f 4 184 227 -229 -226 
		mu 0 4 139 140 162 161 
		f 4 186 229 -231 -228 
		mu 0 4 140 141 163 162 
		f 4 188 231 -233 -230 
		mu 0 4 141 142 164 163 
		f 4 190 233 -235 -232 
		mu 0 4 142 143 165 164 
		f 4 192 235 -237 -234 
		mu 0 4 143 144 166 165 
		f 4 194 237 -239 -236 
		mu 0 4 144 145 167 166 
		f 4 196 239 -241 -238 
		mu 0 4 145 146 168 167 
		f 4 198 241 -243 -240 
		mu 0 4 146 147 169 168 
		f 4 200 243 -245 -242 
		mu 0 4 147 148 170 169 
		f 4 202 245 -247 -244 
		mu 0 4 148 149 171 170 
		f 4 204 247 -249 -246 
		mu 0 4 149 150 172 171 
		f 4 206 249 -251 -248 
		mu 0 4 150 151 173 172 
		f 4 208 251 -253 -250 
		mu 0 4 151 152 174 173 
		f 4 210 253 -255 -252 
		mu 0 4 152 153 175 174 
		f 4 212 255 -257 -254 
		mu 0 4 153 154 176 175 
		f 4 214 257 -259 -256 
		mu 0 4 154 155 177 176 
		f 4 216 259 -261 -258 
		mu 0 4 155 156 178 177 
		f 4 218 261 -263 -260 
		mu 0 4 156 157 179 178 
		f 4 219 220 -264 -262 
		mu 0 4 157 136 158 179 
		f 4 222 265 -267 -265 
		mu 0 4 158 159 181 180 
		f 4 224 269 -271 -266 
		mu 0 4 159 160 182 181 
		f 4 226 272 -274 -270 
		mu 0 4 160 161 183 182 
		f 4 228 275 -277 -273 
		mu 0 4 161 162 184 183 
		f 4 230 278 -280 -276 
		mu 0 4 162 163 185 184 
		f 4 232 281 -283 -279 
		mu 0 4 163 164 186 185 
		f 4 234 284 -286 -282 
		mu 0 4 164 165 187 186 
		f 4 236 287 -289 -285 
		mu 0 4 165 166 188 187 
		f 4 238 290 -292 -288 
		mu 0 4 166 167 189 188 
		f 4 240 293 -295 -291 
		mu 0 4 167 168 190 189 
		f 4 242 296 -298 -294 
		mu 0 4 168 169 191 190 
		f 4 244 299 -301 -297 
		mu 0 4 169 170 192 191 
		f 4 246 302 -304 -300 
		mu 0 4 170 171 193 192 
		f 4 248 305 -307 -303 
		mu 0 4 171 172 194 193 
		f 4 250 308 -310 -306 
		mu 0 4 172 173 195 194 
		f 4 252 311 -313 -309 
		mu 0 4 173 174 196 195 
		f 4 254 314 -316 -312 
		mu 0 4 174 175 197 196 
		f 4 256 317 -319 -315 
		mu 0 4 175 176 198 197 
		f 4 258 320 -322 -318 
		mu 0 4 176 177 199 198 
		f 4 260 323 -325 -321 
		mu 0 4 177 178 200 199 
		f 4 262 326 -328 -324 
		mu 0 4 178 179 201 200 
		f 4 263 264 -330 -327 
		mu 0 4 179 158 180 201 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
createNode transform -n "button10";
	setAttr ".t" -type "double3" 4.6027928534307714 36.355907397456811 -26.537217089490504 ;
	setAttr ".r" -type "double3" 0 0 -30.000000000000011 ;
createNode mesh -n "buttonShape10" -p "button10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 202 ".uvst[0].uvsp[0:201]" -type "float2" 0.64992076 0.11222929 
		0.63144583 0.071774885 0.60232198 0.038164139 0.56490856 0.014120027 0.5222367 0.0015904158 
		0.4777633 0.0015904158 0.43509141 0.014120027 0.39767802 0.038164139 0.36855415 0.071774885 
		0.35007924 0.11222929 0.34375 0.15625 0.35007924 0.20027071 0.36855415 0.24072513 
		0.39767802 0.27433586 0.43509141 0.29837999 0.4777633 0.3109096 0.5222367 0.3109096 
		0.56490862 0.29837999 0.60232198 0.27433586 0.63144588 0.24072513 0.64992076 0.20027071 
		0.65625 0.15625 0.375 0.3125 0.38636363 0.3125 0.39772725 0.3125 0.40909088 0.3125 
		0.4204545 0.3125 0.43181813 0.3125 0.44318175 0.3125 0.45454538 0.3125 0.465909 0.3125 
		0.47727263 0.3125 0.48863626 0.3125 0.49999988 0.3125 0.51136351 0.3125 0.52272713 
		0.3125 0.53409076 0.3125 0.54545438 0.3125 0.55681801 0.3125 0.56818163 0.3125 0.57954526 
		0.3125 0.59090889 0.3125 0.60227251 0.3125 0.61363614 0.3125 0.62499976 0.3125 0.375 
		0.68843985 0.38636363 0.68843985 0.39772725 0.68843985 0.40909088 0.68843985 0.4204545 
		0.68843985 0.43181813 0.68843985 0.44318175 0.68843985 0.45454538 0.68843985 0.465909 
		0.68843985 0.47727263 0.68843985 0.48863626 0.68843985 0.49999988 0.68843985 0.51136351 
		0.68843985 0.52272713 0.68843985 0.53409076 0.68843985 0.54545438 0.68843985 0.55681801 
		0.68843985 0.56818163 0.68843985 0.57954526 0.68843985 0.59090889 0.68843985 0.60227251 
		0.68843985 0.61363614 0.68843985 0.62499976 0.68843985 0.64992076 0.79972929 0.63144583 
		0.7592749 0.60232198 0.72566414 0.56490856 0.70162004 0.5222367 0.68909043 0.4777633 
		0.68909043 0.43509141 0.70162004 0.39767802 0.72566414 0.36855415 0.7592749 0.35007924 
		0.79972929 0.34375 0.84375 0.35007924 0.88777071 0.36855415 0.92822516 0.39767802 
		0.96183586 0.43509141 0.98588002 0.4777633 0.99840963 0.5222367 0.99840963 0.56490862 
		0.98588002 0.60232198 0.96183586 0.63144588 0.92822516 0.64992076 0.88777071 0.65625 
		0.84375 0.5 0.15000001 0.5 0.83749998 0.64992076 0.88777071 0.63144588 0.92822516 
		0.60232198 0.96183586 0.56490862 0.98588002 0.5222367 0.99840963 0.4777633 0.99840963 
		0.43509141 0.98588002 0.39767802 0.96183586 0.36855415 0.92822516 0.35007924 0.88777071 
		0.34375 0.84375 0.35007924 0.79972929 0.36855415 0.7592749 0.39767802 0.72566414 
		0.43509141 0.70162004 0.4777633 0.68909043 0.5222367 0.68909043 0.56490856 0.70162004 
		0.60232198 0.72566414 0.63144583 0.7592749 0.64992076 0.79972929 0.65625 0.84375 
		0.64992076 0.88777071 0.63144588 0.92822516 0.60232198 0.96183586 0.56490862 0.98588002 
		0.5222367 0.99840963 0.4777633 0.99840963 0.43509141 0.98588002 0.39767802 0.96183586 
		0.36855415 0.92822516 0.35007924 0.88777071 0.34375 0.84375 0.35007924 0.79972929 
		0.36855415 0.7592749 0.39767802 0.72566414 0.43509141 0.70162004 0.4777633 0.68909043 
		0.5222367 0.68909043 0.56490856 0.70162004 0.60232198 0.72566414 0.63144583 0.7592749 
		0.64992076 0.79972929 0.65625 0.84375 0.64992076 0.88777071 0.63144588 0.92822516 
		0.60232198 0.96183586 0.56490862 0.98588002 0.5222367 0.99840963 0.4777633 0.99840963 
		0.43509141 0.98588002 0.39767802 0.96183586 0.36855415 0.92822516 0.35007924 0.88777071 
		0.34375 0.84375 0.35007924 0.79972929 0.36855415 0.7592749 0.39767802 0.72566414 
		0.43509141 0.70162004 0.4777633 0.68909043 0.5222367 0.68909043 0.56490856 0.70162004 
		0.60232198 0.72566414 0.63144583 0.7592749 0.64992076 0.79972929 0.65625 0.84375 
		0.64992076 0.88777071 0.63144588 0.92822516 0.60232198 0.96183586 0.56490862 0.98588002 
		0.5222367 0.99840963 0.4777633 0.99840963 0.43509141 0.98588002 0.39767802 0.96183586 
		0.36855415 0.92822516 0.35007924 0.88777071 0.34375 0.84375 0.35007924 0.79972929 
		0.36855415 0.7592749 0.39767802 0.72566414 0.43509141 0.70162004 0.4777633 0.68909043 
		0.5222367 0.68909043 0.56490856 0.70162004 0.60232198 0.72566414 0.63144583 0.7592749 
		0.64992076 0.79972929 0.65625 0.84375 0.64992076 0.88777071 0.63144588 0.92822516 
		0.60232198 0.96183586 0.56490862 0.98588002 0.5222367 0.99840963 0.4777633 0.99840963 
		0.43509141 0.98588002 0.39767802 0.96183586 0.36855415 0.92822516 0.35007924 0.88777071 
		0.34375 0.84375 0.35007924 0.79972929 0.36855415 0.7592749 0.39767802 0.72566414 
		0.43509141 0.70162004 0.4777633 0.68909043 0.5222367 0.68909043 0.56490856 0.70162004 
		0.60232198 0.72566414 0.63144583 0.7592749 0.64992076 0.79972929 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 90 ".pt";
	setAttr ".pt[67:155]" -type "float3" 5.6897909e-010 7.1687538e-011 -4.0269146e-011  
		1.2412495e-010 -1.8099957e-011 -3.9902682e-011  -1.4198311e-010 -1.8099957e-011 7.3502315e-011  
		3.5817019e-011 -1.6222194e-011 4.6746501e-010  -3.2078923e-011 2.9470915e-011 -4.709082e-010  
		3.2078912e-011 7.1687538e-011 -1.5101743e-010  4.9424158e-012 2.7872017e-011 -6.8888291e-011  
		4.857335e-011 -1.6222194e-011 -2.4983472e-011  4.6591198e-010 -1.6222194e-011 8.0995273e-011  
		-1.0748095e-010 -1.8099957e-011 -1.5421697e-011  -3.9232265e-010 -2.1855658e-011 
		3.1118063e-016  7.7142667e-011 2.7872017e-011 2.7566532e-011  3.3232506e-010 -2.1855658e-011 
		-9.8534521e-011  -3.6362929e-010 7.1687538e-011 -6.2097183e-010  -3.5817106e-011 
		3.1488197e-011 4.5503776e-010  3.2078912e-011 7.1687538e-011 1.1593875e-010  -5.948847e-011 
		-2.1855658e-011 4.709082e-010  3.5817019e-011 7.1687538e-011 6.2082955e-010  -9.7735382e-011 
		7.1687538e-011 -6.2097183e-010  1.2412495e-010 -1.8099957e-011 -8.9764855e-011  5.6897909e-010 
		7.1687538e-011 -3.4995628e-011  -1.5637884e-010 -1.8099957e-011 8.480384e-017  0.023912489 
		-0.053810142 -0.0079983138  0.020615781 -0.053810235 -0.015216729  0.015419211 -0.053810377 
		-0.021213986  0.0087436372 -0.053810235 -0.025504231  0.0011291722 -0.053810377 -0.027739905  
		-0.0068061347 -0.053810328 -0.02773989  -0.014419849 -0.05381028 -0.025504302  -0.02109585 
		-0.05381028 -0.021214059  -0.02629246 -0.053810377 -0.015216746  -0.029588887 -0.05381028 
		-0.0079983305  -0.030718371 -0.053810328 -0.00014365723  -0.029588981 -0.053810187 
		0.007710964  -0.026292646 -0.053810187 0.014929296  -0.021095943 -0.053810377 0.020926533  
		-0.014420037 -0.053810377 0.025216801  -0.0068059 -0.05381028 0.027452476  0.0011294098 
		-0.053810328 0.027452486  0.0087436847 -0.05381 0.025216863  0.015419117 -0.05381028 
		0.020926671  0.020615781 -0.053810235 0.014929356  0.023912303 -0.053810235 0.0077108787  
		0.02504185 -0.053810142 -0.00014372324  0.023912441 -0.036410291 -0.0079984888  0.020615915 
		-0.036410291 -0.0152169  0.015419117 -0.036410384 -0.021214023  0.0087434025 -0.036410194 
		-0.025504285  0.0011291722 -0.036410291 -0.027740043  -0.0068058502 -0.036410242 
		-0.027740005  -0.014419708 -0.036410335 -0.025504382  -0.021095792 -0.036410242 -0.021214079  
		-0.026292682 -0.036410429 -0.015216813  -0.029589074 -0.036410291 -0.0079983948  
		-0.030718571 -0.036410335 -0.00014375625  -0.029589027 -0.036410242 0.0077108154  
		-0.026292495 -0.036410242 0.014929419  -0.021095943 -0.036410384 0.020926757  -0.014420084 
		-0.036410335 0.02521693  -0.0068060406 -0.036410335 0.027452579  0.0011292191 -0.036410335 
		0.02745262  0.0087438785 -0.036410008 0.025216838  0.015419396 -0.036410194 0.020926552  
		0.020615781 -0.036410149 0.014929419  0.023912348 -0.036410194 0.0077110603  0.025041897 
		-0.036410101 -0.00014369427  0.01850633 -0.033841364 -0.0064111236  0.015875949 -0.033841364 
		-0.012170712  -0.0028383646 -0.033841271 -0.0001437225  0.011729382 -0.033841413 
		-0.016955862  0.0064027798 -0.033841219 -0.0203791  0.00032736061 -0.033841413 -0.022163002  
		-0.0060040858 -0.033841413 -0.022162963  -0.012079266 -0.033841457 -0.020379171  
		-0.017406208 -0.033841413 -0.01695591  -0.02155287 -0.03384155 -0.012170649  -0.02418296 
		-0.033841364 -0.0064110397  -0.025084116 -0.033841413 -0.00014376431  -0.024182912 
		-0.033841316 0.0061234767  -0.021552529 -0.033841316 0.011883258  -0.017406208 -0.033841413 
		0.016668571  -0.012079559 -0.033841364 0.02009172  -0.0060041794 -0.033841316 0.021875564  
		0.00032736061 -0.033841413 0.021875609  0.0064031552 -0.033841122 0.020091655  0.011729669 
		-0.033841316 0.016668374  0.015875855 -0.033841271 0.011883226  0.018506195 -0.033841219 
		0.0061236676  0.019407393 -0.033841219 -0.00014371774 ;
	setAttr -s 156 ".vt[0:155]"  0.6596505 -1.0000011 -0.19369078 0.57836217 
		-1.0000004 -0.37169024 0.45021689 -1.0000004 -0.51957756 0.28559616 -1.0000019 -0.62537187 
		0.09784098 -1.0000004 -0.68050224 -0.09784548 -1.0000049 -0.68050236 -0.28559768 
		-1.0000004 -0.62537223 -0.45021912 -1.0000026 -0.51957816 -0.57836366 -1.0000019 
		-0.37169087 -0.65965277 -1.0000019 -0.19369143 -0.68750083 -1.0000011 -2.4586916e-007 
		-0.65965277 -1.0000019 0.19369096 -0.57836366 -1.0000019 0.37169045 -0.45021912 -1.0000026 
		0.5195778 -0.28559843 -0.99999958 0.62537199 -0.097846232 -1.0000042 0.6805023 0.09784098 
		-1.0000004 0.68050236 0.28559616 -1.0000019 0.62537205 0.45021689 -1.0000004 0.51957792 
		0.57836139 -0.99999958 0.37169063 0.6596505 -1.0000011 0.19369116 0.68749928 -1.0000011 
		0 0.65964675 0.99999583 -0.19369078 0.57836068 0.99999887 -0.37169024 0.45021537 
		0.99999887 -0.51957756 0.28559542 0.9999966 -0.62537187 0.097840227 0.99999809 -0.68050224 
		-0.097841725 0.99999958 -0.68050236 -0.28559917 0.99999887 -0.62537223 -0.45021763 
		0.99999958 -0.51957816 -0.57836217 0.99999887 -0.37169087 -0.65965426 0.99999738 
		-0.19369143 -0.68750232 0.99999809 -2.4586916e-007 -0.65965426 0.99999738 0.19369096 
		-0.57836294 0.99999958 0.37169045 -0.45021763 0.99999958 0.5195778 -0.28559917 0.99999887 
		0.62537199 -0.097841725 0.99999958 0.6805023 0.097839475 0.99999887 0.68050236 0.28559467 
		0.99999738 0.62537205 0.45021537 0.99999887 0.51957792 0.57836068 0.99999887 0.37169063 
		0.65964675 0.99999583 0.19369116 0.68749779 0.99999809 0 -2.252774e-006 -1.0000026 
		0 0.58805436 1.1704745 -0.17266934 0.51558715 1.170473 -0.33135024 0.40135196 1.1704745 
		-0.46318728 0.25460175 1.1704775 -0.55749953 0.087218396 1.1704738 -0.60664636 -0.087222151 
		1.1704775 -0.60664648 -0.25460175 1.1704761 -0.55749959 -0.40135497 1.1704761 -0.46318737 
		-0.5155924 1.1704752 -0.33135077 -0.58806109 1.1704752 -0.17266981 -0.61288893 1.1704745 
		-2.1926414e-007 -0.58805889 1.1704775 0.17266934 -0.51559389 1.1704768 0.33135033 
		-0.40135571 1.1704768 0.46318704 -0.25460175 1.1704761 0.55749935 -0.087221399 1.1704768 
		0.60664636 0.087221399 1.1704768 0.60664642 0.25460175 1.1704775 0.55749959 0.40135121 
		1.1704752 0.46318752 0.51558715 1.170473 0.33135045 0.58805513 1.1704738 0.17266956 
		0.6128844 1.1704775 1.4666497e-008 0.46195084 1.2523426 -0.13564186 0.40502399 1.2523419 
		-0.2602945 0.31528547 1.2523419 -0.36385965 0.20000127 1.252341 -0.43794772 0.068512112 
		1.2523389 -0.47655541 -0.06851887 1.2523426 -0.47655505 -0.20000277 1.2523441 -0.43794742 
		-0.31528923 1.252341 -0.3638598 -0.40502775 1.252341 -0.26029474 -0.46195608 1.2523419 
		-0.13564205 -0.48145759 1.2523433 -7.1205847e-007 -0.46195382 1.2523441 0.13564122 
		-0.40502998 1.2523433 0.26029459 -0.31529075 1.2523426 0.36385974 -0.20000803 1.2523403 
		0.43794739 -0.06851887 1.2523426 0.47655505 0.06851662 1.2523433 0.47655514 0.20000127 
		1.2523426 0.43794751 0.31528473 1.2523426 0.36385974 0.40502399 1.2523419 0.26029453 
		0.46195084 1.2523426 0.13564201 0.48145309 1.2523419 -2.7866344e-008 0.42524713 1.0307462 
		-0.12486247 0.37284011 1.0307447 -0.23961177 0.29023162 1.0307424 -0.33494857 0.18411171 
		1.0307447 -0.40314963 0.063066408 1.0307424 -0.43868953 -0.063079171 1.0307432 -0.43868938 
		-0.18411246 1.030744 -0.4031508 -0.29023913 1.030744 -0.33494988 -0.37284836 1.0307424 
		-0.23961198 -0.42525089 1.030744 -0.12486273 -0.44320625 1.0307432 1.0313739e-006 
		-0.42525238 1.0307455 0.12486396 -0.37285137 1.0307455 0.23961198 -0.29024065 1.0307424 
		0.33494848 -0.18411547 1.0307424 0.40314975 -0.063075416 1.030744 0.43868986 0.063070163 
		1.0307432 0.43868995 0.18411246 1.0307485 0.4031508 0.29023013 1.030744 0.33495077 
		0.37284011 1.0307447 0.23961292 0.42524412 1.0307447 0.12486264 0.44320023 1.0307462 
		-1.5849984e-008 0.42524639 1.3073471 -0.12486524 0.37284234 1.3073471 -0.23961446 
		0.29023013 1.3073455 -0.33494917 0.18410796 1.3073486 -0.40315041 0.063066408 1.3073471 
		-0.43869174 -0.063074671 1.3073478 -0.43869108 -0.18411021 1.3073463 -0.40315196 
		-0.29023838 1.3073478 -0.33495006 -0.37285212 1.3073448 -0.23961319 -0.4252539 1.3073471 
		-0.12486374 -0.44320926 1.3073463 -5.3884605e-007 -0.42525315 1.3073478 0.12486165 
		-0.37284911 1.3073478 0.23961391 -0.29024065 1.3073455 0.33495206 -0.18411621 1.3073463 
		0.40315187 -0.063077673 1.3073463 0.43869141 0.063067161 1.3073463 0.43869212 0.18411547 
		1.3073516 0.40315047 0.29023463 1.3073486 0.3349489 0.37284011 1.3073493 0.23961391 
		0.42524487 1.3073486 0.1248655 0.44320098 1.30735 4.4543128e-007 0.3393068 1.3481846 
		-0.099631302 0.29749233 1.3481846 -0.19119003 -4.5055481e-006 1.3481861 -2.6575837e-009 
		0.2315754 1.3481839 -0.26725835 0.14689964 1.3481869 -0.32167661 0.050320212 1.3481839 
		-0.35003495 -0.050329223 1.3481839 -0.35003433 -0.14690489 1.3481832 -0.32167783 
		-0.23158592 1.3481839 -0.26725906 -0.29750434 1.3481816 -0.19118907 -0.33931431 1.3481846 
		-0.099629983 -0.35363972 1.3481839 -6.695256e-007 -0.33931357 1.3481853 0.099628098 
		-0.29749909 1.3481853 0.19118987 -0.23158592 1.3481839 0.26726076 -0.1469094 1.3481846 
		0.3216778 -0.050330725 1.3481853 0.35003495 0.050320212 1.3481839 0.35003585 0.14690565 
		1.3481884 0.32167673 0.23157991 1.3481853 0.26725769 0.29749081 1.3481861 0.19118935 
		0.33930457 1.3481869 0.099631108 0.35363069 1.3481869 7.2599164e-008;
	setAttr -s 330 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 
		0 3 4 0 4 5 0 5 6 0 6 7 
		0 7 8 0 8 9 0 9 10 0 10 11 
		0 11 12 0 12 13 0 13 14 0 14 15 
		0 15 16 0 16 17 0 17 18 0 18 19 
		0 19 20 0 20 21 0 21 0 0 22 23 
		1 23 24 1 24 25 1 25 26 1 26 27 
		1 27 28 1 28 29 1 29 30 1 30 31 
		1 31 32 1 32 33 1 33 34 1 34 35 
		1 35 36 1 36 37 1 37 38 1 38 39 
		1 39 40 1 40 41 1 41 42 1 42 43 
		1 43 22 1 0 22 1 1 23 1 2 24 
		1 3 25 1 4 26 1 5 27 1 6 28 
		1 7 29 1 8 30 1 9 31 1 10 32 
		1 11 33 1 12 34 1 13 35 1 14 36 
		1 15 37 1 16 38 1 17 39 1 18 40 
		1 19 41 1 20 42 1 21 43 1 44 0 
		1 44 1 1 44 2 1 44 3 1 44 4 
		1 44 5 1 44 6 1 44 7 1 44 8 
		1 44 9 1 44 10 1 44 11 1 44 12 
		1 44 13 1 44 14 1 44 15 1 44 16 
		1 44 17 1 44 18 1 44 19 1 44 20 
		1 44 21 1 22 45 1 23 46 1 45 46 
		0 24 47 1 46 47 0 25 48 1 47 48 
		0 26 49 1 48 49 0 27 50 1 49 50 
		0 28 51 1 50 51 0 29 52 1 51 52 
		0 30 53 1 52 53 0 31 54 1 53 54 
		0 32 55 1 54 55 0 33 56 1 55 56 
		0 34 57 1 56 57 0 35 58 1 57 58 
		0 36 59 1 58 59 0 37 60 1 59 60 
		0 38 61 1 60 61 0 39 62 1 61 62 
		0 40 63 1 62 63 0 41 64 1 63 64 
		0 42 65 1 64 65 0 43 66 1 65 66 
		0 66 45 0 45 67 1 46 68 1 67 68 
		0 47 69 1 68 69 0 48 70 1 69 70 
		0 49 71 1 70 71 0 50 72 1 71 72 
		0 51 73 1 72 73 0 52 74 1 73 74 
		0 53 75 1 74 75 0 54 76 1 75 76 
		0 55 77 1 76 77 0 56 78 1 77 78 
		0 57 79 1 78 79 0 58 80 1 79 80 
		0 59 81 1 80 81 0 60 82 1 81 82 
		0 61 83 1 82 83 0 62 84 1;
	setAttr ".ed[166:329]" 83 84 0 63 85 1 84 85 
		0 64 86 1 85 86 0 65 87 1 86 87 
		0 66 88 1 87 88 0 88 67 0 67 89 
		1 68 90 1 89 90 0 69 91 1 90 91 
		0 70 92 1 91 92 0 71 93 1 92 93 
		0 72 94 1 93 94 0 73 95 1 94 95 
		0 74 96 1 95 96 0 75 97 1 96 97 
		0 76 98 1 97 98 0 77 99 1 98 99 
		0 78 100 1 99 100 0 79 101 1 100 101 
		0 80 102 1 101 102 0 81 103 1 102 103 
		0 82 104 1 103 104 0 83 105 1 104 105 
		0 84 106 1 105 106 0 85 107 1 106 107 
		0 86 108 1 107 108 0 87 109 1 108 109 
		0 88 110 1 109 110 0 110 89 0 89 111 
		1 90 112 1 111 112 0 91 113 1 112 113 
		0 92 114 1 113 114 0 93 115 1 114 115 
		0 94 116 1 115 116 0 95 117 1 116 117 
		0 96 118 1 117 118 0 97 119 1 118 119 
		0 98 120 1 119 120 0 99 121 1 120 121 
		0 100 122 1 121 122 0 101 123 1 122 123 
		0 102 124 1 123 124 0 103 125 1 124 125 
		0 104 126 1 125 126 0 105 127 1 126 127 
		0 106 128 1 127 128 0 107 129 1 128 129 
		0 108 130 1 129 130 0 109 131 1 130 131 
		0 110 132 1 131 132 0 132 111 0 111 133 
		1 112 134 1 133 134 1 134 135 1 133 135 
		1 113 136 1 134 136 1 136 135 1 114 137 
		1 136 137 1 137 135 1 115 138 1 137 138 
		1 138 135 1 116 139 1 138 139 1 139 135 
		1 117 140 1 139 140 1 140 135 1 118 141 
		1 140 141 1 141 135 1 119 142 1 141 142 
		1 142 135 1 120 143 1 142 143 1 143 135 
		1 121 144 1 143 144 1 144 135 1 122 145 
		1 144 145 1 145 135 1 123 146 1 145 146 
		1 146 135 1 124 147 1 146 147 1 147 135 
		1 125 148 1 147 148 1 148 135 1 126 149 
		1 148 149 1 149 135 1 127 150 1 149 150 
		1 150 135 1 128 151 1 150 151 1 151 135 
		1 129 152 1 151 152 1 152 135 1 130 153 
		1 152 153 1 153 135 1 131 154 1 153 154 
		1 154 135 1 132 155 1 154 155 1 155 135 
		1 155 133 1;
	setAttr -s 176 ".fc[0:175]" -type "polyFaces" 
		f 4 0 45 -23 -45 
		mu 0 4 22 23 46 45 
		f 4 1 46 -24 -46 
		mu 0 4 23 24 47 46 
		f 4 2 47 -25 -47 
		mu 0 4 24 25 48 47 
		f 4 3 48 -26 -48 
		mu 0 4 25 26 49 48 
		f 4 4 49 -27 -49 
		mu 0 4 26 27 50 49 
		f 4 5 50 -28 -50 
		mu 0 4 27 28 51 50 
		f 4 6 51 -29 -51 
		mu 0 4 28 29 52 51 
		f 4 7 52 -30 -52 
		mu 0 4 29 30 53 52 
		f 4 8 53 -31 -53 
		mu 0 4 30 31 54 53 
		f 4 9 54 -32 -54 
		mu 0 4 31 32 55 54 
		f 4 10 55 -33 -55 
		mu 0 4 32 33 56 55 
		f 4 11 56 -34 -56 
		mu 0 4 33 34 57 56 
		f 4 12 57 -35 -57 
		mu 0 4 34 35 58 57 
		f 4 13 58 -36 -58 
		mu 0 4 35 36 59 58 
		f 4 14 59 -37 -59 
		mu 0 4 36 37 60 59 
		f 4 15 60 -38 -60 
		mu 0 4 37 38 61 60 
		f 4 16 61 -39 -61 
		mu 0 4 38 39 62 61 
		f 4 17 62 -40 -62 
		mu 0 4 39 40 63 62 
		f 4 18 63 -41 -63 
		mu 0 4 40 41 64 63 
		f 4 19 64 -42 -64 
		mu 0 4 41 42 65 64 
		f 4 20 65 -43 -65 
		mu 0 4 42 43 66 65 
		f 4 21 44 -44 -66 
		mu 0 4 43 44 67 66 
		f 3 -1 -67 67 
		mu 0 3 1 0 90 
		f 3 -2 -68 68 
		mu 0 3 2 1 90 
		f 3 -3 -69 69 
		mu 0 3 3 2 90 
		f 3 -4 -70 70 
		mu 0 3 4 3 90 
		f 3 -5 -71 71 
		mu 0 3 5 4 90 
		f 3 -6 -72 72 
		mu 0 3 6 5 90 
		f 3 -7 -73 73 
		mu 0 3 7 6 90 
		f 3 -8 -74 74 
		mu 0 3 8 7 90 
		f 3 -9 -75 75 
		mu 0 3 9 8 90 
		f 3 -10 -76 76 
		mu 0 3 10 9 90 
		f 3 -11 -77 77 
		mu 0 3 11 10 90 
		f 3 -12 -78 78 
		mu 0 3 12 11 90 
		f 3 -13 -79 79 
		mu 0 3 13 12 90 
		f 3 -14 -80 80 
		mu 0 3 14 13 90 
		f 3 -15 -81 81 
		mu 0 3 15 14 90 
		f 3 -16 -82 82 
		mu 0 3 16 15 90 
		f 3 -17 -83 83 
		mu 0 3 17 16 90 
		f 3 -18 -84 84 
		mu 0 3 18 17 90 
		f 3 -19 -85 85 
		mu 0 3 19 18 90 
		f 3 -20 -86 86 
		mu 0 3 20 19 90 
		f 3 -21 -87 87 
		mu 0 3 21 20 90 
		f 3 -22 -88 66 
		mu 0 3 0 21 90 
		f 3 266 267 -269 
		mu 0 3 180 181 91 
		f 3 270 271 -268 
		mu 0 3 181 182 91 
		f 3 273 274 -272 
		mu 0 3 182 183 91 
		f 3 276 277 -275 
		mu 0 3 183 184 91 
		f 3 279 280 -278 
		mu 0 3 184 185 91 
		f 3 282 283 -281 
		mu 0 3 185 186 91 
		f 3 285 286 -284 
		mu 0 3 186 187 91 
		f 3 288 289 -287 
		mu 0 3 187 188 91 
		f 3 291 292 -290 
		mu 0 3 188 189 91 
		f 3 294 295 -293 
		mu 0 3 189 190 91 
		f 3 297 298 -296 
		mu 0 3 190 191 91 
		f 3 300 301 -299 
		mu 0 3 191 192 91 
		f 3 303 304 -302 
		mu 0 3 192 193 91 
		f 3 306 307 -305 
		mu 0 3 193 194 91 
		f 3 309 310 -308 
		mu 0 3 194 195 91 
		f 3 312 313 -311 
		mu 0 3 195 196 91 
		f 3 315 316 -314 
		mu 0 3 196 197 91 
		f 3 318 319 -317 
		mu 0 3 197 198 91 
		f 3 321 322 -320 
		mu 0 3 198 199 91 
		f 3 324 325 -323 
		mu 0 3 199 200 91 
		f 3 327 328 -326 
		mu 0 3 200 201 91 
		f 3 329 268 -329 
		mu 0 3 201 180 91 
		f 4 22 89 -91 -89 
		mu 0 4 88 87 93 92 
		f 4 23 91 -93 -90 
		mu 0 4 87 86 94 93 
		f 4 24 93 -95 -92 
		mu 0 4 86 85 95 94 
		f 4 25 95 -97 -94 
		mu 0 4 85 84 96 95 
		f 4 26 97 -99 -96 
		mu 0 4 84 83 97 96 
		f 4 27 99 -101 -98 
		mu 0 4 83 82 98 97 
		f 4 28 101 -103 -100 
		mu 0 4 82 81 99 98 
		f 4 29 103 -105 -102 
		mu 0 4 81 80 100 99 
		f 4 30 105 -107 -104 
		mu 0 4 80 79 101 100 
		f 4 31 107 -109 -106 
		mu 0 4 79 78 102 101 
		f 4 32 109 -111 -108 
		mu 0 4 78 77 103 102 
		f 4 33 111 -113 -110 
		mu 0 4 77 76 104 103 
		f 4 34 113 -115 -112 
		mu 0 4 76 75 105 104 
		f 4 35 115 -117 -114 
		mu 0 4 75 74 106 105 
		f 4 36 117 -119 -116 
		mu 0 4 74 73 107 106 
		f 4 37 119 -121 -118 
		mu 0 4 73 72 108 107 
		f 4 38 121 -123 -120 
		mu 0 4 72 71 109 108 
		f 4 39 123 -125 -122 
		mu 0 4 71 70 110 109 
		f 4 40 125 -127 -124 
		mu 0 4 70 69 111 110 
		f 4 41 127 -129 -126 
		mu 0 4 69 68 112 111 
		f 4 42 129 -131 -128 
		mu 0 4 68 89 113 112 
		f 4 43 88 -132 -130 
		mu 0 4 89 88 92 113 
		f 4 90 133 -135 -133 
		mu 0 4 92 93 115 114 
		f 4 92 135 -137 -134 
		mu 0 4 93 94 116 115 
		f 4 94 137 -139 -136 
		mu 0 4 94 95 117 116 
		f 4 96 139 -141 -138 
		mu 0 4 95 96 118 117 
		f 4 98 141 -143 -140 
		mu 0 4 96 97 119 118 
		f 4 100 143 -145 -142 
		mu 0 4 97 98 120 119 
		f 4 102 145 -147 -144 
		mu 0 4 98 99 121 120 
		f 4 104 147 -149 -146 
		mu 0 4 99 100 122 121 
		f 4 106 149 -151 -148 
		mu 0 4 100 101 123 122 
		f 4 108 151 -153 -150 
		mu 0 4 101 102 124 123 
		f 4 110 153 -155 -152 
		mu 0 4 102 103 125 124 
		f 4 112 155 -157 -154 
		mu 0 4 103 104 126 125 
		f 4 114 157 -159 -156 
		mu 0 4 104 105 127 126 
		f 4 116 159 -161 -158 
		mu 0 4 105 106 128 127 
		f 4 118 161 -163 -160 
		mu 0 4 106 107 129 128 
		f 4 120 163 -165 -162 
		mu 0 4 107 108 130 129 
		f 4 122 165 -167 -164 
		mu 0 4 108 109 131 130 
		f 4 124 167 -169 -166 
		mu 0 4 109 110 132 131 
		f 4 126 169 -171 -168 
		mu 0 4 110 111 133 132 
		f 4 128 171 -173 -170 
		mu 0 4 111 112 134 133 
		f 4 130 173 -175 -172 
		mu 0 4 112 113 135 134 
		f 4 131 132 -176 -174 
		mu 0 4 113 92 114 135 
		f 4 134 177 -179 -177 
		mu 0 4 114 115 137 136 
		f 4 136 179 -181 -178 
		mu 0 4 115 116 138 137 
		f 4 138 181 -183 -180 
		mu 0 4 116 117 139 138 
		f 4 140 183 -185 -182 
		mu 0 4 117 118 140 139 
		f 4 142 185 -187 -184 
		mu 0 4 118 119 141 140 
		f 4 144 187 -189 -186 
		mu 0 4 119 120 142 141 
		f 4 146 189 -191 -188 
		mu 0 4 120 121 143 142 
		f 4 148 191 -193 -190 
		mu 0 4 121 122 144 143 
		f 4 150 193 -195 -192 
		mu 0 4 122 123 145 144 
		f 4 152 195 -197 -194 
		mu 0 4 123 124 146 145 
		f 4 154 197 -199 -196 
		mu 0 4 124 125 147 146 
		f 4 156 199 -201 -198 
		mu 0 4 125 126 148 147 
		f 4 158 201 -203 -200 
		mu 0 4 126 127 149 148 
		f 4 160 203 -205 -202 
		mu 0 4 127 128 150 149 
		f 4 162 205 -207 -204 
		mu 0 4 128 129 151 150 
		f 4 164 207 -209 -206 
		mu 0 4 129 130 152 151 
		f 4 166 209 -211 -208 
		mu 0 4 130 131 153 152 
		f 4 168 211 -213 -210 
		mu 0 4 131 132 154 153 
		f 4 170 213 -215 -212 
		mu 0 4 132 133 155 154 
		f 4 172 215 -217 -214 
		mu 0 4 133 134 156 155 
		f 4 174 217 -219 -216 
		mu 0 4 134 135 157 156 
		f 4 175 176 -220 -218 
		mu 0 4 135 114 136 157 
		f 4 178 221 -223 -221 
		mu 0 4 136 137 159 158 
		f 4 180 223 -225 -222 
		mu 0 4 137 138 160 159 
		f 4 182 225 -227 -224 
		mu 0 4 138 139 161 160 
		f 4 184 227 -229 -226 
		mu 0 4 139 140 162 161 
		f 4 186 229 -231 -228 
		mu 0 4 140 141 163 162 
		f 4 188 231 -233 -230 
		mu 0 4 141 142 164 163 
		f 4 190 233 -235 -232 
		mu 0 4 142 143 165 164 
		f 4 192 235 -237 -234 
		mu 0 4 143 144 166 165 
		f 4 194 237 -239 -236 
		mu 0 4 144 145 167 166 
		f 4 196 239 -241 -238 
		mu 0 4 145 146 168 167 
		f 4 198 241 -243 -240 
		mu 0 4 146 147 169 168 
		f 4 200 243 -245 -242 
		mu 0 4 147 148 170 169 
		f 4 202 245 -247 -244 
		mu 0 4 148 149 171 170 
		f 4 204 247 -249 -246 
		mu 0 4 149 150 172 171 
		f 4 206 249 -251 -248 
		mu 0 4 150 151 173 172 
		f 4 208 251 -253 -250 
		mu 0 4 151 152 174 173 
		f 4 210 253 -255 -252 
		mu 0 4 152 153 175 174 
		f 4 212 255 -257 -254 
		mu 0 4 153 154 176 175 
		f 4 214 257 -259 -256 
		mu 0 4 154 155 177 176 
		f 4 216 259 -261 -258 
		mu 0 4 155 156 178 177 
		f 4 218 261 -263 -260 
		mu 0 4 156 157 179 178 
		f 4 219 220 -264 -262 
		mu 0 4 157 136 158 179 
		f 4 222 265 -267 -265 
		mu 0 4 158 159 181 180 
		f 4 224 269 -271 -266 
		mu 0 4 159 160 182 181 
		f 4 226 272 -274 -270 
		mu 0 4 160 161 183 182 
		f 4 228 275 -277 -273 
		mu 0 4 161 162 184 183 
		f 4 230 278 -280 -276 
		mu 0 4 162 163 185 184 
		f 4 232 281 -283 -279 
		mu 0 4 163 164 186 185 
		f 4 234 284 -286 -282 
		mu 0 4 164 165 187 186 
		f 4 236 287 -289 -285 
		mu 0 4 165 166 188 187 
		f 4 238 290 -292 -288 
		mu 0 4 166 167 189 188 
		f 4 240 293 -295 -291 
		mu 0 4 167 168 190 189 
		f 4 242 296 -298 -294 
		mu 0 4 168 169 191 190 
		f 4 244 299 -301 -297 
		mu 0 4 169 170 192 191 
		f 4 246 302 -304 -300 
		mu 0 4 170 171 193 192 
		f 4 248 305 -307 -303 
		mu 0 4 171 172 194 193 
		f 4 250 308 -310 -306 
		mu 0 4 172 173 195 194 
		f 4 252 311 -313 -309 
		mu 0 4 173 174 196 195 
		f 4 254 314 -316 -312 
		mu 0 4 174 175 197 196 
		f 4 256 317 -319 -315 
		mu 0 4 175 176 198 197 
		f 4 258 320 -322 -318 
		mu 0 4 176 177 199 198 
		f 4 260 323 -325 -321 
		mu 0 4 177 178 200 199 
		f 4 262 326 -328 -324 
		mu 0 4 178 179 201 200 
		f 4 263 264 -330 -327 
		mu 0 4 179 158 180 201 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
createNode transform -n "locator1";
	setAttr ".t" -type "double3" -4.2010409461653939 23.078035879738049 -7.1122111863174533 ;
createNode locator -n "locatorShape1" -p "locator1";
	setAttr -k off ".v";
createNode transform -n "locator2";
	setAttr ".t" -type "double3" -4.2010409461653939 0.051326791038880104 -7.1122111863174533 ;
createNode locator -n "locatorShape2" -p "locator2";
	setAttr -k off ".v";
createNode transform -n "distanceDimension1";
	setAttr ".t" -type "double3" 0 -4.5302918068869555 0 ;
createNode distanceDimShape -n "distanceDimensionShape1" -p "distanceDimension1";
	setAttr -k off ".v";
createNode transform -n "locator3";
	setAttr ".t" -type "double3" -3.7846521220972775 -2.9356524415266061 -14.122948225517563 ;
createNode transform -n "locator4";
	setAttr ".t" -type "double3" 1.108285037697345 12.503298650543432 -5.5259669344406328 ;
createNode locator -n "locatorShape3" -p "locator4";
	setAttr -k off ".v";
createNode transform -n "locator5";
	setAttr ".t" -type "double3" 1.1082865395466621 12.506139267974564 -7.115801056090957 ;
createNode locator -n "locatorShape4" -p "locator5";
	setAttr -k off ".v";
createNode transform -n "distanceDimension2";
	setAttr ".t" -type "double3" 0 -4.5302918068869555 0 ;
createNode distanceDimShape -n "distanceDimensionShape2" -p "distanceDimension2";
	setAttr -k off ".v";
createNode transform -n "locator6";
	setAttr ".t" -type "double3" 2.7707778884118723 0 -3.8757524230560367 ;
createNode locator -n "locatorShape5" -p "locator6";
	setAttr -k off ".v";
createNode transform -n "locator7";
	setAttr ".t" -type "double3" 2.7912413809086836 0 3.879911233235541 ;
createNode locator -n "locatorShape6" -p "locator7";
	setAttr -k off ".v";
createNode transform -n "distanceDimension3";
createNode distanceDimShape -n "distanceDimensionShape3" -p "distanceDimension3";
	setAttr -k off ".v";
createNode transform -n "locator8";
	setAttr ".t" -type "double3" 7.0852964479304807 1.8692793077382819 3.879911233235541 ;
createNode locator -n "locatorShape7" -p "locator8";
	setAttr -k off ".v";
createNode transform -n "locator9";
	setAttr ".t" -type "double3" 7.0941357859912486 -0.004660361144264962 3.879911233235541 ;
createNode locator -n "locatorShape8" -p "locator9";
	setAttr -k off ".v";
createNode transform -n "distanceDimension4";
createNode distanceDimShape -n "distanceDimensionShape4" -p "distanceDimension4";
	setAttr -k off ".v";
createNode transform -n "locator10";
	setAttr ".t" -type "double3" 0.013767382094454498 21.955304151287592 7.1614607473781184 ;
createNode locator -n "locatorShape9" -p "locator10";
	setAttr -k off ".v";
createNode transform -n "locator11";
	setAttr ".t" -type "double3" 0.013767382094454498 21.989594036748461 -7.1031316043486825 ;
createNode locator -n "locatorShape10" -p "locator11";
	setAttr -k off ".v";
createNode transform -n "distanceDimension5";
createNode distanceDimShape -n "distanceDimensionShape5" -p "distanceDimension5";
	setAttr -k off ".v";
createNode transform -n "locator12";
	setAttr ".t" -type "double3" 1.157885343049323 23.050820401747718 4.0101034991471893 ;
createNode locator -n "locatorShape11" -p "locator12";
	setAttr -k off ".v";
createNode transform -n "locator13";
	setAttr ".t" -type "double3" 1.157885343049323 20.506135420706322 4.0101034991471893 ;
createNode locator -n "locatorShape12" -p "locator13";
	setAttr -k off ".v";
createNode transform -n "distanceDimension6";
createNode distanceDimShape -n "distanceDimensionShape6" -p "distanceDimension6";
	setAttr -k off ".v";
createNode transform -n "locator14";
	setAttr ".t" -type "double3" -4.2245555869430333 9.9775614567418831 7.1377447886349676 ;
createNode locator -n "locatorShape13" -p "locator14";
	setAttr -k off ".v";
createNode transform -n "locator15";
	setAttr ".t" -type "double3" 1.1084978236318235 9.9775614567418778 7.1377447886349676 ;
createNode locator -n "locatorShape14" -p "locator15";
	setAttr -k off ".v";
createNode transform -n "distanceDimension7";
createNode distanceDimShape -n "distanceDimensionShape7" -p "distanceDimension7";
	setAttr -k off ".v";
parent -s -nc -r -add "|pCube4|pCubeShape4" "transform5";
parent -s -nc -r -add "|pCube4|polySurfaceShape1" "pCube9";
parent -s -nc -r -add "|pCube4|pCubeShape4Orig" "pCube9";
createNode lightLinker -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 4;
	setAttr -s 5 ".dli[1:4]"  1 2 3 4;
	setAttr -s 5 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nRigids 1\n                -dynamicConstraints 1\n"
		+ "                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n"
		+ "            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n"
		+ "                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -displayTextures 0\n                -smoothWireframe 0\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n"
		+ "            -follicles 1\n            -nCloths 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -autoExpand 0\n                -showDagOnly 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n"
		+ "                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -autoExpand 0\n            -showDagOnly 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -editAttrName 0\n            -showAttrValues 0\n"
		+ "            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 1\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 1\n"
		+ "                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n"
		+ "                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 1\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n"
		+ "                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 0\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 0\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -zoom 1\n                -animateTransition 0\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -zoom 1\n                -animateTransition 0\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"multiListerPanel\" (localizedPanelLabel(\"Multilister\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"multiListerPanel\" -l (localizedPanelLabel(\"Multilister\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Multilister\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"devicePanel\" (localizedPanelLabel(\"Devices\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tdevicePanel -unParent -l (localizedPanelLabel(\"Devices\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tdevicePanel -edit -l (localizedPanelLabel(\"Devices\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n"
		+ "\t\t\t\t\t\"modelPanel\"\n\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 0.99999999999999989 -size 99.999999999999986 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube1";
	setAttr ".ax" -type "double3" 0 0.99999999999999989 0 ;
	setAttr ".w" 0.99999999999999989;
	setAttr ".h" 0.99999999999999989;
	setAttr ".d" 0.99999999999999989;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 20.75 0 0 0 0 13 0 0 42.260930329726563 -6.2172489379008766e-015 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.5 16.638161 -2.6645353e-015 ;
	setAttr ".rs" 47163;
	setAttr ".ls" -type "double3" 0.85037037360776813 0.89703815538892151 0.93333333300366339 ;
	setAttr ".c[0]"  0 1 1;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 20.75 0 0 0 0 13 0 0 42.260930329726563 1.2424129537771584 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.50000006 16.638159 0.48913896 ;
	setAttr ".rs" 54661;
	setAttr ".lt" -type "double3" 3.9921828426176149e-017 3.334596494010985e-015 -0.21390885577749899 ;
	setAttr ".c[0]"  0 1 1;
createNode polyUnite -n "polyUnite1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:13]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode polyCube -n "polyCube2";
	setAttr ".ax" -type "double3" 0 0.99999999999999989 0 ;
	setAttr ".w" 0.99999999999999989;
	setAttr ".h" 0.99999999999999989;
	setAttr ".d" 0.99999999999999989;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -1.2424125671386719 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.5 16.638159 0 ;
	setAttr ".rs" 46583;
	setAttr ".ls" -type "double3" 0.93333333337042523 0.96504005035154483 0.93333333337042523 ;
	setAttr ".c[0]"  0 1 1;
createNode polyCube -n "polyCube4";
	setAttr ".ax" -type "double3" 0 0.99999999999999989 0 ;
	setAttr ".w" 0.99999999999999989;
	setAttr ".h" 0.99999999999999989;
	setAttr ".d" 0.99999999999999989;
	setAttr ".cuv" 4;
createNode polySmoothFace -n "polySmoothFace1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
createNode polySmoothFace -n "polySmoothFace2";
	setAttr ".ics" -type "componentList" 1 "f[0:23]";
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
createNode polySmoothFace -n "polySmoothFace3";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode lambert -n "lambert2";
	setAttr ".it" -type "float3" 0.75 0.75 0.75 ;
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode displayLayer -n "pCube5ProxyMesh";
	setAttr ".do" 1;
createNode displayLayer -n "pCube5SmoothMesh";
	setAttr ".do" 2;
createNode ffd -n "ffd1";
	setAttr ".lo" yes;
createNode tweak -n "tweak1";
	setAttr -s 386 ".vl[0].vt";
	setAttr ".vl[0].vt[0:165]" -type "float3"  -0.0063498416 -0.020743135 0.017977389 
		0.0063498416 -0.020743135 0.017977389 -0.0063498416 0.020743135 0.017977389 0.0063498416 
		0.020743135 0.017977389 -0.0063498416 0.020743135 -0.017977389 0.0063498416 0.020743135 
		-0.017977389 -0.0063498416 -0.020743135 -0.017977389 0.0063498416 -0.020743135 -0.017977389 
		9.3780523e-020 1.8015916e-016 0.030865626 -1.8706975e-011 -0.025716903 0.022287989 
		0.0078723989 -6.1110228e-011 0.022287989 9.3780523e-020 0.025716903 0.022287989 -0.0078723989 
		1.8015916e-016 0.022287989 9.3780523e-020 0.035614178 0 0.0078723989 0.025716908 
		5.2962364e-011 9.3780523e-020 0.025716908 -0.022287987 -0.0078723989 0.025716908 
		0 9.3780523e-020 1.8015916e-016 -0.030865626 0.0078723989 6.1110589e-011 -0.022287989 
		9.3780523e-020 -0.025716903 -0.022287989 -0.0078723989 1.8015916e-016 -0.022287989 
		9.3780523e-020 -0.035614178 0 0.0078723989 -0.025716908 -5.2962364e-011 -0.0078723989 
		-0.025716908 0 0.01090213 1.8015916e-016 0 -0.01090213 1.8015916e-016 0 -0.0039147148 
		-0.012788268 0.026974147 -0.0073785563 -0.012014467 0.020889841 -0.0036778406 -0.02410366 
		0.020889843 -9.3534876e-012 -0.013703824 0.028824765 -0.0041949828 1.8015916e-016 
		0.028824765 -0.0039147148 0.031124011 0.011083167 -0.0073785563 0.02410366 0.01041254 
		-0.0036778406 0.02410366 0.020889843 9.3780523e-020 0.03325934 0.011876652 -0.0041949828 
		0.03325934 0 -0.0039147148 0.012788268 -0.026974147 -0.0073785563 0.012014467 -0.020889841 
		-0.0036778406 0.02410366 -0.020889843 9.3780523e-020 0.013703828 -0.028824765 -0.0041949828 
		1.8015916e-016 -0.028824765 -0.0039147148 -0.031124011 -0.011083167 -0.0073785563 
		-0.02410366 -0.01041254 -0.0036778406 -0.02410366 -0.020889843 9.3780523e-020 -0.03325934 
		-0.011876652 -0.0041949828 -0.03325934 0 0.0095276106 -0.012788268 0.011083167 0.0073785563 
		-0.012014467 0.020889843 0.0073785563 -0.02410366 0.01041254 0.010181271 -0.013703828 
		-2.6481182e-011 0.010181271 -3.055502e-011 0.011876652 -0.0095276106 -0.012788268 
		-0.011083167 -0.0073785563 -0.012014467 -0.020889843 -0.010181271 -0.013703828 0 
		-0.010181271 1.8015916e-016 -0.011876652 0.0039147148 -0.012788268 0.026974147 0.0036778406 
		-0.02410366 0.020889843 0.0041949828 -3.055502e-011 0.028824765 0.0039147148 0.012788268 
		0.026974147 0.0073785563 0.012014467 0.020889843 0.0036778406 0.02410366 0.020889843 
		9.3780523e-020 0.013703825 0.028824765 -0.0039147148 0.012788268 0.026974147 -0.0073785563 
		0.012014467 0.020889843 0.0039147148 0.031124009 0.011083167 0.0073785563 0.02410366 
		0.01041254 0.0041949828 0.03325934 2.6481182e-011 0.0039147148 0.031124009 -0.011083167 
		0.0073785563 0.02410366 -0.01041254 0.0036778406 0.02410366 -0.020889843 9.3780523e-020 
		0.03325934 -0.01187665 -0.0039147148 0.031124009 -0.011083167 -0.0073785563 0.02410366 
		-0.01041254 0.0039147148 0.012788268 -0.026974147 0.0073785563 0.012014467 -0.020889843 
		0.0041949828 3.0555388e-011 -0.028824765 0.0039147148 -0.012788268 -0.026974147 0.0073785563 
		-0.012014467 -0.020889843 0.0036778406 -0.02410366 -0.020889843 9.3780523e-020 -0.013703825 
		-0.028824765 -0.0039147148 -0.012788268 -0.026974147 0.0039147148 -0.031124009 -0.011083167 
		0.0073785563 -0.02410366 -0.01041254 0.0041949828 -0.03325934 -2.6481182e-011 0.0039147148 
		-0.031124009 0.011083167 -9.3534876e-012 -0.03325934 0.011876652 -0.0039147148 -0.031124009 
		0.011083167 -0.0073785563 -0.02410366 0.01041254 0.0095276106 -0.012788268 -0.011083167 
		0.010181271 3.0555388e-011 -0.011876652 0.0095276106 0.012788268 -0.011083167 0.010181271 
		0.013703828 2.6481182e-011 0.0095276106 0.012788268 0.011083167 -0.0095276106 -0.012788268 
		0.011083167 -0.010181271 1.8015916e-016 0.011876652 -0.0095276106 0.012788268 0.011083167 
		-0.010181271 0.013703828 0 -0.0095276106 0.012788268 -0.011083167 -0.0060167569 -0.0062281531 
		0.025723446 -0.0061495914 1.8015916e-016 0.026123317 -0.0077326274 -0.0061732396 
		0.021892272 -0.0057362393 -0.012210722 0.024540724 -0.0040906812 -0.0064408486 0.028392091 
		-0.0060167569 0.029680895 0.0053977338 -0.0061495914 0.030142287 0 -0.0077326274 
		0.025260307 0.0053501423 -0.0057362393 0.028316217 0.010582628 -0.0040906812 0.032760099 
		0.00558207 -0.0060167569 0.0062281531 -0.025723446 -0.0061495914 1.8015916e-016 -0.026123317 
		-0.0077326274 0.0061732396 -0.021892272 -0.0057362393 0.012210722 -0.024540724 -0.0040906812 
		0.0064408486 -0.028392091 -0.0060167569 -0.029680895 -0.0053977338 -0.0061495914 
		-0.030142287 0 -0.0077326274 -0.025260307 -0.0053501423 -0.0057362393 -0.028316217 
		-0.010582628 -0.0040906812 -0.032760099 -0.00558207 0.0090858471 -0.0062281531 0.017034376 
		0.0092270849 -1.2222064e-010 0.017410452 0.0077326274 -0.0061732396 0.021892272 0.0086680949 
		-0.012210722 0.016240193 0.010028445 -0.0064408486 0.011581354 -0.0090858471 -0.0062281531 
		-0.017034376 -0.0092270849 1.8015916e-016 -0.017410452 -0.0077326274 -0.0061732396 
		-0.021892272 -0.0086680949 -0.012210722 -0.016240191 -0.010028445 -0.0064408486 -0.011581354 
		0.0019065478 -0.01965504 0.025723446 -3.741395e-011 -0.020088978 0.026123323 0.0018897378 
		-0.025260307 0.021892272 0.0037379181 -0.018738678 0.024540724 0.0019716574 -0.013363099 
		0.028392091 0.0060167559 0.0062281531 0.025723446 0.0061495914 -1.2222064e-010 0.026123323 
		0.0077326274 0.0061732396 0.021892272 0.0057362393 0.012210722 0.024540724 0.0040906812 
		0.0064408486 0.028392091 -0.0019065482 0.019655045 0.025723446 9.3780523e-020 0.020088978 
		0.026123317 -0.001889738 0.025260307 0.021892272 -0.0037379181 0.01873868 0.024540724 
		-0.0019716579 0.013363099 0.028392091 0.0019065478 0.029680895 0.017034376 9.3780523e-020 
		0.030142287 0.017410452 0.001889738 0.025260307 0.021892272 0.0037379181 0.028316213 
		0.016240191 0.0019716574 0.032760099 0.011581354 0.0060167559 0.029680895 -0.0053977338 
		0.0061495914 0.030142287 1.0592473e-010 0.0077326274 0.025260307 -0.0053501418 0.0057362393 
		0.028316213 -0.010582628 0.0040906812 0.032760099 -0.0055820695 -0.0019065482 0.029680895 
		-0.017034376 9.3780523e-020 0.030142287 -0.017410452 -0.001889738 0.025260307 -0.021892272 
		-0.0037379181 0.028316213 -0.016240193 -0.0019716579 0.032760099 -0.011581354 0.0019065478 
		0.019655045 -0.025723446 9.3780523e-020 0.020088978 -0.026123323 0.001889738 0.025260307 
		-0.021892272 0.0037379181 0.018738678 -0.024540724 0.0019716574 0.013363099 -0.028392091 
		0.0060167559 -0.0062281531 -0.025723446 0.0061495914 1.22221e-010 -0.026123323 0.0077326274 
		-0.0061732396 -0.021892272;
	setAttr ".vl[0].vt[166:331]" 0.0057362393 -0.012210722 -0.024540724 0.0040906812 
		-0.0064408486 -0.028392091 -0.0019065482 -0.019655045 -0.025723446 9.3780523e-020 
		-0.020088978 -0.026123317 -0.001889738 -0.025260307 -0.021892272 -0.0037379181 -0.01873868 
		-0.024540724 -0.0019716579 -0.013363099 -0.028392091 0.0019065478 -0.029680895 -0.017034376 
		9.3780523e-020 -0.030142287 -0.017410452 0.001889738 -0.025260307 -0.021892272 0.0037379181 
		-0.028316213 -0.016240191 0.0019716574 -0.032760099 -0.011581354 0.0060167559 -0.029680895 
		0.0053977338 0.0061495914 -0.030142287 -1.0592473e-010 0.0077326274 -0.025260307 
		0.0053501418 0.0057362393 -0.028316213 0.010582628 0.0040906812 -0.032760099 0.0055820695 
		-0.0019065482 -0.029680895 0.017034376 -3.741395e-011 -0.030142287 0.017410452 -0.001889738 
		-0.025260307 0.021892272 -0.0037379181 -0.028316213 0.016240193 -0.0019716579 -0.032760099 
		0.011581354 0.0090858471 -0.019655045 -0.0053977338 0.0092270849 -0.020088978 -1.0592473e-010 
		0.0077326274 -0.025260307 -0.0053501423 0.0086680949 -0.01873868 -0.010582628 0.010028445 
		-0.013363099 -0.00558207 0.0090858471 0.0062281531 -0.017034376 0.0092270849 1.22221e-010 
		-0.017410452 0.0077326274 0.0061732396 -0.021892272 0.0086680949 0.012210722 -0.016240193 
		0.010028445 0.0064408486 -0.011581354 0.0090858471 0.019655045 0.0053977338 0.0092270849 
		0.020088978 1.0592473e-010 0.0077326274 0.025260307 0.0053501423 0.0086680949 0.01873868 
		0.010582628 0.010028445 0.013363099 0.00558207 -0.0090858471 -0.019655045 0.0053977338 
		-0.0092270849 -0.020088978 0 -0.0077326274 -0.025260307 0.0053501423 -0.0086680949 
		-0.018738678 0.010582628 -0.010028445 -0.013363099 0.0055820695 -0.0090858471 0.0062281531 
		0.017034376 -0.0092270849 1.8015916e-016 0.017410452 -0.0077326274 0.0061732396 0.021892272 
		-0.0086680949 0.012210722 0.016240191 -0.010028445 0.0064408486 0.011581354 -0.0090858471 
		0.019655045 -0.0053977338 -0.0092270849 0.020088978 0 -0.0077326274 0.025260307 -0.0053501423 
		-0.0086680949 0.018738678 -0.010582628 -0.010028445 0.013363099 -0.0055820695 -0.0053505846 
		-0.017478844 0.02277031 -0.0068723136 -0.017080028 0.019456588 -0.0052284976 -0.022449905 
		0.01945659 -0.0037379181 -0.018738678 0.024540726 -0.0019065482 -0.019655045 0.025723446 
		-0.0019716579 -0.013363099 0.028392091 -0.0020313996 -0.0066360091 0.029940668 9.3780523e-020 
		-0.0068835337 0.030389789 -0.0021071716 1.8015916e-016 0.030389789 -0.0053505846 
		0.026273431 0.015148336 -0.0068723136 0.022449907 0.014802693 -0.0052284976 0.022449907 
		0.019456588 -0.0037379181 0.028316217 0.016240191 -0.0019065478 0.029680895 0.017034376 
		-0.0019716579 0.032760099 0.011581354 -0.0020313996 0.034546915 0.0057512089 9.3780523e-020 
		0.035065133 0.0059657302 -0.0021071716 0.035065133 0 -0.0053505846 0.017478844 -0.02277031 
		-0.0068723136 0.017080028 -0.019456588 -0.0052284976 0.022449905 -0.01945659 -0.0037379181 
		0.018738678 -0.024540726 -0.0019065478 0.019655045 -0.025723446 -0.0019716579 0.013363099 
		-0.028392091 -0.0020313996 0.0066360091 -0.029940668 9.3780523e-020 0.0068835337 
		-0.030389789 -0.0021071716 1.8015916e-016 -0.030389789 -0.0053505846 -0.026273431 
		-0.015148336 -0.0068723136 -0.022449907 -0.014802693 -0.0052284976 -0.022449907 -0.019456588 
		-0.0037379181 -0.028316217 -0.016240191 -0.0019065478 -0.029680895 -0.017034376 -0.0019716579 
		-0.032760099 -0.011581354 -0.0020313996 -0.034546915 -0.0057512089 9.3780523e-020 
		-0.035065133 -0.0059657302 -0.0021071716 -0.035065133 0 0.0080427611 -0.017478852 
		0.01514834 0.0068723131 -0.017080029 0.01945659 0.0068723131 -0.022449907 0.014802694 
		0.0086680949 -0.018738678 0.010582628 0.0090858471 -0.019655045 0.0053977338 0.010028445 
		-0.013363099 0.00558207 0.010575423 -0.0066360091 0.0057512089 0.010734057 -0.0068835337 
		0 0.010734057 1.8015916e-016 0.0059657302 -0.0080427611 -0.017478846 -0.015148337 
		-0.0068723136 -0.017080029 -0.019456588 -0.0086680949 -0.018738678 -0.010582628 -0.0090858471 
		-0.019655045 -0.0053977338 -0.010028445 -0.013363099 -0.00558207 -0.010575423 -0.0066360091 
		-0.0057512089 -0.010734057 -0.0068835337 0 -0.010734057 1.8015916e-016 -0.0059657302 
		0.0053505846 -0.017478846 0.02277031 0.0052284976 -0.022449905 0.01945659 0.0057362393 
		-0.012210722 0.024540726 0.0060167569 -0.0062281531 0.025723446 0.0040906812 -0.0064408486 
		0.028392091 0.0020313996 -0.0066360091 0.029940668 0.0021071716 1.8015916e-016 0.030389789 
		0.0053505846 0.017478846 0.02277031 0.0068723131 0.017080029 0.01945659 0.0052284976 
		0.022449907 0.019456588 0.0037379181 0.018738678 0.024540724 0.0019065482 0.019655045 
		0.025723446 0.0019716579 0.013363099 0.028392091 0.0020313996 0.0066360091 0.029940668 
		9.3780523e-020 0.0068835337 0.030389789 -0.0053505851 0.017478852 0.02277031 -0.0068723136 
		0.017080029 0.019456588 -0.0057362393 0.012210722 0.024540724 -0.0060167569 0.0062281531 
		0.025723446 -0.0040906812 0.0064408486 0.028392091 -0.0020313996 0.0066360091 0.029940668 
		0.0053505846 0.026273431 0.015148337 0.0068723131 0.022449907 0.014802694 0.0057362393 
		0.028316217 0.010582628 0.0060167569 0.029680895 0.0053977338 0.0040906812 0.032760099 
		0.00558207 0.0020313996 0.034546915 0.0057512089 0.0021071716 0.035065133 0 0.0053505846 
		0.026273428 -0.015148337 0.0068723131 0.022449907 -0.014802694 0.0052284976 0.022449905 
		-0.01945659 0.0037379181 0.028316213 -0.016240191 0.0019065482 0.029680895 -0.017034376 
		0.0019716579 0.032760099 -0.011581354 0.0020313996 0.034546915 -0.0057512089 9.3780523e-020 
		0.035065133 -0.0059657302 -0.0053505851 0.026273428 -0.01514834 -0.0068723136 0.022449905 
		-0.014802694 -0.0057362393 0.028316217 -0.010582628 -0.0060167569 0.029680895 -0.0053977338 
		-0.0040906812 0.032760099 -0.00558207 -0.0020313996 0.034546915 -0.0057512089 0.0053505846 
		0.017478846 -0.02277031 0.0068723131 0.017080029 -0.01945659 0.0057362393 0.012210722 
		-0.024540726 0.0060167569 0.0062281531 -0.025723446 0.0040906812 0.0064408486 -0.028392091 
		0.0020313996 0.0066360091 -0.029940668 0.0021071716 1.8015916e-016 -0.030389789 0.0053505846 
		-0.017478846 -0.02277031 0.0068723131 -0.017080029 -0.01945659 0.0052284976 -0.022449907 
		-0.019456588 0.0037379181 -0.018738678 -0.024540724 0.0019065482 -0.019655045 -0.025723446 
		0.0019716579 -0.013363099 -0.028392091 0.0020313996 -0.0066360091 -0.029940668 9.3780523e-020 
		-0.0068835337 -0.030389789 -0.0053505851 -0.017478852 -0.02277031 -0.0057362393 -0.012210722 
		-0.024540724 -0.0060167569 -0.0062281531 -0.025723446 -0.0040906812 -0.0064408486 
		-0.028392091;
	setAttr ".vl[0].vt[332:385]" -0.0020313996 -0.0066360091 -0.029940668 0.0053505846 
		-0.026273431 -0.015148337 0.0068723131 -0.022449907 -0.014802694 0.0057362393 -0.028316217 
		-0.010582628 0.0060167569 -0.029680895 -0.0053977338 0.0040906812 -0.032760099 -0.00558207 
		0.0020313996 -0.034546915 -0.0057512089 0.0021071716 -0.035065133 0 0.0053505846 
		-0.026273428 0.015148337 0.0037379181 -0.028316213 0.016240191 0.0019065478 -0.029680893 
		0.017034376 0.0019716579 -0.032760099 0.011581354 0.0020313996 -0.034546915 0.0057512089 
		9.3780523e-020 -0.035065133 0.0059657302 -0.0053505851 -0.026273428 0.01514834 -0.0068723136 
		-0.022449905 0.014802694 -0.0057362393 -0.028316217 0.010582628 -0.0060167569 -0.029680895 
		0.0053977338 -0.0040906812 -0.032760099 0.00558207 -0.0020313996 -0.034546915 0.0057512089 
		0.0080427611 -0.017478852 -0.01514834 0.0086680949 -0.012210722 -0.016240191 0.0090858471 
		-0.0062281531 -0.017034376 0.010028445 -0.0064408486 -0.011581354 0.010575423 -0.0066360091 
		-0.0057512089 0.010734057 1.8015916e-016 -0.0059657302 0.0080427611 0.017478852 -0.01514834 
		0.0086680949 0.018738678 -0.010582628 0.0090858471 0.019655045 -0.0053977338 0.010028445 
		0.013363099 -0.00558207 0.010575423 0.0066360091 -0.0057512089 0.010734057 0.0068835337 
		0 0.0080427611 0.017478852 0.01514834 0.0086680949 0.012210722 0.016240191 0.0090858471 
		0.0062281531 0.017034376 0.010028445 0.0064408486 0.011581354 0.010575423 0.0066360091 
		0.0057512089 -0.0080427611 -0.017478846 0.015148337 -0.0086680949 -0.012210722 0.016240191 
		-0.0090858471 -0.0062281531 0.017034376 -0.010028445 -0.0064408486 0.011581354 -0.010575423 
		-0.0066360091 0.0057512089 -0.010734057 1.8015916e-016 0.0059657302 -0.0080427611 
		0.017478846 0.015148337 -0.0086680949 0.018738678 0.010582628 -0.0090858471 0.019655045 
		0.0053977338 -0.010028445 0.013363099 0.00558207 -0.010575423 0.0066360091 0.0057512089 
		-0.010734057 0.0068835337 0 -0.0080427611 0.017478846 -0.015148337 -0.0086680949 
		0.012210722 -0.016240191 -0.0090858471 0.0062281531 -0.017034376 -0.010028445 0.0064408486 
		-0.011581354 -0.010575423 0.0066360091 -0.0057512089;
createNode objectSet -n "ffd1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "ffd1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "ffd1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode displayLayer -n "layer1";
	setAttr ".dt" 1;
	setAttr ".do" 3;
createNode polySphere -n "polySphere1";
	setAttr ".ax" -type "double3" 0 0.99999999999999989 0 ;
	setAttr ".r" 0.99999999999999989;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 2 "f[300:359]" "f[380:399]";
	setAttr ".ix" -type "matrix" -2.4101158198686753e-016 -0.54270983541401518 -0 0 0.14624512415655927 -6.4945881631110711e-017 0 0
		 0 -0 0.54270983541401518 0 5.5193512133587177 71.224507011898723 1.9275355750172654 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.3052528 28.041145 0.75887221 ;
	setAttr ".rs" 43621;
	setAttr ".ls" -type "double3" 0.51666666761539826 0.51666666761539826 0.51666666761539826 ;
	setAttr ".c[0]"  0 1 1;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 2 "f[300:359]" "f[380:399]";
	setAttr ".ix" -type "matrix" -2.4101158198686753e-016 -0.54270983541401518 -0 0 0.14624512415655927 -6.4945881631110711e-017 0 0
		 0 -0 0.54270983541401518 0 5.5193512133587177 71.224507011898723 1.9275355750172654 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.3065999 28.041145 0.75887221 ;
	setAttr ".rs" 57929;
	setAttr ".lt" -type "double3" -2.5023727621964648e-015 -1.850827015707538e-016 -0.039036522832877063 ;
	setAttr ".c[0]"  0 1 1;
createNode polyUnite -n "polyUnite2";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:439]";
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:383]";
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode polyCube -n "polyCube5";
	setAttr ".ax" -type "double3" 0 0.99999999999999989 0 ;
	setAttr ".w" 0.99999999999999989;
	setAttr ".h" 0.99999999999999989;
	setAttr ".d" 0.99999999999999989;
	setAttr ".cuv" 4;
createNode displayLayer -n "Mirror";
	setAttr ".do" 4;
createNode polyCylinder -n "polyCylinder1";
	setAttr ".ax" -type "double3" 0 0.99999999999999989 0 ;
	setAttr ".r" 0.99999999999999989;
	setAttr ".h" 1.9999999999999998;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyBoolOp -n "polyBoolOp1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
createNode groupId -n "groupId15";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:59]";
createNode groupId -n "groupId18";
	setAttr ".ihi" 0;
createNode polyCube -n "polyCube6";
	setAttr ".ax" -type "double3" 0 0.99999999999999989 0 ;
	setAttr ".w" 0.99999999999999989;
	setAttr ".h" 0.99999999999999989;
	setAttr ".d" 0.99999999999999989;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube7";
	setAttr ".ax" -type "double3" 0 0.99999999999999989 0 ;
	setAttr ".w" 0.99999999999999989;
	setAttr ".h" 0.99999999999999989;
	setAttr ".d" 0.99999999999999989;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 6.4016218011021344 0 0 0 0 6.4016218011021344 0 0 0 0 13.683083587377491 0
		 14.960929809757232 3.7102863508643522 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 9.0909414 1.4607427 0 ;
	setAttr ".rs" 50061;
	setAttr ".lt" -type "double3" -3.5479061960121467e-016 1.956783398582613e-016 1.5978349022305876 ;
	setAttr ".c[0]"  0 1 1;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 6.4016218011021344 0 0 0 0 6.4016218011021344 0 0 0 0 14.116260472573794 0
		 10.722313176720839 10.422875830684617 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.0205725 4.1034942 0 ;
	setAttr ".rs" 58182;
	setAttr ".ls" -type "double3" 0.94488611700316216 0.86666666837014461 0.86666666837014461 ;
	setAttr ".c[0]"  0 1 1;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[1]" -type "float3" -1.8397961 0 0 ;
	setAttr ".tk[3]" -type "float3" -1.8397961 0 0 ;
	setAttr ".tk[5]" -type "float3" -1.8397961 0 0 ;
	setAttr ".tk[7:11]" -type "float3" -1.8397961 0 0  -0.7672807 0 0  -0.7672807 
		0 0  -0.7672807 -1.1126343 0  -0.7672807 -1.1126343 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 6.4016218011021344 0 0 0 0 6.4016218011021344 0 0 0 0 14.116260472573794 0
		 10.722313176720839 10.422875830684617 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.0205723 4.1034942 0 ;
	setAttr ".rs" 57860;
	setAttr ".lt" -type "double3" -7.7643789883957848e-032 0 -1.7319673323580247 ;
	setAttr ".c[0]"  0 1 1;
createNode polyCylinder -n "polyCylinder2";
	setAttr ".ax" -type "double3" 0 0.99999999999999989 0 ;
	setAttr ".r" 0.6875;
	setAttr ".h" 1.9999999999999998;
	setAttr ".sa" 22;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 1 "f[44:65]";
	setAttr ".ix" -type "matrix" 0.70710678118654746 -0.70710678118654768 -0 0 0.70710678118654768 0.70710678118654746 0 0
		 0 -0 1 0 38.307999122733634 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 15.788996 0.70710677 -2.3466395e-008 ;
	setAttr ".rs" 35115;
	setAttr ".lt" -type "double3" 1.6500361881732149e-015 4.0149843352550823e-017 0.17047761797080827 ;
	setAttr ".ls" -type "double3" 0.75833335211753594 0.75833335211753594 0.75833335211753594 ;
	setAttr ".c[0]"  0 1 1;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	setAttr ".ics" -type "componentList" 1 "f[44:65]";
	setAttr ".ix" -type "matrix" 0.70710678118654746 -0.70710678118654768 -0 0 0.70710678118654768 0.70710678118654746 0 0
		 0 -0 1 0 38.307999122733634 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 15.90954 0.82765281 -2.3466395e-008 ;
	setAttr ".rs" 64592;
	setAttr ".lt" -type "double3" -5.6845466055935311e-016 -2.1277159168305107e-017 
		0.081866798366175164 ;
	setAttr ".ls" -type "double3" 0.5224999579328421 0.5224999579328421 0.5224999579328421 ;
	setAttr ".c[0]"  0 1 1;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	setAttr ".ics" -type "componentList" 1 "f[44:65]";
	setAttr ".ix" -type "matrix" 0.70710678118654746 -0.70710678118654768 -0 0 0.70710678118654768 0.70710678118654746 0 0
		 0 -0 1 0 38.307999122733634 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 15.967429 0.88554096 -1.4079838e-007 ;
	setAttr ".rs" 34180;
	setAttr ".lt" -type "double3" 1.3601281696579599e-016 -5.1602147536085356e-017 -0.22159703812680565 ;
	setAttr ".ls" -type "double3" 0.91666666712288236 0.91666666712288236 0.91666666712288236 ;
	setAttr ".c[0]"  0 1 1;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	setAttr ".ics" -type "componentList" 1 "f[44:65]";
	setAttr ".ix" -type "matrix" 0.70710678118654746 -0.70710678118654768 -0 0 0.70710678118654768 0.70710678118654746 0 0
		 0 -0 1 0 38.307999122733634 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 15.810737 0.72884846 2.1119756e-007 ;
	setAttr ".rs" 49014;
	setAttr ".lt" -type "double3" -3.5791369472450671e-015 1.5596410988242667e-017 0.27660289163398233 ;
	setAttr ".c[0]"  0 1 1;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 23 ".tk[89:111]" -type "float3"  -0.04931587 4.203784e-008 
		0.014480269 -0.043238372 1.261696e-007 0.027787693 4.164098e-008 -1.261696e-007 -4.0833097e-009 
		-0.033658363 2.0667115e-007 0.038843863 -0.021351621 4.203784e-008 0.046753101 -0.0073141139 
		2.0667115e-007 0.050874654 0.0073150294 2.0667115e-007 0.050874632 0.021351121 1.261696e-007 
		0.046753243 0.033658534 1.261696e-007 0.038844008 0.043238707 2.0667115e-007 0.027787719 
		0.04931587 1.261696e-007 0.0144803 0.051398087 1.261696e-007 -9.5115489e-008 0.049316041 
		-4.203784e-008 -0.014480393 0.04323912 -4.203784e-008 -0.027787669 0.033658776 2.0667115e-007 
		-0.038843799 0.021351455 2.9443143e-007 -0.046753071 0.007314696 2.0667115e-007 -0.050874636 
		-0.0073145302 1.261696e-007 -0.050874654 -0.021351539 -2.0667115e-007 -0.04675319 
		-0.033658199 4.203784e-008 -0.038844068 -0.04323829 2.0667115e-007 -0.027787775 -0.049315713 
		4.203784e-008 -0.014480239 -0.051398087 -1.261696e-007 2.6330602e-008;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	setAttr ".ics" -type "componentList" 1 "f[44:65]";
	setAttr ".ix" -type "matrix" 0.70710678118654746 -0.70710678118654768 -0 0 0.70710678118654768 0.70710678118654746 0 0
		 0 -0 1 0 38.307999122733634 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 16.006323 0.9244377 1.8773116e-007 ;
	setAttr ".rs" 41627;
	setAttr ".lt" -type "double3" -2.8920129441038875e-016 -3.6304990953764864e-017 
		0.040837735883417429 ;
	setAttr ".ls" -type "double3" 0.54999998773996495 0.54999998773996495 0.54999998773996495 ;
	setAttr ".c[0]"  0 1 1;
select -ne :time1;
	setAttr ".o" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :lightList1;
select -ne :initialShadingGroup;
	setAttr -s 41 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 14 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId3.id" "tvShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "tvShape.iog.og[0].gco";
connectAttr "groupParts1.og" "tvShape.i";
connectAttr "groupId4.id" "tvShape.ciog.cog[0].cgid";
connectAttr "groupId1.id" "tv1Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "tv1Shape.iog.og[0].gco";
connectAttr "groupId2.id" "tv1Shape.ciog.cog[0].cgid";
connectAttr "polyExtrudeFace3.out" "tvShape2.i";
connectAttr "Mirror.di" "mirror.do";
connectAttr "polyCube2.out" "mirrorShape.i";
connectAttr "layer1.di" "pCube3.do";
connectAttr "polyCube4.out" "pCubeShape3.i";
connectAttr "ffd1GroupId.id" "|pCube4|pCubeShape4.iog.og[0].gid";
connectAttr "ffd1Set.mwc" "|pCube4|pCubeShape4.iog.og[0].gco";
connectAttr "groupId10.id" "|pCube4|pCubeShape4.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "|pCube4|pCubeShape4.iog.og[1].gco";
connectAttr "groupId13.id" "|pCube9|transform5|pCubeShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "|pCube9|transform5|pCubeShape4.iog.og[0].gco"
		;
connectAttr "groupParts5.og" "|pCube4|pCubeShape4.i";
connectAttr "tweak1.vl[0].vt[0]" "|pCube4|pCubeShape4.twl";
connectAttr "groupId14.id" "|pCube9|transform5|pCubeShape4.ciog.cog[0].cgid";
connectAttr "polySmoothFace3.out" "|pCube4|pCubeShape4Orig.i";
connectAttr ":initialShadingGroup.mwc" "pCubeShape6.iog.og[0].gco";
connectAttr "groupId6.id" "pCubeShape6.ciog.cog[0].cgid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape7.iog.og[0].gco";
connectAttr "groupId8.id" "pCubeShape7.ciog.cog[0].cgid";
connectAttr "groupId11.id" "pSphereShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pSphereShape1.iog.og[0].gco";
connectAttr "groupParts4.og" "pSphereShape1.i";
connectAttr "groupId12.id" "pSphereShape1.ciog.cog[0].cgid";
connectAttr "polyUnite2.out" "webcamShape.i";
connectAttr "groupId15.id" "pCubeShape11.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape11.iog.og[0].gco";
connectAttr "groupParts6.og" "pCubeShape11.i";
connectAttr "groupId16.id" "pCubeShape11.ciog.cog[0].cgid";
connectAttr "groupId17.id" "pCylinderShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape1.iog.og[0].gco";
connectAttr "groupParts7.og" "pCylinderShape1.i";
connectAttr "groupId18.id" "pCylinderShape1.ciog.cog[0].cgid";
connectAttr "polyBoolOp1.out" "polySurfaceShape2.i";
connectAttr "polyCube6.out" "pCubeShape15.i";
connectAttr "polyExtrudeFace8.out" "pCubeShape19.i";
connectAttr "polyExtrudeFace13.out" "buttonShape1.i";
connectAttr "locatorShape1.wp" "distanceDimensionShape1.sp";
connectAttr "locatorShape2.wp" "distanceDimensionShape1.ep";
connectAttr "locatorShape3.wp" "distanceDimensionShape2.sp";
connectAttr "locatorShape4.wp" "distanceDimensionShape2.ep";
connectAttr "locatorShape5.wp" "distanceDimensionShape3.sp";
connectAttr "locatorShape6.wp" "distanceDimensionShape3.ep";
connectAttr "locatorShape7.wp" "distanceDimensionShape4.sp";
connectAttr "locatorShape8.wp" "distanceDimensionShape4.ep";
connectAttr "locatorShape9.wp" "distanceDimensionShape5.sp";
connectAttr "locatorShape10.wp" "distanceDimensionShape5.ep";
connectAttr "locatorShape11.wp" "distanceDimensionShape6.sp";
connectAttr "locatorShape12.wp" "distanceDimensionShape6.ep";
connectAttr "locatorShape13.wp" "distanceDimensionShape7.sp";
connectAttr "locatorShape14.wp" "distanceDimensionShape7.ep";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr "lambert2SG.msg" "lightLinker1.lnk[2].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[0].sllk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.slnk[0].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[1].sllk";
connectAttr ":initialParticleSE.msg" "lightLinker1.slnk[1].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[2].sllk";
connectAttr "lambert2SG.msg" "lightLinker1.slnk[2].solk";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polyExtrudeFace1.ip";
connectAttr "tvShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "tvShape.wm" "polyExtrudeFace2.mp";
connectAttr "tv1Shape.o" "polyUnite1.ip[0]";
connectAttr "tvShape.o" "polyUnite1.ip[1]";
connectAttr "tv1Shape.wm" "polyUnite1.im[0]";
connectAttr "tvShape.wm" "polyUnite1.im[1]";
connectAttr "polyExtrudeFace2.out" "groupParts1.ig";
connectAttr "groupId3.id" "groupParts1.gi";
connectAttr "polyUnite1.out" "polyExtrudeFace3.ip";
connectAttr "tvShape2.wm" "polyExtrudeFace3.mp";
connectAttr "|pCube4|polySurfaceShape1.o" "polySmoothFace1.ip";
connectAttr "polySmoothFace1.out" "polySmoothFace2.ip";
connectAttr "polySmoothFace2.out" "polySmoothFace3.ip";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "layerManager.dli[1]" "pCube5ProxyMesh.id";
connectAttr "layerManager.dli[2]" "pCube5SmoothMesh.id";
connectAttr "ffd1GroupParts.og" "ffd1.ip[0].ig";
connectAttr "ffd1GroupId.id" "ffd1.ip[0].gi";
connectAttr "ffd1LatticeShape.wm" "ffd1.dlm";
connectAttr "ffd1LatticeShape.lo" "ffd1.dlp";
connectAttr "ffd1BaseShape.wm" "ffd1.blm";
connectAttr "groupParts3.og" "tweak1.ip[0].ig";
connectAttr "groupId10.id" "tweak1.ip[0].gi";
connectAttr "ffd1GroupId.msg" "ffd1Set.gn" -na;
connectAttr "|pCube4|pCubeShape4.iog.og[0]" "ffd1Set.dsm" -na;
connectAttr "ffd1.msg" "ffd1Set.ub[0]";
connectAttr "tweak1.og[0]" "ffd1GroupParts.ig";
connectAttr "ffd1GroupId.id" "ffd1GroupParts.gi";
connectAttr "groupId10.msg" "tweakSet1.gn" -na;
connectAttr "|pCube4|pCubeShape4.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "|pCube4|pCubeShape4Orig.w" "groupParts3.ig";
connectAttr "groupId10.id" "groupParts3.gi";
connectAttr "layerManager.dli[3]" "layer1.id";
connectAttr "polySphere1.out" "polyExtrudeFace4.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace4.out" "polyExtrudeFace5.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace5.mp";
connectAttr "pSphereShape1.o" "polyUnite2.ip[0]";
connectAttr "|pCube4|pCubeShape4.o" "polyUnite2.ip[1]";
connectAttr "pSphereShape1.wm" "polyUnite2.im[0]";
connectAttr "|pCube9|transform5|pCubeShape4.wm" "polyUnite2.im[1]";
connectAttr "polyExtrudeFace5.out" "groupParts4.ig";
connectAttr "groupId11.id" "groupParts4.gi";
connectAttr "ffd1.og[0]" "groupParts5.ig";
connectAttr "groupId13.id" "groupParts5.gi";
connectAttr "layerManager.dli[4]" "Mirror.id";
connectAttr "pCubeShape11.o" "polyBoolOp1.ip[0]";
connectAttr "pCylinderShape1.o" "polyBoolOp1.ip[1]";
connectAttr "pCubeShape11.wm" "polyBoolOp1.im[0]";
connectAttr "pCylinderShape1.wm" "polyBoolOp1.im[1]";
connectAttr "polyCube5.out" "groupParts6.ig";
connectAttr "groupId15.id" "groupParts6.gi";
connectAttr "polyCylinder1.out" "groupParts7.ig";
connectAttr "groupId17.id" "groupParts7.gi";
connectAttr "polyCube7.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape19.wm" "polyExtrudeFace6.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape19.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak1.ip";
connectAttr "polyExtrudeFace7.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape19.wm" "polyExtrudeFace8.mp";
connectAttr "polyCylinder2.out" "polyExtrudeFace9.ip";
connectAttr "buttonShape1.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace9.out" "polyExtrudeFace10.ip";
connectAttr "buttonShape1.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace10.out" "polyExtrudeFace11.ip";
connectAttr "buttonShape1.wm" "polyExtrudeFace11.mp";
connectAttr "polyTweak2.out" "polyExtrudeFace12.ip";
connectAttr "buttonShape1.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak2.ip";
connectAttr "polyExtrudeFace12.out" "polyExtrudeFace13.ip";
connectAttr "buttonShape1.wm" "polyExtrudeFace13.mp";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
connectAttr "tvShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "tv1Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "tv1Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "tvShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "tvShape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "mirrorShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|pCube4|pCubeShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "webcamShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|pCube9|transform5|pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube9|transform5|pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pCubeShape12.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape14.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape11.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape11.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape15.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape16.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape17.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape18.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape19.iog" ":initialShadingGroup.dsm" -na;
connectAttr "buttonShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "buttonShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "buttonShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "buttonShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "buttonShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape20.iog" ":initialShadingGroup.dsm" -na;
connectAttr "buttonShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "buttonShape7.iog" ":initialShadingGroup.dsm" -na;
connectAttr "buttonShape8.iog" ":initialShadingGroup.dsm" -na;
connectAttr "buttonShape9.iog" ":initialShadingGroup.dsm" -na;
connectAttr "buttonShape10.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
// End of Mockup1.ma
