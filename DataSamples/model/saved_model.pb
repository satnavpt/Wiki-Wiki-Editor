؟
?'?&
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
=
Greater
x"T
y"T
z
"
Ttype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
?
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype?
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint?????????
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68ƿ
?
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?]@*%
shared_nameembedding/embeddings
~
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes
:	?]@*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:@*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
l

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name6920*
value_dtype0	
|
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_7*
value_dtype0	
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
?
Adam/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?]@*,
shared_nameAdam/embedding/embeddings/m
?
/Adam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/m*
_output_shapes
:	?]@*
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:@*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0
?
Adam/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?]@*,
shared_nameAdam/embedding/embeddings/v
?
/Adam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/v*
_output_shapes
:	?]@*
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:@*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
??
Const_4Const*
_output_shapes	
:?]*
dtype0*??
value??B???]BpeopleBurlBwomenBlikeBfuckBfuckingBwhiteBgetBiBblackBgoBhateBmenBbitchBoneBbackBevenBneedBniggersBcountryBknowBwouldBhumanBgayBstupidBeveryBrightBmuslimsBwantBseeBlookBassBworldBkillBmuslimBshitBdieBthinkBamericaBmakeBusBpussyBgodBloveBniggerBtransBmanyBstopBwomanBniggaBreallyBtrumpBracistBgoodBmanBrightsBwayBdickBchildrenBitBleaveBhopeBdayBmuchBworkBalwaysBtimeBthisBactuallyBamericanBkeepBjewsBeveryoneBreligionB
disgustingBcultureBtakeBjewBgirlsBproudBprideBgotBfeelBsayBantiBpersonBanotherBcallBlifeBsexBnothingBscumBillegalBstillBcomeBhelpBlessBonesBpeaceByouBneverBanyoneBsendBurBrealBsupportBtrashBgoingBcockBothersBrapeBalsoBsaidBlotBeitherB
christiansBtheBthingBeatB
losangelesBbunchBbitchesBmadeB	americansBgonnaBkillingBletBshowBfamilyBwellBgirlBgiveBislamBtimesBdoneBfactByeahBniggasBlolBdirtyBbornBwishBnameBchangeBisraelBliveBmexicanB	christianBfemaleBcameByearsBthereBwhyBkilledBfunnyBviolenceBmustBchristBthatBhappyBdeportedBfaggotBokayBmakesBuseBhandBlittleBanythingBnewB	somethingBbetterByesB	illegallyBpleaseBalmostB
immigrantsBhellBdumbBcouldB	immigrantBgreatBhardBsinceBcuntBmayBtryBfirstBguyBpartBguysBallahBfriendsBrespectByearBohBtrueBsureBsemiteBroundBsomeoneBprickBexcuseB
assimilateBsavagesBresearchBgettingBthankBnextBbarbaricBnonBasianBusaBproblemBhomeBretardBeverBelseBpointBbroughtBlandBchinksBjewishBbelieveBmightBsuckingBtheyBsafeBbreedBmaleBputBmonkeyBstraightBsuckBchildBmexicoBsocietyBcareBpowerBimBmiddleBcolorBgoesBcumBsickBholyBfaceBshutBbeatBmonthBfightB	presidentBnoBkindBrejectBracismBtalkB	politicalBhistoryBguessBstatesB
especiallyBillegalsBjobBblacksBskinBkidsBheyBindiaBtellB
terroristsBdeserveBusedBfriendB	communityBhalfBislamicBbigBawayBearthBwhoreBdenyBbadBifBbrownBdoBeastBetcBaroundBraceBblowBbecomeBmyBwithoutBlooksBalBmaybeBtakingBmeanBmadBlongBholeBshootByaBbeliefBpplBfindBwhateverBmakingBgivingBfunBdontBnastyBwallBactsBunitedBbullshitBprocessB
experienceBcourseBinnocentBparentsBcaseBreadyBratherBoldBbangBsorryBpropertyBidiotsBrefugeesBcatholicBbuildBsonBneedsB
everythingBpoliceBomarBideaB	countriesBthingsBcalledBtryingBreasonB	comediansBjesusBsubBprobablyBliberalBfreeBenjoyBbestBsoBforceBamazingBstartBarabBiranBnoneBladyBaBshootingBwesternBtopBwantedBreadB	attentionBbloodBridBseemBseeingBsentBplanetBretardedBhappenedBwaysBuglyBfilthyBhatingBtakenBwrongBlgbtBcomingBmoneyBthemBfoodBassholesBformBcloseBwestBshoveBfatBincelsBenoughBgunBchokeBindianBfineBafricansBnationsBdogBcrazyBhitlerBstageBjobsBwhatBslutBplanBwatchingBmilitaryBlevelBhugeBrtBholesBbombBgenderBpersonalBattacksBfalseBbiBbeliefsBobamaBstreetBfeelingBthinkingBarticleBsomebodyBrapistsBredBplaceBpalestinianBterrorBlovingBforcedBcrapBsayingBsortBmubarakB	holocaustBassaultBcauseBhangBinvadersBlickBlightBinvadeB	religiousBcancerBculturesBreturnBtwoB
definitelyBprettyBtexasBhuhBbastardB	democracyBinterestingBpigsBmeansB	communistBwholeBknowingBstealingB	literallyBdoubtBpeacefulBheadBalreadyBquickBsheBplentyBtransgenderBkickedBdudeB
constantlyBmoralsBgunsBfuckedBtrannyBchurchBarmedB	murderersBloadBlazyBlaughBkillersBcryBfullyBusefulBgivenBshipBtalkingB	slaughterBsecularBburnBatBcopBsuicideBjealousBseedBworstBriskBdeathBsyrianBshalomBgaveBaddBanywayBmindedBfathersBdiedBfullBdisBthreatenBmoralityBidiotBfinishBunarmedBgenocideBbagelBsuitBlowestBionBcuteBclueBwipedB	statementBsavageBpreparedBendBthoughBmatterBeraseB	backwardsB	differentBfacedB
healthcareB	synagogueBresistBmouthBauthorBunacceptableBkidBwishingBniceBcreatureBsaysB	insultingB	parasitesBevidenceBangryBnobodyB	guatemalaB	committedBreminderBpieceBethicBrewardB	dysphoriaBconceptB	pakistaniB	legionaryBjomavaesjosBebloaB	chinatownBwannaBslantBindependenceB	bulldozedBkikesBnaturalBheresBrapingBlearnByourselfBextinctBdesireBtearsBevilBbrethrenB
whatsoeverBcamB
prosperityBspicksBpalB
towelheadsBniggrusBmexicansBintellectualBhonourBheardBgaucheBfoundingBexactB
americanusB	wonderingBdickheadBdeathsBchancesBrealizedB	happinessBcheatingB	yesterdayBsmallBrefersBspicB
determinedBawareBwetbackBgookB
technologyBborderBhurtB
babylonianBbeingsBtripleB
graduationBcockroachesBboyBstrapBserpentBhandicappedBdeclarationB
subversiveB	iamkrauseBvampiresB
signaturesBfeebleBcolderBwarB	posterityBmnBkeniteBcolesBimplyingBhatefulBboysBhttpBcantB	nonbinaryBwantsB
prosecutedB	confrontsBapartBwhoBmplsBjihadistjoeBayoBthoughtBrashidBmotherBscalpBlgbtqBgenuineByeyBtranniesBcrippledBbarrBmongsBfocusingBsixesBpangolinB	appetitesB
whitepowerBlmaoB	pointlessBauthoritarianB	condemnedBmirajBlailatBequalityBcameraB	perceivedBclaimBhiringBseasonBlookingB	beautifulB
understandB
perpetuateBbibleBafricanBlastBsplashedBcontributionBabortionBfindsBdisadvantagedBnilBhollowBtribeBleastBoutcastsBtodayBgratefulBmineB	dedicatedBvergeBfagBtwibbonBlesbianBimmenseBytBghanaianBbringingBattachedBwatchBinsteadBdamnByetBwordBanimalsBselfBprogessBnugsBlaudsBbabyBtransvestigationsBblinksBsurelyB
minoritiesBigboBdeportBbullBstandingBchallengingBrewardedBgetsBpoliticiansBcustodyBboiB	deservingBabegBjesuitBogbakoumuigbodayBsourceBbarackobamaBstateB	terroristBundesirableByoungBwearingB
governmentBlanguageBgeezBmomBvideoBopenBuselessBweBpakistanB
northkoreaBlikelyBfakeB	existenceBnationBlegalBtheseBleftBstepBcarefulBshareBshootsB	religionsBheartBwaitBfaggotsBpayBbetBactingBtypicalBlivesBscaredBlawBhoesBamongstBworthBbodyBgaysBallBseenBlivingBgroupBcampsBtermBtakesBfarBstayBprisonBokBdevilBwhimperB	dangerousBwhitesBsquealBpostBhowBholdBwifeBtoldBimagineBsexualBagreeBturnB
statementsBpoorBbringBhoeBhearBdueBactBrestBprofileBeuropeBthreatBcommitBmaryamBaintBhotBschoolBnawazBfourBmehBaskBsuperiorBrapedBcontrolBclickBcentreBarenaBsourcesBnotwithstandingBnotableBspeakB	positivesBplayBsahibaBpakistanstandswithmaryamBmarriyumBgriefB	aurangzebBassholeBandBpatheticBentireBchineseBseveralBjokesBzionistBcallingBtogetherBcitedBbiologicallyBstandBimmigrationBfuckinBdeadBcomicalBlistB
disprovingBwahhBgcBamuricaBadaptBqueerBmissrepresentBhatesubBtitsBasBslaveryBinherentBmindBstealBcrimeBdefendBsingleBnewsBobviousBusingBhairBsendingBsadBmassBhighBisisBthanksBsouthBlosersBbabiesBrememberB
supportiveBsaudiBtypeBhonestlyByoBsoonBdestroyBchinaBwentBheBincelBwowBrealdonaldtrumpBafricaBmigrantBshotBparkB
committingBcomesBtookBsideBtrainBtiedBsenseBmurderBcitizensB	sexualityBhouseBsoundsB	importantBaloneBtenBclimateBthatsBrunBmoveBfaithBmediaBbasedBignoringBableBjordanBfemalesBdaysB
atrocitiesBtrailerBstoryBgreaterBexactlyBdeepBseemsBbehindBbeingBprovingB	genocidalBthrowingBmentalBearlierB
populationBwordsBissuesB	sentimentBautismBaudienceBstartedB
presidencyBballsBwonderBfoundBmensBtillBmarriedBchingBstrongB	downvotesBagoBemB	westbrookB
completelyBchongBworseBindiansBcutB
separatingB	defendersBhinduBwhereasBbigfactsBissueBhookBfagotBspendingBharmlessBdehumanizingBjokeBpropBmentallyBvietnamB
immoralityB	specialtyBcommentB
threatenedBattackBthrowBfatherBquestionBhoseBgottaBcoolBacornBukBoboamaB
absolutelyBstuffBtellingBjailB
homophobicBfollowB	dramaticsBhaircutsBbisexualBprayBacceptBtransgressionsBbreastBworkingBprimedBnativeBkikeB
undeniableBhitBauthoritarianismBjustBfinallyBunrealBmajorityBdicksB
testicularBdealBcrippleBlowBchristianityBweakByourBhappenBfolksBbitBwhenBprostateBdunkedBinsideBfatassBtrulyBshameB
protectingBcrimesBovarianBknowsBknewBteamBsocialBweirdBrelationshipBmillionBlostBcommentsBbroBnaziBflagBnotBwtfBwelcomeBsupremacistBshitholeBfucksBbrotherBageBidentityBpastBniggerlovingBignorantBfailureBwindowBtruthBsorrynotsorryBltrBtrialBfutureBwetbacksBthroatBpregnantBfoundedBfamiliesBcityBblameBhappensB	globalistBmillionsBmalesBpublicBlawsBexistBequalBgarbageB	seriouslyBvoteBbusinessBlistenBfagsBeidBfreedomBtiredBgermanyBeasyBsystemBlightlyBmixedBhealthBdatingBallowedBworryBtowardsBbrainB
paedophileBinBcitizenshipBsecondBwinBillBgoneBspreadBsatanBladiesBkindaBacrossBthinksBsuperBrealizeBalongBnormalBhispanicByallBsawBoutsideBcontinueBcisBmigrantsBgladBfrontB	worthlessBhandsBracistsBdateBcoupleBbiggestBslaveBlesbiansBblessB	basicallyB	terrorismBfilledBdudesBtreatedBdaddyBbirthBcuckBtotallyB	sometimesBplayingBgameBfightingBhindusBdadBclearlyB	celebrateBviaBrichBpornBcaresBsisterBsaveBeuropeanB	diversityBbcBoftenBmarriageBgangBdonBtwitterBtreatBforgetBenglishBslavesBsimplyBfeministBdumbassBcuzBwearB	privilegeBgrowB
differenceBactualBeyesB	criminalsBwhoresBmeBfireBcannotBminorityBlineBjusticeBpassBnumberBmurderedBhumanityBarabiaBwakeB	obviouslyBcanadaBcanBkashmirBhahaBstickBmeetBbordersB
appreciateBloserBhoweverB	thousandsBshittyBlilBhornyBchanceBuBiqB	feministsBdeemedBchoiceBtightBsmhBshowsBmetBmembersBiranianBaskingBinternetBabuseB
supportingBprotectBunBthBfeltBexceptBproblemsBmostlyBhumansBanymoreBorderBnazisBmovieBhatesByBviolentBraisedB	attractedBperfectBworshipBstreetsBquiteBopinionBnightBcuntsBatheistBwasteBsinBpossibleBexpectBbetaBshortBsexyBlyingBlieB	includingBconsiderBaskedByeaBgroupsBbreakBrussiaBkickBfellowBtherbyBsimpleBredskinsBmemorabiliaBlordBidentifyBblackrepublicanBiceBunlessBpowerfulBracialBknownBcommonBclassBasiansBalphaBviewBdarkBtriedBfitBaliveBwithinBvirginBspeakingBsoundBisBilhanmnBhusbandB
homosexualBcheckBbelongBmessageBbrothersBsetBmoronBawesomeBworksBslapBputtingBherBchooseBbritishBacceptedBtoBpenisBgeneralBdropBbecauseBaocBexampleBusuallyBactionBsissyBpullBmulanBlovesBhereBhatredBgivesBeatingBcreatedBredditBnahBthirdBspecialBrunningBdeservesBbanBareBaliensBsupremacistsBstBpigBasylumBroleBproBcertainBweekBvileBmomentBheavenBtoxicBpissBlovedB	educationBwhetherBjoinBthickBchickBthoBforBbutBshariaBmoronsBcitizenBagendaBpoliticsBloseBleadersBlackBfeelsBluckBfeminismBcleanBboutBwaterBturnedBdaughterB	wonderfulBvalidB
girlfriendB	destroyedBcelebratingBletsBforeignBfairB
everywhereB
consideredB
regardlessBplacesBisraeliBcongressBhomosexualityBconcentrationBcollegeB	supremacyBpickBperiodBtaxBsucksBshowingBafraidBtooBtinyBlettingBcriminalBcomfortableBsweetB	situationBcultBcryingBbrokeBannoyingBallowBvictimBspeechBpartyBmovementBlotsBfillBeasierBdiscriminationBbuiltBarabsB	acceptingBnationalBarmyBretardsBfeminineBfeelingsBwetBuponBroomBparadeBlegallyBfearB	ancestorsB	democratsBconservativeBtrustBonlyBmeantBliberalsBinbredBradicalBnowBlameBhorribleBcopsBthreeBmorningBhaBdailyB	shootingsBlongerB	accordingBlikesBbiggerBvictimsBsomaliaBnukeBchurchesBahBswearBspaceBomgB
degenerateB
attractiveBsupposedBsitBmarryBcreateBcompleteBareaBupBterribleBteachBpiecesB
personallyB	palestineBliesBleaderBsistersBcnnBcardBbuyBbannedBpushBlockedBlaterBheldB
generationB	europeansB	catholicsBanswerBspanishBsomeBrelationshipsBeasternBzeroBsmartBseriousBorthodoxBilhanB	characterBwillingB	otherwiseBnorthBidBgroundBcocksBbsBsoccerBpaidBouttaBmassiveB	followersB	everybodyBbookBwantingB
pridemonthBpartnerBidkBhoursBhelpingB
propagandaBinsultBcrossBthotBspitB	pedophileB	hopefullyBfallBwaitingBvideosBtallBsimilarBsexistBrepresentationBlocalBhomoBfixBafBsBlegsBdearB	boyfriendBbeyondBbagBviewsBsufferBmrBenemyBdumpBbbcBaverageByoutubeBhandleBcarB	surprisedBdollarsBdoesntBculturalBopBmattersB
homophobiaBfindomBgrewBcuckoldBanybodyBpussiesBolderBnutBeyeBblessedBvaluesBstfuBplusBillnessBforeverBamongBwitBsignBrecentlyBrealityBnationalistBautisticByoureBtweetBrussianBkingBimmediatelyBfactsBcountBbecomingBsyriaBsoulBrandomBiraqBamountBopportunityB	murderingBcowardsBclearBbeatingBwarsBwalkBunderstandingBsolutionBreasonsBrapistBprayerBofficeBiraniansBignoreBgrossBretweetBrdBpalestiniansB
apparentlyBsemiticBruleBpocBideologyBpictureBpayingBinternationalBgrowingB	extremelyBbyeBbottomBbillBvoiceBthreadBstartingBpositiveBneededBjudgeBhonestBgermanBfuckersBarrestedBtouchBplayedBlargeBgrownBfocusBdecidedBtellsBsirBrelateBperhapsBcaughtB
californiaBbehaviorBashamedB	abortionsBspendBreadingB	masculineBfavoriteBtvBenergyBcivilBcallsBstoriesB	spreadingBntaBmoreBluckyBgendersBeverydayBdecideBdaBconvertBcongratulationsBbreakingBbigotBweaponsBtermsBslutsBshooterBquranBqueenBproofBlockBlmfaoBexplainB	currentlyBtotalBsouthernBlateB	followingBtfBsleepBshesBripBpmBpersonalityBoffBnumbersBlivedBfolkBconversationBargumentB
supportersBmusicBmodernBmessBlatinoBbastardsBassesBsecurityBresponseBleadB	difficultBcatchBbillionBbedBanalBaccountBabsoluteByouthByoungerBthoseBsluttyBsjwBpracticeBmissBmentionB
interestedBhelpedBfigureBeasilyBtalksB	sufferingBrideBmonthsBexBcagesBthoughtsBschoolsBmasculinityBdoubleBdonaldBchangedBvirginsBtoughBtaughtBsquadBracesBneitherBinvolvedBfaultBfacesBethnicBcitiesBwelfareBsportsBremoveBhesBfailedBdidntBcourtBbodiesBvsBregimeBpartsBonBmultipleBkeptBkashmiriBhomelessBgovtBforwardBexperiencesBelBdrugBworkedBsexuallyBraiseBprogressiveBprayersBpostingBpinkB	oppressedBopenlyBjihadBimaBideasBheadsBfuckerBcurrentBcomparedBclownBbenefitBbeggingBactionsBworkersBwhoseBlatinaBinvasionB	generallyBdressBdespiteBcomplainBbuildingBalthoughBsupportsBrateBontoBjapaneseBjapanBforgotBfindingBentitledBcoverBadviceBadmitBwheneverBsongBpureBpointsBoriginalBlearnedBfastBenglandBcommunitiesBwipeBturnsBtrynaB	somewhereBpurposeBpovertyBposB	mentalityB
indigenousB	happeningBfranceBfoolBdisgraceBclitBbraveBrainbowBprophetBonlineBministerBcorruptBcausedBassumeBanywhereBserviceBpreferBpostsBpositionB
pedophilesBhideBhelpsB	defendingBatheistsBaheadBvaginaBstoppedBpuertoBperBoffendedBlaidBharderBdoorBdogsBdestructionBcenturyBbuttBbasementBwalkingB
transitionBsomehowBpleasureBoilBnatureBfeedBdrinkBcontextBclosetBbruhBbeautyB
uneducatedB	standardsBgamesBeducatedBdareBcupBbrainwashedBtalkedBslowlyBreportBrefuseBproveBphoneBnearBmovingBmoralB	meanwhileBdecentBchicksBbreedingBunfortunatelyBstatusB
ridiculousBresponsibleBramBrBpassingBoutBmagaBitsBinsaneB	genuinelyBfeetB
definitionBclaimingBchargeBtoiletBstuckBsoldBpainBnonsenseB
eventuallyBdriveBdreamBbecameBaidsB
acceptanceBwhoeverBrhetoricB	resourcesBnamesBlookedBgrabBanywaysBspiritBsatanicB
privilegedB
particularBhigherBdecadesBcentralBblueBwithBwildB	screamingBscienceBriseBregionBjohnBheritageBelectedBdyingBdrBdisneyBcorrectBconfusedBcarryBrulesB	questionsBprovideBpicsBpeoplesBorientationBorganizationBitalianBequallyBbelievesBbegBarrestBwhereBtongueBsameBruinBratBpossiblyBplayersBneckBkeepingBinterracialBgorgeousBfrenchBeconomyB
destroyingBchannelBcampBasiaBwroteBwrittenBspeaksB	sensitiveBrotBrecentBpunchBmeatBloudBlaughingBhoodBhiBgreenBdomesticBdidBcouplesBcongratsBalliesBtasteBsharingBoppositeBmoviesBmothersBkBhungryBhundredsBfromBevangelicalsBcolourB	certainlyBbtwBbasicBtownBthrownBslideBseekBnutsB	inclusiveBgreatestBfilipinoBfavorBedgyBcontentBbrokenBvalueBturkeyBstudentsBstoleBquitBprotestBplsBkkkBinvadedB	hollywoodBfanBdrunkBdisagreeBdecisionBbusBbombsBasapBabortBvotedBthenB	spiritualBspentBmodelBleavingBindeedBimmaBhijabBguiltyBgfBdrugsBdeportationBdemandBcivilizationBcheatBchangesBcastBburningBblockB
attractionBattendByemenBwriteBtransphobicBtestBstruggleBsoldiersBrolesBparentB	offensiveBnoticeBlondonBkoreaBislandBgangsBfingerBenterBcampaignBbigotsBantifaBadultBtortureBsuckedB
successfulBsidesBseesBpushingBpoundBpastorBmurdersBlikedBkissBjuneBisntBgonBexistsBawfulBarmsBalrightBalienBsecretBremovedBprogressBmodiBmissingBmatchBfrBexposedBeconomicBblondeBtypesBstartsBshallBsellBrecordBpunishBpoliciesBpanBownedB
misogynistBlogicBhomesBenemiesBearlyBbeatenBafghanistanByorkBtravelB	thereforeB	supporterBspermBseekingBsavedB	representBremindBrefugeeB
punishmentBpriestsBperspectiveB
oppressionBnuclearBmuhammadBmemberBlowerBlatinosBhonorBhindiBhelloBgtfoBgasBfansBcowardB	caucasianBbendB	australiaBwingBvisaBupsetBtittiesBrelatedBpretendBopinionsBnamedBmedicalBmainBisraelisBindividualsBholdingBheterosexualBharmBforcingBeuBdragBdisabledBdemocratB
delusionalBcruelBblindBbinaryBasfByepBtaxesB	stupidityBserveBsakeBreplaceB	recognizeBrawBmomsBmajorBleadingBjumpBhomosexualsBhighestBhidingBghettoBfilthBdnaBdisrespectfulBbusyBboringBbigotryBapplyBwontBweeksB	triggeredBtendB	subredditBrockBresultB	nigeriansBmeaningBkeepsB
foreignersBfiveBdirectlyB
democraticB	daughtersBcrushBavoidBallyByrsBstandsBreplyB
pretendingBprayingBpolandBnukesBnoteBnegativeBnarendramodiBkneesBirishBgodsB	emotionalBclothesBattackedBanimalBtripBstudyBspecificBprojectBpassedBofferBinferiorB
homophobesBextraBcowBbeginBundocumentedBughBtraditionalBtbhBstrengthBproperBnearlyBlayBhousingBglobalBforcesBextremeBexpressB	ethnicityB	desperateBcricketBckBcatholicismBboobsBatheismBairBaccessBwokeBtoyBteachingBscreamBricanBproperlyBpresentBndB	narrativeBloadsBjustifyBjiB	hypocriteB
charactersBversionBtriesBtomorrowBstoneBskinnedBselfishBpostedB	perfectlyBlooseB	ignoranceBhatedBdildoBconsideringBconservativesBcasesBcareerBcanadianBburnedBbritainBbrainsBturningBthugsBsittingBsisBshowedBpopularBpolicyBpageBmostBminuteBmarkBlovelyB	knowledgeBjudaismBgenerationsBfriendlyBfemdomBenvironmentBendedBdavidBcrossingBcondemnBbesidesBbarelyBattitudeBakaBwashBvisitBtopicBteenBspotBshitsBroastBrapesBoriginBmotherfuckerBmisogynyB	miserableBmeetingBhungB	hispanicsBdoctorsBdiseaseBcrisisBconsequencesBchadB
celebratedB
acceptableBtroubleBtreatingBsunBsummerBrudeBrareBpunishedBofB	necessaryBnativesBmumBmisogynisticBledBkoreanBjihadiBgrantedBgermansBgainBfootBeventsBearnB
disrespectBcousinBbjpBzionistsBtwinkBstyleBsmileBsaudisBsafetyBrapBphysicalBnigerianBnigeriaBnakedBmsBkillsBinfidelsBhealthyBfilmBdumpsterBcoloredBchargedBcenterBbombingBblamingBbenefitsBbasisByupBworriedBunlikeBtempleBrepublicansBpolishBplayerBmommyBgoddamnBfootballBcoldBasideBaidBwivesBsomaliBsinsBsheepBsectionBpreventBpicBminutesBmarchBlosingBleftistBindependentBhurtingBhighlyBfoughtBfascistB
extremistsBcomplexB	companiesBbooksBattemptBtradeBsilentBruinedBrepentBratsBqualityBpasoBlipsBkeyBincludeBgottenBexpectedBexcusesBeventBeBdeservedBdanceBcucksB	convincedBallowingBactivelyBtowardBspeciesB
solidarityBslurBrootsB	promotingBorBinterestBinsultsBhinduismBheroBgoldBfraudBfiredBfamousBenslavedBdonateBclaimsBchicagoBbB	awarenessBagainBusesBtweetsBtheresBspecificallyBsmackBsikhBsellingBscrewBrelevantBreachBpreachBmercyBliarBiveBinventedBinsecureBhamasBformerBfinalB
discussionBclosetedBchangingBalotBtrashyBtraitorsBtilB	supportedBstoreBslowBramadanB	positionsBofficialBinchBincestBhomosBhatersBgoddessBgoatBeffortBdebateBcuriousBcreatingB
confidenceBwickedBteethB	strugglesB
revolutionBreceiveB
protectionBplannedB
patriarchyBnoseBmamaB	listeningBkillerBintelligentBinspiredBhurtsBhangingB	creaturesBcondomBbarBagreedBaceBwideBweddingBtrollBtonightBthugBspectrumBsentenceBscaryBroughBremainBpreBpicturesBpartnersBpaperBmilkBlearningBjourneyB	influenceBhearingBgiantBfederalBdemB	concernedBclubBcausingBbigotedBballB	worldwideBuncomfortableBtwiceBtherapyBsurpriseBsoftBsackBrunsBromansBqueersBmotherfuckersBmixBmfBimageBhahahaBfloodBfinnaBfingersBfedBevangelicalBdiverseBchastityBchanBbotherBbloodyBbaseB	attackingBancientBadamBweekendB	treatmentB
throughoutBsuddenlyBsolveBsmellyBsharedBsadlyBridingBpopeBoverallBgoogleBfetishB	extremistB	encourageB	criticizeBcourageBafterBthousandBtearBpromoteBpriestBpressureBnoticedBmovedB
leadershipBjoeB
identifiedB	hypocrisyBhaveBdumbestBdislikeBdefenseBcomplainingBcompanyBbecomesBbathroomBartBanonBaddressBtrumpsBtransitioningBthirstyBstudentBsoyBsolvedBslaughteredBskillsBshBrarelyBranB
physicallyBpaulBmindsBmansBlandsBkhanBinfestedBincludedBheightBescapeBentirelyBconstitutionBbuddyBboredBbitterBangerBadministrationBthotsBtargetedBswallowBsurviveBsurgeryBscumbagBmullahsBmemeBmachineBlinkBkarmaBiraqiBimpactBhopingBhomelandBfoxBdoctorBcosB	convertedBchillBbringsB	beginningB	advantageBvariousBusualBtwatBthusBsleepingBskankBseparateBsatB	sanctuaryBruiningBratesBprimeBpenisesBpathBpassportBpantsBpakiBlabelBintelligenceB
incrediblyBhireBhairyBgovernmentsBfoolsBflagsBexperiencedB
depressionBchoseBcheapB	believingB	believersBactorsBwarmBvotingBthruBthreatsBswedenBsubjectBstarBstandardBsillyBshootersBshirtBseekersBsecondsBresponsibilityBpumpBplainBphilippinesBpantiesBonceBnationalityBmormonBlevelsBlaborBlaB	kashmirisBjamesBhoBfragileBffsBexecutedBdemsBcharityBboatBareasBancestryBamenBabilityBwarningBvotersBtraitorBtieBsuccessBsubhumanBsizeBsiteBsceneBrollB
republicanBraisingBqaedaBpubliclyBpraiseBpotusBorangeBnerveBlinesBliarsBkamalaBgradeBfishBfieldBfacingBfBexplainsBdifferencesBdescentBdeeplyBcurseBcoveredBcostB
conspiracyBcausesBbiracialBbelongsB
backgroundBawkwardBassumingBanyBytaBweaponBwatchedBwackBvoicesBsightBshowerBsanBrequiredBreplacedBrejectedBputsBpoolBplatformBpackBnormieBniggazBmosqueBmonsterBmissionBlonelyBkillingsBinformationB
incredibleB	homophobeBhimBhellaBfiguredBexistedBdoucheBdesertBclipB	centuriesBbtsBbimboBasexualBargueB
aggressiveByrBwhereverBwealthBturkishB	toleranceBsupremeBsportBsonsBsmashBsignsBregularBreformBradicalizedBpromiseB
pakistanisBopportunitiesBneighborhoodB	migrationBmgtowB	mentionedBinviteB	interviewBharrisBgrandmaBemptyBdegeneratesBcrackerB
conversionB	continuesBconstantBconquerBchosenBboxB
biologicalBbillionsB
bangladeshB	apartheidBanBakbarBabusedBwritingBuhBsmokeBseriesB	separatedB	sacrificeBreactionBquietBpullingB	potentialBpickedBpersonsB
pedophiliaBliteralBkingdomBjerkBhotwifeBhappilyBgrandfatherBgovBfreaksBembraceBdryBcoB	civiliansB	behaviourBarrivedBuniqueB
traditionsB	traditionBtorturedBtalibanB	strangersBsomewhatBsettleBreparationsBpronounsBpissedBopeningBobeseBmissedBmichaelBmassacreBlatinBisrealB
individualBheartsBgospelBeducateBdroppedBcreatorBcircleBcapitalBcageB	blessingsBbfBbelievedB
associatedBantisemitismBaltBalmightyBaccusedBvotesBtargetBrippedBrashidatlaibBraidBprogramBprivateBpersianBpercentBpenaltyB	neighborsBmoonBmilfB	marriagesBlatestBjoyBinvadingBguiltBfreakBdollarBcrowdBcousinsBcoreB
contributeBapproveBaffectBxdBwinsBvaginasBuniteBtrainingBtitleBsinghBservingBrageBpityBpileBpickingBoldsBnationalistsBmobBmakeupBlargestBjudgingBitalyBidcBgazaBfreakingBflyBexistingBexcitedBdivideBdeyBdealingBcrackBcBbenB	availableBautomaticallyBathletesBaffirmativeBadBwomensBwhilstB	welcomingBwaveBteensB	teenagersBteacherBsumBstrongerBstoppingBsecureBrealiseBrapperBrallyBquoteBpoliticallyBpartiesBmayorBhitsB	hilariousBgrandBfollowedB	financialBembarrassmentBembarrassingBdependsBdemonicBdatedBcumslutBcellBbumBbeltBbatBarabicBabortedBwannabeBtheyreBtableBsuchBsubsB
strugglingBstayedBsilenceBsaintBreleasedB
preferenceB
percentageBparadesBpainfulBneighborBmosquesBmormonsBmindsetBmilesBirlBignoredBheavilyBgreedyBexposeBeraBendsB	eliminateBegoBdrivingBconflictBcalmBbullyingBbankBarentBaliBalabamaBagentsBwinningBstanBspewBsociallyBsmellingBserialBremindsBpuppetBproductBpriceBoptionB
oppositionBnowadaysBneoBnationalismBmistakeBmirrorBmateBlebaneseBleavesBjihadisB	instagramBincludesBhumiliationBhistoricBhalalBforgiveBflatBfairlyBfailBempowermentBegyptBeffortsBdisplayB	detentionB	continentBchapoBcensusBcarsBbrutalBbattleB	authorityBarseBanchorBaffordBwiseBthroatsBthreateningBthomasjtobinB	testamentBsupposeBshownBshoesBsexismBservicesBpunkBpreviousBplanningBpaypigBparticularlyBnaBmurdererBmorallyBmonkeysBmikeBmainlyB	lifestyleBkysB	jerusalemBinvitedBinfoBindustryBidioticBgrandparentsBgopBfukBeugeneBencouragingBdrinkingBdisgustBdatBcusBcreepyBcreditB
conditionsBcelebrationB	caliphateBbutchBbustBbulletsBblessingBbiteBbeefBwwB
washingtonB
vulnerableBunwantedBtwistedBtraffickingBtoolBtextB
surroundedBsecretlyBsaltyBrubBreverseBrespondBrepeatB	referringBreferB
protestantBpakBopposedBnecessarilyBmohammedBmemesBmaterialB	islamistsBinsanityBhardlyB
harassmentBgraceBgloryBgapBfckBfarmersBeternityBeternalBempireBdignityBdevilsBdefineB	decisionsB	confirmedBcompeteBcommieB	civilizedBblownBbaptistBactressBactorBwasBvaticanB
understoodBuncleBtrollingBtreeBtipBtheoryBtanBsunniBstrangeBsixBsingB	sincerelyBshouldB	righteousBquicklyBpowersB	pansexualBpaganBnegroB	murderousBmfsBkindsBjulyBjuicyBjihadistBislamistB	interestsBincreaseB	imaginaryBhistoricallyB	guaranteeBgiftBformsBdivorceBdiseasesBdiscriminateBdescendantsBdelhiBdeityBcellsBcartelsBbirthdayBbarsBateBarguingBapproachBadvocateBabusingBwhileBwalkedBtriggerBteachersBtaiwanBstolenBstepsBsegregationBrevengeB	regardingBquestioningBphotoBmuhBmouthsBmarryingBlikingBlessonBleftistsBlatinasBinnerBingBhospitalBharamBgrahamBfranklinBfagetBenjoyingB
empoweringB	elsewhereBdmB
despicableB	demandingBdealtB	criticismBcreamBcontactBcongresswomenB	confidentBchopBcapableBbrosBblowjobBbeBbadlyBagedBacidBabusiveBtoneBsuggestBstrokeBstereotypesB
stereotypeBspellBsmfhBservedBsandB	reproduceB
representsBrepresentingB	regularlyBpulledB	protectedBpcBpassionBoutrageBourBobsessedBobjectBnukedBmotherfuckingBmagicBknockBincomeBimmoralB
hypocritesBhorseBhongBhisBhappierBgreekBgrandmotherBgettinBforthBfloridaBfieldsBfeedingBfaggyB
eradicatedB
equivalentB
encouragedBdykeB	disgustedB
discoveredBdefeatBcrawlBconnectB	comparingBclosedBchoicesBchestBchaosBcaptainBbuyingBbowBbelovedB
australianBaryanBartistB	activistsBwishesBwhiteyBweedBwebsiteBunionBsudanBsquareBslightlyBskinnyB	shitholesBromanBqueensBqualifyBpoleBpelosiBowningBownersBminimumBlegislationBkiddingBjailedB	inspiringB	inclusionBimoB
illiterateBhypocriticalBhundredBhardcoreBgenitalsBfyiBfuckenBfloorB	favouriteBessentiallyBemotionallyBembarrassedBelectionBdrownBdiscussBdiesBdangerBdamnedB	connectedBcondomsB
compassionBbarebackBappreciatedB
antichristB	amerikkkaBactivistBacknowledgeBzealandBwouldntB	workplaceButterBultimateBtestosteroneBtechBsuperiorityBstoodBsmarterBshapeB	salvationBreportedBreceivedBragingBrabbiBpromotesBprofessionalB	practicesBpointingB
permissionBparticipateBopenedBnipplesBnancyBmidBmassesBlemmeBjusBironicBirelandBfwBfistBfantasyBembassyB
eidmubarakBdrippingBdifferentlyBdesiresBdemonsBdBcounterBclaimedBchinkBcheeksBchatB	castratedBcaringB	brainlessBboycottBbandBadvanceBadmireB
xenophobicBtrynnaBthierBtechnicallyBtallerB
submissiveBstrictBslursB	shamelessBrussiansBrichardBreportsB	providingBpressBplaysBpissesBoweBnetworkB	neckbeardBmonstersBlegitBjaiB
impossibleBhourBgurmeetramrahimBgirlfriendsBgeneBfundBfuelBfranklyBflowBfellBexterminateBexposureBengageBedgeBdramaBdownBdirtBdescribeBdegreeBdancingBconcernBcodeBclothingBclosestB	challengeBchainBbreaksBboughtBbootBboardBbehalfBautistBarmBwombBtribesBtrendBtransphobiaBtrainedBtinderBthouBthankfulBsympathyB
surprisingBsteveBsoilBsiblingsBshemaleBsaintsBroadB	qualifiedBpenceBmistressBmedicineBmastersBmasterBmaryBmapBleagueBknifeBkitchenBjournalistsB
irrelevantBimproveBikBhuntBhrtBhiddenBgoalBgangbangBgBfoolishB	expectingBdutyBdistanceBdisorderBdiscriminatedB	developedBcureBcumshotBcriedB	cleansingBcamelBbroadBbossBbentBbeganB	apologizeBantisemiticBaccuseBwashedBwallsBwageBveryBurgeBunnecessaryBuniverseB
ungratefulB
ultimatelyBtrollsBtouchingBtolerantBthrewB	terrifiedBsymbolBswitchBstigmaBsoulsBsmellBshockingBshipsBshamefulBruledBromanticB
protestingBpreciousBpopBpillBorgyBnudesBnopeBmessagesBlaunchBjuiceB	judgementBjamaicanBjackBinsufferableB
inherentlyBhostBhopBhivBheatBgoalsBgagBfleeBfaggotryBfacebookBedBdumbfuckBdrivenBdressesBdrainBdommeBdollBdesignedBdenialBdebtBdatesBcuckedBcriesBcreampieBcortezBconfirmBcomfortBcomBchildishB	candidateBbombedBbinB
basketballBbaitingBatleastBappearBappealBadoptedB
activitiesBwolfB	violentlyBverminBvastBtolerateBthyBteenagerB	straightsBstickingBstarvingBsongsBsolidBsnakesBsnakeBsloppyBseaBromeB	respectedBrequireBrepresentedBpurpleB
protestersB	pregnancyBpoundingBplansBplagueBoverseasB
officiallyBoccasionBnBmolesterBmodsBmeritBlookinBloathingBkongB	incapableBhumbleBharmfulBgoodnessBgeniusBfundingBfocusedBfashionBdozensBdoesB	disturbedBdickedBdiasporaBdamageB
comparisonBcashBanytimeBanusBagesB
afterwardsBactiveBabcByellBwritersB
validationBuntoBuaeBtrackBtornBtonsBtittyBtheirB	teachingsBtalentedBstudiesBskullB	sickeningBshahBscaleBreporterBreformedB
reasonableBragBrachelBpushedBprovesBplugBoverBolBofficersBobjectsBmultiBmodelsBministryBmeghanB
mainstreamBlunaticBletterBlargerBlargelyBkenyaBjudgedBjimBimmatureBimamBhumorBhousesBheavyBhatBgulfBgamerBfunctionBfridayB	fortunateBfillingB	fantasticBfallingBexterminatedBexchangeBepsteinBenslaveBempathyB	dumbassesBdraggedBdirectBdhoniB	deportingBdataBcrossedB
corruptionBcontrollingBconsistentlyBconsentBconB
cocksuckerBclownsBcaveBcarryingBbuttholeBburdenBbreadBbisexualityBbeardBahhBaddedBwhiningBwasntB
universityB
thankfullyBteenageBteaBstrikesBstompBstayingBspokenBsoooBsignedB	sentencedBseniorBscareBsaBrottenBrocksBringBresultsBrescueBregretBredneckBpunchedBpatrolBpaintBoutrightB
originallyB	organizedBorganisationBopposeBofficerBnunBnbaBmythB	motivatedBmoronicBmessedBmarketBlossBlitBlickingBleadsBjokingBidfB	householdBguessingBgaysexBfuccBftmBfloodingBfleeingBfestivalBfascinatingBensureBeliteBdisgracefulBdisappointedBdetailsBdesiBdeleteBdegreesBdawgB	coworkersB	conqueredB
conferenceBcompareBchrisBbyBbullyBbulliedBbrightBbreathBbotheredBbiologyBbillsBbaseballB
barbariansBartistsB	argumentsB
appearanceBapeBanthonyBadultsBaccountableBworkerB	wholesomeBweirdoBweightBvisitingB	venezuelaBunityBtlBtheologyB
terminatorBteachesB	stretchedBstaffBspacesBsortsBsmallerBslitBshouldntBscheduleBscamBsaviorBrubbishBrnBrepublicBrepresentativeBrepliesBrefusedBprovedBprofitBpaysBpastorsB	offspringBoccupiedB	naturallyBmovesBmommaB
masturbateBlubeBironyBinspirationB
inequalityBidentifyingBhottestBhorrificBgutterBgrandchildrenBgladlyBghostBfundedBfuckboyBfreshBfloodedBfbiBfaithfulB	everytimeBeveB	empoweredBemotionsBeditBdoorsBdipshitBdinnerBdigBderasachasaudaBdenominationsBdeclareB
culturallyBcriticalBcoveringB
controlledB
connectionB	conditionB	competingBchromosomesBchantingBcentersB
celebratesBburyBbrushBbritsBbrazilBbotBbootyBblatantBbehaveBbearBanimeBallahuBaccentBzoneBworthyBwhatsBwaBvirtueBveteransBunbornBtuckerBtruckBtrickBtorahBthievesBtennisBsuckerBsticksBspankB	sodomitesBsodomBslamBsikhsBshoutBshirtsB
secularismBseatsBsearchBrulingBrifleBpunjabiBpsychopathsBpsychoBprovenBproblematicB	primitiveBpotentiallyBpedoBpayersBordersBorderedB
occupationBmsnbcB	mongoloidBlynchedBlogicalBlistenedBknightBkikBhittingBheelsBheadedB	harassingBgraveBgoldenBgenesBflyingBfeaturesBfairyBentryBentertainmentBdiseasedBdeniedBcubanBcreatesBcookBcloserBchiefBcategoryBboarderBblowingBblockedBbashingBbagsBadoptionBwelcomedBtroopsBtreatsBtonBsubmitB
submissionBstrikeBstonesBstinkyBstarveBspeakerpelosiBsocietalB	socialismBskyB
situationsBshittingBsettingB	satanistsBrobotBrobBresortB	repulsiveBreleaseBrelaxB	receivingB
psychopathB
prostituteB
privilegesBpoisonBplotBofferedBnudeBnormsBmissionariesBmethB
legitimateBlegendBkoreansBkoranBkissingB	kidnappedBintentionallyBinhumaneBimranBhomieBhealBhairedBfooledBfixedB
femininityBexplanationB
ethnicallyBenteringBengagedBenforceB	employeesBdrawBdominantBdesperatelyBdeeperBcringeBcowsBcowardlyBconvinceBcompetitionBcasteB	canadiansB
businessesBbrutallyB	brilliantBbootsB	bollywoodBblahBbiasedBbeachB	baltimoreBawardBaudacityBattractBappliedBamitshahBactivityBachieveBaccountsBabtBwastingBwastedBunstableB	underwearBtyrannyBtwitchBtributeBtgirlBtalkinBstretchBstdBstarsBsomedayB	socialistBsevenBsarahBretaliationB
respectfulB	relationsBregisterBrecognitionBrapinoeBrantBrampantBproudlyBproduceB	preachingBphraseBphaseBperformBpeeBorgasmB
oppressiveBnsfwBmerelyBmascBmannerBlowlifeBlionBlimitedBleakingBleBjoiningBitaliansBinfidelBincompetentBimbecileB	hospitalsBhoneyB	hezbollahBheteroBharshBhahahahaBhadBgeneticallyBforgivenessB	foreignerBfollowsBfollowerBfightersBfellasBfateBfarmBeuroB	eradicateBeldersBdumpingBdronesBdraggingBdevelopmentBdestroysBdemonB
degeneracyBcornyBcornerB
commentingBcomedyBclassicBchargesBcarlosB	buildingsBbashBbangingB	assaultedBaspectsBallowsBabrahamByellowByahwehBwitnessBvocalBvaluableBupsBunbelievableBtraitsB	throbbingBthriveBteaseBtalmudBsyndromeBsuspectBsundayBstripB	stonewallBstabBspokeBsolelyBsoldierBsodomiteBsmokingBsmithBshovedBsettlersBscenesBsavingB	sanctionsBrollingBrevenueBrepBremarksBpsBprollyB	predatorsBpoopBpersecutionBpepperBpedosBparadiseBovercomeBoffenseBnorthernBmpBmosesBmileBmentionsBmalaysiaBlinkedBlibertyB	justifiedBjoinedBjizzBintoleranceB
imprisonedBimportBilkBhugBhostileBhBgrindrBgrantBgovernorBgenderedBfemmeBfallsBfacilityBeyedB
explicitlyBexecuteBendingB
employmentBeasiestBdroppingBdevoutB
departmentBdecadeBconvertsBconversationsBcleaningBchecksBbutthurtBboundBblewB	blacknessBbesideBbernieBassumedB
assaultingBarielBappearsBanxietyBainBadosBachievedBaccurateBabandonBworriesBworeBunableB	typicallyBticketBthomasBthinB	therapistBtacticsBsweatyBsushmaswarajBsuicidalBsufferedBstronglyBstreamBstatsBstankBspewingB
snowflakesBsincereBsemitismBsaneBsairasameeraraoBruralBrllyB
rightfullyBreproducingB	relativesBraciallyB	psychoticBprovidedB
politicianB	permanentBoughtBoppressBoceanBnumerousB	notoriousBneedyB	minnesotaBmillerBmathBloverBlootingBlimitBlibtardsBlibtardBkickingBintentBintendedBinspireBinfrastructureBhmmBhijabiBhelplessBhelpfulBhandedBgravesBgoofyBgoatsBfluidBfleshBfacialBexamplesBewB	elizabethB	electionsBehBeffectBdustyBduhBdreamsBdevelopBdemographicBdecidesBdeadassBdeBcuttingB	consciousB
complimentBcombatBcollectBchinBcheckedBchantB
cashmasterBbredB
boyfriendsBbobBblondBbeginsBbarbieBbaldBaugustB
attemptingBathleteBappropriationBappropriateBamBalignBalhamdulillahBalertBadoptBwrapBworshippingBworryingBworldsBwhineBvisitedB
upbringingBunsafeBumBtouchedB	threesomeBtextsBteamsBtabooBsuitsBstressBstrangerBstemBstationBstabbedB	societiesBslappedBskilledBsinfulBserenaB	scriptureBscrewedBsaleBruinsBroundedBroofBriotsBreturnedB	responsesBralliesBpreferencesBpredatorBprBpoorlyBpodcastBplzBplasticBpillsB	patrioticBpatriarchalBpatientB	orthodoxyBocasioBmuscularBmossadBmaxBmaintainBlmaoooBlawyersBknockedBjumpedBisolatedBhurryBhopesBhomiesBhmmmB
historicalBhipBhintBheckBhaterBglassB	gatheringB
frustratedB	forbiddenBfailingB
expressionBearsBdvatwB
dominationBdistinctionBdipBdictatorBdealsBdcBdadsBcrueltyBcourtsBcountsBcostsB
conclusionBcommitsBcoincidenceBcishetB	childhoodBchadsBcarpetB
candidatesB	bisexualsBbiblicalBbedroomBbareB	awakeningBarrogantBaddictedBwisdomBvillagesB
vietnameseBvictoryButerusBusersBtrapBtraffickersBtommyBtiesBthirstBthiefBterrorizingB	territoryBsuddenBstomachBstableBsprayBspiderBspainBsooooBsodomyBsimpB	shouldersBshockedBshariahBshallowBshakeBsendsBscumbagsBscreamsBritualsB
recognizedBreachingBrappersBradioBprostitutionBprogramsB	producersB	prejudiceBpmoindiaBpeteBpermanentlyBperformanceBpBorgB	officialsBoffendBnyBnorwayBnineBneutralBmulticulturalB	molestingBmidgetBmichelleB
mentioningBluckilyBloversBlimpBlegBkneeBkabirB
journalistBjacksonB
identifiesBhipsBhavingBhailBguidanceBgroomingBgloballyBgeorgeBgatherBfuB
friendshipBfreelyBfreedomsBfounderBforeheadB	exclusiveBenBdressedB	dominicanB	dominatedBdetainedBderangedBdeportationsB	dependingBdarkerB	confusingB
commitmentB	celebrityBburntBbulletBbeerBbeatsBbearsBbdsmBbdsBbackgroundsBattemptsBasksBanthemBangelBamountsBamnestyBamiriteBaimBagreesBagnosticByeBxxxBwreckBwarriorBwalmartBwagesBtulsiBtrappedBtransgendersBtraitBtownsBtoesBtheftBthaiBtensBtaxpayerB
tarekfatahBsyriansBsweatB	swallowedBstunningB	struggledBstandwithiraqirefugeesBspreeBsorosBsooBsomalisBshavedBsharesBsemiBselvesBscreenBsacredBreversedBrealcandaceoBpursueB	primarilyB
presentingBprayedB
practicingBpossibilityBpagansBorganizationsBoompaB	obsessionBnoiseBnerdBnailedB	molestersBmohammadBmoanBmmmBmlkBmississippiBmiBmessyBmarvelBmankindBmanipulativeBloompaBliedBleeBlebanonBlabourBkimB	instantlyBinsecuritiesBinchesBimrankhanptiB
impregnateBhotterBhickBharryBguestBgroceryBgreedBgirlyBgeneticsBgeeBfuckboysBfiguresBfastingBfamB
facilitiesB	extremismBexcludeB	evolutionBestrogenB	establishBenjoyedBenforcementBendlessBebolaB	eachotherBdustBdistrictB	describesBdeclaredBdbonginoBcycleBcraveBcouldntB	corruptedBcopyBcontributingBconcernsB	communismBchickenB
challengedBchairB
caucasiansBcardsBbulliesBbudB	breakfastBbothBboneBboipussyBblowsB	blackfaceBbitsBbiblesBbabeBauthoritiesBarabianB
annihilateB	alongsideBagentBafghanBaffectsB
advocatingByikesBwoodBwhinyBweaknessBwarriorsBwarmongeringBwalksB	volunteerBvisionBvisibleBvillageBviewersBunemploymentBtwatsBtlaibBthiccBtattooBtBswingBswedishBsupplyB	subscribeBstraponBstormBstonedBstephenBstdsBsriBsoundingBsoullessBsoreBsneakBslipBslappingBsingingBshoutingBshamingBsessionB	senselessBrushBrowBrevokeBrequiresBremainsB	rejectionBregionalB	realizingBreachedBqurBpuppetsBprostitutesBprimaryB	preparingBpredominantlyB	preachersBpouringBpotBpointedB
plantationB
persecutedBpanditsBoverrunBoddsBoddBnotionBnetflixBmtfBmountainBmolestedBmodeBmiseryBmerkelBmelaniaBmeganB	mandatoryBlindaBlicenseBlibsBlgbtqiaBlatterBkellyBkamalaharrisBjohnnyBjealousyBishBinvitingBinternalBinfluxBinferiorityBinfectedBimposeB	immigrateB	immediateBhyperBhuntingBhormonesBgrouppalestineBgoyBgoodsBglobeBghanaBgaywonkBgayestBfurryBftBflirtingBfitsBfitrB	fantasiesBfabulousBfaB	excellentBestablishmentBenableBelitesBegyptianB	effectiveBdunnoBdressingBdrakeBdopeB	disregardBdisingenuousBdiscoverB	depressedBdeafBdaytonBdamagedBdamBcumsBcozBcoversBcountedBcoughB	continuedBcomputerBcommandmentsBcleverBcharliekirkBcastrateBbuddiesBbottleBbooBblamedBbitchingBbanningBbangladeshiBayeB	arroganceB	addressedBzindabadByayBwretchedBwilliamsBwhentheyseeusBwearsBwarfareBverseBunderageBtriflingBtransitionedBtouristsBtoeBtimelineBsurvivalBstatedB	spinelessBspeakerBspankingB	snowflakeBslimeBsleptBsinkBshiBshaBservesBsemenBseB
scripturesB	repeatingB	remindingB
rememberedB	referenceBreduceBrecruitB	reasoningBputinBpseudoBprisonsBpraysBpracticallyBpoliteBpassiveBpairBoxygenBotherBoptionsB	operationBoffenderBobeyBnycBnurseBnegrosBmutualBmsmBmetalBmatureBmanagedBlunaticsBlocalsBlmfaooooBliftBlawyerBlaughsBjustinBjunkBjumpingBislamophobiaBinsightBinformedBindiausingclusterbombsBidgafBhmBhillaryBhideousBhentaiBguardB	genitaliaBgayerBgaBfoulB
forgettingBfetusBfasterBfanaticsBfaggetBextentB	executionBethicsBesteemBequityBencounteredBdonkeyBdollsBdivorcedBdivineB	directionBdirectedBcoffeeBchoosingBcheeringBcharlieBcartoonBburnsB	buddhistsBbubbleBbrotherhoodBbrooklynBbreatheBbrandBbrainwashingB	braindeadBbraggingBbraBboomBbondB	blasphemyBbikeBbacksBapprovalBannualBanniversaryBamericasBalexBaggressivelyBagencyBadvancesBabroadBaboutBwoodsBwitchBwillBwealthyBwakingBvitalB	viewpointBuserBunfortunateBunfairBtrillionBtomB	targetingBsurprisinglyBsugarB	subjectedBstopsBstanceBsnapBsinnerBshakingB
separationBsemitesBsaturdayBsaluteBrubberBrisingBrespectsB
repeatedlyBrationalB	publishedBprotestantsB
protectiveBpresenceBpoundedBpilgrimsBphBpatriotBpatienceBpassesBpaleBpackingBownerBoutcomeB
oppressingBnunsBnormiesBnormallyB	mutilatedBmudBmomentsBmolestBminsBmightyBmercifulBlynchBlukeBloyalBlesserBleakBlapB	languagesBkagBjudgesBjosephBjonesBjkB	jihadistsBironB
intolerantBintegrationBiiBiconB	humiliateBheadlineBhangedBhandsomeBguideBgreatlyBgoodbyeBgeneticBfundamentalistsB
foundationB	forgottenBflawedBfinanciallyBfascismBfartBfandomBfallenBextendedBexpenseB	exceptionBericB	enslavingBelectBectBdmsBdivisionB
disabilityBdirectorB	dictatorsBdiapersBdenyingBdefinedBdawnBcummingB	crucifiedBconcertBcombinedBcombinationBcolonialBclintonB	christmasBceremonyB
censorshipBccB	cashslaveB	butcheredBboxesBbouncingBboostBbishopBbeyonceBbegoneB	authenticB	attemptedBassistBaspectBappBapesBalikeBagendasByoullByellingBvarietyBvacationB	universalBunderstandsBunattractiveBtrafficBtoiletsBtitB	theocracyB
themselvesBthaBtemplesBtalentBtaleB	suggestedBsucceedBstrictlyB
statisticsBstampsBstainBspouseBspiritsBsmashingB	similarlyBshineBsevereBscotlandB
scientificBscholarsBsandwichBriddenB
revelationBrevealedBretartedB
respondingB
respectingB
resistanceBremovingBreliefBrecallBrazaBratchetBpussysBprotestsBproposedB
projectingBprivacyBposterBplaneBpinBpatientsBpatBparBpaintingBnigBnarcissisticBmissionsBmindingBminBmelaninB	massacredBmanhoodBmanageBlynchingBlosBlocationBlmaooBlighterBlemonBkingsBkindnessBjuanBjerkingB
israelitesBinvestigationBinstitutionsBinstanceB
insecurityBincitingBincarceratedBidealBhotelBheheBharassBhairsBhadithBgutsBgrowthBgripBgreasyBgrandpaBgloriousBgassingBfuriousBfruitBfledB	filipinosBfightsBfalselyBfactualB
expressingBexploreB	essentialBepitomeBenslavementB
encouragesBempowerB	emergencyB	embracingBdumpedBdriversBdominateBdisasterBdimeBdemandsBdeludedBdeliverBdeadlyBcreepBcreatorsBcreativeBcounterpartsBcoochieBcontributedB
consistentBconquestB
conformingBcondoneB
colonizingBcolombiaBcloutBclinicBciaBcheetoB	championsBcartelBcaredBcambodiaBburiedBbrexitBbreastsBbleachBbizarreBberlinBbellyBbeholdBbeheadedBbaptismBbanksBbaconBbackwardBbacklashBassociationB
apocalypseBadmittedBaddingBaccusingBzionismBwritesBwomansBwishedBwineBwhistleB
violationsBviewedBupperBunjustBugliestBtwistBtweetingBtsBtrevorBtraumaBtrapsBtipsBtattoosBtastesBtardBsystematicallyBswitchedBsurveyBstrategyBstinkBstatingB	starbucksBspinBspendsBsometimeBsmdhBsissiesBshockB	shitstainBsharptonBscriptB	sadiqkhanBrootBrobotsBrobbingBrobbedBrestrictionsB	residentsBreproductiveBreflectB	recommendBpullsBpukeBproducedBprincessB	preciselyBpraisedBpourB
positivityBpopulationsBpeterBpervertsBpervertBperishBpavedBparticipationBoohBnormBnoahBnegroesBnailsBmyselfBmisogynistsBminorBmindlessB	manifestoBmallBmajorgauravaryaBlmaoooooBlimitsBliftedBlifetimeBlaughedBknightsBkinkBkiBkevinBkaBisnB	invisibleBinvestedBintersexB	insuranceBineptBimprovedB	importingBimpeachBidealsBholidayBhiredBheroesB	hardshipsBgraciousBgrabbingBggBgeorgiaBgaypornBgatesBgaggingBfrustrationBforbidBflamesBfknBfinishedBfilmsB	feminazisB
explainingB	expensiveBexhibitBexclusivelyBethnicitiesBestablishedBdutchBdroveBdpB	douchebagBdividedBdisrespectingB
discussingBdetroitBdestinationBdenounceBdementedBcurryBcrucifyBcrowBcountyB	countlessBconvenientlyBcontrolsBconfederateB
comprehendB
communistsBcommiesBclapBcircumstancesBchristopherBchoppedBchaseBcensoredBcattleBcatBcakeBburstBbridgeBbragB	botheringBboldBblmBbharatBbhaiBbeggedBbarryBbarrelBauntB	attitudesBaroBapplyingBappleBappeaseB
antisemiteBanglicanBallaahBalbumBafroBabsurdB	abrahamicBzealotsByorubaBwwiiBworshipsB
worshipersBwhackBwayneBwaitedBvoterBvisasBvictoriaBversesBvalleyBuswntBurbanBuopB	unnaturalBunfunnyBummahBtylerBtribalBtoastBthehillBthailandBtedBsystemsBsystemicBsushmaBsuckersBstriveBstrBsplitBspittingBspawnBspareBsowB	snowbunnyBsmoothBslidingBslavicBslaughteringBskirtsBskirtBskanksBsitesBsighBshriBshortsBshorterBshopBshapiroBsenatorB	seeminglyBseatB	satisfiedBrocketsBriverB	resistingBreservationBreplyingBregardsBregardBreducedBrashidaBrappingBraidsBquotasBpurseBpsychologicalBprosperBpromisedBprinceB
preferablyB	practicedB	populatedBpollBpizzaBpettyBpetitionBpetBpersonalitiesB
peacefullyB
passionateB	panderingBoverwhelmingBoverlyBoccupyBnzBneglectBnbcB	messengerBmereBmeccaBmanipulationBmalcolmBloudlyBlimbBlatinxBlabelsBlBkudosBkidnapBkashmirbleedsBjustintrudeauBjoshuaBjerseyBjayBislamophobicBinteractBinstantBinstaBinsanBinfiltratedBimplyB
horrendousBhobbyBhashtagBharmonyBhaiBgullibleBgateBforciblyBflamingBfeminaziBfemboyBexposingBexploitBevolvedBepisodeBepidemicBepicBenvyBelderlyBdruggedBdougBdomB	disappearBdidnBdeterminationBdetailBdescriptionB	degradingBdefinesBdanBcustomsB
cumtributeBcrackersBcouncilB	correctlyB
convertingB
convenientBcontraryBcomplicatedBcommandBcomicBcollectivelyBclockBclassesBcivilisationB
chromosomeBcheersBchampionBchabadBchBcatsBcatchingBcasualBcastingBcapturedBbubbaBbrideB
boundariesBbeanerBbathBbalanceBawhileBassedBassadBanswersBangelsBalternativeB
allegianceBahmadB
aggressionBacknowledgingBaccidentallyByelledBxboxBwmafBweakerBwardB
volunteersBventBvanillaBunhappyBuglierB
tremendousBtoysB
tomilahrenBtimBthrowsBtestedBtacoBsuggestsBsuburbanBsquirtBsprayedBsniffBsneakyBskillBsingerBshovingBshedBshaveB
senschumerB	secretaryBscumsBsayinBrootedBroganBrevolutionaryB	repressedBrepmaxinewatersBreplacementBremotelyBreligiouslyBrandomlyBrahimBrabbisBpumpedB	prominentB	procreateB
portugueseBpornstarBpooBpocketsBphotosB
perversionBpeepsB
overweightBoopsBoldestBnothinBnotesBnippleBnieceBneighborhoodsBneanderthalsBnaughtyBnatoBmulticulturalismBmockedBmigrateBmessingBmegaBmediatorBmasturbatingBmartyrsBmarksBmaritalBmagazineBluvBlustBlunchBlouisBlocBlmfaoooBlauraBknivesBklanBkeralaBkenyanBjeremycorbynBirrespectiveB	innocentsB
initiativeBinfanticideB
increasingB
illuminatiBhuntedBhumilityBhugsBhrBhorriblyB
highschoolBheinousBhebrewBheathensBhaventB
guaranteedBgoshBgorillaBgordonBgodlessB	gloryholeBgenBgassedBgalsBfutaBforgivenBfiresBfelonyBfavourBfapBfamineBfactorBexperiencingBexcitingBenteredBenforcedBeinsteinBeggsBdownvoteBdownfallB
disciplineBdicklessBdevotedBdestinyB	deliciousBdallasBdaeshBcutsBcouchB	convictedBcontestBconfirmsB	complicitBcolumbusBcolorsBckingBcirclesBcheaperBcharlesBceoBcaravanBcaBbuttonBbushBbroadsBbratBbostonB
borderlineBbobbyBbleedBbirdsBbioBbiasBbeastBarticlesBarrangedB	arbitraryBappsBapBangelaBandyBalphasBadulteryBadorableBachievementsBabominationBwristBwocBwireB	whitenessBwashingtonpostBvirginiaBviolatedBversusBvapidBvaccinesButterlyBurgesBunprotectedBunironicallyBugandaB	threatensBthreadsBtheeB	testimonyBtentBtalaqB	taiwaneseBswarajB	stupidestBstuffedBstoningBstealsBsoyboyBsortaBsmellsBsmashedBsitsBsilencedBsignificantBshrugBshoulderBshiaBsharmaBsenatemajldrBsarcasmBrouteBroachBrevealsBrestartBresourceBresignBresettlementBrequestB
reputationB	replacingBrepercussionsB	remainingBrecommendedBreactBquotingB
questionedB	purposelyBprofoundBpriorityBpresBpotatoBpostersBportionBpocketBphonyBphiladelphiaB
phenomenonBpawgB	overthrowBopensB	obstaclesB
obligationBnobleBnickB
negativelyBnasBnailBmuhammedB	mountainsBmoslemsBmmmmBmessiahBmemoryBmedievalBmcitlfraphorismBmayoBmatchesBmailBluciferBlowkeyBlilyB
liberationBlethalBlaunchedBladenBkosherBkjvB
kidnappingBjorgeBjeremyBjadenBjacobBivankatrumpB
ironicallyBinvolveBintimateBinsertB	injusticeBinformB
influencedB
inbreedingBinbredsB	impressedB
imaginableB
ideologiesBhurdlesBhungerBhostageBhometownBhebrewsBhardestBharassedB
glorifyingBggersBgentilesBgenitalBgaynessBgatewaypunditBfuneralBfundsBfulaniBfratB	franciscoBfornicationBfoldBflipB
fleshlightBfinanceBfenceBfascistsBexerciseBesauBerB	entertainBenlightenedBengineeringBenablingBemojisB	egyptiansBedgingBeaseBdukeBdreamingBdrawnBdongB
documentedBdivisiveB
disturbingBdisguiseB
diplomaticBdiggingBdevastatingBdemographicsBdaddiesB
criticizedBcravingBcrackasB
courageousBconsumeBcongregationBconfrontBconceptsB	communionB	commitingBcommandsB
colonizersBcolonialismB
collectiveB
colleaguesBcocksuckingBclusterBclassyBchewBcheatsBcheatedBcharmingBchampionshipBcertificateBcavesB	caribbeanBcapsB
capitalismBcapitaBcandyB	cancerousBbuddhismBbruisedBboomersBbluntBblogBbitchsBbidenBbengalBbeleiveBbankruptBawwwwB
atmosphereBathleticB
assistanceBarmenianBappreciationBandrewB	amendmentB
alexandriaBaccomplishedBabBzionBzaidzamanhamidB	youtubersByouthsBwouldnB
worshipingBwidelyBwhipBweatherBwavingBwashingBwarrenBwarnedBwankerBwaistB
venezuelanBusernameBupholdBunderstandableBuncutBumbrellaBtxBturdBtumblrBtrustedBtrpBtragedyBtoolsBtireBtigerBticketsB
thoughtfulBthongBtheyllBtearingBtaylorB
systematicBswtBswineBswiftBsweetieBsuccessfullyBsubtleB
subredditsBstiffBstefanmolyneuxBstareBspoiledBspillBspicsBspeakersBsovereigntyBsoonerBsolaceB	sociopathBsnowBslagBsinnersBshotsBshoeBsenateB
scientistsBsamBsaltBsabhaBrugBropeBromanceBricansBrequirementsBrequirementBrepliedB
relativelyBreclaimBratioBrapeyBradicalsBrabidBprovidesB	providersB	profitingBproductsBpreyBpretentiousB	pressuredBpressedBpresidentialBpregnanciesBpraisingB	portrayedB
porkistaniBpitsBperiodsBpeggingBpeasantsBpaypalB	passportsB	partiallyBparkingBpalsBovariesBoutlawBorganizeBonlyfansBofferingBnwoBnflB	netanyahuB
negativityBnawBnaiveBmusclesB	movementsBmotiveBmoderateB
missionaryBmisinformationBmiracleBminiBmigratedBmicroBmeasuresBmeaninglessB
meaningfulBmbuhariBmartinBmartialBlulBlootBloneBlockerBlmaooooBliturgyBlinksBlgbtiBlegacyBlayingBjudeaBjimmyBislamophobeBinterviewedB
intentionsB
integratedBinstitutionB	inshallahB	indonesiaBinciteB
impressionB
immigratedB	illnessesBidolB
hystericalBhypeBhonoredBhomicideBhobbiesB	hindustanBhenceB	heartlessBhappiestBhairlineBhagBguzzlingB	grotesqueBgreeksB	graduatedBgomorrahBgenderfluidBgayboyBgapingBfundamentalistBfukinB	franchiseBfourthBfoBflightBflashBfiringBfbBfamiliarBfairnessBfacefuckBfabricBexportB	exploringBexplodeBexpectationsBerasureBemployerBelliotBelementsB
effeminateBdumberBdubaiBdrainingBdonkeysBdonaldjtrumpjrBdoctrineBdisownBdiscriminatoryB	discourseB
difficultyB	dependentBdegradeBdeedsBdecreaseBdaveBdamagingBcursedBcubaBcrustyBcrushingBcrowderBcreamyBcottonBcontinuouslyBcongresswomanB
condemningB
commissionB
commentaryB	colonizedB	cockroachBcoastB	coalitionBclipsB	civilisedB
categoriesBcarriedBcapacityBcancelBcairBbichBbeheadBbatshitBbarrierBbaptizedBbanterBbabesB	attendingB
attendanceBassyrianB
assumptionBashBasexualsBarvindkejriwalBappliesBangelesBadolfBadmiredBaccusationsBaccidentBabusesBabsorbedBabortingB	abhorrentByuckBxxBwornBworldcupBwhoringBwhBweyBweirdosBweeklyBwavesBwarmingBvoluntarilyB	violationBvidBviceBvibesBvaryingBvaginalB
vaccinatedButopiaBunknownBunhingedB
undercoverBuncivilizedBuhhhBtwtBtragicB	torturingBthtB
thoroughlyB	testiclesBterfBtchBtaskBtamilBtalesBtagBswordBswimmingBstockBstevenB
sterilizedB	stabilityBsqueezeBsovietBsoooooBsomalianBsoleBsleazyBslayBskinsBsizedBshowersBshouldaBshitheadBshippedBshadeBseverelyBsettlerBsetsBseizeBseemedBsecondlyBscammersBsatisfyBsalmanB
sacrificedBroyalB	routinelyBroundingBroseBroachesBriskingBresidentBrepresentativesB	reportingBrepcummingsB	releasingBrektB	rejectingB
registeredBredditorBreassignmentBreapB	realisticBrealisedBreadsBrayaBramadhanBquarterB
punishableBpunchingB	provokingBprotectionsB
presidentsBpreachesBplateBpimpsBpermitBpeersBpastorlockeBparticipatingBoutdatedBorgasmsBoralBogB
occasionalB	obnoxiousBntBngoBnevadaBnephewB	neighbourBneedingBmortallyBmoodBmistakenBmissilesBmirzaBmetroBmermaidBmakerBmainlandBmahBmachinesBmBlooselyBlickersB	legendaryBleftiesBlbgtqBlatelyBlakeBlackingBkyleB	kthopkinsBjoBjailbaitB
introducedB	introduceB	intentionBinsensitiveBinjuredBindoctrinatingB	incorrectBinappropriateB	improvingBhumaneBhubBhsBhrwBhostsB	hostilityB	homelandsBholdsBhmoindiaBhitlersB	hindranceBhindB	hillbillyBhijackBheterosexualityBhellholeB
helicopterBheartwarmingBhatsBhariBhaircutBhahahBgraspBgovernedBgoinB
globalistsB
gillibrandBfundamentalBfrogsBfrogBfohBflawlessBfinsubBfavBfattyBfastestBfailsBextraordinaryB
extinctionBexterminationBexpressionsB	expressedBescapingBescapedBequalsBentertainingBengineerB	encounterB
emboldenedB	elevationBeffingBdrivesBdrinksBdodgeBdictateBdespiseB	desirableB	describedB
depressingBdenseBdenominationBdemiseBdecencyBdebatesBdangBcumdumpBcruiseBcrownBcriticizingBcoworkerBcookingBconsumptionBconfirmationB	conductedB
collectingBcollapseBcleanseBcivilizationsBchemicalBcheerBchapterBcesspoolBcbsBcbpBcarriesBcarolinaBcagedBburgerBbtchB	brutalityBbrookehoutsBbronzeBbranchBboilBbodiedBboatsBbloodedBblankBbitingB	beheadingBbeautifullyBbeastsBbbBbabygirlB	auschwitzBattendedBassemblyBarB
altogetherBallianceBahaBaddictsBactedBachievementB	abilitiesBabideByuByehBwriterBwreckedBwomxnBwigBwieldingB
widespreadBwcBvomitBvidsBverbalBvegasB	vasectomyBupvoteBupsideBupdatesBupcomingBuniformBunderrepresentedBuberBtypingBtrendingBtraveledBtossBtopsBtickBthighsBtehranB	taxpayersBtariffsBtargetsBtalibBswedesBswampBsurvivorB	superheroBsuitableBsuedBsueBsubjectsBstunnedBstudiedB	strongestBstatisticallyBstagesB	sponsoredBspewsBspellingBsneakingBsmilingBsliceBskullsBshortlyBsheetBshadesBsensibleB	selectiveBscrewingB	scientistBsarsourBsanctionBsafestBsaferBsabbathBroastedBroamBriotBrighteousnessBrickBreviewBreturnsB	reportersBremindedB
remarkableBrejectsBrecordedBrebuildB
reassuringBrajyaBquotaBqudsBpushesB	punishingBprotectsB
prosperousB	privledgeB
priesthoodBpricksBprevailB	presentedBprepareB	preferredBpreacherBplantedBplantBpitifulBpipeBpillowBpillarBphrasesB
philosophyBpatheticallyBpassageB
parliamentB	painfullyBownsBoutragedBorphansBorientedBohioB	observingBobserveBobservationBnraBnpcBnowhereBnormalizingBnglBnetherlandsBnetBnervousB
neighboursBneedleBmuricaBmumbaiBmultiracialB	mongeringBmonBmoaningBmoBmitchBminorsBmgtowsB	measuringBmeasureBmasturbationB	massacresBmartyrBmarriesBmarchingBmanlyBmanletBmalayB
loveisloveBlipstickBlipBlionsB	lightskinBlibyaBlgbtqaBlendBlegalizeBlaneBkpopBkeBkafirBjoseBitemsB	interpretB
internmentBintendBinsultedBinstructionsBinsanelyBinquisitionBinmatesBinhabitantsBinfantsBindoctrinatedB	increasedBhusbandsBhorrorBholidaysBholderBhellfireBharBhapaB
hahahahahaBguruBgrowsBgrindBglassesBgiftedBgfsBfulfillBfukingBfuckmeBfreeiranBfreakyB
fraudulentBfranBframeBflushBfilesBfileBfighterB	fictionalBfaithsB	exploitedBexploitationB
experimentBexmuslimB	executingBentitlementBenormousBencouragementBenbyB	empathizeBemotionBembracedBelevateBeightBeggBeatsBdysfunctionalBdunBdrawingBdoinBdocumentaryBdividingBdistressBdisownedB	disastersBdialogueBdetectedB
descendantBdegradedBdearlyBcwcBcurvyBcuckoldcaptionsBcrusadesBcrossdressingBcrewB
creativityBcreationBcountingBcosbyB	corporateB
convincingBcontroversialBcontemptB
consensualBconnectionsBconfuseBconformBcomboBcolonyBcolonizeBcolonizationBcluelessBcloudBcivilianB	cisgenderBchillingBcherryBcherBcheeseBchargingBchannelsBchambersB	certaintyBcaravansBcabinetBbucketBbrickBbreedsBbreathesBbraidsBboutaBboisBboilingBbogusBblissBblackedBbishopoftylerBbiphobiaBbimbosBbigblackcockBbidBbelittleBbegunBbegsBbbcworldBauspolBattractsBarizonaBaprilBapprovedB	apartmentBangleB	anecdotalBanalysisBalleyB	allegedlyB	afterlifeB	advocatesBadminBadditionB	actressesBacluBabuByerByeeBwouldaBwormB	witnessedBwiderBwhosBwereBwB	violatingBviciousBversionsBuyghursButmostBurselfBurineBuntillBunreasonableB	unpopularB
unemployedBtrucksBtrippinBtouristBtorontoBtierBthxBthrBtheologicalBtheistsBtheaterBtestsB
terrifyingBterfsB
tendenciesBtanksBtaintedBswollenBsunnyBsunnahBsuffersB	subhumansBstylesBstrivingBstoresBstereotypicalBstabbingBspringBsphBspeedBsockBsmearBsmartestBslavsBslammedB	singaporeBsimultaneouslyBsignalBsiblingBshrimpBshoreBshopsBshiteBshiningBshelterBsharifBseparatistsBscourgeBscottBscaresBsaggyB
sacrificesBryanafournierBroutineBroughlyBroomsBrolledBriskyBricoBrevealBrestoreB	resonatesB
resolutionBremorseBrelentlesslyB	reinforceBregionsBreformationBrednecksBrebelB	reactionsBrantingBquietlyBputaBpussBpurgeBpumpingBptBpromotedB	promisingBprogressivesB	producingBproclaimBprobableBportlandBportBpornoBporkiBpolyBpolBpleaBplayinBplacedBpissingBpinnedBpillagedBphonesB	pervertedBpentecostalBpastyBparsiBpapersBpaintsB	ownershipB	overlordsBoutfitBorgansBorganicBorganBoppsB	operativeBoddlyBoBnuttBnigerBnecksB
neckbeardsBmutilateB
motherlandBmoroccoB	monstrousBmongersBmoistBmisunderstandingB
mistreatedBmillieBmildBmiamiBmenaceBmeinBmcuBmayorsBmaximumBmatesBmarginalizedB
manipulateBmachoBlsarsourBloB	livestockB	liberatedBlettersBleechBleatherBlawrenceB	launchingBlacksBlabelledBkinkyBkindlyBkayBkarenBisolateBiqsBintroducingBintellectuallyB	integrateBinshaBinhumanBinfiniteBindoctrinationBimportantlyB	imbecilesBillegitimateBieB
identitiesB
humiliatedBhorsesBhordesBhooBhmuBhkBherosBhehBheathenB	heartbeatBhasBharmedBhaitiBguiseBguardianBgreyBgreeceBgrantsB	graduallyBgorasBgodlyBgeyB	gentlemenB	gentlemanB	genocidesBgalBfuryBforumBfoolishnessBfoodsBfkBfixingBfittingBfiguringBfckingBfameB	executiveB
exceptionsBeugenicsBethanBespB	equipmentBemployeeBeatenBeasterBearnedBduckBdoublesBdonatedB
disposableB	discussedBdisabilitiesB	determineBdestructiveB
demonizingBdeletedB
dehumanizeBdefendedB
dedicationBdealersB	curiosityBcrossesB	crackheadB
countrymenBcosplayB
convictionBcontraceptionBcontemporaryB
confessionBconclusionsBcomprehensiveBcommunalBcocoaBcoatBcmonBcmBclimbBclarifyB
cigarettesBchuckBcheckingBchasingBcharacteristicsB
challengesB	certifiedB	carefullyBbucksBbrianB	breathingBbookerBbonesBbombersBblockingBblamesBbirdBbillionaireBbhiB
behavioursBbeforeBbeardsBbeansBbarackBbaitBbabylonBawwBaweBautistsBaustriaBaustraliansB
attributedBathiestB
astoundingBasshatBapplicationsBanyhowBantBansweredBanneB	amsterdamB
americuntsBameenBallegedBakBafghansB	affirmingBabusersBzomatoBzahidByogaByazidiBwrathBwrappedBworshippersBworldersBwomenofcourageBwolvesBwoahBwipingBwinterB	willinglyBwilBwhichB
wheelchairBwhataboutismBweepingBweebBwdBwaxBwatersBwankBwalletB
vocabularyBveganBvanBuyghurBuppityBunprecedentedBuniBunfollowB
unfaithfulBtwitBtwinksBturksBtuneBtrudeauBtroublesB
transphobeBtrannysB	thumbnailBthemeBterriblyB	temporaryB
televisionBteBtbfBtariffBtankerBtalentsB
talentlessBtacticBswearingBsuicidesB
suggestionB
suggestingBsudaneseBsuccB
subjectiveBstudyingBstrokingBstormingBstereotypingBsteelBstartersBstallBsponsorBsourBsolvingBsloganBslippingB	slightestBslapsB	sissyslutBshiftBshieldsBsheetsBsettlingB	selectionBseattleBsandersBsahibBsaharanBsadisticBsaddamBrubbingBrsBromanianBrobbersBroadsBritaBrinseBridesB
repentanceBrelationBreignBrefusingBrefusesBreducingB	reconcileBreachesBquotesBquestB	queernessBqatarBpursuingBptiBpsychopathicBprovokeB	prosecuteBprofessionalsBprobBprizeB	prisonersBpriorB
previouslyBpreachedB
positivelyBpolarB	poisoningBpmikjalsainusaBpledgeBpitBpindickBpinchBpimpB	pewdiepieBpersiansB	persecuteBperiodtB	performedBpearlBpaycheckBpatternB
patriotismBpanthersBpanelBpakisBpaBoriginsB
organizersBorganisationsBopposingBomarabdullahBofficialdgisprBoathBnigsBnightsBnicelyBneverthelessBneanderthalBnarendraBnahiB
mutilationBmountB	motivatesB
mosquitoesBmockBmistakesBmisandryBminusBmiloBmichiganBmethodBmemoriesBmeltingBmcdonaldBmaturityBmataBmaskBmarsBmanspreadingBmamB	maliciousBlockingBlgtbBlessonsBlegendsBleechesBldsBlawlessBlaughterBlankaBladyboyBkiddoBkhameneiBkeyboardBjulesBjudahB
journalismBjoshBjonBjoblessBjetBjessieBjerksBjerkoffBjasonBjammuBisroBiraniBinvestBinvaderB	interveneBinterpretationBinjuryB
infiltrateB
industrialB
indonesianBincindiaB	incidentsBincidentB	inabilityB
importanceBimperialismBimamofpeaceBimaginedBignoresBiconicBiccB
hurricanesB	hurricaneBhumanitarianBhondurasBhollandBhoaxBhillBheteronormativeBheartedBhathBharlemBhangsBhandlingBgypsiesBgurlB
guidelinesBguidedBgiganticB	genocidedBgainedBfurriesBfreepalestineBfoundersBfishyBfirBfeminizationBfeastBfearfulB	farrakhanBfarmingB
exploitingBexpelledBexistentB
ewericksonBeveningBessenceBespnBenviousB	enjoymentBendureBellenB
eliminatedBelegantBegosBeffectsBeffectivelyB	economiesBebonyBdungBdriverBdrasticBdozenBdoomedBdonnaB	donationsBdoggyBditchB	dislikingB	directingB	dinosaursBdinBdeseBdepravedB
deplorableBdemolishBdeliveryBdefenceBdeclaresBdeckBdannyBcyrusBcurvesBcurbBcrushedBcrotchB
corybookerBcoonBcookieBcongoB
compromiseBclimbingBcleanedBclanBclBchudBchubbyB	chocolateBcavemenBcatfishBcaptionB	cancelledB	campaignsBcagingB	buttigiegBbustingBbuildthewallBbuffaloBbudgetBbrimBbrieBbreitbartnewsBborisBbonerBboilsBbleedingBbitesBbigdickBbeeingBbcozBbbqBbattlesBbasesBbaptistsBbalochBawfullyBavoidingBatlantaB	associateBartsB	arrestingB	appallingBannoyedBannBanglosBangloBandrogynousBanallyBamyBamitBamazesBalgeriaBairportB
adulterersB
additionalBabidingByardB
xenophobiaB	worldviewB	womanhoodBwittyBwipesB
wickednessBwhoopiBwholeheartedlyBwhiteysBwhiterBwhippedBwelpBweakenBwaynedupreeshowBwarnsBwankersBwahhabiB	virginityBviralBviolateB
victimhoodB	validatedButcB	unwillingBunusualBunrepentantBunoB	unhealthyB
unexpectedBunconditionalBuighursBtygaBtuesdayBtrinityBtricksB	travelingB
transwomenB
transwomanBtransformedB
tragicallyBtowersBtowelB
tournamentBtourBtollBtheatreBtestingBtermedBtendsBteasingBtcmbrokenbuttBtankBtalbertswanBtaBsweepBsustainB	survivingBsurvivedBsurrenderedBsuppressionBsufiB	substanceB	subjugateBstringBstemsB	statisticBstarvedBssBspotsBspitsBspiteBspiritualityBspineBspecimenBsomeonesB
socialistsBslurpBslogansBslipperyBsleeveBslamsBsitgesBsissificationBsingaporeanBsignificantlyBsickensBshytBshyBshippingB
shefvaidyaBshaltBshaftBsexiestBsewerBsettledBserverB
sentimentsB	sentencesBsengillibrandBsectionsBsectBseanhannityBsealedBscholarBscarlettB	scapegoatBsanghiBsanctityBrussellBrulersBrulerBrssBroidedBrodeBrockyBrobertBringsBrightfulBriddanceB	returningBrespondsBresolvedB	repugnantB	repostingBrepealBrentBrelyingBrelyBrefugeB
refreshingBreflectsBredpillB	redefinedB
recruitingBrebelsBrearBranchBrainbowsBpsychosBproviderBpropsBpromisesB
projectionBpriyankaB	prevalentBprettierBposingBporchBpollsBpolesBpleasedBplacingBpiousBphillyBphatBperversionsBpersiaBpermitsBpenBpeepBpeakBparticipatedBpartialBparallelBpansexualityBpaintedBowenBotBongoingBoleBobtainBoblivionBobedientBnutcasesBnukingBnikkiBnikeB	nightmareBniecesBniBngB	nationalsBnathanBmuzzieBmtBmpsBmpinoeBmouthedBmorrisonBmonthlyB
monogamousB
mongoliansBmockeryBmissouriBmillennialsB
millennialBmilitantBmethodsB	messianicBmenstruationBmcBmasseBmasroorBmarchedBmanipulatedBmandateBmamataofficialBmamasB	malaysianBmakersBmahdiBmagnificentBmaggotsBmadamBlyricsBlyinBloyaltyBlowlyB
loveislandBlordkabirjiBlootedBlogosBloanBlingerieBlightsBlibraryB	leviticusBlarsonBlabeledBkumarBkmtBkissesBkissedBkicksBkeenBkatieBkateBjzarifBjrBjonathanBjesseBjaneBjamBjBisrahellBiransB
intimidateBinspirationalBinitialBinflictBinfestationBincreasinglyBimpunityBimprisonBimpregnatedBigBidolsBideologicalBhvBhusseinBhunterBhouthisBhookersBhockeyBhindutvaBhillaryclintonBheroinBhealingBhazratBhavocBhandfulBhamBhabitsBgymBguestsBgrenadesBgrayBgrandsonBgoysBgoofBgentlyBgentileBgatekeepingBfunniestBfuelingBfucktardBfruitsBfringeBfriendshipsB
frequentlyBfloodsBflirtBfirmBfgmBfetishesB	fertilityBfertileBfelonsB
fellowshipBfeeBfecesB	explosionB	explainedB	exclusionBexamBewarrenB
euthanizedBerasedBensuringBenrichBenduredBemployedBemoB	embassiesBegBedwardBdynamicsBdwellingBdummyBdroolBdripsBdriedBdragonBdownsBdotBdoseBdonorB	disguisedB	disgracedB	disbandedBdisappointmentBdipshitsBdildosBdiegoBdeviceB	detrimentBdeterB
describingBderaBderBdepictedBdemandedBdelusionB	deliveredB
deliberateBdefensesBdefBdecidingBdeceivedBdecapitatedBdababyBczechBcummingsBcultsBcucumberB
cuckoldingBcrookedBcraziesBcrawledBcouldnBcornBcopeBcontrastBconnorB	confusionB
concerningB
conceptionBcomplimentsB	completedBcompetitiveBcommunicationBcolouredBcockyBclosingBclittyBclearedBclarityBcircusBchokingBcelibateBcelebrationsBcampusBcalBbusesBburqaBbundleBbritBbothersBbosniaBbonusB	bloodshedB	bloodlineB	blatantlyBblastBbillionairesBbelongedBbeardedBbbwBbbcslutBbbbhBbarkingBbarkBbaptizeBbalochistanBballoonBbackingBbackedBbaBawardsB	atheisticBaspireBasleepBashesB
asexualityBarrangeBarousedBappeasementB	apostatesBapologyBapacheB	answeringBannoysBammoBaimsBaightBahmedBagriculturalBagenciesBaffairsB
advantagesBadvancedBacesBacceptsBaaB
zenigundamByearningByangBwwwBwthBwoeBwinnerBwigsBwhoopBwetherBweighB	wednesdayBwebBweavesBwarnBwalBvulgarBvpBvillainBvetsBveteranBvestsB	vengeanceButahBurduBupvotesBuprisingB	upliftingBunsupportiveB	unskilledBunhumanrightsBunclesBunacceptingBtyroneBtyrantsBtwentiesBtuckercarlsonBtriggersB
treasonousBtrashingBtormentBtoniBtonguesBtomboyBtokyoBtokenBtoddlerBtldrBthumbsBthumbBthosB
theocraticBtensionsBtendiesB	telegraphBtapBtamponBtakinB
synonymousBsweepsBswamyB
supposedlyB	supplyingBsuckinBstupidsB
structuresB	structureBstopeatingmeatBstoopBstinkingBsterilizationB	stabbingsBsrilankaBspiceBspankedB	somaliansBslangBskankyBskBsjwsBsimpsB	signalingBsidingBsiBshookBshitpostBshemalesBshadowsBshadowBsewageBservantBsenB	searchingBscriptedBscBsauceBsatisfactionBsanaBsalvadorBsalesB
sacramentsBsabotageBrocketBrlyBripsBrevertBrethinkBretardationBresolveB	resilientBregimesB	redditorsB	recyclingBrecordsBrecognizingBrecklessBrealestBreactsBrayBrashtrapatibhvnBrajaviBrainBrahulgandhiBrabbitBquedaBqanonBputoBpurityBpurelyBpuppiesB
psychologyBprosB	pronounceBprogressionB	professorB
principlesB	pretendedBportrayBporkBpoppinBpoorestBpmsBpinoyBphilBperpetuatingBperpetratedBpeenBpauseB	paragraphBpanicBpanderBpackedBoverreactingBovenBoutstandingB
ostracizedBosamaBorderingBoptB
oppressorsBoofBoctoberB	occasionsB
obligatoryB	objectiveBnwBnursesBnuisanceBninjaBnicolledwallaceBnickiBnevaBnervesBnamingBnagBmutualsBmuscleBmullahBmonicaBmoansBmixingBmissileBmisgenderingBminimalBmingBminajBmillionairesB	millenniaBmilanoBmicBmetooB	methodistBmekBmedsBmasjidB	mashallahBmarxistBmarkedB
marcorubioBmansplainingBmalalaBlumpB	louisianaBloadedBlincolnB
lifestylesBlifesBliceB
liberatingBlensBleftyBlastingBkyaBkurdishBkrishnaBknockingBkneelBkenBkashmirunderthreatBjustificationBjohnsonBjennerBjakeBjackposobiecB	jackassesBjackassB
iwantclipsBinterestinglyBintenseB
inshaallahBinputBinfluentialBinfluencingBinducedBincompatibleBimposterBimpliesBimperialistsBimperialistBimaginationBimagesBilBhurdleBhotelsBhormoneBhimselfBhighlightingB	highlightBheterosexualsBhereticsBherdBheartbreakingBhearsBheadingBhbcuBhardworkingBhandyBhandledBhamzaBhammerBhafizBhackedBgurmeetBgunnedBgunnaBgrimyB	greentextB	gratitudeBgrannyBgraduateBgotchaBglossB
genocidingBgenericBgeBgavinBgaugeBgashBgardenBgapeBgangsterB
gangbangedBgamersBfunnierBfuglyBfuckwitBfucktoyBfucknBfuckableBfrickingBfortnitegameBfortniteBfortiesBformingBflowingBflewBfistingBfinestBfinedBfillsBfianceBfemboysBfemBfedoraBfearingBfaultsBfathomBfatalBfartsBfactoryBexpertsBexpertBexitB
excellenceBestablishingB	erivanescBengagingBemperorBelijahB
easternersBearBdummiesBdullBdualBdroneBdripBdrasticallyB
dominatrixBdoingBdlB	disordersBdiscriminatesB
discomfortBdigitsBdigitalBdifficultiesBdictatorshipB	diagnosedBdewayneBdevBdepthBdemocraciesBdefiningBdefenselessBdefenderB	defectiveB
debaucheryBdarlingBdanielBdairyBcurlyBcumdumpsterBculturedBcubansBcrushesBcrumbleBcreditsBcrackedBcrackaBcovertBcoverageBcorbynB
continuingBcontainsB	constructBconstitutionalBcongratulateBconcreteBcommunicateBcommonplaceB
comfortingB
collectionBcoherentBcodesBcocaineBcliffBclergyBchumpBchoosesBchoirB	chemicalsB	checkmateBcharlottesvilleBchampBceaseB
castrationBcashierBcapBcallinBcabalBbuttplugBbusinessmenB	broadcastBbrigadeBbreedersB	breakdownBbozoBbowlBborisjohnsonBbondedBbondageBbokoB
birthrightBbiggieBbigcockBbeyoncBbetoorourkeBbetasBberniesandersBbengaliBbehavingBbarriersBbailB
babysitterBazadBayBaversionBaurBattainBattachBatlanticB
associatesBassetBaslBarseholeBarmysBarmeniaBarguedBarguablyBarenBappropriatingB	appealingBapostasyB
apologizedB	apologiesB	announcedB	ancestralB
ammunitionBamishBamidBamberBamateurpornBamateurBalyssaBallsBalbinoBairplaneBagreeingBagenderBaffectedBafaikBadsB	admissionBaddsBacquaintancesBaccentsBabolishB	zoophilesByuhByoursBxoBwoundB
worthwhileBwormsBwonderedBwindowsBwiggerB
widdecombeB
whitehouseBwhewBweddingsBwatBwankingBwalshfreedomBwalletdrainBvodkaBvisitorsB	virtuallyBvegetariansBvegansBvastlyBvanishedBvaluedBvalkyrieBvacuumBuploadBuniversallyBunitBunfairlyBukraineBuklabourBuighurBtyrantBtypedBtweetedBtupacBtulsigabbardBtugBtuffBtrustednerdBtroglodytesB	travelledBtransvestiteBtranssexualBtransmenB
translatedBtransformingB
transexualBtrainsB
toothbrushBtonyBtomiBtobaccoBtiniestBthursdayBthunderBthrashBtheresaBtherBtexanBterroristicBterritoriesBterrenceBtensionBtatsBtastyBtallestBsympathizersBsympatheticBswornBswordsBswimBsweetestBswallowsB	suspendedB	suspectedBsurfaceB
supremistsBsunnisBsuggestionsBstuffingBstrokesBstripperBstrippedBstrawBstompedBstinksBstgBsteppingBsteppedBstaysBstatueBstampBstalkBstakeBsparkBsparedBspBsoakedBsnatchBsmvBsmackingBslobBslimBskypeBskipBsinkingBsingersBsickoBshoutsBshoppingB	shitheadsBshiitesBshamelesslyBshamedBshabbosBsexualitiesBsexesBsensesBselectBseatedBseanB
screechingBscientificallyBschumerBschemeBscandinavianBscammingBsayakoBsausageBsaudiarabiaBsaudaB
satisfyingBsardinesBsapiensBsalaamBsagaBsacksBsachaBryanBrootingBroflBrodentBrivalBriotersB	rezaaslanBreviewsBreutersBresumeBreproductionB	reiterateB
regressiveBrecycleBrecoverB	recordingBraptureBrampageBraidedBrahulBragheadsBquestionlgbteduB	qualitiesBputridBpurgedBpunkassBpunishesBpulseBpuddleB
proportionBprintB	preventedBpresentsBpresbyterianB
preemptiveBprankB	possessedBportraysB	porkistanB
popularityBpopcornBpoemBplaybookBplatonicBpiggyBpidBpetiteBpersecutingBperkyBpennsylvaniaBpeddlingBpatriotsBpatelBparishBparisBparcelBpantherBpalefaceBpageantBpackageBoverwhelminglyB
overcomingB
outrageousB	outlawingBoscarB
organizingB	organisedBoprahBommBoilsBoffersBoffenceBofcB	occurringBoccasionallyB	obligatedBnumbBnprBnoticingB
normalizedBnoisesBniggahB	newsflashBnewfagBnessBnerdsBneighbourhoodB	necessityBncaaBnbBnayBnavyBnavalBnavajoBnarutoBnarrowBmusicalBmullaBmotherlyB	morehouseB	mongolianBmommiesBmollyB	mogadishuBmockingBmisunderstandBmisterB	miserablyBmiraclesBminimizeBmilitiaBmileyB
microphoneBmercedesB
membershipBmeetsB	medicallyBmealBmazaBmatthewBmattB	marketingBmanufacturedBmanuelBmanifestBmangaBmakinBmainlandersB	magicallyBmafiaBmaddowBmachetesBlottaBlordsBlopezB	localizedBlinedBlineageBlgbtsBlewisBlegitimatelyBlebronBleaningBlbsBlawnBlawdBlastlyBlasBlaosBlandedBlahoreBladsBkinksBkenyansBkennyBkareemBkansasBjumpersBjudgmentBjoinsBjessicaBjerryBjeanBjamalBjamaatBistandwithmaryamrajaviB	isolationBislandsBinvestigatingBinvasiveBintimidatedBintersectionalityBinterferingB	interfereBintercourseBinterBinspiresBinsignificantB
insatiableB
influencesB	infectionB	increasesBinconvenientB
incestuousBinaBimpressBimpotentBillhanBillegalyBiircBiamBhypotheticalBhyenasBhussainBhungaryBhumourBhumanatmBhuddledB
horrifyingBhonorsBhonestyBhollyB
historiansBhidesBhetBherpesBheilBheightsBharmingBhardshipBgtfohBgrosslyBgrinBgridB	greatnessBgonaBgingerBgimmeBgentleBgenderqueerBgasolineB	gangstersBgainsBfvckBfundamentallyB
fulfillingBfrustrationsBfridaymotivationB
freemasonsBfrancisBforeskinBforcedbiB
footfetishBfolxBfodderBflawsBflameBfirearmsBfinlandBfindommeBfgcB	feminizedBfemaledominationBfeesB	factoriesBexternalB	exportingBexpandBeuphoriaBeunuchBequalityactBenthusiasticBenrichedBendianBempiresBemmaBembracesB	embarrassBemailBelpasoB
elementaryBelectricityBelderB	eidulfitrBechoBeagerBdykesBduringBdumBduckingBdrowningBdrankB
downvotingB
douchebagsBdogshitBdogmaBdoeB	documentsB	diversionBdisproportionatelyB	displayedBdismissB	dismantleBdislikedB	discoveryBdisarmBdisappearedB
dirkhooperBdiggerBdiaperB
developingBdesperationBdesiredBdesignB	desecrateBdeprivedBdelayingBdefeatedB
deepthroatBdecryBdeanBdarkskinBdanishBdalitsBdaisyBcyprusBcurlsBcuntyBcsBcrybabyBcrowdsBcrossdresserBcropsBcredibilityBcozyBcountrysB
correctionBcooperationBcookiesB
conventionBconsumedBconsequenceBconsBconfessionsBconcludeBcomradeBcomplimentingB	complainsBcommemoratingBcommandmentB	commandedBcoloniesB	colombianB	cognitiveBcodBcoalBclothespinsBcloakBclinicsBclashesBckerBchudsBchuckcallestoBchimpBcheeredBcheekBcharismaBcavemanBcaterBcatastropheBcashfagBcarlsonBcannonBcandaceBcaliBbwcBbustedBbussyBburgersBbumsBbumpBbrunetteBbrownsBbrieflyBbriefB	brainwashBbottomsBbotsBborrowBbollocksBboiledBblBbjBbitcBbetoB
beneficialBbeneathB	belongingBbeenBbeefyBbeatingsBbcuzBbatchBbassBbankingBbahrainBbadassBbabaB
azerbaijanBaussiesBaussieBatrocityBassureB	assertionBaryansBarrivesBarnoldB
apologistsBantisemitesBannounceBandreBamputeeBamazonBamazeBalterBaligarhB	algeriansBaishaBaffairBadvocacyBadviseB	admittingBachingBaccomplishmentsB	accidentsB
aboriginalBabductedBzonesBzombieBzioBzakatByeshuaByemenisByeetByahBxiBxBwydBwuzBwristsB	worldnewsB
witnessingBwindBwhitesupremacistterrorismB
westernersBweaverBwatchesBwardsBwakeupamericaBvolumeBvitriolBvisiblyBvirusB
victimizedB	viciouslyBvibratorBvestBverifiedBvansBvalidityBvainBupdateBuntoldB	unrelatedBunloadBunintelligentBunicefB
underneathBunconditionallyB	uncheckedBunbelieversBunapologeticallyBunapologeticBummBullBuglyassBtwinsBtwentyBtubeBtskB
truthfullyBtrunkBtrumpwarroomBtripsBtrialsBtreesBtreasonB
travellingBtranslationBtransgenderismBtradingBtracksBtrBtorchBtoothBtonyposnanskiBtokBtodaysBtitaniamcgrathBtimcastBtikBtibetBthursdaythoughtsB	thrustingBtherevalBthankyouBterryBtermitesBtenfoldBteemingBtattooedBtapeBtalmboutBtablesB
synagoguesBsympathizerBsylviaBsydneyBswitzerlandBswingersB
sweetheartB	swedishpmBsweatingBswastikaB
swallowingBswaggerB	survivorsBsurroundingB
suppressedBsuperficialBsunmiBsummedBsubwayBstrickenBstrappedBstraightnessBstopwwBstirringBstewardshipBstatB
starvationBstaresBsrsBspottedBspicyBspencerBspeechesBspeculationBspanBsoundedBsoloBsnappedBsmilesBsmBslutkayleighBslimyBslayingBskynewsBsinnedBsidewalkBsicknessBshutupBshoutoutBshoresBshinyBshekelBsheepleBshawnBshatBshapesBshagBsexeBseriousnessB	septemberBsephardiB
seperationB	separatesBseizesBsegmentBseekerBsecretsB	secondaryBsearchedBscrewsBscenarioBsavelivesinkashmirBsavagelyB
sanctionedBsaladBsadiqBsacrificingBruthlessBrubsBroundsB
rothchildsBrobinsonBroamingBritualBriteBrisksBrisenBrioBrihannaBrickyBriceBretireBretainBrestroomB	restraintB
respectiveBreservedBresentB
researcherBreptilesBrepostB	remarriedBrefrainBreeksBreeeBredheadB	recruitedBrecoveryB	realisingBrcBrancidBranaBramzanBrammedBrallyingBraggedyBquestionableBqudsdayBquBqBpuppyBpunyBpunksBpunjabBpunishmentsB	publicityBprowessB
propogandaBprophetsB
propertiesBprofitsB
professionBproductivityBprocreationB
proclaimedB
processingBprobsBprizesBprisonerB	pricelessBpreysB
prejudicedBpossessBposeBportugalBpornhubBpopulaceBpoppingBpontifexBpondBpolyamorousB	pollutingB	poisonousBpoisonedBpocsB
pocahontasBpleasesBpilipinoBpieBphuckBphobiaB
phenomenalBpeteyBpetebuttigiegBperspectivesB	perpetualBperksB
perceptionBpentecostalsBpartnershipBpartakeB	parentingBparasiteBpanamaBpaganismBpaceBowensBovertakeB	overratedB
overlookedB
overloadedBoverflowingBoutletBottomansBordinaryBordainedBorchestratedBopsBooohBoogaBomfgBolympicsBoliverBohhBoffendsBoccursBoccurBnvmBnursingBnumberedB	normalizeBnodBnikkasBnicknameBniceguysBneuteredBnestBnephewsBnepalBneedlesBnearestBnastiestB
narcissistBnappyB	mythologyBmuzziesBmuthafuckasBmustyBmumsB	mrandyngoBmowBmouthyBmotivesB
motivationBmotherfBmoscowBmorganB
moralizingBmongolsBmonetaryBmommasBmocksBmmmmmBmjBmisunderstoodB
misleadingBmisleadBmisgenderedB
misandristB	ministersBmillionaireBmentorB	menopauseBmeltBmeetingsBmediocreBmcguirescottyBmattressB	maternityBmassachusettsBmarylandBmarkleBmarioBmarianneBmariaBmarathonBmaoBmanualBmanginaBmandemB
managementB
malaysiansBmagicalB
luciferianBlowlifesBlousyBlooserBloooolB
lonelinessBlocksBlobbyBlitterBlistedBlikewiseBlightingBliftsBliftingBliberateB
legitimacyBlawlessnessB	laughableBlarpB	landwhaleBladBkobeBkoBknoBkneelingBkievBkhairBkathuaBkaliBkaitmarieoxB
kaepernickBkabulBkaafirBjusticefortwinklesharmaBjusticefortwinkleBjuniorBjuicesB
joyannreidBjehovahBjanetBjamaicaBjackingBivoryBislamsBislamophobesBiraqisBiphoneBinvadesBintimacyBinterventionBinternedBinteriorBinteractingB
interactedBintB	insurgentBinstitutionalB	installedBinsistedB
insightfulB	inflictedB	infestingB
inevitableBimposedBimportedBimmuneB	imbalanceBidentificationBicymiBibrahimBibnBianB
hypnotizedBhumanrightsBhospitalityBhookingBhoodsBhonoringBhonoraryBhomegirlBhomeboysBhittinB
highlightsBhidBhicksB
hesitationBhellishBheatherBheadquartersBhasntBharrietB	harboringBhandoutsB	handcuffsB	halloweenBhahahahahahaBguardsBgroundsBgrindingBgreetBgoyimBgovtsB	governingBglueBglowBgilroyBghostbustersBggerB	geographyBgenerousBgearBgaygroupBgarlicBgangstaBgainingBfvckingBfuneralsBfundamentalsBfunctioningB	fuckheadsBftfyBfrustratingBfruityBfruitfulBfronBfroBfridaythoughtsBfoxnewsBfoundationsBfortBfornicatorsBformedBforefathersBfondBflopBfkingBfitnessBfiltersBfilmingBfierceBfictionBfiBfetishizingBfearsBfcknBfarewellBfaggotyBfaggitB	factuallyB
facilitateBeyebrowsB	extensionBexposesBexploitsB
expectancyBexistentialB	exhaustedB	excessiveBexceptionalB	eurotrashBeuphoricB	eucharistBethiopiaB	eternallyBerrorBenvasionBenjoysBenhancedB	engineersBenablerBenabledBempowersBeliminatingBelevatedBeducationalBedomiteBeditionBedgelordBedenBeconomicallyBearliestBdynastyBdugBdubowitzBdubiousBduaBdsBdrovesBdropsB
dreadlocksBdraftedB	downvotedBdownloadB	dominanceB
doingrightBdocumentariesB	displacedBdisdainBdiscussionsBdiscordBdisagreeingB
diligentlyBdietBdiceBdhsBdhruvBdeviBdetestBdetectorB	descendedB
derogatoryBderekB	depravityB	demonratsBdemonizeBdeliberatelyBdeflectBdefaultBdeepestBdeemBdeclineB	decimatedBdasBdangersB	damnationBcyberBcursesBcultistBcrusadeB	crocodileBcripBcravesBcrashedBcrashBcraddockBcowgirlBcovenantBcouldaBcostumesBcoryB
corruptingBcorrectlyobeyedBcorinthiansBcookoutBconventionalBconvenienceBcontradictionBcontainBconstructionB	considersBconnecticutBconfrontingB
confrontedB
confiscateBcondonesB	concludedBconcentrateBconcealB
competenceB
companionsBcommingB	comebacksBcoltBcolonialistBcocksuckersBclosesBclitsBclitorisBclickedBcitationBcircumcisedBchunkB	christineB
chriscuomoBchokesBchokedBchillinBchicB	charlotteBcentricBcelebritiesBcashpigBcareersBcaptureBcapitolB
capitalistBcanonB	cannibalsBcaneBcainB	byzantineBbuttsBbuttfuckB
butcheringBburkhaBbugsBbugBbudsBbridgesBbravoBbrainedBbrahminBbozosBbowsBbowlingBbouttaBboomerBboogaBbombingsBbodilyBboardersBblkBblakeB	blackbullBbitchyBbitchboyBbintBbigassB
belittlingBbelieverBbeggarBbeefingBbeeBbecuaseBbeaterBbeaconBbcsBbadgesBazzatalsaleemBawakeB
attributesBatmBasssBassimilatingB	aspergersBashoswaiB
asadowaisiBarrivingBarmpitB	armeniansBariBarchivesBaqsaB
approachedB	applaudedBapplaudBappearancesBapparentB	apologistBannouncementBannihilatedB
anncoulterBanklesBaniB
andrewyangBancestorBancB	amusementB	americuntBamdBamazedBalternativelyB	alternateBallaahuB	alcoholicBalbertBalarmingBaimingBaimedBaggressivenessB	affectingBadvertisingBadultbrazilBadmirersBadlB
addressingBadditionallyB
actsismmljBacostaB
accuratelyBaccountabilityBaccordinglyBaccommodateB	absurdityB	abandonedBzimbabweByoutuberByousByoudByiffByellsByearnByankBxyBxxxthunderwoodsBxicoBwrightBwonhoB	wolverineBwizkidBwitchesBwimpB
williamsonB	willfullyBwidowsBwhoppingBwhoopingBwhoaBwhistlesBwhisperBwhineyBwhenceBwhalesBweebsBwebsB
watermelonB	washtimesBwarlordsBwannabesBwaitsBwagonsBwagedBvulturesBvoodooB
volleyballBvolitionBvivaBvitallyBvishnuBvirusesBvintageBviewingBviableBversaBveiledBvagBvaBurgentlyBuraniumBupvotedBupdatedB	untouchedBuntermenschBunrestB	unleashedBuniversitiesBunitingBuncircumcisedB
unbelieverBunbeliefB
unamericanBumarBultraBulBugandanBtwerkingBtuskegeeBturtleBturbansBtubmanBtsunamiBtroubledBtrophiesBtrojanBtrashedB
translatesB	transgirlB	transformBtrampBtrailBtrackedBtowerB	tornadoesBtoreB	toleratedBtockBtobinBtmcBtitfuckBtighterBtigersBthunderwoodsxxxBthoroughBthirtyBthinkersBthickerBthereofBthemesBthalaBterrorisingB
terminatedBtentsB	tennesseeBtemptedBtedlieuBtayBtatBtariqnasheedB	tangiblesBtangBtalmudicBsystemicallyBsympathizingBswingingBsustainableB	surrenderB	surgeriesBsurahBsuprisedB	supremistBsuppliesB
superpowerBsundarBsumsBsuitedB
sugardaddyBsucceedsB
subversionBsubsetBsubbedBstumbledBstudB
structuralB
stretchingB	streamingBstrangleBstokingBstickersBstephBsteamBsteakBstatisticalBstationsBstaringBstaredB
standpointBstadiumBsslyBsqueezedBspreesBspraysBsportingBspoilerBsphereBspelledBspedBspawningB	spaniardsBspamB	sovereignBsooooooBsomethinBsofterBsocksB
sociopathsB
socializedBsoapBsnipBsmoothlyBsmollettBslumBsjpeaceBsjBsipBsingsBsindhBsilentlyBsiegeB	shriveledBshoutedB	shittiestBshirBshieldBshellsBsheikhBshankracharyBshamBshakiraBshadyBshaaBsexistsB	sephardimBsentimentalB
sentedcruzBsenkamalaharrisBselectedBseedsBscummyBscsBscrubBscreechBscoresBsaudiaBsaudBsardineBsaracarterdcBsandalBsamuelBsakesBsafeguardingBsaeedBsaddestBrwandaBrustyBrushingBrugbyBruBroyBrossBrosesBropesBromanticallyBromaniaBrlBriddledBrichestBreveredBrevelationsBretiredBresurrectionBresponsibilitiesBrespectfullyBresettleBrescuedBrepulsedBrepmarkwalkerBrepayBrepadamschiffBrememberingBremakesBremainedB	relevanceBrelativeBreichBrefusalB
reflectionB	redundantBreciteBreceivesBrecedingB
rebelliousBrealsaavedraBrazorBrationalityBrantsBramenBrailedBrailBraidingBraeBracistpresidentBraciestB
rabiaanummBrabbitsB
rabbinicalBquoBqueB
quarantineBqtBpyramidsBpunjabisBpunchesB	punchableB	pulsatingBpublishBpuBptsdBpsychiatristBpsychiatricBproposeBproportionsBpropagandistBpromiscuityBprominentlyBpromBprogressingB
profoundlyB
productiveBproducerBpridefulBpreventsB
preventingBpressingBpraisesBpractiseBpplsBpovBpouredBpotentBpossibilitiesBposedB
portrayingBpoppedBpoohBpokemonB	plunderedBplumpBpluggedBplanesBplaguesBpioneerBpinkoBpigmentBperpetratorsBpepoleB
penetratedBpeiceBpeepeeBpeckerBpdfBpayerBpatsBpatrickBpasteBpasseBpartnershipsBpartlyBpalaceBpaisaBpainsBownBoverwhelmedBovertlyBoverlapBovercameB	outsidersBoutcomesBoutbreakBounceBorientalB	opponentsB
operationsBoozingBomBoliveBogaB	offendersBoccupantBobliteratedB
nottinghamBnotedB	northeastBnoodlesBnlBnjBnipBnicerBnetflixindiaBneighboringBndrewBnazismB
narrativesBnanciesBnaduBmurdochBmsgBmrsBmraB	mouthfuckBmotherfukerBmotherfuckinBmoscowmitchB	mormonismBmondaymotivationBmondayBmolochBmoldBmohamedBmmaBmistreatB	minecraftB	millenialBmilkingB
micropenisBmichelleobamaBmexBmessesB	messagingBmemerBmeltdownB
medicationB	mechanismB
mayonnaiseBmatrixBmasqueradingBmasoodBmashaBmargaretBmaneB
mailonlineBmaggotB	magazinesBmafsBluxuryBlouBloosersB	loopholesBloopholeBlooolBlololB
livelihoodBlitteredBlistensBlistenerBlisaBliningB	lightningBliamBlewdBlestBlesbosBlesboBleechingBleashBleanderBleanBlbcBlatexBlastsBlashesBlarryBlacedBlabiaBkosovoB	knowinglyBklansmanBkittBkissyBkinBkierronBkiddieBkeysBkentuckyBkekBkeithBkawhiBkashmirparfinalfightBkarlBjwB	justifiesBjussieBjungBjunB	judiciaryBjudgementalBjpgBjoyousBjoozBjockBjeffreyBjeannieBjawedBjawBjapsBjanuaryBjailsBivonneBitsericathomasBislamizationBisilBirBinvertedBinvalidatedB
interviewsBinternationallyBintentionalBintelBinstillBinsistBinnateBinnaBinjuriesBinjectedBinitiateBinflatedB
infinitelyBinfiltratingBinfestBinfantB
infallibleB	indicatorBindBinconsiderateBimprovesBimpregnatingBimpliedBimplicationsBimperialB
impeachingBimmunityB	imigrantsBimigrantBidolizedB	idolatersB	identicalBicocBhunBhugelyBhoustonB	horseshitBhookupBhoodieB	homicidesBholdersBhiresBhintsBhikeBheroicBhegemonyB	healthierBhayBhatefullBharborBhaqBhandmaidB
handcuffedBhamiltonBhalfwayBhaleyBhaitiansBhadithsBhackB	guerrillaBgsBgroundbreakingBgringoB	greetingsBgreatsBgrabberBgottemBgothBgossipBgoonsBgoonB	goodnightBgoodiesBgolfBgoersBgoaBgnosticBglorifyBglockBglitterBghettosBggotBggaBgentsBgeneralizingBgdBgayslutBgaylordBgayfurryBgavinnewsomBgatheredBgatekeepersBgandhiBgammaBgaggedBfussB	functionsBfukkinBfuckheadBfrownedBfreshmanB	frequencyBfreezeBfreakinBfractionBfoxxeBfountainB
forcefullyBfootageBfocusesBflowerBflippingBfliesBfirstlyB	fingeringBfindomdrainB	financingBfilipinaBfilingBfifthBfianceeBfemcelsBfellowsBfeckBfearlessBfavorsBfaveB
fatherlessBfaqBfannyBfancyBfakedBfadnavisB
exposedfagBexportedB	explosiveBexpectsBexemptB
executionsBexcludedBexaminationBevolveBevangelistsBetBestateBesportsBerasingBeradicatingBequippedBequateBenvironmentsBentiretyBentailsBengBenablersBemphasisBemojiB
emasculateBelectingBeffectedBeditorBearningBdwellersBdwellerB	dumpstersBdumpsBduBdreadBdrcBdraftBdoritosBdonorsBdomeBdomainBdocBdncBdividesBdiveB
distressedBdistractB
dissonanceBdissingBdisruptBdisrespectedB
dismissiveB	dismissedB	dishonestBdiscriminatingBdiscoveringBdisciplinedBdiscipleBdisappointingB
disappointBdinduBdiminishingBdimensionalBdifferB	dickheadsBdiamondBdiamBdevoidBdeviantsBdessertBdennisBdeniesB	demonizedBdeitiesBdegradationBdefinitionsB	defensiveB	deceivingBdancerBdalitB	customersBcustomBcussBcummiesBcummedBcueBcuddleBcuckoldgoalsBcuckingBcuckholdBcrumbBcrudeBcrucialBcroatiaB
criticizesBcricketworldcupBcricketsBcribBcrawlingBcrappyBcrackerkikesBcostumeBcorpsesBcorpseBcorporationsB	contractsB	containerBcontB
constituteBconsiderationB	congoleseBconductBcomradesB
completionBcompassionateBcomingsBcomfyBcomethBcomedianBcolossalBcollegesB	collapsedBcnnbrkBclubsBclowningBcloneBclericsB	classroomB	classmateB	classlessBclassistBclassifyBclappedBcksBcivilityBcitingBciteBcishetsBcircumstanceBchromeBchoppingBchivalryBchesterBchefBcheckoutBchantsBchainsBchainedBcentsBceasesBccpBcateringBcarolBcarminesabiaBcardiBcamilaB	cambodianBcafeBcacklingBbuzzBbuysBburlyBbunchaBbullshBbuhariBbuffoonBbtchesBbrowsingBbrothasBbroaderBbreakersBbraveryB
braincellsBbountyB	bootyholeBbootlickingBbomberBbobsBbluefaceBblondesBblokeBblockbusterBblinkBblindlyBblendBblanketBblancB	blamelessBblaiseBbladeBbitcoinBbitchassBbirthingBbiharBbhuttoBbettemidlerBbetsBbetrayedBbenjaminBbelgiumBbeinBbeckyBbduttBbdBbcciBbbhuttozardariBbbcrBbbcnewsBbayBbatsB	bathroomsBbasedpolandB	barbarianBballotBballbustingBbaldingBbahBbaddestBbackwardnessBbackfireBazzBayyubB	ayatollahBawakenBawaitsBawaitingBaviBavengerBautonomyBauntyBatlBaswellB	assistingBassignedBassignBassaultsBashyBarntBariseBarabiansB	appointedB	apostolicB	apologiseBapolloB
antisocialB	anonymousBanimatedBangelicBangBamusingBamokBamirightBaminBambitionB
ambassadorB	alignmentBalcoholBalanBaircraftBahtB	agnosticsBaffordedBadvancementBaddictBacknowledgesB
accomplishBabuserB
abstinenceBablistBabdulBzuluBzipperBzeusByumByouveByoungestByoooByknowB
yessssssssByaoiByaoByankeeBwsBwoundedB
workplacesBworkableBwordingBwoofBwooBwonBwnbaB
witchcraftBwingersB	wimbledonBwilfullyBwifesBwidowBwidBwhteB
whiteloverBwhitB	whistlingBwhimsBwheelBwerentB	wellbeingBweekendsBwednesdaywisdomB
weaponizedBwarningsBwarmedBwardrobeBwangBwanaBwanBwalmartshootingBwallahiBwahmenBwahBvogueBvisualBvisitsB
visibilityBvirtuousBvirtuesB
vindictiveB
viewershipBvictimizationB	vibratingBvibeBvehiclesBvaultB
vandalizedBvagueB	vaccinateB	vacationsBvBuwuButerusesBussrBupstairsB	upsettingBuprightBunspeakableBunrulyB	unmatchedB	unlimitedBunironicBuniformsBundoubtedlyB	undermineBunbelievablyBunawareBunandoicsavekashmiriBuhhBtyphusBtwinklesharmaBtwBturkicBtunedBtunaBtubesBtryinBtruthsBtruthfulBtrustingBtrophyBtropesBtroBtrippingBtripletalaqB	transportBtransparentBtransformerBtransformationBtradedBtouretteBtouchesBtossingBtornadoBtopicsB
toothpasteB
toleratingBtnBtmzBtmBtiringBtinaBtimesofindiaBtimelessBtightenBthumpingBthumpersBthrustBthemselfBthanBtemperBtelBtbBtattleBtampaBtailBtackyBsymbolicBsweptBsweepingBswearsBswamiBswB
suspensionB
suspendersBsuperstitiousB	sunscreenBsunkBsumnB	successesBsuburbsBsubtitleBsubservientB
subscribedBstruckB
strengthenBstrayBstrawmanBstraightprideB
straightenB	stockholmBstevensB	statedeptBstalinBsquirmBsquaresBspunkBspreadsBspoutB	spotlightBspoiltBspitefulBsoughtBsophieB	solutionsBsolesBsodomizeBsocioeconomicB	socializeBsnitchB	smugglingBsmearingBslobberBsleevesBskynetBsketchesBskatingBsissyboyBsightedBsidedBsiberiaBshuttingBshufflesB	shriekingBshredBshitraelBshitholecountryBshinesBshiiBshhhhhBsheraB	shelteredB	shellfishBshellBshekharBsharrondBshapedBsgB
sexualisedBsethBserbianB	sensationBsenaBsellingnudesBselamatB
segregatedBsectsB	secpompeoBsebgorkaBscrutinyBscrolledBscreenshotsBscottmorrisonmpBscottishBscoreBscissorBscientologyBscientologistBsatinBsanityB
sandwichesBsamsonBsalafiBsaithBsailorsBsailBsadistBsabBrupaulBrumorsBrumorBrugsBrtslaveBrottingBronBrohingyaBrockedBrobberyBroastieBrivalsBrippingBriddingBrewardsBrevolveB	revoltingBrevBretortB
retirementBretainsBrestaurantsB
restaurantBreservationsBrepaocBremovesBrelizeB	relievingB	relatableBregardedBreeseBredditsBrecruitsBrecreateBrecommendationB	recessiveBrebuttalB
rebuildingBrealizesBrealisticallyBrciaBrawstoryBratingBrapsBranksBrahBraftBquransBqueertyBquantityBqualificationsB	quadrupleBqosBpursuitB	punchlineBpubicBpubesBpsaBproneBprogrammingB	programmeBprogenyB
profitableB	profanityBproceedB
prioritizeBprimatesBpreteenBpresstvBpreserveB
prejudicesBpredictableB	predatoryBppBpoundsBposefxB	portrayalBpoorsBpolygamyB	pollutionBpolitelyBpolicingBpokeBpluralBplungeBpluckBplowB	platformsB
plagiarismB
pittsburghBpissyBpinnacleBpiercedBpickyBpicksBphoeniciansBpetaBperverseBpervBperryB	permittedB
performingB	perennialBpensBpenniesBpenetrationBpeelBpassivalerioBpancakesBpakarmyretaliateagainstindiaBoverseeBoverpopulationBoverpopulatedB	overnightBovensBoutsBoutlookBoutingBoutfitsBoutaBouB	orwellianB
originatedBorgsBoptionalBopindiaBonwardBomeagozBoicBoffsetBoffensesBodinB	occupyingBobsoleteBobsceneBobamasBnwordBnutsackBnspccBnosesBnonexistentBnoahideBnkBniqabBnileBnigguhBnicestBneonazisB	negotiateB	neglectedBneedaBnecrophiliaBnbcnewsBnationalitiesBnanaBmutedBmusterBmustafaBmustacheBmuddaBmountedB
motherhoodBmoresoBmonksBmongrelsBmongrelBmodestyB	moderatesBmitchellviiB	misgenderBminnesotansBmichealBmiaBmetaphorBmermaidsBmercilesslyBmemorialBmemeberBmelendezBmehboobamuftiBmediterraneanBmeaslesBmealsBmbsBmatingBmassshootingsBmassshootingB	massivelyB
massacringBmasonBmaskedBmarxistsBmarinesBmariahBmanyvidsBmandarinBmaloneBmaliB
maintainedBmaimBmaidenBmadnessBmadhuB	machineryBmacheteBmaBlutheranBlosesBloonB	logicallyBloansBlizB	lithuaniaBlispyB	libertiesBlgbtcosplayBlgbBleperBleoBlenientBlegislatureB	lecturingBlecturesBlectureBlearntBlbgtBlbB	lawmakersBlaunchesBlapdogBlabBkualaBkuBkremlinrussiaBkluxBkippahBkindergartenBkinderB	kikiadineBkikiB	khalistanBkhalidBkelBkeemstarB
kazakhstanBjuvenileB
justifyingBjudeoBjstBjoyceBjonfavsBjojoBjoburgBjjBjennaBjenBjeezBjaydenBjaredBjanettxblessedBjanBjackedBivankaBitllBitchyBistandwithtrumpBissuingBislamismBirresponsibleBirisBirgcB	involvingBinvolvementBinvokeB
investmentBinvestigatedBinventBintolerableBinteractionBintellectualsB	integrityBintegralB	instituteB	instancesBinstallBinningsBinnBinitiativesB
ineligibleB
indirectlyB	indicatesBindicateBindexBincubateBinconvenienceBinclusivityBinclinedBincBinbBinactionBimvkohliBimprisonmentBimamsBidlibBidingBickyBicegovBibadahBhypnosisBhygieneB	hyderabadBhurdBhouthiBhotmalestudsBhosBhornsBhormonalBhopkinsBhopelessnessBhopefulBhooksBhookerB
honourableBhongkongersB	homegirlsBhollaBholierBhogBhmmmmmmmBhissyBhippyBhippieB	hijackersBhighwayBhighlightedBheteroflexibleB
henceforthBhemorrhoidsBheelBheavenlyB	headscarfBhawaiiBhavinBhappypridemonthBhamsterBhaltBhalseyB
hallelujahBhajjBhainBgypsyB
gymnasticsBguzmanBguyzBgutBguncontrolnowBgumBgullyBguessedBgrillBgrenadeBgrassBgrandfathersBgrammarB
graduatingBgracefulBgrabbedBgorillasB
googlenewsB	goddamnedBgitmoBginaBgilletteBgifBggiittiikkaaB	geriatricBgenesisBgenerationalBgenerateBgaythreesomeBgaysianBgayorgyBgaurakshaksBgarbBgarageBgapsBgamingB	furnitureBfunnelB	fucktardsBfuckholeBfuckfaceBfucB	fruitlessBfrmBfrigginBfreshlyBfrequentBfreeloadersBfreeingBfrankBfrancoB	fracturedBfoursB	foreskinsBfluentBflownBfloodinBfloggedBfloatingBflippedBflexBfieryBfiascoBfiancBfewerBfetusesB
feminizingBfelonBfeatureBfarmsBfarageBfantasizingBfalloutBfalafelBfakingB
fairytalesBfagexposureBfactorsBeyeballsB	extensiveBextendBexpiredBexpelBexhibitionistBevidentB	evidencedBevansB	ethiopianBestB	escalatedBeradicationBentityBengravedB	endorsingBendorsedBendorseB
endangeredB	emphasizeBeminemBemigrateBeltonBelevatorBejaculatingB	educatingBeditedBeaterB
earthquakeBearningsBdyeBdvBdudBduchessBdrillBdrewBdreamedBdreadsBdosentBdosenBdoomBdonatingB
dominicansB
dominatingBdoingsBdocumentationBdntBdistractionBdisregardingBdisgustsBdisavowBdisadvantageBdiggersBdifferentiateBdictatorialBdickingB
dfbharvardBdfB	devolvingBdeuteronomyBdetainB
designatedBdependB	denouncedB
demolitionB
demolishedBdemoBdeletingB	deficientBdealingsBdeaconsBdavisBdaresB
danpatrickBdancesBdamsBdammitBcustomerB	crusadersB	criticiseBcringyB
cricketersBcreepsBcreedBcrayonBcradleBcrabBcowboyBcoupledBcoupBcosmeticBcortexBcooperBcoolerBcookinBconvoBcontroversyBcontributesBcontradictoryBcontinuallyB
contingentB
continentsBcontentsB
contendersBcontendBconstructiveBconstituentsBconsistencyBconsciousnessB
conquerorsBconfiscatedBconfessBcondemnsBcondemnationBconceiveBcomunityB	comprisedBcomplyB	complaintB	compelledBcompatriotsB	committeeB	commenterBcominBcoloursBcoloradoB	colonistsBcolinBcoleBcoddledBcoachingB	cmshehbazBclothBcloselyBclimaxBclearingBcleansedB
classmatesBclashBclarkB	clamoringB
circlejerkBcinemaBchuckleBchristeningBchristchurchBchopraBcholoBchodeBchoBchickensBchessBcheetosBcheatersB
chaturbateBchasersB
charitableB	chappelleBchapotraphouseBchandrayaanBcervixBcattyBcatchesBcastroBcashappBcartoonsBcartmanBcarouselBcannabisBcanineBcancersBcamerasB	cambridgeBbuttonsBbutterBbutcherBburkaBburdenedBbunnyB	bullshitsBbuddhistBbroflakeBbroadwayBbritneyBbritchesBbridesBbpdB	boycottedBbopsBboothBboostingBboobiesBbonersBboltBbogglingBbloatedBblanketsB	blackmailBblacklivesmatterBbiwomenBbiphobicB
bipartisanBbillyBbigtitsBbiddingBbibiBbiancaBbeyBbettingBbennyBbengalisB	benefitedBbelleB	behaviorsBbecBbeadsBbeaBbatheBbastardizedBbarrenBbarkhaB	barbarousB	barbarismBbankersBbangersBbangedBbamBballetBbalancedBbadgeBbadderBbackboneBbachelorBbabblingBbabbleBayahBavoidsBavoidedBauraBauntsBattributingB	attorneysBattendsBassuredBassumesBassfuckB	ashkenaziB	arseholesBarmiesB	argentinaBarchitectureBaramaicBapproxBapproachingB
approachesBappointmentB	appeasingB	appearingBappearedBapologizingB
apartmentsBanushkaBanorexicBannoyBangstBangersBanarchyBanalysesBamwfBamirBalphabetB	alleviateB
alienatingB
airstrikesBagricultureBagonyBaffirmBafabB	aestheticB	advancingB
adolescentB	admirableBadiBadhereBacrylicsBacronymBacknowledgedB
accordanceBaccomplishmentBacBabujaBabeBaataBaameenB	zoophiliaBzombiesBzeraBzendayaBzainabsikanderBzabbasofficialByoirByogiByhwhByesssByearlyByatraByatesByanksByanivByaleByaddaByadBxtianBwwgBwvjoeBwrinklyBwrestledBwoukdB
worldprideB	worldbankBworkshopBwoopBwomendeliverBwmdBwiveB	witnessesBwithdrawBwishyBwinningsBwingsBwimmenzBwhoopedBwhitestBwhiteknightBwhiteesB	whirlwindB	whicheverBwhereinBwenB	weinsteinBweeabooBwebcamBweaveBweaponizingBweakestBweabooBwastesBwashyB	warrantedBwarpedBwarmthBwarlordBwarcraftBwalterB	wallowingBwallahBwakeupBwakandaBwaheguruBwahabiBwagingBwaaaaayBwaaaaaaBvulnerabilityBvoxBvowsBvowedBvousBvolcanoBvixenBvioletsB	videogameB
victimisedBvicBviagraB
vernacularBvenomBvennBvenezuelansBvendingBvegBvasectomiesBvaradkarBvanishesBvandalizingB
validatingB	validatesBurgeryBurgentBurgedB
upliftmentBupliftB	unwelcomeBunwashedBunusedBuntrueBuntilBunstoppableB
unprovokedBunixBunitsB	uninvitedBunintentionallyB	unfoldingB	unethicalBunderminingB
underlyingBunconsciousBuncommonBuncleanBuncivilisedB	uncertainBunaBukuleleB	ukrainianBuddersBtytBtyingBtwittersupportBtwitterstoriansBtwistingBtwinBtwelveBtutoringBtunisiaBtuesdaythoughtsBtuckBtubBtsmBtsaBtrumpsterroristsBtropeB
troglodyteBtrickyBtrickedBtrespassersBtrendsBtravestyB	trashiestBtougherBtotalyBtoryBtornadosB	tombstoneBtomatoBtoddBtjBtitlesBtitheBtiskBtimorBtideBtiBthundercuntsBthsBthroneBthroBthrilledBthrillBtholeBthewireBtheoriesBtheoreticalB
theologiesBtheologicallyB	theocratsBthankedBthakurBtextbookBterroristregimeBterroistB	terminateBtenseBtenetsBtendencyBteddyB	technicalBtchapBtaxingBtaserBtardedBtaqiyaB
tantamountB	talkradioBtakerBtaintBtailsBtacosBtacklesBsynchronizedB
sympathizeBsymbolsBsworeBsusanBsusBsurveillanceBsurplusBsurgicalBsurgeBsupremacismB	superbowlBsunshineB
sufficientBsuctionBsuckaBsuccumbBsubvertB
subjugatedBsuBstuntBstuffyBstuBstringsB	stressingBstrawsB	strategicBstoopidBstompsB	sterilizeBstereotypicallyBsteerBstatuesBstalkingBssyB	squeezingBsquadwBsquadsBspyBspurBspongesBspongeBspliffsperlunkBsplatterB	spitroastB
speechlessB	speciallyBspearsBspawnedBspatBspammingBsouthafricaBsoupBsosBsorelyBsomthingB	soliloquyBsolaBsocketBsociopathicBsnipersBsniffingBsndBsmuggledBsmotherBsmiteBsmiledB	smartnewsBsmackedBslugBslovakiaBslovakBslopeBslingB
slaughtersBslanderBskinheadBsizesB	sissifiedBsiouxBsinningBsimpsonBsimonsBsilverBsilkB	silencingBsikeBsigningBsidewaysBsidenoteBsiddurBsicBshutdownBshtBshreeB	showeringBshotgunBshortyBshockerB	shirtlessBshillsBshiasBsherifBshapingBshantiBshanobiespursBshamblesBsexyfiedB
sexualizedBsexslaveBsexlessBsexierBsettlesBsettingsBservicedB	sephardicBsemeticB	semblanceBselfiesBsdgBscriptsBscreamedBscrawnyBscratchB	scrappingBscotusBscorpioBscoopsB	schoolingBscholarshipB	schneiderBscarletBscaringBscarcityBsaynotowhiteboysBsawingBsareesBsareeBsarcomaBsaraBsangerBsandyBsanctimoniousBsamoaBsalesianBsalaryBsalariesBsalamiBsalahBsaharareportersB	sageelaniBsafelyBsadhanaBsabahBrusselBrubinBrtsBrtfuckerBroyaltyBroughedBroommateBroofsBronnieBromeoBroleplayBrolandoBrogueBrockingBrockerBrobynB	robertsonBrobberBroastmeBroastingBriyadhBriveraBrifles
??
Const_5Const*
_output_shapes	
:?]*
dtype0	*??
value??B??	?]"??                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?       	      	      	      	      	      	      	      	      	      		      
	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	       	      !	      "	      #	      $	      %	      &	      '	      (	      )	      *	      +	      ,	      -	      .	      /	      0	      1	      2	      3	      4	      5	      6	      7	      8	      9	      :	      ;	      <	      =	      >	      ?	      @	      A	      B	      C	      D	      E	      F	      G	      H	      I	      J	      K	      L	      M	      N	      O	      P	      Q	      R	      S	      T	      U	      V	      W	      X	      Y	      Z	      [	      \	      ]	      ^	      _	      `	      a	      b	      c	      d	      e	      f	      g	      h	      i	      j	      k	      l	      m	      n	      o	      p	      q	      r	      s	      t	      u	      v	      w	      x	      y	      z	      {	      |	      }	      ~	      	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	       
      
      
      
      
      
      
      
      
      	
      

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       
      !
      "
      #
      $
      %
      &
      '
      (
      )
      *
      +
      ,
      -
      .
      /
      0
      1
      2
      3
      4
      5
      6
      7
      8
      9
      :
      ;
      <
      =
      >
      ?
      @
      A
      B
      C
      D
      E
      F
      G
      H
      I
      J
      K
      L
      M
      N
      O
      P
      Q
      R
      S
      T
      U
      V
      W
      X
      Y
      Z
      [
      \
      ]
      ^
      _
      `
      a
      b
      c
      d
      e
      f
      g
      h
      i
      j
      k
      l
      m
      n
      o
      p
      q
      r
      s
      t
      u
      v
      w
      x
      y
      z
      {
      |
      }
      ~
      
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                                      	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?        !      !      !      !      !      !      !      !      !      	!      
!      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !       !      !!      "!      #!      $!      %!      &!      '!      (!      )!      *!      +!      ,!      -!      .!      /!      0!      1!      2!      3!      4!      5!      6!      7!      8!      9!      :!      ;!      <!      =!      >!      ?!      @!      A!      B!      C!      D!      E!      F!      G!      H!      I!      J!      K!      L!      M!      N!      O!      P!      Q!      R!      S!      T!      U!      V!      W!      X!      Y!      Z!      [!      \!      ]!      ^!      _!      `!      a!      b!      c!      d!      e!      f!      g!      h!      i!      j!      k!      l!      m!      n!      o!      p!      q!      r!      s!      t!      u!      v!      w!      x!      y!      z!      {!      |!      }!      ~!      !      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!       "      "      "      "      "      "      "      "      "      	"      
"      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "       "      !"      ""      #"      $"      %"      &"      '"      ("      )"      *"      +"      ,"      -"      ."      /"      0"      1"      2"      3"      4"      5"      6"      7"      8"      9"      :"      ;"      <"      ="      >"      ?"      @"      A"      B"      C"      D"      E"      F"      G"      H"      I"      J"      K"      L"      M"      N"      O"      P"      Q"      R"      S"      T"      U"      V"      W"      X"      Y"      Z"      ["      \"      ]"      ^"      _"      `"      a"      b"      c"      d"      e"      f"      g"      h"      i"      j"      k"      l"      m"      n"      o"      p"      q"      r"      s"      t"      u"      v"      w"      x"      y"      z"      {"      |"      }"      ~"      "      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"       #      #      #      #      #      #      #      #      #      	#      
#      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #       #      !#      "#      ##      $#      %#      &#      '#      (#      )#      *#      +#      ,#      -#      .#      /#      0#      1#      2#      3#      4#      5#      6#      7#      8#      9#      :#      ;#      <#      =#      >#      ?#      @#      A#      B#      C#      D#      E#      F#      G#      H#      I#      J#      K#      L#      M#      N#      O#      P#      Q#      R#      S#      T#      U#      V#      W#      X#      Y#      Z#      [#      \#      ]#      ^#      _#      `#      a#      b#      c#      d#      e#      f#      g#      h#      i#      j#      k#      l#      m#      n#      o#      p#      q#      r#      s#      t#      u#      v#      w#      x#      y#      z#      {#      |#      }#      ~#      #      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#       $      $      $      $      $      $      $      $      $      	$      
$      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $       $      !$      "$      #$      $$      %$      &$      '$      ($      )$      *$      +$      ,$      -$      .$      /$      0$      1$      2$      3$      4$      5$      6$      7$      8$      9$      :$      ;$      <$      =$      >$      ?$      @$      A$      B$      C$      D$      E$      F$      G$      H$      I$      J$      K$      L$      M$      N$      O$      P$      Q$      R$      S$      T$      U$      V$      W$      X$      Y$      Z$      [$      \$      ]$      ^$      _$      `$      a$      b$      c$      d$      e$      f$      g$      h$      i$      j$      k$      l$      m$      n$      o$      p$      q$      r$      s$      t$      u$      v$      w$      x$      y$      z$      {$      |$      }$      ~$      $      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$       %      %      %      %      %      %      %      %      %      	%      
%      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %       %      !%      "%      #%      $%      %%      &%      '%      (%      )%      *%      +%      ,%      -%      .%      /%      0%      1%      2%      3%      4%      5%      6%      7%      8%      9%      :%      ;%      <%      =%      >%      ?%      @%      A%      B%      C%      D%      E%      F%      G%      H%      I%      J%      K%      L%      M%      N%      O%      P%      Q%      R%      S%      T%      U%      V%      W%      X%      Y%      Z%      [%      \%      ]%      ^%      _%      `%      a%      b%      c%      d%      e%      f%      g%      h%      i%      j%      k%      l%      m%      n%      o%      p%      q%      r%      s%      t%      u%      v%      w%      x%      y%      z%      {%      |%      }%      ~%      %      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%       &      &      &      &      &      &      &      &      &      	&      
&      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &       &      !&      "&      #&      $&      %&      &&      '&      (&      )&      *&      +&      ,&      -&      .&      /&      0&      1&      2&      3&      4&      5&      6&      7&      8&      9&      :&      ;&      <&      =&      >&      ?&      @&      A&      B&      C&      D&      E&      F&      G&      H&      I&      J&      K&      L&      M&      N&      O&      P&      Q&      R&      S&      T&      U&      V&      W&      X&      Y&      Z&      [&      \&      ]&      ^&      _&      `&      a&      b&      c&      d&      e&      f&      g&      h&      i&      j&      k&      l&      m&      n&      o&      p&      q&      r&      s&      t&      u&      v&      w&      x&      y&      z&      {&      |&      }&      ~&      &      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&       '      '      '      '      '      '      '      '      '      	'      
'      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '       '      !'      "'      #'      $'      %'      &'      ''      ('      )'      *'      +'      ,'      -'      .'      /'      0'      1'      2'      3'      4'      5'      6'      7'      8'      9'      :'      ;'      <'      ='      >'      ?'      @'      A'      B'      C'      D'      E'      F'      G'      H'      I'      J'      K'      L'      M'      N'      O'      P'      Q'      R'      S'      T'      U'      V'      W'      X'      Y'      Z'      ['      \'      ]'      ^'      _'      `'      a'      b'      c'      d'      e'      f'      g'      h'      i'      j'      k'      l'      m'      n'      o'      p'      q'      r'      s'      t'      u'      v'      w'      x'      y'      z'      {'      |'      }'      ~'      '      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'       (      (      (      (      (      (      (      (      (      	(      
(      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (       (      !(      "(      #(      $(      %(      &(      '(      ((      )(      *(      +(      ,(      -(      .(      /(      0(      1(      2(      3(      4(      5(      6(      7(      8(      9(      :(      ;(      <(      =(      >(      ?(      @(      A(      B(      C(      D(      E(      F(      G(      H(      I(      J(      K(      L(      M(      N(      O(      P(      Q(      R(      S(      T(      U(      V(      W(      X(      Y(      Z(      [(      \(      ](      ^(      _(      `(      a(      b(      c(      d(      e(      f(      g(      h(      i(      j(      k(      l(      m(      n(      o(      p(      q(      r(      s(      t(      u(      v(      w(      x(      y(      z(      {(      |(      }(      ~(      (      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(       )      )      )      )      )      )      )      )      )      	)      
)      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )       )      !)      ")      #)      $)      %)      &)      ')      ()      ))      *)      +)      ,)      -)      .)      /)      0)      1)      2)      3)      4)      5)      6)      7)      8)      9)      :)      ;)      <)      =)      >)      ?)      @)      A)      B)      C)      D)      E)      F)      G)      H)      I)      J)      K)      L)      M)      N)      O)      P)      Q)      R)      S)      T)      U)      V)      W)      X)      Y)      Z)      [)      \)      ])      ^)      _)      `)      a)      b)      c)      d)      e)      f)      g)      h)      i)      j)      k)      l)      m)      n)      o)      p)      q)      r)      s)      t)      u)      v)      w)      x)      y)      z)      {)      |)      })      ~)      )      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)       *      *      *      *      *      *      *      *      *      	*      
*      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *       *      !*      "*      #*      $*      %*      &*      '*      (*      )*      **      +*      ,*      -*      .*      /*      0*      1*      2*      3*      4*      5*      6*      7*      8*      9*      :*      ;*      <*      =*      >*      ?*      @*      A*      B*      C*      D*      E*      F*      G*      H*      I*      J*      K*      L*      M*      N*      O*      P*      Q*      R*      S*      T*      U*      V*      W*      X*      Y*      Z*      [*      \*      ]*      ^*      _*      `*      a*      b*      c*      d*      e*      f*      g*      h*      i*      j*      k*      l*      m*      n*      o*      p*      q*      r*      s*      t*      u*      v*      w*      x*      y*      z*      {*      |*      }*      ~*      *      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*       +      +      +      +      +      +      +      +      +      	+      
+      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +       +      !+      "+      #+      $+      %+      &+      '+      (+      )+      *+      ++      ,+      -+      .+      /+      0+      1+      2+      3+      4+      5+      6+      7+      8+      9+      :+      ;+      <+      =+      >+      ?+      @+      A+      B+      C+      D+      E+      F+      G+      H+      I+      J+      K+      L+      M+      N+      O+      P+      Q+      R+      S+      T+      U+      V+      W+      X+      Y+      Z+      [+      \+      ]+      ^+      _+      `+      a+      b+      c+      d+      e+      f+      g+      h+      i+      j+      k+      l+      m+      n+      o+      p+      q+      r+      s+      t+      u+      v+      w+      x+      y+      z+      {+      |+      }+      ~+      +      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+       ,      ,      ,      ,      ,      ,      ,      ,      ,      	,      
,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,       ,      !,      ",      #,      $,      %,      &,      ',      (,      ),      *,      +,      ,,      -,      .,      /,      0,      1,      2,      3,      4,      5,      6,      7,      8,      9,      :,      ;,      <,      =,      >,      ?,      @,      A,      B,      C,      D,      E,      F,      G,      H,      I,      J,      K,      L,      M,      N,      O,      P,      Q,      R,      S,      T,      U,      V,      W,      X,      Y,      Z,      [,      \,      ],      ^,      _,      `,      a,      b,      c,      d,      e,      f,      g,      h,      i,      j,      k,      l,      m,      n,      o,      p,      q,      r,      s,      t,      u,      v,      w,      x,      y,      z,      {,      |,      },      ~,      ,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,       -      -      -      -      -      -      -      -      -      	-      
-      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -       -      !-      "-      #-      $-      %-      &-      '-      (-      )-      *-      +-      ,-      --      .-      /-      0-      1-      2-      3-      4-      5-      6-      7-      8-      9-      :-      ;-      <-      =-      >-      ?-      @-      A-      B-      C-      D-      E-      F-      G-      H-      I-      J-      K-      L-      M-      N-      O-      P-      Q-      R-      S-      T-      U-      V-      W-      X-      Y-      Z-      [-      \-      ]-      ^-      _-      `-      a-      b-      c-      d-      e-      f-      g-      h-      i-      j-      k-      l-      m-      n-      o-      p-      q-      r-      s-      t-      u-      v-      w-      x-      y-      z-      {-      |-      }-      ~-      -      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-       .      .      .      .      .      .      .      .      .      	.      
.      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .       .      !.      ".      #.      $.      %.      &.      '.      (.      ).      *.      +.      ,.      -.      ..      /.      0.      1.      2.      3.      4.      5.      6.      7.      8.      9.      :.      ;.      <.      =.      >.      ?.      @.      A.      B.      C.      D.      E.      F.      G.      H.      I.      J.      K.      L.      M.      N.      O.      P.      Q.      R.      S.      T.      U.      V.      W.      X.      Y.      Z.      [.      \.      ].      ^.      _.      `.      a.      b.      c.      d.      e.      f.      g.      h.      i.      j.      k.      l.      m.      n.      o.      p.      q.      r.      s.      t.      u.      v.      w.      x.      y.      z.      {.      |.      }.      ~.      .      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_4Const_5*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *%
f R
__inference_<lambda>_6550064
?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *%
f R
__inference_<lambda>_6550069
8
NoOpNoOp^PartitionedCall^StatefulPartitionedCall
?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
?=
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*?<
value?<B?< B?<
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures*
;
_lookup_layer
	keras_api
_adapt_function*
?
layer_with_weights-0
layer-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses* 
* 

"1
#2
$3*

"0
#1
$2*
* 
?
%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
* 
* 
* 

*serving_default* 
7
+lookup_table
,token_counts
-	keras_api*
* 
* 
?
"
embeddings
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses*
?
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8_random_generator
9__call__
*:&call_and_return_all_conditional_losses* 
?
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses* 
?
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E_random_generator
F__call__
*G&call_and_return_all_conditional_losses* 
?

#kernel
$bias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses*
?
Niter

Obeta_1

Pbeta_2
	Qdecay
Rlearning_rate"m?#m?$m?"v?#v?$v?*

"0
#1
$2*

"0
#1
$2*
* 
?
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses* 
* 
* 
TN
VARIABLE_VALUEembedding/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
dense/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

]0
^1*
* 
* 
* 
R
__initializer
`_create_resource
a_initialize
b_destroy_resource* 
?
c_create_resource
d_initialize
e_destroy_resourceJ
tableAlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table*
* 

"0*

"0*
* 
?
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
4	variables
5trainable_variables
6regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
?
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
?
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses* 
* 
* 
* 

#0
$1*

#0
$1*
* 
?
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUE	Adam/iter>layer_with_weights-1/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/beta_1@layer_with_weights-1/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/beta_2@layer_with_weights-1/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE
Adam/decay?layer_with_weights-1/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/learning_rateGlayer_with_weights-1/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
0
1
2
3
4*

0
?1*
* 
* 
* 
* 
* 
* 
* 
<

?total

?count
?	variables
?	keras_api*
M

?total

?count
?
_fn_kwargs
?	variables
?	keras_api*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

?total

?count
?	variables
?	keras_api*
M

?total

?count
?
_fn_kwargs
?	variables
?	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?	variables*
jd
VARIABLE_VALUEtotal_2Ilayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEcount_2Ilayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
jd
VARIABLE_VALUEtotal_3Ilayer_with_weights-1/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEcount_3Ilayer_with_weights-1/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?	variables*
??
VARIABLE_VALUEAdam/embedding/embeddings/mWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/dense/kernel/mWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense/bias/mWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/embedding/embeddings/vWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/dense/kernel/vWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense/bias/vWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
serving_default_input_1Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_input_1
hash_tableConstConst_1Const_2embedding/embeddingsdense/kernel
dense/bias*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_6549676
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1Adam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOp/Adam/embedding/embeddings/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp/Adam/embedding/embeddings/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOpConst_6*%
Tin
2		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__traced_save_6550172
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameembedding/embeddingsdense/kernel
dense/biasMutableHashTable	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1total_2count_2total_3count_3Adam/embedding/embeddings/mAdam/dense/kernel/mAdam/dense/bias/mAdam/embedding/embeddings/vAdam/dense/kernel/vAdam/dense/bias/v*#
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference__traced_restore_6550251??
?
E
)__inference_dropout_layer_call_fn_6549917

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_6548877m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :??????????????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????????????@:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_6549965

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
q
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_6548848

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?	
?
F__inference_embedding_layer_call_and_return_conditional_losses_6548868

inputs+
embedding_lookup_6548862:	?]@
identity??embedding_lookup^
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:???????????????????
embedding_lookupResourceGatherembedding_lookup_6548862Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/6548862*4
_output_shapes"
 :??????????????????@*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/6548862*4
_output_shapes"
 :??????????????????@?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :??????????????????@?
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????@Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?%
?
G__inference_sequential_layer_call_and_return_conditional_losses_6549829

inputs5
"embedding_embedding_lookup_6549799:	?]@6
$dense_matmul_readvariableop_resource:@3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?embedding/embedding_lookuph
embedding/CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:???????????????????
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_6549799embedding/Cast:y:0*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/6549799*4
_output_shapes"
 :??????????????????@*
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/6549799*4
_output_shapes"
 :??????????????????@?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :??????????????????@Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout/dropout/MulMul.embedding/embedding_lookup/Identity_1:output:0dropout/dropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????@s
dropout/dropout/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????@*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????@?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????@?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*4
_output_shapes"
 :??????????????????@q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_average_pooling1d/MeanMeandropout/dropout/Mul_1:z:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????@\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_1/dropout/MulMul&global_average_pooling1d/Mean:output:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@m
dropout_1/dropout/ShapeShape&global_average_pooling1d/Mean:output:0*
T0*
_output_shapes
:?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense/MatMulMatMuldropout_1/dropout/Mul_1:z:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????e
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":??????????????????: : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_layer_call_and_return_conditional_losses_6549927

inputs

identity_1[
IdentityIdentityinputs*
T0*4
_output_shapes"
 :??????????????????@h

Identity_1IdentityIdentity:output:0*
T0*4
_output_shapes"
 :??????????????????@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????????????@:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?	
e
F__inference_dropout_1_layer_call_and_return_conditional_losses_6549977

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
G__inference_sequential_layer_call_and_return_conditional_losses_6549850

inputs	5
"embedding_embedding_lookup_6549834:	?]@6
$dense_matmul_readvariableop_resource:@3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?embedding/embedding_lookupV
CastCastinputs*

DstT0*

SrcT0	*(
_output_shapes
:??????????b
embedding/CastCastCast:y:0*

DstT0*

SrcT0*(
_output_shapes
:???????????
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_6549834embedding/Cast:y:0*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/6549834*,
_output_shapes
:??????????@*
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/6549834*,
_output_shapes
:??????????@?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????@?
dropout/IdentityIdentity.embedding/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:??????????@q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_average_pooling1d/MeanMeandropout/Identity:output:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????@x
dropout_1/IdentityIdentity&global_average_pooling1d/Mean:output:0*
T0*'
_output_shapes
:?????????@?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense/MatMulMatMuldropout_1/Identity:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????e
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:??????????: : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
0
 __inference__initializer_6550024
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?_
?
I__inference_sequential_1_layer_call_and_return_conditional_losses_6549463
input_1O
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	%
sequential_6549454:	?]@$
sequential_6549456:@ 
sequential_6549458:
identity??"sequential/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2_
text_vectorization/StringLowerStringLowerinput_1*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
"sequential/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0sequential_6549454sequential_6549456sequential_6549458*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_6549217?
activation/PartitionedCallPartitionedCall+sequential/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_6549143r
IdentityIdentity#activation/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^sequential/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
b
D__inference_dropout_layer_call_and_return_conditional_losses_6548877

inputs

identity_1[
IdentityIdentityinputs*
T0*4
_output_shapes"
 :??????????????????@h

Identity_1IdentityIdentity:output:0*
T0*4
_output_shapes"
 :??????????????????@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????????????@:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?
?
,__inference_sequential_layer_call_fn_6549025
embedding_input
unknown:	?]@
	unknown_0:@
	unknown_1:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_6549005o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:??????????????????
)
_user_specified_nameembedding_input
?
H
,__inference_activation_layer_call_fn_6549890

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_6549143`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
.
__inference__destroyer_6550029
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?_
?
#__inference__traced_restore_6550251
file_prefix8
%assignvariableop_embedding_embeddings:	?]@1
assignvariableop_1_dense_kernel:@+
assignvariableop_2_dense_bias:M
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: &
assignvariableop_3_adam_iter:	 (
assignvariableop_4_adam_beta_1: (
assignvariableop_5_adam_beta_2: '
assignvariableop_6_adam_decay: /
%assignvariableop_7_adam_learning_rate: "
assignvariableop_8_total: "
assignvariableop_9_count: %
assignvariableop_10_total_1: %
assignvariableop_11_count_1: %
assignvariableop_12_total_2: %
assignvariableop_13_count_2: %
assignvariableop_14_total_3: %
assignvariableop_15_count_3: B
/assignvariableop_16_adam_embedding_embeddings_m:	?]@9
'assignvariableop_17_adam_dense_kernel_m:@3
%assignvariableop_18_adam_dense_bias_m:B
/assignvariableop_19_adam_embedding_embeddings_v:	?]@9
'assignvariableop_20_adam_dense_kernel_v:@3
%assignvariableop_21_adam_dense_bias_v:
identity_23??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?2MutableHashTable_table_restore/LookupTableImportV2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB>layer_with_weights-1/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtableRestoreV2:tensors:3RestoreV2:tensors:4*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*
_output_shapes
 ]

Identity_3IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_iterIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_4IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_2Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp%assignvariableop_7_adam_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0^

Identity_8IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_totalIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0^

Identity_9IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_countIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_total_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_count_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_2Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_3Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_3Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp/assignvariableop_16_adam_embedding_embeddings_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_dense_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp%assignvariableop_18_adam_dense_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp/assignvariableop_19_adam_embedding_embeddings_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_dense_kernel_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp%assignvariableop_21_adam_dense_bias_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_22Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_23IdentityIdentity_22:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "#
identity_23Identity_23:output:0*C
_input_shapes2
0: : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)%
#
_class
loc:@MutableHashTable
?
?
,__inference_sequential_layer_call_fn_6549753

inputs
unknown:	?]@
	unknown_0:@
	unknown_1:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_6549005o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
?
__inference_<lambda>_65500647
3key_value_init6919_lookuptableimportv2_table_handle/
+key_value_init6919_lookuptableimportv2_keys1
-key_value_init6919_lookuptableimportv2_values	
identity??&key_value_init6919/LookupTableImportV2?
&key_value_init6919/LookupTableImportV2LookupTableImportV23key_value_init6919_lookuptableimportv2_table_handle+key_value_init6919_lookuptableimportv2_keys-key_value_init6919_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: o
NoOpNoOp'^key_value_init6919/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?]:?]2P
&key_value_init6919/LookupTableImportV2&key_value_init6919/LookupTableImportV2:!

_output_shapes	
:?]:!

_output_shapes	
:?]
?
?
,__inference_sequential_layer_call_fn_6549775

inputs	
unknown:	?]@
	unknown_0:@
	unknown_1:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_6549217o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
%__inference_signature_wrapper_6549676
input_1
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	?]@
	unknown_4:@
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_6548838o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference_save_fn_6550048
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
?
?
,__inference_sequential_layer_call_fn_6549742

inputs
unknown:	?]@
	unknown_0:@
	unknown_1:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_6548904o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_1_layer_call_fn_6549960

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_6548943o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
G__inference_sequential_layer_call_and_return_conditional_losses_6549130

inputs	5
"embedding_embedding_lookup_6549114:	?]@6
$dense_matmul_readvariableop_resource:@3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?embedding/embedding_lookupV
CastCastinputs*

DstT0*

SrcT0	*(
_output_shapes
:??????????b
embedding/CastCastCast:y:0*

DstT0*

SrcT0*(
_output_shapes
:???????????
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_6549114embedding/Cast:y:0*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/6549114*,
_output_shapes
:??????????@*
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/6549114*,
_output_shapes
:??????????@?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????@?
dropout/IdentityIdentity.embedding/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:??????????@q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_average_pooling1d/MeanMeandropout/Identity:output:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????@x
dropout_1/IdentityIdentity&global_average_pooling1d/Mean:output:0*
T0*'
_output_shapes
:?????????@?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense/MatMulMatMuldropout_1/Identity:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????e
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:??????????: : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

c
D__inference_dropout_layer_call_and_return_conditional_losses_6549939

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??q
dropout/MulMulinputsdropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????@|
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????@v
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*4
_output_shapes"
 :??????????????????@f
IdentityIdentitydropout/Mul_1:z:0*
T0*4
_output_shapes"
 :??????????????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????????????@:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?	
?
.__inference_sequential_1_layer_call_fn_6549163
input_1
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	?]@
	unknown_4:@
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_1_layer_call_and_return_conditional_losses_6549146o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?D
?
__inference_adapt_step_6549725
iterator

iterator_19
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:?????????*&
output_shapes
:?????????*
output_types
2a
StringLowerStringLowerIteratorGetNext:components:0*'
_output_shapes
:??????????
StaticRegexReplaceStaticRegexReplaceStringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite }
SqueezeSqueezeStaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????R
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
StringSplit/StringSplitV2StringSplitV2Squeeze:output:0StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:p
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_maskk
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdUStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumVStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
UniqueWithCountsUniqueWithCounts"StringSplit/StringSplitV2:values:0*
T0*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator:

_output_shapes
: 
?
H
__inference__creator_6550019
identity: ??MutableHashTable|
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_7*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
?
c
G__inference_activation_layer_call_and_return_conditional_losses_6549895

inputs
identityL
SigmoidSigmoidinputs*
T0*'
_output_shapes
:?????????S
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
G__inference_sequential_layer_call_and_return_conditional_losses_6549005

inputs$
embedding_6548993:	?]@
dense_6548999:@
dense_6549001:
identity??dense/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_6548993*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_6548868?
dropout/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_6548966?
(global_average_pooling1d/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *^
fYRW
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_6548848?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_6548943?
dense/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_6548999dense_6549001*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_6548897u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":??????????????????: : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?%
?
G__inference_sequential_layer_call_and_return_conditional_losses_6549217

inputs	5
"embedding_embedding_lookup_6549187:	?]@6
$dense_matmul_readvariableop_resource:@3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?embedding/embedding_lookupV
CastCastinputs*

DstT0*

SrcT0	*(
_output_shapes
:??????????b
embedding/CastCastCast:y:0*

DstT0*

SrcT0*(
_output_shapes
:???????????
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_6549187embedding/Cast:y:0*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/6549187*,
_output_shapes
:??????????@*
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/6549187*,
_output_shapes
:??????????@?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????@Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout/dropout/MulMul.embedding/embedding_lookup/Identity_1:output:0dropout/dropout/Const:output:0*
T0*,
_output_shapes
:??????????@s
dropout/dropout/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*,
_output_shapes
:??????????@*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????@?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????@?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*,
_output_shapes
:??????????@q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_average_pooling1d/MeanMeandropout/dropout/Mul_1:z:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????@\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_1/dropout/MulMul&global_average_pooling1d/Mean:output:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@m
dropout_1/dropout/ShapeShape&global_average_pooling1d/Mean:output:0*
T0*
_output_shapes
:?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense/MatMulMatMuldropout_1/dropout/Mul_1:z:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????e
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:??????????: : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
B__inference_dense_layer_call_and_return_conditional_losses_6548897

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?_
?
I__inference_sequential_1_layer_call_and_return_conditional_losses_6549307

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	%
sequential_6549298:	?]@$
sequential_6549300:@ 
sequential_6549302:
identity??"sequential/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2^
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
"sequential/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0sequential_6549298sequential_6549300sequential_6549302*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_6549217?
activation/PartitionedCallPartitionedCall+sequential/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_6549143r
IdentityIdentity#activation/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^sequential/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
c
G__inference_activation_layer_call_and_return_conditional_losses_6549143

inputs
identityL
SigmoidSigmoidinputs*
T0*'
_output_shapes
:?????????S
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?_
?
I__inference_sequential_1_layer_call_and_return_conditional_losses_6549146

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	%
sequential_6549131:	?]@$
sequential_6549133:@ 
sequential_6549135:
identity??"sequential/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2^
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
"sequential/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0sequential_6549131sequential_6549133sequential_6549135*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_6549130?
activation/PartitionedCallPartitionedCall+sequential/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_6549143r
IdentityIdentity#activation/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^sequential/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
q
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_6549950

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?_
?
I__inference_sequential_1_layer_call_and_return_conditional_losses_6549403
input_1O
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	%
sequential_6549394:	?]@$
sequential_6549396:@ 
sequential_6549398:
identity??"sequential/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2_
text_vectorization/StringLowerStringLowerinput_1*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
"sequential/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0sequential_6549394sequential_6549396sequential_6549398*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_6549130?
activation/PartitionedCallPartitionedCall+sequential/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_6549143r
IdentityIdentity#activation/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^sequential/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_6548885

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
,
__inference_<lambda>_6550069
identityJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?	
?
.__inference_sequential_1_layer_call_fn_6549343
input_1
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	?]@
	unknown_4:@
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_1_layer_call_and_return_conditional_losses_6549307o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
.
__inference__destroyer_6550014
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
 __inference__initializer_65500097
3key_value_init6919_lookuptableimportv2_table_handle/
+key_value_init6919_lookuptableimportv2_keys1
-key_value_init6919_lookuptableimportv2_values	
identity??&key_value_init6919/LookupTableImportV2?
&key_value_init6919/LookupTableImportV2LookupTableImportV23key_value_init6919_lookuptableimportv2_table_handle+key_value_init6919_lookuptableimportv2_keys-key_value_init6919_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: o
NoOpNoOp'^key_value_init6919/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?]:?]2P
&key_value_init6919/LookupTableImportV2&key_value_init6919/LookupTableImportV2:!

_output_shapes	
:?]:!

_output_shapes	
:?]
?	
?
.__inference_sequential_1_layer_call_fn_6549501

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	?]@
	unknown_4:@
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_1_layer_call_and_return_conditional_losses_6549307o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
'__inference_dense_layer_call_fn_6549986

inputs
unknown:@
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_6548897o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
B__inference_dense_layer_call_and_return_conditional_losses_6549996

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
<
__inference__creator_6550001
identity??
hash_tablel

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name6920*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
?
__inference_restore_fn_6550056
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
??
?
I__inference_sequential_1_layer_call_and_return_conditional_losses_6549655

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	@
-sequential_embedding_embedding_lookup_6549624:	?]@A
/sequential_dense_matmul_readvariableop_resource:@>
0sequential_dense_biasadd_readvariableop_resource:
identity??'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?%sequential/embedding/embedding_lookup?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2^
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
sequential/CastCast?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*

DstT0*

SrcT0	*(
_output_shapes
:??????????x
sequential/embedding/CastCastsequential/Cast:y:0*

DstT0*

SrcT0*(
_output_shapes
:???????????
%sequential/embedding/embedding_lookupResourceGather-sequential_embedding_embedding_lookup_6549624sequential/embedding/Cast:y:0*
Tindices0*@
_class6
42loc:@sequential/embedding/embedding_lookup/6549624*,
_output_shapes
:??????????@*
dtype0?
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0*
T0*@
_class6
42loc:@sequential/embedding/embedding_lookup/6549624*,
_output_shapes
:??????????@?
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????@e
 sequential/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
sequential/dropout/dropout/MulMul9sequential/embedding/embedding_lookup/Identity_1:output:0)sequential/dropout/dropout/Const:output:0*
T0*,
_output_shapes
:??????????@?
 sequential/dropout/dropout/ShapeShape9sequential/embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:?
7sequential/dropout/dropout/random_uniform/RandomUniformRandomUniform)sequential/dropout/dropout/Shape:output:0*
T0*,
_output_shapes
:??????????@*
dtype0n
)sequential/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
'sequential/dropout/dropout/GreaterEqualGreaterEqual@sequential/dropout/dropout/random_uniform/RandomUniform:output:02sequential/dropout/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????@?
sequential/dropout/dropout/CastCast+sequential/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????@?
 sequential/dropout/dropout/Mul_1Mul"sequential/dropout/dropout/Mul:z:0#sequential/dropout/dropout/Cast:y:0*
T0*,
_output_shapes
:??????????@|
:sequential/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
(sequential/global_average_pooling1d/MeanMean$sequential/dropout/dropout/Mul_1:z:0Csequential/global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????@g
"sequential/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
 sequential/dropout_1/dropout/MulMul1sequential/global_average_pooling1d/Mean:output:0+sequential/dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@?
"sequential/dropout_1/dropout/ShapeShape1sequential/global_average_pooling1d/Mean:output:0*
T0*
_output_shapes
:?
9sequential/dropout_1/dropout/random_uniform/RandomUniformRandomUniform+sequential/dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0p
+sequential/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
)sequential/dropout_1/dropout/GreaterEqualGreaterEqualBsequential/dropout_1/dropout/random_uniform/RandomUniform:output:04sequential/dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@?
!sequential/dropout_1/dropout/CastCast-sequential/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@?
"sequential/dropout_1/dropout/Mul_1Mul$sequential/dropout_1/dropout/Mul:z:0%sequential/dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@?
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
sequential/dense/MatMulMatMul&sequential/dropout_1/dropout/Mul_1:z:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
activation/SigmoidSigmoid!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????e
IdentityIdentityactivation/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp&^sequential/embedding/embedding_lookup?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
e
F__inference_dropout_1_layer_call_and_return_conditional_losses_6548943

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?~
?
"__inference__wrapped_model_6548838
input_1\
Xsequential_1_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle]
Ysequential_1_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	9
5sequential_1_text_vectorization_string_lookup_equal_y<
8sequential_1_text_vectorization_string_lookup_selectv2_t	M
:sequential_1_sequential_embedding_embedding_lookup_6548821:	?]@N
<sequential_1_sequential_dense_matmul_readvariableop_resource:@K
=sequential_1_sequential_dense_biasadd_readvariableop_resource:
identity??4sequential_1/sequential/dense/BiasAdd/ReadVariableOp?3sequential_1/sequential/dense/MatMul/ReadVariableOp?2sequential_1/sequential/embedding/embedding_lookup?Ksequential_1/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2l
+sequential_1/text_vectorization/StringLowerStringLowerinput_1*'
_output_shapes
:??????????
2sequential_1/text_vectorization/StaticRegexReplaceStaticRegexReplace4sequential_1/text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
'sequential_1/text_vectorization/SqueezeSqueeze;sequential_1/text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????r
1sequential_1/text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
9sequential_1/text_vectorization/StringSplit/StringSplitV2StringSplitV20sequential_1/text_vectorization/Squeeze:output:0:sequential_1/text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
?sequential_1/text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
Asequential_1/text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
Asequential_1/text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
9sequential_1/text_vectorization/StringSplit/strided_sliceStridedSliceCsequential_1/text_vectorization/StringSplit/StringSplitV2:indices:0Hsequential_1/text_vectorization/StringSplit/strided_slice/stack:output:0Jsequential_1/text_vectorization/StringSplit/strided_slice/stack_1:output:0Jsequential_1/text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
Asequential_1/text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Csequential_1/text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Csequential_1/text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
;sequential_1/text_vectorization/StringSplit/strided_slice_1StridedSliceAsequential_1/text_vectorization/StringSplit/StringSplitV2:shape:0Jsequential_1/text_vectorization/StringSplit/strided_slice_1/stack:output:0Lsequential_1/text_vectorization/StringSplit/strided_slice_1/stack_1:output:0Lsequential_1/text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
bsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCastBsequential_1/text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
dsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastDsequential_1/text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
lsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapefsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
lsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
ksequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdusequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0usequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
psequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
nsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatertsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ysequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
ksequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastrsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
nsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
jsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxfsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0wsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
lsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
jsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ssequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0usequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
jsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulosequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0nsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
nsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumhsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0nsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
nsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumhsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0rsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
nsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
osequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountfsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0rsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0wsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
isequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumvsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0rsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
msequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
isequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2vsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0jsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0rsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Ksequential_1/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Xsequential_1_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleBsequential_1/text_vectorization/StringSplit/StringSplitV2:values:0Ysequential_1_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
3sequential_1/text_vectorization/string_lookup/EqualEqualBsequential_1/text_vectorization/StringSplit/StringSplitV2:values:05sequential_1_text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
6sequential_1/text_vectorization/string_lookup/SelectV2SelectV27sequential_1/text_vectorization/string_lookup/Equal:z:08sequential_1_text_vectorization_string_lookup_selectv2_tTsequential_1/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
6sequential_1/text_vectorization/string_lookup/IdentityIdentity?sequential_1/text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????~
<sequential_1/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
4sequential_1/text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????       ?
Csequential_1/text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor=sequential_1/text_vectorization/RaggedToTensor/Const:output:0?sequential_1/text_vectorization/string_lookup/Identity:output:0Esequential_1/text_vectorization/RaggedToTensor/default_value:output:0Dsequential_1/text_vectorization/StringSplit/strided_slice_1:output:0Bsequential_1/text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
sequential_1/sequential/CastCastLsequential_1/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*

DstT0*

SrcT0	*(
_output_shapes
:???????????
&sequential_1/sequential/embedding/CastCast sequential_1/sequential/Cast:y:0*

DstT0*

SrcT0*(
_output_shapes
:???????????
2sequential_1/sequential/embedding/embedding_lookupResourceGather:sequential_1_sequential_embedding_embedding_lookup_6548821*sequential_1/sequential/embedding/Cast:y:0*
Tindices0*M
_classC
A?loc:@sequential_1/sequential/embedding/embedding_lookup/6548821*,
_output_shapes
:??????????@*
dtype0?
;sequential_1/sequential/embedding/embedding_lookup/IdentityIdentity;sequential_1/sequential/embedding/embedding_lookup:output:0*
T0*M
_classC
A?loc:@sequential_1/sequential/embedding/embedding_lookup/6548821*,
_output_shapes
:??????????@?
=sequential_1/sequential/embedding/embedding_lookup/Identity_1IdentityDsequential_1/sequential/embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????@?
(sequential_1/sequential/dropout/IdentityIdentityFsequential_1/sequential/embedding/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:??????????@?
Gsequential_1/sequential/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
5sequential_1/sequential/global_average_pooling1d/MeanMean1sequential_1/sequential/dropout/Identity:output:0Psequential_1/sequential/global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????@?
*sequential_1/sequential/dropout_1/IdentityIdentity>sequential_1/sequential/global_average_pooling1d/Mean:output:0*
T0*'
_output_shapes
:?????????@?
3sequential_1/sequential/dense/MatMul/ReadVariableOpReadVariableOp<sequential_1_sequential_dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
$sequential_1/sequential/dense/MatMulMatMul3sequential_1/sequential/dropout_1/Identity:output:0;sequential_1/sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
4sequential_1/sequential/dense/BiasAdd/ReadVariableOpReadVariableOp=sequential_1_sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
%sequential_1/sequential/dense/BiasAddBiasAdd.sequential_1/sequential/dense/MatMul:product:0<sequential_1/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_1/activation/SigmoidSigmoid.sequential_1/sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????r
IdentityIdentity#sequential_1/activation/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp5^sequential_1/sequential/dense/BiasAdd/ReadVariableOp4^sequential_1/sequential/dense/MatMul/ReadVariableOp3^sequential_1/sequential/embedding/embedding_lookupL^sequential_1/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2l
4sequential_1/sequential/dense/BiasAdd/ReadVariableOp4sequential_1/sequential/dense/BiasAdd/ReadVariableOp2j
3sequential_1/sequential/dense/MatMul/ReadVariableOp3sequential_1/sequential/dense/MatMul/ReadVariableOp2h
2sequential_1/sequential/embedding/embedding_lookup2sequential_1/sequential/embedding/embedding_lookup2?
Ksequential_1/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2Ksequential_1/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?

c
D__inference_dropout_layer_call_and_return_conditional_losses_6548966

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??q
dropout/MulMulinputsdropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????@|
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????@v
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*4
_output_shapes"
 :??????????????????@f
IdentityIdentitydropout/Mul_1:z:0*
T0*4
_output_shapes"
 :??????????????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????????????@:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?
?
,__inference_sequential_layer_call_fn_6549764

inputs	
unknown:	?]@
	unknown_0:@
	unknown_1:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_6549130o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_sequential_layer_call_and_return_conditional_losses_6549055
embedding_input$
embedding_6549043:	?]@
dense_6549049:@
dense_6549051:
identity??dense/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_6549043*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_6548868?
dropout/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_6548966?
(global_average_pooling1d/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *^
fYRW
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_6548848?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_6548943?
dense/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_6549049dense_6549051*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_6548897u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":??????????????????: : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall:a ]
0
_output_shapes
:??????????????????
)
_user_specified_nameembedding_input
?	
?
.__inference_sequential_1_layer_call_fn_6549482

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	?]@
	unknown_4:@
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_1_layer_call_and_return_conditional_losses_6549146o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?n
?
I__inference_sequential_1_layer_call_and_return_conditional_losses_6549571

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	@
-sequential_embedding_embedding_lookup_6549554:	?]@A
/sequential_dense_matmul_readvariableop_resource:@>
0sequential_dense_biasadd_readvariableop_resource:
identity??'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?%sequential/embedding/embedding_lookup?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2^
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
sequential/CastCast?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*

DstT0*

SrcT0	*(
_output_shapes
:??????????x
sequential/embedding/CastCastsequential/Cast:y:0*

DstT0*

SrcT0*(
_output_shapes
:???????????
%sequential/embedding/embedding_lookupResourceGather-sequential_embedding_embedding_lookup_6549554sequential/embedding/Cast:y:0*
Tindices0*@
_class6
42loc:@sequential/embedding/embedding_lookup/6549554*,
_output_shapes
:??????????@*
dtype0?
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0*
T0*@
_class6
42loc:@sequential/embedding/embedding_lookup/6549554*,
_output_shapes
:??????????@?
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????@?
sequential/dropout/IdentityIdentity9sequential/embedding/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:??????????@|
:sequential/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
(sequential/global_average_pooling1d/MeanMean$sequential/dropout/Identity:output:0Csequential/global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????@?
sequential/dropout_1/IdentityIdentity1sequential/global_average_pooling1d/Mean:output:0*
T0*'
_output_shapes
:?????????@?
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
sequential/dense/MatMulMatMul&sequential/dropout_1/Identity:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
activation/SigmoidSigmoid!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????e
IdentityIdentityactivation/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp&^sequential/embedding/embedding_lookup?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
+__inference_embedding_layer_call_fn_6549902

inputs
unknown:	?]@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_6548868|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
?
G__inference_sequential_layer_call_and_return_conditional_losses_6549795

inputs5
"embedding_embedding_lookup_6549779:	?]@6
$dense_matmul_readvariableop_resource:@3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?embedding/embedding_lookuph
embedding/CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:???????????????????
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_6549779embedding/Cast:y:0*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/6549779*4
_output_shapes"
 :??????????????????@*
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/6549779*4
_output_shapes"
 :??????????????????@?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :??????????????????@?
dropout/IdentityIdentity.embedding/embedding_lookup/Identity_1:output:0*
T0*4
_output_shapes"
 :??????????????????@q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_average_pooling1d/MeanMeandropout/Identity:output:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????@x
dropout_1/IdentityIdentity&global_average_pooling1d/Mean:output:0*
T0*'
_output_shapes
:?????????@?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense/MatMulMatMuldropout_1/Identity:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????e
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":??????????????????: : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
G
+__inference_dropout_1_layer_call_fn_6549955

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_6548885`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
V
:__inference_global_average_pooling1d_layer_call_fn_6549944

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *^
fYRW
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_6548848i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
G__inference_sequential_layer_call_and_return_conditional_losses_6549040
embedding_input$
embedding_6549028:	?]@
dense_6549034:@
dense_6549036:
identity??dense/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_6549028*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_6548868?
dropout/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_6548877?
(global_average_pooling1d/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *^
fYRW
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_6548848?
dropout_1/PartitionedCallPartitionedCall1global_average_pooling1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_6548885?
dense/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_6549034dense_6549036*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_6548897u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":??????????????????: : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall:a ]
0
_output_shapes
:??????????????????
)
_user_specified_nameembedding_input
?	
?
F__inference_embedding_layer_call_and_return_conditional_losses_6549912

inputs+
embedding_lookup_6549906:	?]@
identity??embedding_lookup^
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:???????????????????
embedding_lookupResourceGatherembedding_lookup_6549906Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/6549906*4
_output_shapes"
 :??????????????????@*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/6549906*4
_output_shapes"
 :??????????????????@?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :??????????????????@?
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????@Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
?
G__inference_sequential_layer_call_and_return_conditional_losses_6548904

inputs$
embedding_6548869:	?]@
dense_6548898:@
dense_6548900:
identity??dense/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_6548869*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_6548868?
dropout/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_6548877?
(global_average_pooling1d/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *^
fYRW
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_6548848?
dropout_1/PartitionedCallPartitionedCall1global_average_pooling1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_6548885?
dense/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_6548898dense_6548900*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_6548897u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":??????????????????: : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?7
?	
 __inference__traced_save_6550172
file_prefix3
/savev2_embedding_embeddings_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableopJ
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop:
6savev2_adam_embedding_embeddings_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop:
6savev2_adam_embedding_embeddings_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop
savev2_const_6

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB>layer_with_weights-1/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B ?	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableopFsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop6savev2_adam_embedding_embeddings_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop6savev2_adam_embedding_embeddings_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 *'
dtypes
2		?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapesy
w: :	?]@:@:::: : : : : : : : : : : : : :	?]@:@::	?]@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?]@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?]@:$ 

_output_shapes

:@: 

_output_shapes
::%!

_output_shapes
:	?]@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: 
?
?
,__inference_sequential_layer_call_fn_6548913
embedding_input
unknown:	?]@
	unknown_0:@
	unknown_1:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_6548904o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:??????????????????
)
_user_specified_nameembedding_input
?%
?
G__inference_sequential_layer_call_and_return_conditional_losses_6549885

inputs	5
"embedding_embedding_lookup_6549855:	?]@6
$dense_matmul_readvariableop_resource:@3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?embedding/embedding_lookupV
CastCastinputs*

DstT0*

SrcT0	*(
_output_shapes
:??????????b
embedding/CastCastCast:y:0*

DstT0*

SrcT0*(
_output_shapes
:???????????
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_6549855embedding/Cast:y:0*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/6549855*,
_output_shapes
:??????????@*
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/6549855*,
_output_shapes
:??????????@?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????@Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout/dropout/MulMul.embedding/embedding_lookup/Identity_1:output:0dropout/dropout/Const:output:0*
T0*,
_output_shapes
:??????????@s
dropout/dropout/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*,
_output_shapes
:??????????@*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????@?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????@?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*,
_output_shapes
:??????????@q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_average_pooling1d/MeanMeandropout/dropout/Mul_1:z:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????@\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_1/dropout/MulMul&global_average_pooling1d/Mean:output:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@m
dropout_1/dropout/ShapeShape&global_average_pooling1d/Mean:output:0*
T0*
_output_shapes
:?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense/MatMulMatMuldropout_1/dropout/Mul_1:z:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????e
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:??????????: : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
)__inference_dropout_layer_call_fn_6549922

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_6548966|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????????????@22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_10
serving_default_input_1:0?????????@

activation2
StatefulPartitionedCall_1:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
P
_lookup_layer
	keras_api
_adapt_function"
_tf_keras_layer
?
layer_with_weights-0
layer-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_sequential
?
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses"
_tf_keras_layer
"
	optimizer
5
"1
#2
$3"
trackable_list_wrapper
5
"0
#1
$2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
?2?
.__inference_sequential_1_layer_call_fn_6549163
.__inference_sequential_1_layer_call_fn_6549482
.__inference_sequential_1_layer_call_fn_6549501
.__inference_sequential_1_layer_call_fn_6549343?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
I__inference_sequential_1_layer_call_and_return_conditional_losses_6549571
I__inference_sequential_1_layer_call_and_return_conditional_losses_6549655
I__inference_sequential_1_layer_call_and_return_conditional_losses_6549403
I__inference_sequential_1_layer_call_and_return_conditional_losses_6549463?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
"__inference__wrapped_model_6548838input_1"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
*serving_default"
signature_map
L
+lookup_table
,token_counts
-	keras_api"
_tf_keras_layer
"
_generic_user_object
?2?
__inference_adapt_step_6549725?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
"
embeddings
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses"
_tf_keras_layer
?
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8_random_generator
9__call__
*:&call_and_return_all_conditional_losses"
_tf_keras_layer
?
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses"
_tf_keras_layer
?
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E_random_generator
F__call__
*G&call_and_return_all_conditional_losses"
_tf_keras_layer
?

#kernel
$bias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Niter

Obeta_1

Pbeta_2
	Qdecay
Rlearning_rate"m?#m?$m?"v?#v?$v?"
	optimizer
5
"0
#1
$2"
trackable_list_wrapper
5
"0
#1
$2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
,__inference_sequential_layer_call_fn_6548913
,__inference_sequential_layer_call_fn_6549742
,__inference_sequential_layer_call_fn_6549753
,__inference_sequential_layer_call_fn_6549025
,__inference_sequential_layer_call_fn_6549764
,__inference_sequential_layer_call_fn_6549775?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_sequential_layer_call_and_return_conditional_losses_6549795
G__inference_sequential_layer_call_and_return_conditional_losses_6549829
G__inference_sequential_layer_call_and_return_conditional_losses_6549040
G__inference_sequential_layer_call_and_return_conditional_losses_6549055
G__inference_sequential_layer_call_and_return_conditional_losses_6549850
G__inference_sequential_layer_call_and_return_conditional_losses_6549885?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
?2?
,__inference_activation_layer_call_fn_6549890?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_activation_layer_call_and_return_conditional_losses_6549895?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
':%	?]@2embedding/embeddings
:@2dense/kernel
:2
dense/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
%__inference_signature_wrapper_6549676input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
j
__initializer
`_create_resource
a_initialize
b_destroy_resourceR jCustom.StaticHashTable
Q
c_create_resource
d_initialize
e_destroy_resourceR Z
table??
"
_generic_user_object
'
"0"
trackable_list_wrapper
'
"0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_embedding_layer_call_fn_6549902?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_embedding_layer_call_and_return_conditional_losses_6549912?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
4	variables
5trainable_variables
6regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
)__inference_dropout_layer_call_fn_6549917
)__inference_dropout_layer_call_fn_6549922?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dropout_layer_call_and_return_conditional_losses_6549927
D__inference_dropout_layer_call_and_return_conditional_losses_6549939?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
?2?
:__inference_global_average_pooling1d_layer_call_fn_6549944?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_6549950?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
+__inference_dropout_1_layer_call_fn_6549955
+__inference_dropout_1_layer_call_fn_6549960?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_1_layer_call_and_return_conditional_losses_6549965
F__inference_dropout_1_layer_call_and_return_conditional_losses_6549977?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
?2?
'__inference_dense_layer_call_fn_6549986?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_layer_call_and_return_conditional_losses_6549996?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
/
0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
"
_generic_user_object
?2?
__inference__creator_6550001?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
 __inference__initializer_6550009?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_6550014?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_6550019?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
 __inference__initializer_6550024?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_6550029?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
,:*	?]@2Adam/embedding/embeddings/m
#:!@2Adam/dense/kernel/m
:2Adam/dense/bias/m
,:*	?]@2Adam/embedding/embeddings/v
#:!@2Adam/dense/kernel/v
:2Adam/dense/bias/v
?B?
__inference_save_fn_6550048checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_6550056restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_58
__inference__creator_6550001?

? 
? "? 8
__inference__creator_6550019?

? 
? "? :
__inference__destroyer_6550014?

? 
? "? :
__inference__destroyer_6550029?

? 
? "? C
 __inference__initializer_6550009+???

? 
? "? <
 __inference__initializer_6550024?

? 
? "? ?
"__inference__wrapped_model_6548838w
+???"#$0?-
&?#
!?
input_1?????????
? "7?4
2

activation$?!

activation??????????
G__inference_activation_layer_call_and_return_conditional_losses_6549895X/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? {
,__inference_activation_layer_call_fn_6549890K/?,
%?"
 ?
inputs?????????
? "??????????p
__inference_adapt_step_6549725N,?C?@
9?6
4?1?
??????????IteratorSpec 
? "
 ?
B__inference_dense_layer_call_and_return_conditional_losses_6549996\#$/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? z
'__inference_dense_layer_call_fn_6549986O#$/?,
%?"
 ?
inputs?????????@
? "???????????
F__inference_dropout_1_layer_call_and_return_conditional_losses_6549965\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
F__inference_dropout_1_layer_call_and_return_conditional_losses_6549977\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? ~
+__inference_dropout_1_layer_call_fn_6549955O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@~
+__inference_dropout_1_layer_call_fn_6549960O3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
D__inference_dropout_layer_call_and_return_conditional_losses_6549927v@?=
6?3
-?*
inputs??????????????????@
p 
? "2?/
(?%
0??????????????????@
? ?
D__inference_dropout_layer_call_and_return_conditional_losses_6549939v@?=
6?3
-?*
inputs??????????????????@
p
? "2?/
(?%
0??????????????????@
? ?
)__inference_dropout_layer_call_fn_6549917i@?=
6?3
-?*
inputs??????????????????@
p 
? "%?"??????????????????@?
)__inference_dropout_layer_call_fn_6549922i@?=
6?3
-?*
inputs??????????????????@
p
? "%?"??????????????????@?
F__inference_embedding_layer_call_and_return_conditional_losses_6549912q"8?5
.?+
)?&
inputs??????????????????
? "2?/
(?%
0??????????????????@
? ?
+__inference_embedding_layer_call_fn_6549902d"8?5
.?+
)?&
inputs??????????????????
? "%?"??????????????????@?
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_6549950{I?F
??<
6?3
inputs'???????????????????????????

 
? ".?+
$?!
0??????????????????
? ?
:__inference_global_average_pooling1d_layer_call_fn_6549944nI?F
??<
6?3
inputs'???????????????????????????

 
? "!???????????????????{
__inference_restore_fn_6550056Y,K?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? ?
__inference_save_fn_6550048?,&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
I__inference_sequential_1_layer_call_and_return_conditional_losses_6549403m
+???"#$8?5
.?+
!?
input_1?????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_1_layer_call_and_return_conditional_losses_6549463m
+???"#$8?5
.?+
!?
input_1?????????
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_1_layer_call_and_return_conditional_losses_6549571l
+???"#$7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_1_layer_call_and_return_conditional_losses_6549655l
+???"#$7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
.__inference_sequential_1_layer_call_fn_6549163`
+???"#$8?5
.?+
!?
input_1?????????
p 

 
? "???????????
.__inference_sequential_1_layer_call_fn_6549343`
+???"#$8?5
.?+
!?
input_1?????????
p

 
? "???????????
.__inference_sequential_1_layer_call_fn_6549482_
+???"#$7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
.__inference_sequential_1_layer_call_fn_6549501_
+???"#$7?4
-?*
 ?
inputs?????????
p

 
? "???????????
G__inference_sequential_layer_call_and_return_conditional_losses_6549040w"#$I?F
??<
2?/
embedding_input??????????????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_sequential_layer_call_and_return_conditional_losses_6549055w"#$I?F
??<
2?/
embedding_input??????????????????
p

 
? "%?"
?
0?????????
? ?
G__inference_sequential_layer_call_and_return_conditional_losses_6549795n"#$@?=
6?3
)?&
inputs??????????????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_sequential_layer_call_and_return_conditional_losses_6549829n"#$@?=
6?3
)?&
inputs??????????????????
p

 
? "%?"
?
0?????????
? ?
G__inference_sequential_layer_call_and_return_conditional_losses_6549850f"#$8?5
.?+
!?
inputs??????????	
p 

 
? "%?"
?
0?????????
? ?
G__inference_sequential_layer_call_and_return_conditional_losses_6549885f"#$8?5
.?+
!?
inputs??????????	
p

 
? "%?"
?
0?????????
? ?
,__inference_sequential_layer_call_fn_6548913j"#$I?F
??<
2?/
embedding_input??????????????????
p 

 
? "???????????
,__inference_sequential_layer_call_fn_6549025j"#$I?F
??<
2?/
embedding_input??????????????????
p

 
? "???????????
,__inference_sequential_layer_call_fn_6549742a"#$@?=
6?3
)?&
inputs??????????????????
p 

 
? "???????????
,__inference_sequential_layer_call_fn_6549753a"#$@?=
6?3
)?&
inputs??????????????????
p

 
? "???????????
,__inference_sequential_layer_call_fn_6549764Y"#$8?5
.?+
!?
inputs??????????	
p 

 
? "???????????
,__inference_sequential_layer_call_fn_6549775Y"#$8?5
.?+
!?
inputs??????????	
p

 
? "???????????
%__inference_signature_wrapper_6549676?
+???"#$;?8
? 
1?.
,
input_1!?
input_1?????????"7?4
2

activation$?!

activation?????????