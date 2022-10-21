-- (c) 2007 Nymbia.  see LGPLv2.1.txt for full details.
--DO NOT MAKE CHANGES TO THIS FILE BEFORE READING THE WIKI PAGE REGARDING CHANGING THESE FILES
if not LibStub("LibPeriodicTable-3.1", true) then
    error("PT3 must be loaded before data")
end
LibStub("LibPeriodicTable-3.1"):AddData(
    "ClassSpell",
    gsub(
        "$Rev: 589 $",
        "(%d+)",
        function(n)
            return n + 90000
        end
    ),
    {
        ["ClassSpell.Death Knight.General"] = "-278107:0,-190780:0,-205224:1,-82246:1,-127344:40,-62158:55,-55095:55,-55078:55,-53428:55,-53344:55,-53343:55,-50977:55,-49998:55,-49576:55,-48265:55,-48707:57,-56222:58,-51986:61,-47528:62,-3714:66,-111673:69,-61999:72",
        ["ClassSpell.Death Knight.Talent"] = "-281208:56,-253593:56,-221536:56,-210764:56,-207311:56,-207272:56,-206931:56,-194916:56,-194878:56,-274156:57,-273946:57,-207269:57,-207264:57,-207104:57,-207061:57,-194662:57,-115989:57,-57330:57,-276079:58,-219809:58,-219786:58,-207167:58,-206974:58,-108194:58,-276023:60,-207230:60,-207142:60,-206967:60,-205727:60,-194917:60,-194909:60,-194679:60,-130736:60,-273952:75,-212552:75,-207321:75,-207200:75,-206970:75,-48743:75,-279302:90,-277234:90,-273953:90,-207317:90,-206940:90,-195679:90,-194913:90,-194912:90,-152280:90,-281238:100,-276837:100,-207289:100,-207126:100,-205723:100,-194844:100,-152279:100,-114556:100,-49206:100",
        ["ClassSpell.Death Knight.Blood"] = "-221562:0,-206930:1,-195182:55,-86537:55,-48263:55,-50842:56,-43265:56,-49028:57,-48792:57,-195292:58,-55233:60,-81136:63,-108199:64,-161797:76,-77513:78,-48982:20,-49005:30,-49016:40,-55233:45,-55050:50,-49028:60",
        ["ClassSpell.Death Knight.Frost"] = "-81229:0,-674:0,-195621:55,-86113:55,-49184:55,-49143:55,-49020:55,-48263:55,-51128:56,-45524:56,-196770:57,-51271:57,-48792:57,-47568:57,-178819:58,-59057:59,-278223:68,-77514:78,-49039:20,-49796:30,-49203:40,-51271:45,-49143:50,-49184:60",
        ["ClassSpell.Death Knight.Unholy"] = "-197147:1,-51462:1,-86536:55,-85948:55,-77575:55,-55090:55,-48263:55,-47541:55,-46584:55,-45524:56,-43265:56,-48792:57,-178819:58,-49530:60,-278223:68,-63560:74,-275699:75,-77515:78,-42650:82,-49158:20,-51052:40,-63560:40,-49222:45,-55090:50,-49206:60",
        ["ClassSpell.Druid.General"] = "-231437:0,-219432:1,-5225:1,-8921:3,-8936:5,-125972:6,-5221:8,-1850:8,-768:8,-236716:10,-33917:10,-16870:10,-5487:10,-106830:12,-77758:12,-6795:13,-193753:14,-50769:14,-18960:14,-164815:16,-276012:18,-783:18,-339:24,-210065:40,-210053:40,-164862:40,-127757:40,-20484:42,-276029:58,-165962:58,-2637:66",
        ["ClassSpell.Druid.Talent"] = "-207383:15,-205636:15,-203962:15,-203953:15,-202430:15,-202425:15,-202031:15,-202021:15,-200383:15,-155835:15,-155580:15,-102351:15,-252216:30,-108238:30,-102793:30,-102401:30,-217615:45,-202157:45,-202155:45,-197632:45,-197492:45,-197491:45,-197490:45,-197488:45,-132469:60,-102359:60,-5211:60,-203964:75,-202345:75,-200390:75,-158478:75,-158477:75,-158476:75,-114107:75,-102560:75,-102558:75,-102543:75,-52610:75,-33891:75,-285564:90,-285381:90,-279620:90,-207385:90,-203974:90,-203965:90,-202354:90,-202347:90,-202028:90,-197073:90,-197061:90,-155578:90,-274902:100,-274837:100,-274281:100,-236068:100,-204066:100,-204053:100,-202770:100,-202342:100,-197721:100,-155675:100,-155672:100,-80313:100",
        ["ClassSpell.Druid.Balance"] = "-137013:0,-228545:1,-190984:1,-197911:10,-78674:10,-279708:12,-194153:12,-93402:16,-24858:16,-5215:16,-2782:22,-22812:26,-231050:32,-197524:34,-191034:40,-194223:48,-86104:50,-29166:50,-231042:54,-2908:56,-279619:60,-231021:70,-77492:78,-78675:80,-5570:30,-33831:50,-50516:50,-48505:60",
        ["ClassSpell.Druid.Feral"] = "-137011:0,-228545:1,-157447:1,-22568:10,-106832:12,-1822:12,-5217:13,-5215:16,-1079:20,-300349:22,-2782:22,-231052:25,-213764:32,-131768:34,-61336:36,-106951:40,-231283:44,-231063:44,-16864:48,-106898:50,-86097:50,-231055:52,-48484:54,-231057:56,-2908:56,-22570:63,-106839:70,-77493:78,-16974:80",
        ["ClassSpell.Druid.Guardian"] = "-137010:0,-228545:1,-157447:1,-300346:10,-6807:10,-106832:12,-5215:16,-192081:20,-2782:22,-22812:26,-99:28,-213764:32,-16931:34,-61336:36,-22842:40,-231064:44,-210706:48,-106898:50,-86096:50,-270100:52,-231070:55,-2908:56,-273048:63,-231065:65,-106839:70,-155783:78,-288826:80,-301768:85",
        ["ClassSpell.Druid.Restoration"] = "-137012:0,-5176:1,-774:10,-18562:12,-93402:16,-5215:16,-33763:20,-88423:22,-22812:26,-231050:32,-145108:34,-48438:40,-113043:48,-86093:50,-29166:50,-231040:52,-102342:54,-2908:56,-212040:66,-145205:70,-77495:78,-740:80,-17116:30,-18562:40,-48438:60",
        ["ClassSpell.Hunter.General"] = "-242155:0,-229533:0,-205154:0,-203413:0,-138430:0,-157443:1,-982:1,-883:1,-19885:4,-19884:4,-19883:4,-19882:4,-19880:4,-19879:4,-19878:4,-1494:4,-93322:10,-93321:10,-2641:10,-83242:13,-6991:13,-1515:13,-1462:13,-136:13,-6197:16,-186257:22,-5384:28,-210000:32,-83243:34,-272651:38,-1543:38,-209997:40,-127933:40,-125050:40,-61648:40,-83244:57,-186265:70,-83245:80",
        ["ClassSpell.Hunter.Talent"] = "-273887:15,-271788:15,-269737:15,-268501:15,-267116:15,-265895:15,-260309:15,-120679:15,-264332:30,-260243:30,-260241:30,-260228:30,-212436:30,-212431:30,-199528:30,-193532:30,-53209:30,-270581:45,-199921:45,-199483:45,-260367:60,-260248:60,-257944:60,-257891:60,-257284:60,-193533:60,-162488:60,-131894:60,-266921:75,-109248:75,-109215:75,-269751:90,-260402:90,-260393:90,-260285:90,-259387:90,-201430:90,-199530:90,-120360:90,-271014:100,-260404:100,-260331:100,-259391:100,-199532:100,-198670:100,-194595:100,-194407:100,-191384:100",
        ["ClassSpell.Hunter.Beast Mastery"] = "-193455:1,-262837:3,-5116:4,-781:8,-34026:10,-217200:12,-2643:16,-187650:18,-185789:20,-19574:20,-109304:24,-19577:26,-147362:32,-187698:36,-193530:40,-34477:42,-56315:44,-231546:48,-115939:50,-262838:52,-231548:54,-53270:65,-76657:78,-231549:85",
        ["ClassSpell.Hunter.Marksmanship"] = "-56641:1,-5116:4,-781:8,-185358:10,-155228:10,-19434:12,-257620:14,-187650:18,-257044:20,-109304:24,-186387:26,-147362:32,-260240:34,-187698:36,-288613:40,-34477:42,-231546:48,-257621:50,-193468:78,-231549:85",
        ["ClassSpell.Hunter.Survival"] = "-186270:1,-195645:4,-781:8,-259489:10,-259491:12,-190925:14,-187650:18,-259495:20,-109304:24,-19577:26,-187708:28,-187707:32,-187698:36,-266779:40,-34477:42,-231546:48,-263186:50,-262839:52,-186289:54,-294029:62,-231550:65,-263135:78,-231549:85",
        ["ClassSpell.Mage.General"] = "-131784:0,-161355:1,-161354:1,-161353:1,-126819:1,-61780:1,-122:5,-118:8,-190336:13,-193759:14,-1953:16,-49359:17,-32272:17,-32271:17,-3567:17,-3566:17,-3565:17,-3563:17,-3562:17,-3561:17,-2139:22,-475:28,-130:38,-49360:42,-32267:42,-32266:42,-11420:42,-11419:42,-11418:42,-11417:42,-11416:42,-10059:42,-45438:50,-49361:52,-49358:52,-210086:58,-1459:58,-277792:60,-277787:60,-161372:60,-61721:60,-61305:60,-53140:60,-28272:60,-28271:60,-35715:62,-33690:62,-35717:66,-33691:66,-30449:70,-224869:71,-120145:71,-120146:74,-53142:74,-80353:80,-88346:85,-88345:85,-88344:85,-88342:85,-132627:90,-132626:90,-132621:90,-132620:90,-176248:92,-176246:92,-176244:92,-176242:92,-281404:110,-281403:110,-281402:110,-281400:110",
        ["ClassSpell.Mage.Talent"] = "-269644:15,-264354:15,-236628:15,-205027:15,-205026:15,-205024:15,-205022:15,-205020:15,-157997:15,-236457:30,-235463:30,-235365:30,-235297:30,-212653:30,-157981:30,-108839:30,-116011:45,-55342:45,-1463:45,-278309:60,-257541:60,-257537:60,-235870:60,-205032:60,-205030:60,-205029:60,-205028:60,-157980:60,-236058:75,-235711:75,-235224:75,-205036:75,-113724:75,-281482:90,-270233:90,-210725:90,-205037:90,-205023:90,-153595:90,-114923:90,-44457:90,-269650:100,-210805:100,-205021:100,-199786:100,-155149:100,-155148:100,-155147:100,-153626:100,-153561:100",
        ["ClassSpell.Mage.Arcane"] = "-44425:10,-30451:10,-5143:12,-1449:18,-12051:20,-235450:26,-31589:32,-231564:34,-12042:40,-66:42,-195676:48,-205025:54,-231565:56,-110959:65,-190740:78",
        ["ClassSpell.Mage.Fire"] = "-108853:3,-117216:10,-133:10,-11366:12,-195283:14,-2948:14,-231568:18,-2120:20,-235313:26,-31661:32,-157642:35,-190319:40,-66:42,-231567:48,-86949:52,-231630:65,-12846:78",
        ["ClassSpell.Mage.Frost"] = "-116:1,-108853:3,-30455:10,-31687:12,-12982:14,-190356:18,-44614:20,-112965:24,-11426:26,-190447:28,-231596:32,-120:34,-231582:36,-12472:40,-66:42,-231584:48,-235219:52,-84714:57,-236662:63,-76613:78,-12472:20,-11958:30,-11426:40,-31687:50,-44572:60",
        ["ClassSpell.Monk.General"] = "-196061:0,-125883:1,-116812:1,-100780:1,-100784:3,-109132:5,-209525:10,-115546:13,-126892:14,-115178:14,-117952:18,-169340:22,-115078:25,-8647:26,-126895:30,-119996:80,-101643:80",
        ["ClassSpell.Monk.Talent"] = "-197900:15,-196607:15,-123986:15,-115098:15,-116841:30,-115173:30,-115008:30,-261947:45,-242580:45,-210802:45,-197915:45,-197908:45,-196721:45,-115399:45,-115396:45,-115288:45,-280195:60,-264348:60,-198898:60,-116844:60,-115315:60,-280515:75,-261767:75,-122783:75,-122278:75,-198664:90,-196740:90,-196730:90,-196725:90,-132578:90,-123904:90,-116847:90,-115313:90,-280197:100,-274963:100,-274909:100,-197895:100,-196737:100,-196736:100,-152175:100,-152173:100,-115295:100",
        ["ClassSpell.Monk.Brewmaster"] = "-157445:1,-116670:8,-245013:10,-205523:10,-121253:10,-231602:12,-115069:16,-115308:20,-218164:22,-119582:28,-124502:32,-116705:35,-115181:40,-120225:50,-115072:50,-119381:52,-115203:55,-115176:65,-216519:70,-117906:78",
        ["ClassSpell.Monk.Mistweaver"] = "-116670:8,-115175:10,-107428:10,-124682:12,-116645:12,-115151:20,-115450:22,-274586:28,-231605:32,-116849:35,-262840:36,-191837:40,-101546:40,-281231:42,-120224:50,-116680:50,-119381:52,-243435:55,-231633:58,-231876:63,-212051:66,-115310:70,-117907:78",
        ["ClassSpell.Monk.Windwalker"] = "-137025:0,-157445:1,-124146:1,-116670:8,-107428:10,-261916:12,-231602:12,-116095:16,-128595:20,-113656:20,-261917:22,-218164:22,-116092:28,-271232:32,-115080:32,-116705:35,-262840:36,-157411:38,-220357:40,-101546:40,-137384:42,-101545:48,-137639:50,-120227:50,-119381:52,-122470:55,-231627:70,-115636:78",
        ["ClassSpell.Paladin.General"] = "-200654:0,-123830:1,-115675:1,-82242:1,-35395:1,-62124:12,-7328:14,-642:18,-290608:20,-270564:20,-270562:20,-73629:20,-69820:20,-34769:20,-13819:20,-190784:28,-1044:38,-121183:40,-73630:40,-69826:40,-34767:40,-23214:40,-32223:44,-633:55",
        ["ClassSpell.Paladin.Talent"] = "-280373:15,-269569:15,-267798:15,-267610:15,-223306:15,-204019:15,-196926:15,-152261:15,-114158:15,-231832:30,-230332:30,-214202:30,-204035:30,-204023:30,-203776:30,-203316:30,-114154:30,-24275:30,-234299:45,-198054:45,-115750:45,-20066:45,-271580:60,-255937:60,-205228:60,-204018:60,-203797:60,-183425:60,-183416:60,-183415:60,-213652:75,-205191:75,-204077:75,-183778:75,-114165:75,-105809:75,-248033:90,-216331:90,-215661:90,-210191:90,-204150:90,-204054:90,-85804:90,-53376:90,-231895:100,-223817:100,-204074:100,-203791:100,-200025:100,-197646:100,-156910:100,-152262:100,-84963:100",
        ["ClassSpell.Paladin.Holy"] = "-275773:3,-19750:5,-853:8,-289941:10,-20473:10,-26573:14,-53563:20,-4987:22,-82326:25,-231667:26,-498:32,-272906:34,-53576:35,-85222:40,-231644:42,-1022:48,-183998:50,-86103:50,-231642:52,-6940:56,-212056:66,-31821:70,-183997:78,-31884:80,-200327:85",
        ["ClassSpell.Paladin.Protection"] = "-229976:1,-275779:3,-275773:3,-20271:3,-19750:5,-853:8,-289941:10,-105805:10,-85256:10,-53595:10,-31935:10,-25780:10,-20473:10,-26573:14,-184575:20,-53600:20,-53563:20,-213644:22,-4987:22,-183218:24,-85043:25,-82326:25,-231667:26,-267344:28,-105424:28,-184662:32,-498:32,-272906:34,-96231:35,-53576:35,-184092:40,-85222:40,-53385:40,-231665:42,-231663:42,-231657:42,-231644:42,-1022:48,-183998:50,-86539:50,-86103:50,-86102:50,-31850:50,-231642:52,-6940:56,-203538:58,-203539:65,-161800:65,-212056:66,-183435:70,-86659:70,-31821:70,-267316:78,-183997:78,-76671:78,-31884:80,-200327:85,-64205:20",
        ["ClassSpell.Paladin.Retribution"] = "-20271:3,-19750:5,-853:8,-85256:10,-184575:20,-213644:22,-183218:24,-231667:26,-267344:28,-184662:32,-96231:35,-53385:40,-231663:42,-1022:48,-86539:50,-203538:58,-203539:65,-183435:70,-267316:78,-31884:80",
        ["ClassSpell.Priest.General"] = "-585:1,-81782:5,-2006:14,-21562:22,-9484:34,-605:42,-586:44,-528:56,-32375:80",
        ["ClassSpell.Priest.Talent"] = "-265259:15,-214621:15,-205351:15,-200153:15,-200128:15,-193195:15,-193155:15,-193134:15,-162452:15,-288733:30,-238100:30,-235189:30,-199855:30,-193063:30,-121536:30,-64129:30,-263346:45,-238558:45,-238136:45,-200209:45,-197045:45,-196707:45,-129250:45,-123040:45,-109142:45,-263716:60,-205369:60,-205367:60,-204263:60,-200199:60,-196704:60,-64044:60,-280391:75,-205385:75,-204883:75,-204065:75,-197419:75,-155271:75,-109186:75,-32546:75,-32379:75,-263165:90,-204197:90,-200174:90,-199849:90,-193157:90,-120517:90,-110744:90,-280711:100,-271466:100,-265202:100,-246287:100,-238063:100,-200183:100,-196985:100,-193225:100,-193223:100",
        ["ClassSpell.Priest.Discipline"] = "-589:3,-2061:5,-17:8,-47540:10,-2096:13,-262861:16,-8122:18,-81749:20,-527:22,-19236:26,-186263:28,-1706:32,-132157:33,-231682:36,-45243:38,-34433:40,-33206:48,-47536:50,-194509:52,-198068:58,-73325:63,-212036:66,-62618:70,-271534:78",
        ["ClassSpell.Priest.Holy"] = "-2061:5,-14914:10,-2050:10,-139:12,-2096:13,-262861:16,-88625:16,-8122:18,-63733:20,-527:22,-2060:24,-19236:26,-596:28,-20711:32,-1706:32,-132157:33,-231687:36,-45243:38,-34861:40,-47788:44,-33076:50,-285485:58,-73325:63,-212036:66,-64843:70,-77485:78,-64901:85",
        ["ClassSpell.Priest.Shadow"] = "-589:3,-2061:5,-17:8,-15407:10,-8092:10,-232698:12,-2096:13,-8122:18,-228266:20,-228264:20,-228260:20,-185916:20,-213634:22,-34914:24,-48045:26,-190719:28,-186263:28,-47585:28,-15286:28,-1706:32,-231688:36,-78203:38,-45243:38,-34433:40,-15487:52,-280752:58,-73325:63,-77486:78",
        ["ClassSpell.Rogue.General"] = "-210108:0,-56814:0,-157442:1,-82245:1,-185311:16,-1766:18,-1804:24,-2983:32,-2836:42,-1966:44,-31209:58,-1860:62,-114018:68,-57934:70,-31224:80",
        ["ClassSpell.Rogue.Talent"] = "-200758:15,-200733:15,-196938:15,-196937:15,-196864:15,-193640:15,-193537:15,-111240:15,-91023:15,-256188:30,-255989:30,-196924:30,-196922:30,-108209:30,-108208:30,-14062:30,-193531:45,-137619:45,-14983:45,-280716:60,-200759:60,-193546:60,-79008:60,-31230:60,-277953:75,-257505:75,-256165:75,-196861:75,-154904:75,-131511:75,-108216:75,-256170:90,-245687:90,-245388:90,-238104:90,-200806:90,-193539:90,-152152:90,-5171:90,-280719:100,-277925:100,-272026:100,-271877:100,-270061:100,-255544:100,-196976:100,-121411:100,-51690:100",
        ["ClassSpell.Rogue.Assassination"] = "-1752:1,-196819:3,-1784:5,-1833:8,-185565:10,-14117:10,-2823:10,-703:12,-279877:13,-921:13,-6770:14,-51667:20,-1943:20,-36554:22,-2094:24,-5277:26,-14190:28,-408:34,-32645:36,-3408:38,-1725:38,-1329:40,-231719:42,-1856:48,-79134:50,-8679:54,-79140:56,-51723:63,-231691:66,-76803:78",
        ["ClassSpell.Rogue.Combat"] = "-199736:1,-1784:5,-1833:8,-193315:10,-185763:10,-61329:10,-2098:10,-279876:12,-921:13,-6770:14,-199804:20,-195457:22,-8676:22,-2094:24,-199754:26,-14161:28,-1776:34,-1725:38,-193316:40,-235484:42,-1856:48,-79096:50,-35551:50,-13750:56,-13877:63,-231691:66,-76806:78,-51690:60",
        ["ClassSpell.Rogue.Subtlety"] = "-196819:3,-1784:5,-1833:8,-114014:10,-79152:10,-53:10,-185438:12,-921:13,-6770:14,-195452:20,-36554:22,-2094:24,-5277:26,-196912:28,-408:34,-212283:36,-1725:38,-277950:40,-185313:40,-231718:42,-1856:48,-58423:50,-231716:52,-185314:54,-121471:56,-245751:61,-197835:63,-231691:66,-76808:78",
        ["ClassSpell.Shaman.General"] = "-2484:8,-6196:13,-2008:14,-2645:16,-20608:26,-546:32,-277784:42,-277778:42,-269352:42,-211015:42,-211010:42,-211004:42,-210873:42,-51514:42,-192058:44,-556:44,-32182:50,-2825:50,-108271:52,-8143:58,-370:63",
        ["ClassSpell.Shaman.Talent"] = "-246035:15,-201900:15,-200072:15,-200071:15,-192106:15,-170374:15,-117014:15,-273221:30,-262647:30,-262395:30,-260897:30,-210643:30,-200076:30,-197992:30,-108283:30,-265046:45,-260878:45,-51485:45,-974:45,-210853:60,-210727:60,-207401:60,-207399:60,-198838:60,-192249:60,-192222:60,-192087:60,-16166:60,-196884:75,-192088:75,-192077:75,-108281:75,-30884:75,-280614:90,-262303:90,-210714:90,-207778:90,-197214:90,-197211:90,-192246:90,-157153:90,-117013:90,-262624:100,-260895:100,-197995:100,-191634:100,-188089:100,-157154:100,-114052:100,-114051:100,-114050:100",
        ["ClassSpell.Shaman.Elemental"] = "-190493:1,-188196:1,-190488:3,-188389:3,-8004:5,-187828:10,-8042:10,-51505:12,-57994:18,-231721:20,-51886:22,-51490:24,-188443:28,-168534:29,-60188:34,-198103:36,-196840:38,-77756:40,-61882:48,-86108:50,-198067:56,-231722:70,-280609:78",
        ["ClassSpell.Shaman.Enhancement"] = "-187837:1,-188070:5,-193786:10,-157444:10,-86629:10,-60103:10,-193796:12,-57994:18,-17364:20,-51886:22,-33757:24,-187874:28,-51533:34,-198103:36,-196834:38,-187880:40,-201845:48,-86099:50,-231723:56,-77223:78,-58875:80",
        ["ClassSpell.Shaman.Restoration"] = "-403:1,-188838:3,-8004:5,-61295:10,-51505:12,-5394:14,-57994:18,-231721:20,-1064:20,-77130:22,-77472:24,-421:28,-51564:34,-198103:36,-231725:38,-79206:38,-77756:40,-73920:40,-16196:48,-86100:50,-231780:54,-98008:56,-212048:66,-231785:70,-77226:78,-108280:80",
        ["ClassSpell.Warlock.General"] = "-115746:1,-688:5,-246985:10,-93375:10,-5782:16,-6201:18,-117198:19,-5784:20,-697:20,-755:22,-5697:24,-126:24,-712:28,-710:32,-108370:34,-691:36,-119898:38,-23161:40,-698:42,-20707:44,-104773:54,-1098:56,-288843:63,-29893:66,-111771:80",
        ["ClassSpell.Warlock.Talent"] = "-267211:15,-267171:15,-267115:15,-264106:15,-264078:15,-198590:15,-196412:15,-108558:15,-6353:15,-266134:30,-265412:30,-264130:30,-205148:30,-205145:30,-196103:30,-196102:30,-17877:30,-219272:45,-111400:45,-108416:45,-278350:60,-270545:60,-267170:60,-264119:60,-264057:60,-205179:60,-196408:60,-196226:60,-152108:60,-268358:75,-264874:75,-6789:75,-267216:90,-266086:90,-205184:90,-111898:90,-108503:90,-48181:90,-267217:100,-267215:100,-267214:100,-264000:100,-215941:100,-196447:100,-113860:100,-113858:100",
        ["ClassSpell.Warlock.Affliction"] = "-232670:1,-172:3,-980:10,-234153:13,-30108:14,-231791:26,-27243:38,-231792:52,-205180:58,-30283:60,-231811:70,-77215:78",
        ["ClassSpell.Warlock.Demonology"] = "-686:1,-105174:10,-30146:12,-234153:13,-104316:14,-264178:22,-267102:30,-196277:46,-108415:52,-30283:60,-231811:70,-77219:78,-265187:80",
        ["ClassSpell.Warlock.Destruction"] = "-686:1,-17962:10,-348:10,-116858:12,-234153:13,-196406:14,-29722:14,-5740:26,-80240:40,-231793:52,-1122:58,-30283:60,-231811:70,-77220:78",
        ["ClassSpell.Warrior.General"] = "-123829:1,-115767:1,-88163:1,-3127:1,-100:3,-355:13,-57755:17,-6552:24,-6544:26,-6673:42",
        ["ClassSpell.Warrior.Talent"] = "-275334:15,-262231:15,-260643:15,-215568:15,-202603:15,-202296:15,-202168:15,-29725:15,-223657:30,-203201:30,-107570:30,-103827:30,-281001:45,-280721:45,-275336:45,-215573:45,-202560:45,-202316:45,-100130:45,-772:45,-280001:60,-208154:60,-202561:60,-202224:60,-202163:60,-202095:60,-197690:60,-29838:60,-275339:75,-275338:75,-268243:75,-262161:75,-215571:75,-206315:75,-202922:75,-845:75,-280392:90,-262228:90,-248621:90,-236279:90,-202743:90,-202572:90,-118000:90,-107574:90,-46924:90,-280772:100,-262150:100,-228920:100,-203177:100,-202751:100,-152278:100,-152277:100",
        ["ClassSpell.Warrior.Arms"] = "-279423:1,-1464:1,-34428:5,-163201:8,-12294:10,-7384:20,-260708:22,-231830:28,-1715:32,-184783:34,-118038:36,-1680:40,-18499:44,-167105:50,-86101:50,-262304:55,-227847:65,-5246:70,-262111:78,-97462:80",
        ["ClassSpell.Warrior.Fury"] = "-231842:1,-34428:5,-5308:8,-46917:10,-23881:10,-209694:12,-184367:12,-184361:14,-85288:20,-231827:28,-12323:32,-184364:36,-190411:40,-18499:44,-86110:50,-1719:50,-12950:55,-5246:70,-76856:78,-97462:80",
        ["ClassSpell.Warrior.Protection"] = "-71:1,-34428:5,-23922:10,-20243:10,-6343:14,-2565:20,-6572:22,-198304:28,-12975:32,-231834:34,-190456:36,-231847:38,-18499:44,-1160:48,-86535:50,-46968:50,-871:55,-23920:70,-5246:70,-76857:78,-97462:80"
    }
)
