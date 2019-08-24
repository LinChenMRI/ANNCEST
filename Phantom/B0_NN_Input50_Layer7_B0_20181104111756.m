function [Y,Xf,Af] = B0_NN_Input50_Layer7_B0_20181104111756(X,~,~)
%B0_NN_INPUT50_LAYER7_B0_20181104111756 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 04-Nov-2018 11:19:50.
% 
% [Y] = B0_NN_Input50_Layer7_B0_20181104111756(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 50xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [0.0729247175037787;0.178282313189777;0.299244062513112;0.407549437895104;0.498709911335852;0.575275266770725;0.637313367605373;0.682006395937553;0.720640832639236;0.749694497434049;0.771880274617689;0.790322994288391;0.806569501273184;0.812398040017593;0.808926948516297;0.808383146811244;0.808774595076165;0.807743823189116;0.80773264355027;0.807302209298518;0.806508538105197;0.806949549517941;0.80851528601239;0.806632380774305;0.808476956076085;0.808468164324625;0.808549072013256;0.812030590837194;0.812383031992557;0.811291318059216;0.811814277579579;0.810189525104771;0.810840433473759;0.812117752868335;0.809862393141246;0.811696511949399;0.816707813826149;0.833854485825402;0.857196693039001;0.878378893003495;0.894983877891657;0.91005754356022;0.922166902912498;0.931633047908608;0.940750405781915;0.946993376813479;0.952202465514613;0.959059107552302;0.96430246032489;0.965902688028614];
x1_step1.gain = [2.32586672376029;2.61883265172443;3.07452566774418;3.64503507931867;4.32150725586184;5.14243268644615;6.03053487197486;6.92009684183233;7.955189583762;8.79448534501259;9.74802904578812;10.6672574483497;11.5239912668608;11.9874342700011;11.7012748934594;11.5761515035528;11.560879096601;11.4443210381669;11.3676156644139;11.2797920815681;11.2288583914825;11.2262650490042;11.3599656712744;11.2499461509573;11.3263853672431;11.2640955901356;11.3118734013535;11.4504379970897;11.3834805998145;11.1322539002797;11.0774354215607;10.931692743802;10.8903875540649;10.8798862040678;10.7623807268894;10.7755829675057;11.0166908975686;12.1376768902066;14.1714797915819;16.5520212861965;19.1675147134236;22.2894274321491;25.777047458364;28.8432862703376;33.3207024057174;37.4286641329833;41.3403350459133;46.8631905559151;54.1472727990131;54.5505417943901];
x1_step1.ymin = -1;

% Layer 1
b1 = [-4.57003931437462807;1.3267120106575427396;-0.8420753110059541191;-0.57272002660345644465;-1.8087374388296828531;-0.50291856252303612784;-2.022732946594261616];
IW1_1 = [2.3992997621984253342 1.2350147316581834289 0.78282979689562370851 0.18309278193788297573 0.11256360576108058458 0.037019981417472279384 -0.20595452734505778625 -0.1438743932480478771 -0.22713244845475621947 -0.13960905164552073199 -0.20488981858271962389 -0.14654922634293421346 -0.072984544497914125016 -0.073014560054581234549 0.011300049495717709447 -0.013323346061328907031 0.023210312806109689721 0.073782297561818727116 0.014320251773604705456 0.0351917213472195331 -0.03833913475557655659 -0.034757479596209547856 -0.0001403776805182213247 -0.0004646946697479193214 -0.0056926076966282504466 -0.0037533985559386248004 0.14140250809672172405 0.22413181223989908641 0.17116446714807509455 0.19304571030957959343 0.13548107207352139136 0.091493565734293638703 0.024564824889722450957 -0.015841938025924102995 0.028424989570544342138 -0.022048701796802523678 -0.14620693762723924181 -0.13147736902655990376 -0.10687055967155253966 -0.11886036607789150776 -0.11758234479373091963 -0.068219633102397647662 -0.052100558472704047719 -0.039622508401934958266 -0.03758572586042265018 -0.011153676232907690918 -0.023039144282940168806 -0.0051403145526445395003 -0.015674381721233400511 0.010727987757834374707;-0.18055713585084715023 0.11921018297253725693 -0.22399348168016494642 0.18469676133334883561 -0.20513255015431441919 -0.32745909544889967302 -0.15748202260188390311 -0.029696274713058856687 0.096856272118425582041 -0.088352483271824641675 0.18539115885554871554 -0.18751199157999037803 -0.38405552319421831786 -0.40748590215274638204 -0.35614041439463611782 0.10420764991120970433 0.12837890421461933821 0.24474119100054109177 -0.02123815432062039002 0.23128085567940184775 0.3192516138701830819 0.32736406775142362635 0.13913596418044582581 0.1359382697462858669 0.40097013380553808704 0.32222995275446647545 0.31079866626115615347 0.30991906365189697548 -0.044186731511831542352 0.058836383313905948889 0.35281903950083887134 0.23264816518040976057 0.031767288185146416724 -0.0099967489442540548999 -0.08595823933595328481 0.2588279493156827038 -0.056424346055494185859 0.26953197785714733126 -0.032055060784667827045 -0.33321934082443704916 -0.054495280640155609186 0.10528605557684958538 -0.0046418109710789530464 0.072456500500511722418 -0.14176031318341975052 0.15508772088224206942 0.3046567733290390656 0.27140600100429068675 -0.25000146273085055437 0.26584906441198413729;-0.033408992868539856558 -0.10274636175134183036 -0.025399723719029577984 0.11511791667445411824 0.20793180087948301416 0.016811964462579889745 0.22863121814925133068 0.35729827082460574594 0.20913651001377897565 0.11878681129201877631 -0.032743458269501403424 -0.13479937958795368269 -0.2557065615530645375 -0.26633421026919829044 -0.1635468044777353136 -0.20659677279652552406 -0.0080730163612678824958 0.089057880121563681719 0.052935179438659898943 -0.066253880425018785161 0.18264594504626205373 0.078328140840752777385 -0.00024657100389315327743 -0.13557156020910560157 0.011098999380375722257 -0.42228460672732109904 -0.27334082737333981195 -0.11328116915702445 -0.28131325150703478943 -0.16868074222817253105 -0.23869576150911775425 -0.001096292570528450451 0.097963837290654734447 0.031526539262070635283 -0.084993747463937383002 -0.13577823696970248157 0.010854703279967608393 -0.078351192022202420517 -0.029261872176792651234 0.13472492068857203074 0.14731588303268108864 0.096271899625326742833 0.10283618995561012721 0.065934343623744715024 0.068236642878905476306 0.024309102399393413274 0.021109649992050279893 0.0066239297490576151684 0.033646023390594692604 -0.0086478614135491044257;0.25933333405557312812 0.31879220447855272091 -0.071287510492327815781 0.40543913896855865442 0.13825994136024286063 0.29592798345913712277 -0.070629382514899780032 0.25482395653885203668 0.46602398985328680192 0.3726028212588989863 0.092342440871879122311 -0.078614433167655317636 -0.16495371818451515233 -0.02803216899800861639 -0.10956656787277839482 -0.20705662640683419884 -0.0028059475563793762065 0.18952096073818294752 0.17566210269815482614 0.3211238401675224341 0.32755011548640433627 0.14533663441234684344 -0.1024615335549016043 -0.52702502434271325527 -0.41136175573883437817 -0.66326640922594026772 -0.5798587892581954506 -0.056765737793231685338 -0.054951312921135246625 -0.10285460002507232358 -0.13129255527119201852 0.19734771280887836165 0.13778103764992810643 0.24069165309779486095 -0.099118175219055970615 0.0094462805073896836949 0.11617923799928353557 -0.053949942074665628577 0.074331826021610397648 0.11696857023121275121 0.18587259465619340726 0.088033377818224928246 0.079081651509177827708 0.033284987321063302934 0.039853920534251900676 0.021751261868686398021 0.0082459925002006939643 -0.0044891075493277837749 0.0072328568866817932737 -0.01650160103224916977;0.68408817723423187562 0.54227054093693860537 0.13284983617432755132 0.20370439410257859536 -0.054841535042920448728 -0.099814620943020015975 0.12340544796998109689 -0.17908296913457341648 -0.23243744471305360921 -0.23399798418139827749 -0.072612688039290343434 0.0014692933157106971565 -0.031954073445460924596 -0.08195912556540790872 -0.15815152836933371594 -0.10595579937370153134 -0.20143397287029626841 -0.25744620317825805955 -0.082811321150586994499 -0.10904576832026177668 -0.089830327175622837199 -0.026616375950157332431 0.049876465281165120735 0.24328668947544718204 0.17907799018103476296 0.32047224555952819047 0.15406700543677895321 -0.15557385132414996987 0.037609932030555723315 0.11661780906682699122 0.18481696691384971731 0.013186786735614807603 -0.016569250775423795263 -0.07560430076626224738 0.014162708811563210279 0.063072535700929452385 0.10550676501226244342 0.20282325744131399214 0.12266151687137787085 0.060803231297082996343 0.021070827211189285116 0.0030246478843022721328 -0.010820608591304372442 -0.0016936045143095277213 0.0082315829667790382101 -0.0060379443092658576647 -0.0077525259106846055451 -0.007491154548697181309 0.0088836321117160520211 -0.014245612278975711834;0.20121511696001734282 0.19774743786220769226 0.12354506074524021497 0.12363720940046060703 0.081192787152138637397 0.068604995470596244478 0.022717248707834772348 0.080447426069388469627 0.10334721164784618774 0.064707587236068675463 -0.012559313387248699154 -0.061355463042802878271 -0.095206015229382767728 -0.06986315568095964601 -0.070957146372054677452 -0.085936041788727560164 -0.015282737533824102341 0.031459605743963676983 0.023847839151603818925 0.049827926294701334331 0.083829054320933849009 0.049406505912092911481 0.00016574063982046456298 -0.10413441743428521191 -0.072293947836237243409 -0.1682777380791709021 -0.13804545471970641746 -0.02741189729742019715 -0.054974970174291544478 -0.064364665652810820751 -0.074362771110136477448 0.026510730871508073753 0.032744153010762812317 0.05585567536078048928 -0.026861191379212119579 -0.018620902966419695945 0.013461579096775998232 -0.019759755575393278537 0.012950258093476758534 0.039827924123580986382 0.056778975921524615922 0.031830483625474026432 0.031023274699783578295 0.016406762853559082871 0.016531453741268832547 0.0084887271477768512506 0.0066428101654721939673 0.0015454343064731858488 0.0039527076684907685653 -0.002496858669255426922;0.00020741064965487318594 0.44366288031465050956 0.34173160223693849202 0.049496643708424055419 -0.034070270424126858355 0.098913114754895670178 0.1998221240774072649 -0.052355861755690256965 0.061240845417357622771 -0.0545636516813065367 -0.15395847041875229677 -0.12640424846577635876 -0.18747861748350660993 -0.084636476829063944649 -0.1727922948486793342 -0.13953590469850418732 -0.089135438095996569197 -0.14175517967583073364 -0.016031613036575818876 0.16170268742481469504 0.14374364500027131397 0.1953263412199190141 0.22265857671740479917 0.079657552238107234843 -0.019319434215749473754 0.027293428915069809643 -0.20471901777855489035 -0.31345310278385773994 -0.108261884371534986 -0.15211758600000882535 -0.082501600045212702961 -0.024787490150403313632 -0.1155251302231500854 -0.052836447565897629031 -0.20547650873641515323 -0.12204076086539696055 -0.022611465845143032677 0.08794868243459998125 0.1547837159258827755 0.12588704396302316524 0.12615369746967960984 0.041750689762884943268 0.046373320687402082296 0.0015864179596541236501 0.039396437743736169301 -0.0050442752642201526755 -0.021649392336532232578 -0.029812301092851673651 0.022318048330287672265 -0.038018002409035064892];

% Layer 2
b2 = 2.025239099664546405;
LW2_1 = [2.1731795350316218673 -0.035420823093737986709 -0.29428030132325988522 -0.33290817560641339234 0.57905160819617285117 1.8935992899913691723 -0.76810880192895825136];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 2.50003655291938;
y1_step1.xoffset = -0.399995636582086;

% ===== SIMULATION ========

% Format Input Arguments
isCellX = iscell(X);
if ~isCellX
  X = {X};
end

% Dimensions
TS = size(X,2); % timesteps
if ~isempty(X)
  Q = size(X{1},2); % samples/series
else
  Q = 0;
end

% Allocate Outputs
Y = cell(1,TS);

% Time loop
for ts=1:TS

    % Input 1
    Xp1 = mapminmax_apply(X{1,ts},x1_step1);
    
    % Layer 1
    a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*Xp1);
    
    % Layer 2
    a2 = repmat(b2,1,Q) + LW2_1*a1;
    
    % Output 1
    Y{1,ts} = mapminmax_reverse(a2,y1_step1);
end

% Final Delay States
Xf = cell(1,0);
Af = cell(2,0);

% Format Output Arguments
if ~isCellX
  Y = cell2mat(Y);
end
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings)
  y = bsxfun(@minus,x,settings.xoffset);
  y = bsxfun(@times,y,settings.gain);
  y = bsxfun(@plus,y,settings.ymin);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n,~)
  a = 2 ./ (1 + exp(-2*n)) - 1;
end

% Map Minimum and Maximum Output Reverse-Processing Function
function x = mapminmax_reverse(y,settings)
  x = bsxfun(@minus,y,settings.ymin);
  x = bsxfun(@rdivide,x,settings.gain);
  x = bsxfun(@plus,x,settings.xoffset);
end