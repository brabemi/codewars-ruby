# https =>//www.codewars.com/kata/the-observed-pin/train/ruby

# ┌───┬───┬───┐
# │ 1 │ 2 │ 3 │
# ├───┼───┼───┤
# │ 4 │ 5 │ 6 │
# ├───┼───┼───┤
# │ 7 │ 8 │ 9 │
# └───┼───┼───┘
#     │ 0 │
#     └───┘

NEIGHBOURS = {
  '1' => %w[1 2 4],
  '2' => %w[1 2 3 5],
  '3' => %w[2 3 6],
  '4' => %w[1 4 5 7],
  '5' => %w[2 4 5 6 8],
  '6' => %w[3 5 6 9],
  '7' => %w[4 7 8],
  '8' => %w[5 7 8 9 0],
  '9' => %w[6 8 9],
  '0' => %w[8 0]
}.freeze

def get_pins(observed)
  return [''] if observed == ''

  NEIGHBOURS[observed[0]].product(get_pins(observed[1..-1])).map(&:join)
end

p get_pins("8").sort == (["5", "7", "8", "9", "0"].sort)
p get_pins("11").sort == (["11", "22", "44", "12", "21", "14", "41", "24", "42"].sort)
p get_pins("369").sort == (["339","366","399","658","636","258","268","669","668","266","369","398","256","296","259","368","638","396","238","356","659","639","666","359","336","299","338","696","269","358","656","698","699","298","236","239"].sort)
p get_pins("2458").sort == (["1125", "1127", "1128", "1129", "1120", "1145", "1147", "1148", "1149", "1140", "1155", "1157", "1158", "1159", "1150", "1165", "1167", "1168", "1169", "1160", "1185", "1187", "1188", "1189", "1180", "1425", "1427", "1428", "1429", "1420", "1445", "1447", "1448", "1449", "1440", "1455", "1457", "1458", "1459", "1450", "1465", "1467", "1468", "1469", "1460", "1485", "1487", "1488", "1489", "1480", "1525", "1527", "1528", "1529", "1520", "1545", "1547", "1548", "1549", "1540", "1555", "1557", "1558", "1559", "1550", "1565", "1567", "1568", "1569", "1560", "1585", "1587", "1588", "1589", "1580", "1725", "1727", "1728", "1729", "1720", "1745", "1747", "1748", "1749", "1740", "1755", "1757", "1758", "1759", "1750", "1765", "1767", "1768", "1769", "1760", "1785", "1787", "1788", "1789", "1780", "2125", "2127", "2128", "2129", "2120", "2145", "2147", "2148", "2149", "2140", "2155", "2157", "2158", "2159", "2150", "2165", "2167", "2168", "2169", "2160", "2185", "2187", "2188", "2189", "2180", "2425", "2427", "2428", "2429", "2420", "2445", "2447", "2448", "2449", "2440", "2455", "2457", "2458", "2459", "2450", "2465", "2467", "2468", "2469", "2460", "2485", "2487", "2488", "2489", "2480", "2525", "2527", "2528", "2529", "2520", "2545", "2547", "2548", "2549", "2540", "2555", "2557", "2558", "2559", "2550", "2565", "2567", "2568", "2569", "2560", "2585", "2587", "2588", "2589", "2580", "2725", "2727", "2728", "2729", "2720", "2745", "2747", "2748", "2749", "2740", "2755", "2757", "2758", "2759", "2750", "2765", "2767", "2768", "2769", "2760", "2785", "2787", "2788", "2789", "2780", "3125", "3127", "3128", "3129", "3120", "3145", "3147", "3148", "3149", "3140", "3155", "3157", "3158", "3159", "3150", "3165", "3167", "3168", "3169", "3160", "3185", "3187", "3188", "3189", "3180", "3425", "3427", "3428", "3429", "3420", "3445", "3447", "3448", "3449", "3440", "3455", "3457", "3458", "3459", "3450", "3465", "3467", "3468", "3469", "3460", "3485", "3487", "3488", "3489", "3480", "3525", "3527", "3528", "3529", "3520", "3545", "3547", "3548", "3549", "3540", "3555", "3557", "3558", "3559", "3550", "3565", "3567", "3568", "3569", "3560", "3585", "3587", "3588", "3589", "3580", "3725", "3727", "3728", "3729", "3720", "3745", "3747", "3748", "3749", "3740", "3755", "3757", "3758", "3759", "3750", "3765", "3767", "3768", "3769", "3760", "3785", "3787", "3788", "3789", "3780", "5125", "5127", "5128", "5129", "5120", "5145", "5147", "5148", "5149", "5140", "5155", "5157", "5158", "5159", "5150", "5165", "5167", "5168", "5169", "5160", "5185", "5187", "5188", "5189", "5180", "5425", "5427", "5428", "5429", "5420", "5445", "5447", "5448", "5449", "5440", "5455", "5457", "5458", "5459", "5450", "5465", "5467", "5468", "5469", "5460", "5485", "5487", "5488", "5489", "5480", "5525", "5527", "5528", "5529", "5520", "5545", "5547", "5548", "5549", "5540", "5555", "5557", "5558", "5559", "5550", "5565", "5567", "5568", "5569", "5560", "5585", "5587", "5588", "5589", "5580", "5725", "5727", "5728", "5729", "5720", "5745", "5747", "5748", "5749", "5740", "5755", "5757", "5758", "5759", "5750", "5765", "5767", "5768", "5769", "5760", "5785", "5787", "5788", "5789", "5780"].sort)
p get_pins("14290").sort == (["11160", "11168", "11180", "11188", "11190", "11198", "11260", "11268", "11280", "11288", "11290", "11298", "11360", "11368", "11380", "11388", "11390", "11398", "11560", "11568", "11580", "11588", "11590", "11598", "14160", "14168", "14180", "14188", "14190", "14198", "14260", "14268", "14280", "14288", "14290", "14298", "14360", "14368", "14380", "14388", "14390", "14398", "14560", "14568", "14580", "14588", "14590", "14598", "15160", "15168", "15180", "15188", "15190", "15198", "15260", "15268", "15280", "15288", "15290", "15298", "15360", "15368", "15380", "15388", "15390", "15398", "15560", "15568", "15580", "15588", "15590", "15598", "17160", "17168", "17180", "17188", "17190", "17198", "17260", "17268", "17280", "17288", "17290", "17298", "17360", "17368", "17380", "17388", "17390", "17398", "17560", "17568", "17580", "17588", "17590", "17598", "21160", "21168", "21180", "21188", "21190", "21198", "21260", "21268", "21280", "21288", "21290", "21298", "21360", "21368", "21380", "21388", "21390", "21398", "21560", "21568", "21580", "21588", "21590", "21598", "24160", "24168", "24180", "24188", "24190", "24198", "24260", "24268", "24280", "24288", "24290", "24298", "24360", "24368", "24380", "24388", "24390", "24398", "24560", "24568", "24580", "24588", "24590", "24598", "25160", "25168", "25180", "25188", "25190", "25198", "25260", "25268", "25280", "25288", "25290", "25298", "25360", "25368", "25380", "25388", "25390", "25398", "25560", "25568", "25580", "25588", "25590", "25598", "27160", "27168", "27180", "27188", "27190", "27198", "27260", "27268", "27280", "27288", "27290", "27298", "27360", "27368", "27380", "27388", "27390", "27398", "27560", "27568", "27580", "27588", "27590", "27598", "41160", "41168", "41180", "41188", "41190", "41198", "41260", "41268", "41280", "41288", "41290", "41298", "41360", "41368", "41380", "41388", "41390", "41398", "41560", "41568", "41580", "41588", "41590", "41598", "44160", "44168", "44180", "44188", "44190", "44198", "44260", "44268", "44280", "44288", "44290", "44298", "44360", "44368", "44380", "44388", "44390", "44398", "44560", "44568", "44580", "44588", "44590", "44598", "45160", "45168", "45180", "45188", "45190", "45198", "45260", "45268", "45280", "45288", "45290", "45298", "45360", "45368", "45380", "45388", "45390", "45398", "45560", "45568", "45580", "45588", "45590", "45598", "47160", "47168", "47180", "47188", "47190", "47198", "47260", "47268", "47280", "47288", "47290", "47298", "47360", "47368", "47380", "47388", "47390", "47398", "47560", "47568", "47580", "47588", "47590", "47598"].sort)
p get_pins("683102").sort == (["352101", "352102", "352103", "352105", "352181", "352182", "352183", "352185", "352201", "352202", "352203", "352205", "352281", "352282", "352283", "352285", "352401", "352402", "352403", "352405", "352481", "352482", "352483", "352485", "353101", "353102", "353103", "353105", "353181", "353182", "353183", "353185", "353201", "353202", "353203", "353205", "353281", "353282", "353283", "353285", "353401", "353402", "353403", "353405", "353481", "353482", "353483", "353485", "356101", "356102", "356103", "356105", "356181", "356182", "356183", "356185", "356201", "356202", "356203", "356205", "356281", "356282", "356283", "356285", "356401", "356402", "356403", "356405", "356481", "356482", "356483", "356485", "372101", "372102", "372103", "372105", "372181", "372182", "372183", "372185", "372201", "372202", "372203", "372205", "372281", "372282", "372283", "372285", "372401", "372402", "372403", "372405", "372481", "372482", "372483", "372485", "373101", "373102", "373103", "373105", "373181", "373182", "373183", "373185", "373201", "373202", "373203", "373205", "373281", "373282", "373283", "373285", "373401", "373402", "373403", "373405", "373481", "373482", "373483", "373485", "376101", "376102", "376103", "376105", "376181", "376182", "376183", "376185", "376201", "376202", "376203", "376205", "376281", "376282", "376283", "376285", "376401", "376402", "376403", "376405", "376481", "376482", "376483", "376485", "382101", "382102", "382103", "382105", "382181", "382182", "382183", "382185", "382201", "382202", "382203", "382205", "382281", "382282", "382283", "382285", "382401", "382402", "382403", "382405", "382481", "382482", "382483", "382485", "383101", "383102", "383103", "383105", "383181", "383182", "383183", "383185", "383201", "383202", "383203", "383205", "383281", "383282", "383283", "383285", "383401", "383402", "383403", "383405", "383481", "383482", "383483", "383485", "386101", "386102", "386103", "386105", "386181", "386182", "386183", "386185", "386201", "386202", "386203", "386205", "386281", "386282", "386283", "386285", "386401", "386402", "386403", "386405", "386481", "386482", "386483", "386485", "392101", "392102", "392103", "392105", "392181", "392182", "392183", "392185", "392201", "392202", "392203", "392205", "392281", "392282", "392283", "392285", "392401", "392402", "392403", "392405", "392481", "392482", "392483", "392485", "393101", "393102", "393103", "393105", "393181", "393182", "393183", "393185", "393201", "393202", "393203", "393205", "393281", "393282", "393283", "393285", "393401", "393402", "393403", "393405", "393481", "393482", "393483", "393485", "396101", "396102", "396103", "396105", "396181", "396182", "396183", "396185", "396201", "396202", "396203", "396205", "396281", "396282", "396283", "396285", "396401", "396402", "396403", "396405", "396481", "396482", "396483", "396485", "302101", "302102", "302103", "302105", "302181", "302182", "302183", "302185", "302201", "302202", "302203", "302205", "302281", "302282", "302283", "302285", "302401", "302402", "302403", "302405", "302481", "302482", "302483", "302485", "303101", "303102", "303103", "303105", "303181", "303182", "303183", "303185", "303201", "303202", "303203", "303205", "303281", "303282", "303283", "303285", "303401", "303402", "303403", "303405", "303481", "303482", "303483", "303485", "306101", "306102", "306103", "306105", "306181", "306182", "306183", "306185", "306201", "306202", "306203", "306205", "306281", "306282", "306283", "306285", "306401", "306402", "306403", "306405", "306481", "306482", "306483", "306485", "552101", "552102", "552103", "552105", "552181", "552182", "552183", "552185", "552201", "552202", "552203", "552205", "552281", "552282", "552283", "552285", "552401", "552402", "552403", "552405", "552481", "552482", "552483", "552485", "553101", "553102", "553103", "553105", "553181", "553182", "553183", "553185", "553201", "553202", "553203", "553205", "553281", "553282", "553283", "553285", "553401", "553402", "553403", "553405", "553481", "553482", "553483", "553485", "556101", "556102", "556103", "556105", "556181", "556182", "556183", "556185", "556201", "556202", "556203", "556205", "556281", "556282", "556283", "556285", "556401", "556402", "556403", "556405", "556481", "556482", "556483", "556485", "572101", "572102", "572103", "572105", "572181", "572182", "572183", "572185", "572201", "572202", "572203", "572205", "572281", "572282", "572283", "572285", "572401", "572402", "572403", "572405", "572481", "572482", "572483", "572485", "573101", "573102", "573103", "573105", "573181", "573182", "573183", "573185", "573201", "573202", "573203", "573205", "573281", "573282", "573283", "573285", "573401", "573402", "573403", "573405", "573481", "573482", "573483", "573485", "576101", "576102", "576103", "576105", "576181", "576182", "576183", "576185", "576201", "576202", "576203", "576205", "576281", "576282", "576283", "576285", "576401", "576402", "576403", "576405", "576481", "576482", "576483", "576485", "582101", "582102", "582103", "582105", "582181", "582182", "582183", "582185", "582201", "582202", "582203", "582205", "582281", "582282", "582283", "582285", "582401", "582402", "582403", "582405", "582481", "582482", "582483", "582485", "583101", "583102", "583103", "583105", "583181", "583182", "583183", "583185", "583201", "583202", "583203", "583205", "583281", "583282", "583283", "583285", "583401", "583402", "583403", "583405", "583481", "583482", "583483", "583485", "586101", "586102", "586103", "586105", "586181", "586182", "586183", "586185", "586201", "586202", "586203", "586205", "586281", "586282", "586283", "586285", "586401", "586402", "586403", "586405", "586481", "586482", "586483", "586485", "592101", "592102", "592103", "592105", "592181", "592182", "592183", "592185", "592201", "592202", "592203", "592205", "592281", "592282", "592283", "592285", "592401", "592402", "592403", "592405", "592481", "592482", "592483", "592485", "593101", "593102", "593103", "593105", "593181", "593182", "593183", "593185", "593201", "593202", "593203", "593205", "593281", "593282", "593283", "593285", "593401", "593402", "593403", "593405", "593481", "593482", "593483", "593485", "596101", "596102", "596103", "596105", "596181", "596182", "596183", "596185", "596201", "596202", "596203", "596205", "596281", "596282", "596283", "596285", "596401", "596402", "596403", "596405", "596481", "596482", "596483", "596485", "502101", "502102", "502103", "502105", "502181", "502182", "502183", "502185", "502201", "502202", "502203", "502205", "502281", "502282", "502283", "502285", "502401", "502402", "502403", "502405", "502481", "502482", "502483", "502485", "503101", "503102", "503103", "503105", "503181", "503182", "503183", "503185", "503201", "503202", "503203", "503205", "503281", "503282", "503283", "503285", "503401", "503402", "503403", "503405", "503481", "503482", "503483", "503485", "506101", "506102", "506103", "506105", "506181", "506182", "506183", "506185", "506201", "506202", "506203", "506205", "506281", "506282", "506283", "506285", "506401", "506402", "506403", "506405", "506481", "506482", "506483", "506485", "652101", "652102", "652103", "652105", "652181", "652182", "652183", "652185", "652201", "652202", "652203", "652205", "652281", "652282", "652283", "652285", "652401", "652402", "652403", "652405", "652481", "652482", "652483", "652485", "653101", "653102", "653103", "653105", "653181", "653182", "653183", "653185", "653201", "653202", "653203", "653205", "653281", "653282", "653283", "653285", "653401", "653402", "653403", "653405", "653481", "653482", "653483", "653485", "656101", "656102", "656103", "656105", "656181", "656182", "656183", "656185", "656201", "656202", "656203", "656205", "656281", "656282", "656283", "656285", "656401", "656402", "656403", "656405", "656481", "656482", "656483", "656485", "672101", "672102", "672103", "672105", "672181", "672182", "672183", "672185", "672201", "672202", "672203", "672205", "672281", "672282", "672283", "672285", "672401", "672402", "672403", "672405", "672481", "672482", "672483", "672485", "673101", "673102", "673103", "673105", "673181", "673182", "673183", "673185", "673201", "673202", "673203", "673205", "673281", "673282", "673283", "673285", "673401", "673402", "673403", "673405", "673481", "673482", "673483", "673485", "676101", "676102", "676103", "676105", "676181", "676182", "676183", "676185", "676201", "676202", "676203", "676205", "676281", "676282", "676283", "676285", "676401", "676402", "676403", "676405", "676481", "676482", "676483", "676485", "682101", "682102", "682103", "682105", "682181", "682182", "682183", "682185", "682201", "682202", "682203", "682205", "682281", "682282", "682283", "682285", "682401", "682402", "682403", "682405", "682481", "682482", "682483", "682485", "683101", "683102", "683103", "683105", "683181", "683182", "683183", "683185", "683201", "683202", "683203", "683205", "683281", "683282", "683283", "683285", "683401", "683402", "683403", "683405", "683481", "683482", "683483", "683485", "686101", "686102", "686103", "686105", "686181", "686182", "686183", "686185", "686201", "686202", "686203", "686205", "686281", "686282", "686283", "686285", "686401", "686402", "686403", "686405", "686481", "686482", "686483", "686485", "692101", "692102", "692103", "692105", "692181", "692182", "692183", "692185", "692201", "692202", "692203", "692205", "692281", "692282", "692283", "692285", "692401", "692402", "692403", "692405", "692481", "692482", "692483", "692485", "693101", "693102", "693103", "693105", "693181", "693182", "693183", "693185", "693201", "693202", "693203", "693205", "693281", "693282", "693283", "693285", "693401", "693402", "693403", "693405", "693481", "693482", "693483", "693485", "696101", "696102", "696103", "696105", "696181", "696182", "696183", "696185", "696201", "696202", "696203", "696205", "696281", "696282", "696283", "696285", "696401", "696402", "696403", "696405", "696481", "696482", "696483", "696485", "602101", "602102", "602103", "602105", "602181", "602182", "602183", "602185", "602201", "602202", "602203", "602205", "602281", "602282", "602283", "602285", "602401", "602402", "602403", "602405", "602481", "602482", "602483", "602485", "603101", "603102", "603103", "603105", "603181", "603182", "603183", "603185", "603201", "603202", "603203", "603205", "603281", "603282", "603283", "603285", "603401", "603402", "603403", "603405", "603481", "603482", "603483", "603485", "606101", "606102", "606103", "606105", "606181", "606182", "606183", "606185", "606201", "606202", "606203", "606205", "606281", "606282", "606283", "606285", "606401", "606402", "606403", "606405", "606481", "606482", "606483", "606485", "952101", "952102", "952103", "952105", "952181", "952182", "952183", "952185", "952201", "952202", "952203", "952205", "952281", "952282", "952283", "952285", "952401", "952402", "952403", "952405", "952481", "952482", "952483", "952485", "953101", "953102", "953103", "953105", "953181", "953182", "953183", "953185", "953201", "953202", "953203", "953205", "953281", "953282", "953283", "953285", "953401", "953402", "953403", "953405", "953481", "953482", "953483", "953485", "956101", "956102", "956103", "956105", "956181", "956182", "956183", "956185", "956201", "956202", "956203", "956205", "956281", "956282", "956283", "956285", "956401", "956402", "956403", "956405", "956481", "956482", "956483", "956485", "972101", "972102", "972103", "972105", "972181", "972182", "972183", "972185", "972201", "972202", "972203", "972205", "972281", "972282", "972283", "972285", "972401", "972402", "972403", "972405", "972481", "972482", "972483", "972485", "973101", "973102", "973103", "973105", "973181", "973182", "973183", "973185", "973201", "973202", "973203", "973205", "973281", "973282", "973283", "973285", "973401", "973402", "973403", "973405", "973481", "973482", "973483", "973485", "976101", "976102", "976103", "976105", "976181", "976182", "976183", "976185", "976201", "976202", "976203", "976205", "976281", "976282", "976283", "976285", "976401", "976402", "976403", "976405", "976481", "976482", "976483", "976485", "982101", "982102", "982103", "982105", "982181", "982182", "982183", "982185", "982201", "982202", "982203", "982205", "982281", "982282", "982283", "982285", "982401", "982402", "982403", "982405", "982481", "982482", "982483", "982485", "983101", "983102", "983103", "983105", "983181", "983182", "983183", "983185", "983201", "983202", "983203", "983205", "983281", "983282", "983283", "983285", "983401", "983402", "983403", "983405", "983481", "983482", "983483", "983485", "986101", "986102", "986103", "986105", "986181", "986182", "986183", "986185", "986201", "986202", "986203", "986205", "986281", "986282", "986283", "986285", "986401", "986402", "986403", "986405", "986481", "986482", "986483", "986485", "992101", "992102", "992103", "992105", "992181", "992182", "992183", "992185", "992201", "992202", "992203", "992205", "992281", "992282", "992283", "992285", "992401", "992402", "992403", "992405", "992481", "992482", "992483", "992485", "993101", "993102", "993103", "993105", "993181", "993182", "993183", "993185", "993201", "993202", "993203", "993205", "993281", "993282", "993283", "993285", "993401", "993402", "993403", "993405", "993481", "993482", "993483", "993485", "996101", "996102", "996103", "996105", "996181", "996182", "996183", "996185", "996201", "996202", "996203", "996205", "996281", "996282", "996283", "996285", "996401", "996402", "996403", "996405", "996481", "996482", "996483", "996485", "902101", "902102", "902103", "902105", "902181", "902182", "902183", "902185", "902201", "902202", "902203", "902205", "902281", "902282", "902283", "902285", "902401", "902402", "902403", "902405", "902481", "902482", "902483", "902485", "903101", "903102", "903103", "903105", "903181", "903182", "903183", "903185", "903201", "903202", "903203", "903205", "903281", "903282", "903283", "903285", "903401", "903402", "903403", "903405", "903481", "903482", "903483", "903485", "906101", "906102", "906103", "906105", "906181", "906182", "906183", "906185", "906201", "906202", "906203", "906205", "906281", "906282", "906283", "906285", "906401", "906402", "906403", "906405", "906481", "906482", "906483", "906485"].sort)