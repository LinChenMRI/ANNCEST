function [Y,Xf,Af] = HL_kba_NN_Input50_Layer7_kba_20181003122806(X,~,~)
%HL_KBA_NN_INPUT50_LAYER7_KBA_20181003122806 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 03-Oct-2018 14:13:57.
% 
% [Y] = HL_kba_NN_Input50_Layer7_kba_20181003122806(X,~,~) takes these arguments:
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
x1_step1.xoffset = [0.306593109346314;0.325338221064466;0.34480112886636;0.364383107675551;0.379189786429133;0.396895291446461;0.411435787441237;0.425657581301682;0.4445659180126;0.456824112437277;0.473349980799468;0.487573313189984;0.49968715978398;0.512775349895661;0.523351850869744;0.530219110406293;0.536529491871459;0.551225293946378;0.559683424804558;0.569572539946867;0.572307125856494;0.582753159370797;0.587225976103635;0.594453588402146;0.600524351170231;0.604278682121015;0.60783505716391;0.614854981970953;0.616194309036937;0.621898184919334;0.631591000658599;0.635524913905429;0.638945932234742;0.641573926642765;0.646755029169402;0.66260135256165;0.66700861025303;0.675353740637902;0.681387283272081;0.683854782787033;0.690889477812539;0.704790425742733;0.706439804684247;0.709688359891688;0.715553612077282;0.720439375933376;0.727486406791006;0.727566331385167;0.736711826829863;0.7364721680752];
x1_step1.gain = [5.26057688713915;5.33915851772299;5.46853540427774;5.59937742906476;5.72523520155097;5.80778691153907;5.95135153318436;6.16914978420918;6.28949129022481;6.48189383009024;6.71912464316617;6.94779538246373;6.99911981336918;7.33612529225066;7.36132281398269;7.5103038528977;7.4565313729407;7.88505480592377;8.09801280238435;8.25356450218834;8.2022779540794;8.32827776690276;8.37681819917787;8.64407132497444;8.56339859504651;8.51737564891169;8.69958279439865;8.72861864997723;8.85002068608608;8.68510000459236;9.15341482599956;9.06694288962141;9.08652801378708;8.77627487090802;9.1580640067531;9.76202936337913;9.91121241767293;10.406589122461;10.271093396806;10.1337885686626;10.7677936596938;11.4483189138674;11.6427028208104;11.6153662315527;11.9082623634525;12.0240393870468;12.4873095307284;12.3561364903169;12.9239427762437;12.7107488088159];
x1_step1.ymin = -1;

% Layer 1
b1 = [-0.94962710873559152969;0.0042906859898381418186;0.67025622705507303944;0.43551218558952103921;0.25500866305338654172;0.30336691348933103596;-0.70819749676031795715];
IW1_1 = [-0.37107373688206096718 -0.27873871748512635271 -0.13799222453450138426 -0.016056515378767812624 0.028038279978886065241 0.18103831346503213018 0.32876629210853425267 0.31380753880684136847 0.37844351753542926353 0.50461131163546757428 0.4853478967707080538 0.52853944306727351776 0.57953454885538879804 0.54045497520527940871 0.53832100493348977732 0.43118381788507326169 0.342815342096405129 0.1994076608110794957 0.019452315199027819803 -0.083932244801889849262 -0.40686137983662340467 -0.52518101135242389876 -0.74061182517509149825 -0.93396663384043931977 -0.89944184220018474907 -0.85588201785938944344 -0.67473684221518948068 -0.57081334979436404442 -0.24401717045156426367 0.18567357694447417238 0.25242198196031540025 0.51983478385791948018 0.55644076952779097933 0.58144691746616850025 0.39343075405814870171 0.2679821434954279824 0.13325079760471245094 0.0060959571763737323974 -0.11344384116888531211 -0.16611781894222132916 -0.25658415375609167075 -0.23856109515661572118 -0.17820108962436378985 -0.18282588408809138936 -0.24831664376856046883 -0.10854439591889154804 -0.14441653523936473502 -0.045184293130642066982 0.02227497832526936089 0.16114912412118445606;-0.076201297705335582777 -0.10288620090449862587 -0.07207984686026265575 0.042422351160898090494 -0.033672247433338770017 0.017238246810993288621 -0.025393103852356168487 0.01322739482487170215 0.029539577816310762931 -0.0071761710187439068862 0.062899693127235603574 0.049390625863998019462 0.023048445910110113011 0.00058639628062098986608 0.073955834153186433833 0.12122478138205998455 0.095801915027137890535 0.16230524128181719745 0.088510334404145962761 0.21305957246574555586 0.086892456359730516069 0.12814608693228840552 0.033316317174622814279 -0.0047853232611497088095 -0.12057721124627107656 -0.30867328263814619582 -0.26321694854373034467 -0.30279221850344678613 -0.27686918645637703662 -0.19931212935692832477 -0.1535967691975570204 0.026408663311779382449 0.098081094016543468594 0.10238802660869743277 0.22978132309906895703 0.2464598666251385517 0.208050912412994643 0.17670027223586368126 0.081147541397345770986 0.035249094874409747646 0.020488254086019421635 -0.049290535682984984445 -0.035211471007989242343 -0.14229035182933430503 -0.085245424326348004374 -0.037538031137482892607 -0.071802955892298972462 -0.035836227080245371124 -0.18884781512416815019 -0.0567477981792865252;-0.25772712368408484673 -0.1518285157365903415 -0.077353393830264433051 0.012220387175346016442 0.088181597517443310874 0.14255716918752470157 0.20602223674862082947 0.18538578686346190993 0.15966986271328575953 0.23856995534700353723 0.16477919861159878723 0.16020444387804086417 0.18869748563055191437 0.1228784500507734273 0.069894309407862356687 -0.089921155590453993867 -0.19094391202319363487 -0.37708419072346072154 -0.54447793562131752143 -0.70203187376954756527 -0.86912423381030590175 -0.77058238663563860538 -0.78874106057328874364 -0.48332538837823185718 -0.22059689116407260601 0.19493462997299962347 0.60432226038104941424 0.88074481399617421395 1.0605573328838171498 1.1611574134086373178 1.0474499243055443998 0.78461050459208003804 0.53633443544483483389 0.24586434790362984848 0.024662082234378875784 -0.23768963063896281218 -0.27507473575220825479 -0.45431531585301143661 -0.3256739434582959225 -0.32987231324553911715 -0.22329930840024275751 -0.16438527180368900371 -0.1591998527751798953 -0.094404163809599636603 -0.1003884362723639484 -0.044486604475672174297 0.051534752405794255481 0.033708459033383167402 0.055636516891548110086 -0.0099928094078612205581;-0.1888058606270009987 -0.21580167938259040006 -0.18546843708116986238 -0.14567822585922021728 -0.20556315415131556912 -0.15596837474323912986 -0.15025065446731514229 -0.075336096602290042457 -0.12592902417873097498 -0.080128667437515121996 -0.031462893449328156736 0.021975118376906795786 0.033091041904546814045 0.044116520729586494731 0.07047066045729730166 0.17637521838020053799 0.19929832276229494936 0.14597356251639323488 0.073035401124870877321 0.045751804500916537499 0.02699098876393231719 0.15302998676937798472 0.16064309284686661972 0.21790146236758214937 0.2480055735752023649 0.33115179248217235797 0.42493225503294684842 0.561514179725900342 0.48178117670146541895 0.32896800906335743608 0.35444739934318836294 0.25695694710803324012 0.20695262146526749447 0.042788102817994777549 0.12763249862531597656 0.035005217946486040514 0.035611923697431414892 -0.091540997233453005877 0.040520960703393608948 -0.14190701525785068271 -0.029574710199731478466 -0.12169294395613786119 -0.21659540331215340614 -0.28149764271710847607 -0.21835884537004912609 -0.31699881860528217326 -0.23435252686811380851 -0.36366849845738818958 -0.46508423827090983327 -0.48395220512219622178;0.173553998300154666 0.19870607077323176881 0.12948198753550760332 0.060318237618994033356 0.14463196083629231703 0.025175447728856156088 0.035262301833848923305 0.05620108147252901587 -0.019218278214759056122 -0.039908180855944414001 -0.014163755850345211007 -0.103851973420213059 -0.089628504143697856898 -0.084219546570352007975 -0.03659723313180517773 -0.11851447107573820361 -0.1000709139204126602 -0.14681770014617639974 -0.075818265204442375493 -0.11208407116654897639 -0.1301380041503953644 -0.16437384069542673726 -0.18942658934015679795 -0.090134854066529893069 -0.12318907479846197273 -0.073950708016605026796 0.013667849422527571235 0.04834294073363263472 0.12095631858532505942 0.15222940392404832322 0.1872014230944534785 0.14530195550631921919 0.10223476496754818621 0.11239974199714981851 0.16196896677751337901 0.087957219675630540778 0.14911729441709789534 0.1877711938397882141 0.10115015446933058041 0.16990916993597970919 0.079379942095950242753 0.043021502080790932632 0.083812513440300939749 0.10849070449750138068 0.056735442418273725196 0.053440805161418747371 0.05081386666150477377 0.023740603017436631011 -0.040816134009484618395 -0.08243435389835071514;0.29490571287178918292 0.28911832121182023947 0.23584188651570678341 0.12929217639541909501 0.032202846641370519443 -0.025423050006056848588 0.025477443835437724867 -0.055883885896201933308 -0.075951506076322047867 -0.10805385505205079844 -0.19111635184025688172 -0.1724350567244863075 -0.17328640606936474011 -0.22307362283608564435 -0.21538883718719906146 -0.20433592135574032977 -0.15876965491816030784 -0.2472124292270668211 -0.21608617671529847803 -0.33709017092100346247 -0.14789042127298887563 -0.15733723113992567622 -0.20994473114588771412 -0.034956598922293052878 0.10142593418666355498 0.074114787969519091426 0.22775910854885303425 0.16004985070729263463 0.1491113845835411178 0.056912882670436447385 0.079627472362627613189 0.016969358582530416624 -0.036604834785072433434 0.050856255677860007225 -0.036303139574340843876 -0.21530685059682605487 -0.042782542073727308773 -0.035144831435550437371 0.065206208818863867216 0.021954190161873891191 0.025041298516954971914 0.070362151538578512899 0.15778486216780296392 -0.022156664017010618134 -0.015092208777945198897 0.010046518848610561103 -0.026361951481780859785 -0.14137999013573504525 0.013871444592741763793 -0.0389584763223666114;0.41619776139544428784 0.47239296632373473095 0.44748273599508120446 0.34548772212585754371 0.25805291696843013494 0.23045364280919602984 0.39699623829590657831 0.19764901903594095378 0.10106316080655267098 0.13663040352070038308 -0.032158695398628443785 -0.022125297630230418566 -0.007102672335236958831 -0.12666914843905682786 -0.16510380286827158747 -0.14740807879317846529 -0.13619204083705621633 -0.22490330555040860538 -0.14766282215626469476 -0.1145263000639526324 -0.041029283510364153442 0.014835602901117931826 -0.08501678806260506982 -0.19118429441523082657 0.0068296726965357597988 -0.19868139310316132451 -0.040933127646455381987 -0.25094975198778218806 -0.25863907930535406932 -0.29448311453211600819 -0.182429120496881092 -0.036750056817234019735 -0.041840766470307176605 0.065980760681099939746 0.066985206410047223868 -0.074572788395290801056 0.014546706443004693218 0.0624102856979565912 0.1084073430700867452 -0.11233595956200059796 -0.081961367113390609651 -0.055201308519639329109 0.05761985229663026814 -0.11967216810797570714 -0.15251730728813148175 -0.071911036477767281694 -0.10807554183221462774 -0.16298550517846796537 -0.069240494323255880049 0.06988820542842043293];

% Layer 2
b2 = -0.57695347446595013352;
LW2_1 = [-1.7762536417256429289 1.0479885116293992109 1.6959810969263393599 -1.484554478703693059 -0.80231386430270656973 -0.75395751482755712924 1.0419412564739685134];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.00814855699925485;
y1_step1.xoffset = 54.5277057327644;

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