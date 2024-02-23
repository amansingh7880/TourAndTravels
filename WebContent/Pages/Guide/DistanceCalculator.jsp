<%@include file="../Common/Global.jsp"%>
<SCRIPT language=JavaScript>
 function doQuit()
		{		 
		  document.mainform.action = "home"  ; 
		  document.mainform.submit();
		}
function doSubmit()
		{		   
			var strErrMsg;
			strErrMsg = "";			
			strErrMsg = doValidations();
			if (strErrMsg == "" )
			{
			    DoCalc();		
				document.mainform.action = ""  ;    				
				document.mainform.submit();
			}
			else
			{alert(strErrMsg);}
		}
		function doValidations()
		{
			var ddIndex;
			var strTemp;
			var strFld;
			var frmDoc;
			var strErrMsg;

			strErrMsg = "";
			frmDoc = document.mainform;			
			strFld = frmDoc.from
			if (strFld.value == "") strErrMsg = strErrMsg + "Please enter Source city\n";			
			strFld = frmDoc.to
			if (strFld.value == "") strErrMsg = strErrMsg + "Please enter Destination city\n";	
			return strErrMsg;
		}
		
		function DoCalc() 
		{
        var frmdoc; 
		var strFld;
		var str;
		var Orig=new Array();
    	var Dest=new Array();
       	var nm=0;
        var tc=0;
		var d;
		var message;	
		frmDoc = document.mainform;			
		strFld = frmDoc.from.value
		Orig=strFld.split("/");
		strFld = frmDoc.to.value
		Dest=strFld.split("/");
		d=Math.acos(Math.sin(Orig[2])
		*Math.sin(Dest[2])
		+Math.cos(Orig[2])
		*Math.cos(Dest[2])
		*Math.cos(Orig[4]-Dest[4]));
		nm=Math.round(3956.073*d);
		if (Math.sin(Dest[4]-Orig[4]) < 0) {
		tc=Math.acos((Math.sin(Dest[2])
		-Math.sin(Orig[2])*Math.cos(d))
		/(Math.sin(d)*Math.cos(Orig[2])));
         } 
		else { 
		tc=2*Math.PI
		-Math.acos((Math.sin(Dest[2])
		-Math.sin(Orig[2])
		*Math.cos(d))/(Math.sin(d)
		*Math.cos(Orig[2])));
		}
		tc=Math.round(tc*(180/Math.PI));
		message=(Orig[0] + " to " + Dest[0] + "\n\n");
		message+=("Kilometers: "+Math.round(nm*1.6094));
		alert(message);
   }
</SCRIPT>
<p align="center"><font size="6"><strong><font color="#990000"><u>Distance Calculator</u></font></strong></font></p>
<table width="580" height="186" border="0" cellpadding="1" cellspacing="0"><FORM name=mainform method=post>
  <tr bgcolor=#234567>
	<th>Select Source City</th>
    <th>Select Destination City</th>
  </tr>
  <tr> 
    <td><SELECT style='height:80px' name=from city size=10 multiple id="source city">
          <option value="AN3/1/0.158995591/-1/1.369611552">ABIRAMAM ,Tamil Nadu 
          </option>
          <option value="AN4/1/0.526186067/-1/1.295638007">ABOHAR ,Punjab </option>
          <option value="AN6/1/0.371031746/-1/1.353291005">ACHALPUR ,Maharashtra 
          </option>
          <option value="AN12/1/0.275936067/-1/1.396306437">ADDANKI ,Andhra Pradesh 
          </option>
          <option value="AN15/1/0.343536596/-1/1.371362434">ADILABAD ,Andhra Pradesh 
          </option>
          <option value="AN16/1/0.27280291/-1/1.349202381">ADONI ,Andhra Pradesh 
          </option>
          <option value="AN17/1/0.410181658/-1/1.502780423">ADRA ,West Bengal 
          </option>
          <option value="AN18/1/0.192305996/-1/1.387770282">ADUTURAI ,Tamil Nadu 
          </option>
          <option value="AP1/1/0.416108466/-1/1.593700176">AGARTALA ,Tripura </option>
          <option value="AP6/1/0.474527778/-1/1.362064815">AGRA ,Uttar Pradesh 
          </option>
          <option value="AP7/1/0.402280864/-1/1.258015873">AHMADABAD ,Gujarat 
          </option>
          <option value="AP8/1/0.33331261/-1/1.305061728">AHMADNAGAR ,Maharashtra 
          </option>
          <option value="AP12/1/0.436895944/-1/1.449633157">AHRAURA ,Uttar Pradesh 
          </option>
          <option value="AP19/1/0.461704145/-1/1.303281746">AJMER ,Rajasthan </option>
          <option value="AP23/1/0.46142284/-1/1.432633598">AKBARPUR ,Uttar Pradesh 
          </option>
          <option value="AP28/1/0.361491623/-1/1.344391093">AKOLA ,Maharashtra 
          </option>
          <option value="AP31/1/0.368310847/-1/1.345429012">AKOT ,Maharashtra 
          </option>
          <option value="AP35/1/0.27721164/-1/1.364247354">ALAMPUR ,Andhra Pradesh 
          </option>
          <option value="AP37/1/0.192228395/-1/1.332993386">ALANALLUR ,Kerala 
          </option>
          <option value="AP39/1/0.180874339/-1/1.379141975">ALANGUDI ,Tamil Nadu 
          </option>
          <option value="AP40/1/0.487375661/-1/1.383633157">ALAPUR ,Uttar Pradesh 
          </option>
          <option value="AP42/1/0.490838624/-1/1.407165785">ALIGANJ ,Uttar Pradesh 
          </option>
          <option value="AP43/1/0.487031305/-1/1.364257055">ALIGARH ,Uttar Pradesh 
          </option>
          <option value="AP44/1/0.480090829/-1/1.382343034">ALIGNJ ,Uttar Pradesh 
          </option>
          <option value="AP48/1/0.444238977/-1/1.428748677">ALLAHABAD ,Uttar Pradesh 
          </option>
          <option value="AP50/1/0.159883157/-1/1.332682981">ALLEPPEY ,Kerala </option>
          <option value="AP51/1/0.256370811/-1/1.397795414">ALLUR ,Andhra Pradesh 
          </option>
          <option value="AP55/1/0.516869048/-1/1.390762787">ALMORA ,Uttar Pradesh 
          </option>
          <option value="AP59/1/0.48123545/-1/1.33761067">ALWAR ,Rajasthan </option>
          <option value="AP60/1/0.176480159/-1/1.327590388">ALWAYE ,Kerala </option>
          <option value="AP63/1/0.367428131/-1/1.310571429">AMALNER ,Maharashtra 
          </option>
          <option value="AP73/1/0.466238977/-1/1.365799383">AMBAH ,Madhya Pradesh 
          </option>
          <option value="AP75/1/0.529906085/-1/1.341519841">AMBALA ,Haryana </option>
          <option value="AP76/1/0.529726631/-1/1.337523369">AMBALA CANTONMENT 
          ,Punjab </option>
          <option value="AP77/1/0.157938272/-1/1.33319224">AMBALAPULAI ,Kerala 
          </option>
          <option value="AP78/1/0.403667989/-1/1.452664462">AMBIKAPUR ,Madhya 
          Pradesh </option>
          <option value="AP79/1/0.22327866/-1/1.374398589">AMBUR ,Tamil Nadu </option>
          <option value="AP83/1/0.467116843/-1/1.417059965">AMETHI ,Uttar Pradesh 
          </option>
          <option value="AP86/1/0.38282716/-1/1.364261905">AMLA ,Madhya Pradesh 
          </option>
          <option value="AP95/1/0.365454145/-1/1.357690035">AMRAVATI ,Maharashtra 
          </option>
          <option value="AP96/1/0.377191358/-1/1.239997795">AMRELI ,Gujarat </option>
          <option value="AP98/1/0.552284392/-1/1.307278219">AMRITSAR ,Punjab </option>
          <option value="AP99/1/0.504695326/-1/1.37004321">AMROHA ,Uttar Pradesh 
          </option>
          <option value="AP102/1/0.184710758/-1/1.343261023">ANAIMALAI ,Tamil 
          Nadu </option>
          <option value="AP103/1/0.308800265/-1/1.449356702">ANAKAPALLE ,Andhra 
          Pradesh </option>
          <option value="AP105/1/0.393919312/-1/1.27381261">ANAND ,Gujarat </option>
          <option value="AP107/1/0.256395062/-1/1.354741182">ANANTAPUR ,Andhra 
          Pradesh </option>
          <option value="AP110/1/0.589290564/-1/1.312918871">ANANTNAG ,Jammu &amp; 
          Kashmir </option>
          <option value="AP114/1/0.197888448/-1/1.38601455">ANDIMATAM ,Tamil Nadu 
          </option>
          <option value="AP115/1/0.159888007/-1/1.355337743">ANDIPPATTI ,Tamil 
          Nadu </option>
          <option value="AP116/1/0.202098325/-1/1.354750882">ANDIYUR ,Tamil Nadu 
          </option>
          <option value="AP117/1/0.221886684/-1/1.356564815">ANEKAL ,Karnataka 
          </option>
          <option value="AP118/1/0.363717813/-1/1.485824515">ANGUL ,Orissa </option>
          <option value="AP120/1/0.369479718/-1/1.349837743">ANJANGAON ,Maharashtra 
          </option>
          <option value="AP121/1/0.403546737/-1/1.222590829">ANJAR ,Gujarat </option>
          <option value="AP122/1/0.142417989/-1/1.340617725">ANJENGO ,Kerala </option>
          <option value="AP123/1/0.377647266/-1/1.258617284">ANKLESHWAR ,Gujarat 
          </option>
          <option value="AP125/1/0.255914903/-1/1.297093034">ANKOLA ,Karnataka 
          </option>
          <option value="AP126/1/0.269233245/-1/1.317036596">ANNIGERI ,Karnataka 
          </option>
          <option value="AP127/1/0.196186067/-1/1.346297178">ANNUR ,Tamil Nadu 
          </option>
          <option value="AP129/1/0.350855379/-1/1.417142416">Antagarh ,Madhya 
          Pradesh </option>
          <option value="AP131/1/0.495140653/-1/1.366643298">ANUPSHAHR ,Uttar 
          Pradesh </option>
          <option value="AP134/1/0.493729277/-1/1.382333333">AONLA ,Uttar Pradesh 
          </option>
          <option value="AP142/1/0.221168871/-1/1.384307319">ARANI ,Tamil Nadu 
          </option>
          <option value="AP143/1/0.232876984/-1/1.398425926">ARANI ,Tamil Nadu 
          </option>
          <option value="AP144/1/0.177455026/-1/1.379311728">ARANTANGI ,Tamil 
          Nadu </option>
          <option value="AP145/1/0.456446649/-1/1.527981481">ARARIA ,Bihar </option>
          <option value="AP147/1/0.188047619/-1/1.360333333">ARAVAKKURICHCHI ,Tamil 
          Nadu </option>
          <option value="AP150/1/0.195938713/-1/1.327837743">ARIKKOD ,Kerala </option>
          <option value="AP151/1/0.178953704/-1/1.377512346">ARIMALAM ,Tamil Nadu 
          </option>
          <option value="AP153/1/0.194415785/-1/1.380606702">ARIYALUR ,Tamil Nadu 
          </option>
          <option value="AP155/1/0.22276455/-1/1.327973545">ARKALGUD ,Karnataka 
          </option>
          <option value="AP156/1/0.228429453/-1/1.391058642">ARKONAM ,Tamil Nadu 
          </option>
          <option value="AP161/1/0.446246914/-1/1.467840388">ARRAH ,Bihar </option>
          <option value="AP162/1/0.232377425/-1/1.331305556">ARSIKERE ,Karnataka 
          </option>
          <option value="AP163/1/0.157264109/-1/1.363539242">ARUPPUKKOTTAI ,Tamil 
          Nadu </option>
          <option value="AP164/1/0.366584215/-1/1.366027337">ARVI ,Maharashtra 
          </option>
          <option value="AP167/1/0.41358157/-1/1.518582011">ASANSOL ,West Bengal 
          </option>
          <option value="AP170/1/0.429048501/-1/1.357040123">ASHOKNAGAR ,Madhya 
          Pradesh </option>
          <option value="AP185/1/0.441474427/-1/1.397708113">ATARRA ,Uttar Pradesh 
          </option>
          <option value="AP189/1/0.180481481/-1/1.385902998">ATIRAMPATTINAM ,Tamil 
          Nadu </option>
          <option value="AP192/1/0.277231041/-1/1.372177249">ATMAKUR ,Andhra Pradesh 
          </option>
          <option value="AP193/1/0.255134039/-1/1.390292328">ATMAKUR ,Andhra Pradesh 
          </option>
          <option value="AP195/1/0.489432099/-1/1.362205467">ATRAULI ,Uttar Pradesh 
          </option>
          <option value="AP197/1/0.201414462/-1/1.364242504">ATTAYYAMPATTI ,Tamil 
          Nadu </option>
          <option value="AP198/1/0.20240873/-1/1.362802028">ATTUR ,Tamil Nadu 
          </option>
          <option value="AP201/1/0.462067901/-1/1.38820679">AURAIYA ,Uttar Pradesh 
          </option>
          <option value="AP202/1/0.432113757/-1/1.473238536">AURANGABAD ,Bihar 
          </option>
          <option value="AP203/1/0.347203263/-1/1.315101411">AURANGABAD ,Maharashtra 
          </option>
          <option value="AP206/1/0.195419753/-1/1.34916843">AVANASHI ,Tamil Nadu 
          </option>
          <option value="AP214/1/0.467873457/-1/1.435213845">AYODHYA ,Uttar Pradesh 
          </option>
          <option value="AP215/1/0.455078924/-1/1.449516755">AZAMGARH ,Uttar Pradesh 
          </option>
          <option value="AP216/1/0.207966931/-1/1.315736772">AZHIKKAL ,Kerala 
          </option>
          <option value="AP217/1/0.423989859/-1/1.537870811">AZIMGANJ ,West Bengal 
          </option>
          <option value="AP222/1/0.202447531/-1/1.319670194">BADAGARA ,Kerala 
          </option>
          <option value="AP223/1/0.277876102/-1/1.321338624">BADAMI ,Karnataka 
          </option>
          <option value="AP226/1/0.36411552/-1/1.357146825">BADNERA ,Maharashtra 
          </option>
          <option value="AP229/1/0.257321429/-1/1.380466049">BADVEL ,Andhra Pradesh 
          </option>
          <option value="AP232/1/0.473121252/-1/1.468247795">BAGAHA ,Bihar </option>
          <option value="AP233/1/0.282595238/-1/1.321678131">BAGALKOT ,Karnataka 
          </option>
          <option value="AP240/1/0.275358907/-1/1.303208995">BAGEVADI ,Karnataka 
          </option>
          <option value="AP248/1/0.469115079/-1/1.372298501">BAH ,Uttar Pradesh 
          </option>
          <option value="AP249/1/0.501115961/-1/1.341185185">BAHADURGARH ,Haryana 
          </option>
          <option value="AP253/1/0.502357584/-1/1.388012787">BAHERI ,Uttar Pradesh 
          </option>
          <option value="AP257/1/0.481439153/-1/1.424674603">BAHRAICH ,Uttar Pradesh 
          </option>
          <option value="AP263/1/0.275931217/-1/1.304130511">BAIL HONGAL ,Karnataka 
          </option>
          <option value="AP272/1/0.380916226/-1/1.400089506">BALAGHAT ,Madhya 
          Pradesh </option>
          <option value="AP278/1/0.37512522/-1/1.518092152">BALASORE ,Orissa </option>
          <option value="AP280/1/0.3465/-1/1.38546164">BALHARSHAH ,Maharashtra 
          </option>
          <option value="AP286/1/0.449748677/-1/1.469266314">BALLIA ,Uttar Pradesh 
          </option>
          <option value="AP290/1/0.450922399/-1/1.261367284">BALOTRA ,Rajasthan 
          </option>
          <option value="AP291/1/0.478926808/-1/1.43492284">BALRAMPUR ,Uttar Pradesh 
          </option>
          <option value="AP294/1/0.440421958/-1/1.550020282">BALURGHAT ,West Bengal 
          </option>
          <option value="AP305/1/0.276071869/-1/1.289638448">BANDA ,Goa </option>
          <option value="AP307/1/0.444753086/-1/1.402630952">BANDA ,Uttar Pradesh 
          </option>
          <option value="AP320/1/0.226542769/-1/1.354702381">BANGALORE ,Karnataka 
          </option>
          <option value="AP321/1/0.26732231/-1/1.365809083">BANGANAPALLE ,Andhra 
          Pradesh </option>
          <option value="AP323/1/0.402353616/-1/1.551116402">BANGAON ,West Bengal 
          </option>
          <option value="AP324/1/0.226722222/-1/1.365013668">BANGARAPET ,Karnataka 
          </option>
          <option value="AP325/1/0.469517637/-1/1.400477513">BANGARMAU ,Uttar 
          Pradesh </option>
          <option value="AP328/1/0.434393298/-1/1.517558642">BANKA ,Bihar </option>
          <option value="AP329/1/0.260430335/-1/1.31395679">BANKAPUR ,Karnataka 
          </option>
          <option value="AP333/1/0.405680776/-1/1.520308642">BANKURA ,West Bengal 
          </option>
          <option value="AP334/1/0.451955467/-1/1.522515432">BANMNKHI ,Bihar </option>
          <option value="AP336/1/0.215256614/-1/1.34200485">BANNUR ,Karnataka 
          </option>
          <option value="AP347/1/0.225179894/-1/1.310154321">BANTVAL ,Karnataka 
          </option>
          <option value="AP350/1/0.277696649/-1/1.397426808">BAPATLA ,Andhra Pradesh 
          </option>
          <option value="AP361/1/0.31681261/-1/1.302122575">BARAMATI ,Maharashtra 
          </option>
          <option value="AP364/1/0.597361111/-1/1.292650353">BARAMULA ,Jammu &amp; 
          Kashmir </option>
          <option value="AP365/1/0.438156966/-1/1.335874339">BARAN ,Rajasthan 
          </option>
          <option value="AP370/1/0.508129189/-1/1.349066578">BARAUT ,Uttar Pradesh 
          </option>
          <option value="AP371/1/0.440363757/-1/1.496882716">BARBIGHA ,Bihar </option>
          <option value="AP372/1/0.405641975/-1/1.534126543">BARDDHAMAN ,West 
          Bengal </option>
          <option value="AP375/1/0.495053351/-1/1.386509259">BAREILLY ,Uttar Pradesh 
          </option>
          <option value="AP383/1/0.444670635/-1/1.49654321">BARH ,Bihar </option>
          <option value="AP388/1/0.441488977/-1/1.501839506">BARHIYA ,Bihar </option>
          <option value="AP390/1/0.46531746/-1/1.35518739">BARI ,Rajasthan </option>
          <option value="AP393/1/0.382987213/-1/1.514386684">BARIPADA ,Orissa 
          </option>
          <option value="AP394/1/0.422054674/-1/1.499598765">BARKI SARIA ,Bihar 
          </option>
          <option value="AP396/1/0.449394621/-1/1.246438713">BARMER ,Rajasthan 
          </option>
          <option value="AP401/1/0.459511905/-1/1.589223545">BARPETA ,Assam </option>
          <option value="AP404/1/0.318398589/-1/1.321585979">BARSI ,Maharashtra 
          </option>
          <option value="AP409/1/0.444753086/-1/1.50093254">BARUNI ,Bihar </option>
          <option value="AP412/1/0.442992504/-1/1.374616843">BARWA SAGAR ,Uttar 
          Pradesh </option>
          <option value="AP419/1/0.456242945/-1/1.527166667">BASANTPUR ,Bihar 
          </option>
          <option value="AP427/1/0.395548942/-1/1.537967813">BASIRHAT ,West Bengal 
          </option>
          <option value="AP432/1/0.467844356/-1/1.444710317">BASTI ,Uttar Pradesh 
          </option>
          <option value="AP435/1/0.555383598/-1/1.313078924">BATALA ,Punjab </option>
          <option value="AP442/1/0.469803792/-1/1.349469136">BAYANA ,Rajasthan 
          </option>
          <option value="AP444/1/0.455593034/-1/1.297510141">BEAWAR ,Rajasthan 
          </option>
          <option value="AP449/1/0.443715168/-1/1.503750441">BEGUSARAI ,Bihar 
          </option>
          <option value="AP453/1/0.452469577/-1/1.43166358">BELA ,Uttar Pradesh 
          </option>
          <option value="AP463/1/0.276750882/-1/1.300871252">BELGAUM ,Karnataka 
          </option>
          <option value="AP467/1/0.264320106/-1/1.328473104">BELLARY ,Karnataka 
          </option>
          <option value="AP470/1/0.229802028/-1/1.324471781">BELUR ,Karnataka 
          </option>
          <option value="AP472/1/0.441430776/-1/1.448440035">BENARES ,Uttar Pradesh 
          </option>
          <option value="AP475/1/0.420633598/-1/1.540824515">BERHAMPORE ,West 
          Bengal </option>
          <option value="AP476/1/0.33712963/-1/1.480799824">BERHAMPUR ,Orissa 
          </option>
          <option value="AP480/1/0.269713404/-1/1.364436508">BETAMCHERLA ,Andhra 
          Pradesh </option>
          <option value="AP484/1/0.467931658/-1/1.475464727">BETTIAH ,Bihar </option>
          <option value="AP486/1/0.382429453/-1/1.360241182">BETUL ,Madhya Pradesh 
          </option>
          <option value="AP488/1/0.195371252/-1/1.32387037">BEYPORE ,Kerala </option>
          <option value="AP489/1/0.437196649/-1/1.459900794">BHABUA ,Bihar </option>
          <option value="AP495/1/0.443370811/-1/1.441620811">BHADOHI ,Uttar Pradesh 
          </option>
          <option value="AP496/1/0.367568783/-1/1.510797619">BHADRAKH ,Orissa 
          </option>
          <option value="AP497/1/0.241524691/-1/1.32162478">BHADRAVATI ,Karnataka 
          </option>
          <option value="AP501/1/0.440698413/-1/1.503061728">BHAGALPUR ,Bihar 
          </option>
          <option value="AU14/1/0.438447972/-1/1.436470018">BHARATGANJ ,Uttar 
          Pradesh </option>
          <option value="AU15/1/0.47519224/-1/1.353">BHARATPUR ,Rajasthan </option>
          <option value="AU17/1/0.467150794/-1/1.379660935">BHARTHANA ,Uttar Pradesh 
          </option>
          <option value="AU18/1/0.379165344/-1/1.274205467">BHARUCH ,Gujarat </option>
          <option value="AU20/1/0.472083333/-1/1.34529321">BHASAWAR ,Rajasthan 
          </option>
          <option value="AU22/1/0.379422399/-1/1.430795414">BHATAPARA ,Madhya 
          Pradesh </option>
          <option value="AU25/1/0.244158289/-1/1.301579365">BHATKALI ,Karnataka 
          </option>
          <option value="AU29/1/0.199736332/-1/1.345647266">BHAVANI ,Tamil Nadu 
          </option>
          <option value="AU30/1/0.380111111/-1/1.259635802">BHAVNAGAR ,Gujarat 
          </option>
          <option value="AU32/1/0.347562169/-1/1.452218254">BHAWANIPATNA ,Orissa 
          </option>
          <option value="AU40/1/0.472301587/-1/1.314601852">BHESLANA ,Rajasthan 
          </option>
          <option value="AS3/1/0.442551146/-1/1.303170194">BHILWARA ,Rajasthan 
          </option>
          <option value="AS6/1/0.288885802/-1/1.423563933">BHIMAVARAM ,Andhra 
          Pradesh </option>
          <option value="AS9/1/0.463818783/-1/1.363068783">BHIND ,Madhya Pradesh 
          </option>
          <option value="AS10/1/0.426647707/-1/1.296675926">BHINDAR ,Rajasthan 
          </option>
          <option value="AS11/1/0.483723545/-1/1.43056261">BHINGA ,Uttar Pradesh 
          </option>
          <option value="AS15/1/0.336940476/-1/1.275534392">BHIWANDI ,Maharashtra 
          </option>
          <option value="AS16/1/0.502667989/-1/1.329380071">BHIWANI ,Haryana </option>
          <option value="AS18/1/0.314688272/-1/1.450118166">BHOGAPURAM ,Andhra 
          Pradesh </option>
          <option value="AS23/1/0.475934303/-1/1.382401235">BHONGAON ,Uttar Pradesh 
          </option>
          <option value="AS25/1/0.405598325/-1/1.351632275">BHOPAL ,Madhya Pradesh 
          </option>
          <option value="AS29/1/0.353804233/-1/1.485611111">BHUBANESHWAR ,Orissa 
          </option>
          <option value="AS30/1/0.405981481/-1/1.216329365">BHUJ ,Gujarat </option>
          <option value="AS34/1/0.367491182/-1/1.32327381">BHUSAWAL ,Maharashtra 
          </option>
          <option value="AS38/1/0.312665785/-1/1.353645062">BIDAR ,Karnataka </option>
          <option value="AS40/1/0.439961199/-1/1.49323545">BIHAR ,Bihar </option>
          <option value="AS42/1/0.293750441/-1/1.322012787">BIJAPUR ,Karnataka 
          </option>
          <option value="AS45/1/0.429940917/-1/1.387876984">BIJAWAR ,Madhya Pradesh 
          </option>
          <option value="AS49/1/0.512843474/-1/1.364281305">BIJNOR ,Uttar Pradesh 
          </option>
          <option value="AS52/1/0.489233245/-1/1.27490873">BIKANER ,Rajasthan 
          </option>
          <option value="AS55/1/0.546958995/-1/1.34036552">BILASPUR ,Himachal 
          Pradesh </option>
          <option value="AS56/1/0.385586861/-1/1.434452381">BILASPUR ,Madhya Pradesh 
          </option>
          <option value="AS58/1/0.474445326/-1/1.397305556">BILGRAM ,Uttar Pradesh 
          </option>
          <option value="AS60/1/0.468697972/-1/1.397902116">BILHAUR ,Uttar Pradesh 
          </option>
          <option value="AS65/1/0.422001323/-1/1.365183422">BINA ,Madhya Pradesh 
          </option>
          <option value="AS67/1/0.454584215/-1/1.406782628">BINDKI ,Uttar Pradesh 
          </option>
          <option value="AS76/1/0.237416667/-1/1.310978836">BIRUR ,Karnataka </option>
          <option value="AS77/1/0.494068783/-1/1.393391534">BISALPUR ,Uttar Pradesh 
          </option>
          <option value="BI3/1/0.402979277/-1/1.524780423">BISHNUPUR ,West Bengal 
          </option>
          <option value="BI7/1/0.48016843/-1/1.414154762">BISWAN ,Uttar Pradesh 
          </option>
          <option value="BI10/1/0.324286596/-1/1.455467813">BOBBILI ,Andhra Pradesh 
          </option>
          <option value="BI12/1/0.325794974/-1/1.360241182">BODHAN ,Andhra Pradesh 
          </option>
          <option value="BI33/1/0.39103836/-1/1.272842593">BORSAD ,Gujarat </option>
          <option value="BI34/1/0.38722619/-1/1.25125485">BOTAD ,Gujarat </option>
          <option value="BI41/1/0.48947575/-1/1.381474868">BUDAUN ,Uttar Pradesh 
          </option>
          <option value="BI43/1/0.511388448/-1/1.352747795">BUDHANA ,Uttar Pradesh 
          </option>
          <option value="BI44/1/0.247868607/-1/1.345618166">BUKKAPATNAM ,Andhra 
          Pradesh </option>
          <option value="BI46/1/0.495926367/-1/1.359271164">BULANDSHAHR ,Uttar 
          Pradesh </option>
          <option value="BI54/1/0.372011464/-1/1.3309903">BURHANPUR ,Madhya Pradesh 
          </option>
          <option value="BI58/1/0.256133157/-1/1.310130071">BYADGI ,Karnataka 
          </option>
          <option value="BI59/1/0.393613757/-1/1.537104497">CALCUTTA ,West Bengal 
          </option>
          <option value="BI60/1/0.206996914/-1/1.315833774">CANNANORE ,Kerala 
          </option>
          <option value="BI70/1/0.461248236/-1/1.484946649">CHAKIA ,Bihar </option>
          <option value="BI71/1/0.437385802/-1/1.452926367">CHAKIA ,Uttar Pradesh 
          </option>
          <option value="BI77/1/0.357175044/-1/1.311003086">CHALISGAON ,Maharashtra 
          </option>
          <option value="BI79/1/0.250002646/-1/1.338260582">CHALLAKERE ,Karnataka 
          </option>
          <option value="BI87/1/0.208151235/-1/1.343387125">CHAMRAJNAGAR ,Karnataka 
          </option>
          <option value="BI96/1/0.496779982/-1/1.37555291">CHANDAUSI ,Uttar Pradesh 
          </option>
          <option value="BI99/1/0.431454145/-1/1.364295855">CHANDERI ,Madhya Pradesh 
          </option>
          <option value="BI100/1/0.536691358/-1/1.328162698">CHANDIGARH ,Chandigarh 
          City </option>
          <option value="BI105/1/0.508711199/-1/1.366648148">CHANDPUR ,Uttar Pradesh 
          </option>
          <option value="BI107/1/0.396916667/-1/1.528156085">CHANDRAKONA ROAD 
          ,West Bengal </option>
          <option value="BI108/1/0.348275132/-1/1.384651675">CHANDRAPUR ,Maharashtra 
          </option>
          <option value="BI112/1/0.370794092/-1/1.357452381">Chandur Bazar ,Maharashtra 
          </option>
          <option value="BI115/1/0.159044092/-1/1.336407848">CHANGANACHERI ,Kerala 
          </option>
          <option value="BI119/1/0.244837302/-1/1.325606702">CHANNAGIRI ,Karnataka 
          </option>
          <option value="BI120/1/0.220940917/-1/1.347902557">CHANNAPATNA ,Karnataka 
          </option>
          <option value="BI121/1/0.225194444/-1/1.333599647">CHANNARAYAPATNA ,Karnataka 
          </option>
          <option value="BI124/1/0.470671958/-1/1.476104938">CHANPATIA ,Bihar 
          </option>
          <option value="BI133/1/0.443511464/-1/1.392416667">CHARKHARI ,Uttar 
          Pradesh </option>
          <option value="BI135/1/0.515869929/-1/1.354794533">CHARTHAWAL ,Uttar 
          Pradesh </option>
          <option value="BI142/1/0.422568783/-1/1.443575397">CHATRA ,Uttar Pradesh 
          </option>
          <option value="BI143/1/0.337895944/-1/1.48392328">CHATRAPUR ,Orissa 
          </option>
          <option value="BI144/1/0.182707672/-1/1.35520679">CHATTRAPPATT ,Tamil 
          Nadu </option>
          <option value="BI155/1/0.214849206/-1/1.375712963">CHENGAM ,Tamil Nadu 
          </option>
          <option value="BI156/1/0.159713404/-1/1.337712522">CHENGANNUR ,Kerala 
          </option>
          <option value="BI158/1/0.194900794/-1/1.355070988">CHENNIMALAI ,Tamil 
          Nadu </option>
          <option value="BI163/1/0.217628307/-1/1.38543254">CHETPUT ,Tamil Nadu 
          </option>
          <option value="BI164/1/0.21560097/-1/1.396878748">CHEYUR ,Tamil Nadu 
          </option>
          <option value="BI166/1/0.528082451/-1/1.350696208">CHHACHRAULI ,Haryana 
          </option>
          <option value="BI172/1/0.484111552/-1/1.353242504">CHHATA ,Uttar Pradesh 
          </option>
          <option value="BI173/1/0.434951058/-1/1.389627866">CHHATARPUR ,Madhya 
          Pradesh </option>
          <option value="BI177/1/0.474028219/-1/1.388056437">CHHIBRAMAU ,Uttar 
          Pradesh </option>
          <option value="BI181/1/0.385140653/-1/1.378385362">CHHINDWARA ,Madhya 
          Pradesh </option>
          <option value="BI190/1/0.198994268/-1/1.391436949">CHIDAMBARAM ,Tamil 
          Nadu </option>
          <option value="BI191/1/0.234370811/-1/1.357025573">CHIK BALLAPUR ,Karnataka 
          </option>
          <option value="BI195/1/0.232435626/-1/1.322982804">CHIKMAGALUR ,Karnataka 
          </option>
          <option value="BI196/1/0.234191358/-1/1.337727072">CHIKNAYAKANHALLI 
          ,Karnataka </option>
          <option value="BI205/1/0.272055996/-1/1.380844356">CHIMAKURTI ,Andhra 
          Pradesh </option>
          <option value="BI210/1/0.22162963/-1/1.396359788">CHINGLEPUT ,Tamil 
          Nadu </option>
          <option value="BI213/1/0.259945326/-1/1.391189594">CHINNA ANNALURU ,Andhra 
          Pradesh </option>
          <option value="BI214/1/0.189429894/-1/1.345933422">CHINNA DHARAPURAM 
          ,Tamil Nadu </option>
          <option value="BI215/1/0.27388448/-1/1.400763668">CHINNA GANJAM ,Andhra 
          Pradesh </option>
          <option value="BI217/1/0.203165344/-1/1.377240741">CHINNA SALEM ,Tamil 
          Nadu </option>
          <option value="BI225/1/0.319771164/-1/1.459212081">CHIPURUPALLE ,Andhra 
          Pradesh </option>
          <option value="BI229/1/0.276362875/-1/1.40305291">CHIRALA ,Andhra Pradesh 
          </option>
          <option value="BI230/1/0.493011464/-1/1.320742063">CHIRAWA ,Rajasthan 
          </option>
          <option value="BI232/1/0.404948413/-1/1.438060847">CHIRMIRI ,Madhya 
          Pradesh </option>
          <option value="BI238/1/0.184895062/-1/1.327609788">CHITTALANCHERI ,Kerala 
          </option>
          <option value="BI239/1/0.4344806/-1/1.292965608">CHITTAURGARH ,Rajasthan 
          </option>
          <option value="BI241/1/0.230675044/-1/1.381018959">CHITTOOR ,Andhra 
          Pradesh </option>
          <option value="CH2/1/0.247466049/-1/1.385141534">CHITVEL ,Andhra Pradesh 
          </option>
          <option value="GO5/1/0.17488933/-1/1.361148148">CHOLAVANDAN ,Tamil Nadu 
          </option>
          <option value="GO6/1/0.474246473/-1/1.322158289">CHOMUN ,Rajasthan </option>
          <option value="GO7/1/0.370958995/-1/1.314660053">CHOPDA ,Maharashtra 
          </option>
          <option value="GU9/1/0.399817019/-1/1.539544092">CHUNCHURA ,West Bengal 
          </option>
          <option value="GU14/1/0.174811728/-1/1.330912698">COCHIN ,Kerala </option>
          <option value="GU15/1/0.192150794/-1/1.343930335">COIMBATORE ,Tamil 
          Nadu </option>
          <option value="GU16/1/0.44110582/-1/1.519353175">COLGONG ,Bihar </option>
          <option value="GU18/1/0.459565256/-1/1.562053351">COOCH BEHAR ,West 
          Bengal </option>
          <option value="GU19/1/0.237843474/-1/1.30406746">COONDAPOOR ,Karnataka 
          </option>
          <option value="GU20/1/0.198145503/-1/1.340840829">COONOOR ,Tamil Nadu 
          </option>
          <option value="GU22/1/0.205182981/-1/1.392693122">CUDDALORE ,Tamil Nadu 
          </option>
          <option value="GU23/1/0.252650794/-1/1.376231922">CUDDAPAH ,Andhra Pradesh 
          </option>
          <option value="GU24/1/0.271939594/-1/1.381164462">CUMBUM ,Andhra Pradesh 
          </option>
          <option value="GU25/1/0.357305996/-1/1.499477513">CUTTACK ,Orissa </option>
          <option value="GU28/1/0.386387125/-1/1.275199735">DABHOI ,Gujarat </option>
          <option value="GU29/1/0.339574074/-1/1.438977513">Dabugam ,Orissa </option>
          <option value="GU34/1/0.498492063/-1/1.35412037">DADRI ,Uttar Pradesh 
          </option>
          <option value="GU48/1/0.451732363/-1/1.533660935">DALKOLA ,West Bengal 
          </option>
          <option value="GU50/1/0.419755732/-1/1.467796737">DALTONGANJ ,Bihar 
          </option>
          <option value="GU55/1/0.447604938/-1/1.484936949">DANAPUR ,Bihar </option>
          <option value="GU61/1/0.456572751/-1/1.499676367">DARBHANGA ,Bihar </option>
          <option value="GU64/1/0.472136684/-1/1.541023369">DARJEELING ,West Bengal 
          </option>
          <option value="GU66/1/0.469420635/-1/1.42397134">DARYABAD ,Uttar Pradesh 
          </option>
          <option value="GU70/1/0.448172399/-1/1.369858907">DATIA ,Madhya Pradesh 
          </option>
          <option value="GU72/1/0.437075397/-1/1.473587743">DAUDNAGAR ,Bihar </option>
          <option value="GU74/1/0.322361111/-1/1.302137125">DAUND ,Maharashtra 
          </option>
          <option value="GU75/1/0.469478836/-1/1.327609788">DAUSA ,Rajasthan </option>
          <option value="GU76/1/0.252364638/-1/1.311017637">DAVANGERE ,Karnataka 
          </option>
          <option value="GU84/1/0.52962963/-1/1.362734127">DEHRA DUN ,Uttar Pradesh 
          </option>
          <option value="GU85/1/0.434577601/-1/1.469634921">DEHRI ,Bihar </option>
          <option value="GU88/1/0.448094797/-1/1.4987403">DELSINGH SARAI ,Bihar 
          </option>
          <option value="GU89/1/0.449772928/-1/1.31616358">DELVI ,Rajasthan </option>
          <option value="GU91/1/0.218680776/-1/1.358179894">DENKANIKOTA ,Tamil 
          Nadu </option>
          <option value="GU93/1/0.518818783/-1/1.345894621">DEOBAND ,Haryana </option>
          <option value="GU99/1/0.427583774/-1/1.513664021">DEOGHAR ,Bihar </option>
          <option value="GU116/1/0.17711067/-1/1.355682099">DEVADANAPPATTI ,Tamil 
          Nadu </option>
          <option value="GU117/1/0.159097443/-1/1.376324074">DEVAKOTTAI ,Tamil 
          Nadu </option>
          <option value="GU119/1/0.231203704/-1/1.356797619">DEVANHALLI ,Karnataka 
          </option>
          <option value="GU124/1/0.175713845/-1/1.346287478">DEVIKOLAM ,Kerala 
          </option>
          <option value="GU132/1/0.400879189/-1/1.327837743">DEWAS ,Madhya Pradesh 
          </option>
          <option value="GU134/1/0.183444885/-1/1.347698854">DHALI ,Tamil Nadu 
          </option>
          <option value="GU140/1/0.511616402/-1/1.370722222">DHAMPUR ,Uttar Pradesh 
          </option>
          <option value="GU142/1/0.361520723/-1/1.42397619">DHAMTARI ,Madhya Pradesh 
          </option>
          <option value="GU143/1/0.505587743/-1/1.366425044">DHANAURA ,Uttar Pradesh 
          </option>
          <option value="GU144/1/0.415327601/-1/1.502198413">DHANBAD ,Bihar </option>
          <option value="GU163/1/0.187426808/-1/1.353654762">DHARAPURAM ,Tamil 
          Nadu </option>
          <option value="GU169/1/0.2117306/-1/1.364771164">DHARMAPURI ,Tamil Nadu 
          </option>
          <option value="GU170/1/0.22602866/-1/1.316110229">Dharmastala ,Karnataka 
          </option>
          <option value="GU171/1/0.251671076/-1/1.345618166">DHARMAVARAM ,Andhra 
          Pradesh </option>
          <option value="GU174/1/0.562581129/-1/1.327309083">DHARMSALA ,Himachal 
          Pradesh </option>
          <option value="GU178/1/0.269776455/-1/1.309669312">DHARWAR ,Karnataka 
          </option>
          <option value="GU181/1/0.360662257/-1/1.494675926">DHENKANAL ,Orissa 
          </option>
          <option value="GU186/1/0.426720459/-1/1.347698854">DHIRPUR ,Madhya Pradesh 
          </option>
          <option value="GU189/1/0.396887566/-1/1.264883598">DHOLKA ,Gujarat </option>
          <option value="GU190/1/0.466035273/-1/1.359804674">DHOLPUR ,Rajasthan 
          </option>
          <option value="GU191/1/0.268719136/-1/1.345933422">DHONE ,Andhra Pradesh 
          </option>
          <option value="GU192/1/0.37949515/-1/1.229972663">DHORAJI ,Gujarat </option>
          <option value="GU194/1/0.401373898/-1/1.247733686">DHRANGADHRA ,Gujarat 
          </option>
          <option value="GU196/1/0.454351411/-1/1.571045414">DHUBRI ,Assam </option>
          <option value="GU197/1/0.364954586/-1/1.305522487">DHULE ,Maharashtra 
          </option>
          <option value="GU198/1/0.431425044/-1/1.531420194">DHULIAN ,Bihar </option>
          <option value="GU202/1/0.464284392/-1/1.554201058">DHUPGARI ,West Bengal 
          </option>
          <option value="GU206/1/0.492521605/-1/1.366444444">DIBAI ,Uttar Pradesh 
          </option>
          <option value="GU207/1/0.479790123/-1/1.65714418">DIBRUGRH ,Assam </option>
          <option value="GU209/1/0.479639771/-1/1.350128748">DIG ,Rajasthan </option>
          <option value="GU218/1/0.561077601/-1/1.310144621">DINANAGAR ,Punjab 
          </option>
          <option value="GU219/1/0.180830688/-1/1.361482804">DINDIGUL ,Tamil Nadu 
          </option>
          <option value="GU221/1/0.456213845/-1/1.562218254">DINHATA ,West Bengal 
          </option>
          <option value="GU223/1/0.423606702/-1/1.260305115">DISA ,Gujarat </option>
          <option value="GU227/1/0.232018519/-1/1.353732363">DOD BALLAPUR ,Karnataka 
          </option>
          <option value="HA4/1/0.335422399/-1/1.276048501">DOMBIVLI ,Maharashtra 
          </option>
          <option value="HA12/1/0.369964727/-1/1.410109788">DONGARGARH ,Madhya 
          Pradesh </option>
          <option value="HA27/1/0.41526455/-1/1.51963448">DUBRAJPUR ,West Bengal 
          </option>
          <option value="HA33/1/0.423645503/-1/1.523349647">DUMKA ,Bihar </option>
          <option value="HA35/1/0.44606746/-1/1.467830688">DUMRAON ,Bihar </option>
          <option value="HA43/1/0.370105379/-1/1.420770282">DURG ,Madhya Pradesh 
          </option>
          <option value="HA52/1/0.204571869/-1/1.382551587">ELAVANASUR ,Tamil 
          Nadu </option>
          <option value="HA58/1/0.291791005/-1/1.416128748">ELURU ,Andhra Pradesh 
          </option>
          <option value="HA59/1/0.275358907/-1/1.352835097">EMMIGANURU ,Andhra 
          Pradesh </option>
          <option value="HP2/1/0.436512787/-1/1.538966931">ENGLISH BAZAR ,West 
          Bengal </option>
          <option value="HP3/1/0.188421076/-1/1.351200617">ERAKAMPATTI ,Tamil 
          Nadu </option>
          <option value="HP6/1/0.174860229/-1/1.332280423">ERNAKULAM ,Kerala </option>
          <option value="HP7/1/0.197907848/-1/1.357205026">ERODE ,Tamil Nadu </option>
          <option value="HP11/1/0.481186949/-1/1.362802028">ETAH ,Uttar Pradesh 
          </option>
          <option value="HP12/1/0.467533951/-1/1.382018078">ETAWAH ,Uttar Pradesh 
          </option>
          <option value="HP13/1/0.158171076/-1/1.361739859">ETTAIYAPURAM ,Tamil 
          Nadu </option>
          <option value="HP14/1/0.467563051/-1/1.434049824">FAIZABAD ,Uttar Pradesh 
          </option>
          <option value="HP16/1/0.463013668/-1/1.55759127">FALAKATA ,West Bengal 
          </option>
          <option value="HP17/1/0.49555776/-1/1.349735891">FARIDABAD ,Haryana 
          </option>
          <option value="HP18/1/0.535420635/-1/1.305255732">FARIDKOT ,Punjab </option>
          <option value="HP19/1/0.492647707/-1/1.380257496">FARIDPUR ,Uttar Pradesh 
          </option>
          <option value="HP20/1/0.477791887/-1/1.390355379">FARRUKHABAD ,Uttar 
          Pradesh </option>
          <option value="HP24/1/0.471850529/-1/1.367113757">FATEHABAD ,Uttar Pradesh 
          </option>
          <option value="HP27/1/0.488772487/-1/1.308762346">FATEHPUR ,Rajasthan 
          </option>
          <option value="HP28/1/0.474421076/-1/1.41791843">FATEHPUR ,Uttar Pradesh 
          </option>
          <option value="HP29/1/0.452692681/-1/1.411036155">FATEHPUR ,Uttar Pradesh 
          </option>
          <option value="HP30/1/0.420439594/-1/1.531701499">FATEHPUR ,West Bengal 
          </option>
          <option value="HP31/1/0.473063051/-1/1.355968254">FATEHPUR SIKRI ,Uttar 
          Pradesh </option>
          <option value="HP33/1/0.530856702/-1/1.29250485">FAZILKA ,Punjab </option>
          <option value="HP35/1/0.474042769/-1/1.368748236">FIROZABAD ,Uttar Pradesh 
          </option>
          <option value="HP36/1/0.539839065/-1/1.302820988">FIROZPUR ,Punjab </option>
          <option value="HP37/1/0.485008818/-1/1.343484127">FIROZPUR JHIRKA ,Haryana 
          </option>
          <option value="HP38/1/0.459119048/-1/1.524271164">FORBESGANJ ,Bihar 
          </option>
          <option value="HP41/1/0.269388448/-1/1.32054321">GADAG ,Karnataka </option>
          <option value="HP43/1/0.400190476/-1/1.375640212">GADARWARA ,Madhya 
          Pradesh </option>
          <option value="JK2/1/0.445199295/-1/1.463397707">GAHMAR ,Uttar Pradesh 
          </option>
          <option value="JK6/1/0.274684744/-1/1.310983686">GAJENDRAGARH ,Karnataka 
          </option>
          <option value="JK12/1/0.402828924/-1/1.222251323">GANDHI DAM ,Gujarat 
          </option>
          <option value="JK16/1/0.522456349/-1/1.289643298">GANGANAGAR ,Rajasthan 
          </option>
          <option value="JK17/1/0.462203704/-1/1.339482804">GANGAPUR ,Rajasthan 
          </option>
          <option value="JK20/1/0.269402998/-1/1.336058642">GANGAWATI ,Karnataka 
          </option>
          <option value="JK23/1/0.520041005/-1/1.348969577">GANGOH ,Uttar Pradesh 
          </option>
          <option value="JK24/1/0.477175926/-1/1.537380952">GANGTOK ,Sikkim </option>
          <option value="JK30/1/0.320702381/-1/1.457247795">GARBHAM ,Andhra Pradesh 
          </option>
          <option value="JK44/1/0.457183862/-1/1.59007716">GAUHATI ,Assam </option>
          <option value="JK46/1/0.237537919/-1/1.353392857">GAURIBIDANUR ,Karnataka 
          </option>
          <option value="JK47/1/0.455491182/-1/1.570764109">GAURIPUR ,Assam </option>
          <option value="JK48/1/0.43286067/-1/1.484059083">GAYA ,Bihar </option>
          <option value="JK60/1/0.395597443/-1/1.532036155">GHATAL ,West Bengal 
          </option>
          <option value="JK64/1/0.500432099/-1/1.351855379">GHAZIABAD ,Uttar Pradesh 
          </option>
          <option value="JK65/1/0.446838624/-1/1.449541005">GHAZIPUR ,Uttar Pradesh 
          </option>
          <option value="JK74/1/0.268447531/-1/1.378036155">GIDDALUR ,Andhra Pradesh 
          </option>
          <option value="JK76/1/0.627140653/-1/1.297122134">GILGIT ,Jammu &amp; 
          Kashmir </option>
          <option value="JK81/1/0.422185626/-1/1.501917108">GIRIDIH ,Bihar </option>
          <option value="JK82/1/0.45706261/-1/1.58233157">GOALPARA ,Assam </option>
          <option value="JK90/1/0.397484127/-1/1.285239418">GODHRA ,Gujarat </option>
          <option value="JK93/1/0.461413139/-1/1.369660053">GOHAD ,Madhya Pradesh 
          </option>
          <option value="JK95/1/0.282275132/-1/1.306395503">GOKAK ,Karnataka </option>
          <option value="JK96/1/0.254033069/-1/1.297548942">GOKARN ,Karnataka 
          </option>
          <option value="JK98/1/0.490295414/-1/1.397412257">GOLA GOKARANNATH ,Uttar 
          Pradesh </option>
          <option value="JK99/1/0.462853616/-1/1.640736332">GOLAGHAT ,Assam </option>
          <option value="JK111/1/0.473645062/-1/1.431062169">GONDA ,Uttar Pradesh 
          </option>
          <option value="JK112/1/0.383447972/-1/1.236248677">GONDAL ,Gujarat </option>
          <option value="JK113/1/0.374693563/-1/1.40028351">GONDIA ,Maharashtra 
          </option>
          <option value="JK117/1/0.263932099/-1/1.345341711">GOOTY ,Andhra Pradesh 
          </option>
          <option value="JK121/1/0.462111552/-1/1.474436508">GOPALGANJ ,Bihar 
          </option>
          <option value="JK124/1/0.199983686/-1/1.352097884">GOPICHETTIPALAIYAM 
          ,Tamil Nadu </option>
          <option value="JK125/1/0.441440476/-1/1.439263668">GOPIGANJ ,Uttar Pradesh 
          </option>
          <option value="JK127/1/0.467145944/-1/1.455530864">GORAKHPUR ,Uttar 
          Pradesh </option>
          <option value="JK137/1/0.480095679/-1/1.352481041">GOVARDHAN ,Uttar 
          Pradesh </option>
          <option value="JK143/1/0.15731746/-1/1.348794974">GUDALUR ,Tamil Nadu 
          </option>
          <option value="JK149/1/0.287008818/-1/1.412753086">GUDIVADA ,Andhra 
          Pradesh </option>
          <option value="JK150/1/0.225951058/-1/1.376940035">GUDIYATTAM ,Tamil 
          Nadu </option>
          <option value="JK151/1/0.211585097/-1/1.390277778">GUDRAIPPATTU ,Tamil 
          Nadu </option>
          <option value="JK152/1/0.24695194/-1/1.394123898">GUDUR ,Andhra Pradesh 
          </option>
          <option value="JK154/1/0.498986772/-1/1.358238095">GULAOTHI ,Uttar Pradesh 
          </option>
          <option value="JK155/1/0.302635802/-1/1.341481041">GULBARGA ,Karnataka 
          </option>
          <option value="JK163/1/0.402319665/-1/1.47622619">GUMLA ,Bihar </option>
          <option value="JK164/1/0.240850529/-1/1.360595238">GUMMANAYAKANAPALAYA 
          ,Karnataka </option>
          <option value="JK165/1/0.430304674/-1/1.349857143">GUNA ,Madhya Pradesh 
          </option>
          <option value="JK168/1/0.206157848/-1/1.339046296">GUNDALPET ,Karnataka 
          </option>
          <option value="JK173/1/0.264834215/-1/1.350924162">GUNTAKAL ,Andhra 
          Pradesh </option>
          <option value="JK174/1/0.284574074/-1/1.397412257">GUNTUR ,Andhra Pradesh 
          </option>
          <option value="JK179/1/0.559317019/-1/1.316629189">GURDASPUR ,Punjab 
          </option>
          <option value="JK181/1/0.496983686/-1/1.346500882">GURGAON ,Haryana 
          </option>
          <option value="JK186/1/0.447226631/-1/1.382415785">GURSARAI ,Uttar Pradesh 
          </option>
          <option value="JK191/1/0.458231481/-1/1.364237654">GWALIOR ,Madhya Pradesh 
          </option>
          <option value="JK193/1/0.398555996/-1/1.537419753">HABRA ,West Bengal 
          </option>
          <option value="JK196/1/0.262249118/-1/1.325694004">HADAGALLI ,Karnataka 
          </option>
          <option value="JK200/1/0.448351852/-1/1.487686949">HAJIPUR ,Bihar </option>
          <option value="KA4/1/0.510205026/-1/1.388570547">HALDWANI ,Uttar Pradesh 
          </option>
          <option value="KA5/1/0.267627866/-1/1.305241182">HALIYAL ,Karnataka 
          </option>
          <option value="KA11/1/0.453153439/-1/1.399381393">HAMIRPUR ,Uttar Pradesh 
          </option>
          <option value="KA16/1/0.257743386/-1/1.311686949">HANGAL ,Karnataka 
          </option>
          <option value="KA18/1/0.508143739/-1/1.326246914">HANSI ,Haryana </option>
          <option value="KA22/1/0.394714727/-1/1.540155203">HAORA ,West Bengal 
          </option>
          <option value="KA23/1/0.50158642/-1/1.358058642">HAPUR ,Uttar Pradesh 
          </option>
          <option value="KA26/1/0.389903439/-1/1.345991623">HARDA KHAS ,Madhya 
          Pradesh </option>
          <option value="KA27/1/0.478354497/-1/1.399085538">HARDOI ,Uttar Pradesh 
          </option>
          <option value="KA30/1/0.253402557/-1/1.310712081">HARIHAR ,Karnataka 
          </option>
          <option value="KA33/1/0.159097443/-1/1.334821869">HARIPAD ,Kerala </option>
          <option value="KA36/1/0.258155644/-1/1.326639771">HARPANAHALLI ,Karnataka 
          </option>
          <option value="KA42/1/0.210377425/-1/1.362496473">HARUR ,Tamil Nadu 
          </option>
          <option value="KA45/1/0.501450617/-1/1.366929453">HASANPUR ,Uttar Pradesh 
          </option>
          <option value="KA47/1/0.227105379/-1/1.328633157">HASSAN ,Karnataka 
          </option>
          <option value="KA52/1/0.481890212/-1/1.364261905">HATHRAS ,Uttar Pradesh 
          </option>
          <option value="KA60/1/0.258194444/-1/1.310130071">HAVERI ,Karnataka 
          </option>
          <option value="KA62/1/0.418974868/-1/1.490601852">HAZARIBAG ,Bihar </option>
          <option value="KA63/1/0.419173721/-1/1.490456349">HAZARIBAGH ,Bihar 
          </option>
          <option value="KA66/1/0.270334215/-1/1.311657848">HEBLI ,Karnataka </option>
          <option value="KA76/1/0.466748236/-1/1.345011905">HINDAUN ,Rajasthan 
          </option>
          <option value="KA79/1/0.241335538/-1/1.345050705">HINDUPUR ,Andhra Pradesh 
          </option>
          <option value="KA80/1/0.358916226/-1/1.376537478">HINGANGHAT ,Maharashtra 
          </option>
          <option value="KA81/1/0.34429321/-1/1.34693739">HINGOLI ,Maharashtra 
          </option>
          <option value="KA87/1/0.252374339/-1/1.316925044">HIREKERUR ,Karnataka 
          </option>
          <option value="KA90/1/0.509021605/-1/1.310716931">HISAR ,Haryana </option>
          <option value="KA91/1/0.433534832/-1/1.491319665">HISUA ,Bihar </option>
          <option value="KA94/1/0.487074956/-1/1.35079321">HODAL ,Haryana </option>
          <option value="KA99/1/0.223196208/-1/1.331130952">HOLE NARSIPUR ,Karnataka 
          </option>
          <option value="KA103/1/0.24859612/-1/1.320746914">HONNALI ,Karnataka 
          </option>
          <option value="KA107/1/0.39712037/-1/1.345642416">HOSHANGABAD ,Madhya 
          Pradesh </option>
          <option value="KA108/1/0.550485009/-1/1.32547575">HOSHIARPUR ,Punjab 
          </option>
          <option value="KA109/1/0.228191799/-1/1.358213845">HOSKOTE ,Karnataka 
          </option>
          <option value="KA110/1/0.266638448/-1/1.333541446">HOSPET ,Karnataka 
          </option>
          <option value="KA111/1/0.222318342/-1/1.358858907">HOSUR ,Tamil Nadu 
          </option>
          <option value="KA113/1/0.267918871/-1/1.311007937">HUBLI ,Karnataka 
          </option>
          <option value="KA118/1/0.214747354/-1/1.332052469">HUNSUR ,Karnataka 
          </option>
          <option value="KA126/1/0.303712522/-1/1.362515873">HYDERABAD ,Andhra 
          Pradesh </option>
          <option value="KA129/1/0.291213845/-1/1.300129189">ICHALKARANJI ,Maharashtra 
          </option>
          <option value="KA130/1/0.333656966/-1/1.478791887">ICHCHAPURAM ,Andhra 
          Pradesh </option>
          <option value="KA131/1/0.202205026/-1/1.345923721">IDAPPADI ,Tamil Nadu 
          </option>
          <option value="KA136/1/0.159296296/-1/1.37280776">ILAIYANKUDI ,Tamil 
          Nadu </option>
          <option value="KA137/1/0.278652116/-1/1.328875661">ILKAL ,Karnataka 
          </option>
          <option value="KA138/1/0.432797619/-1/1.640236772">IMPHAL ,Manipur </option>
          <option value="KA143/1/0.396819665/-1/1.324651235">INDORE ,Madhya Pradesh 
          </option>
          <option value="KA145/1/0.276231922/-1/1.400152557">INKOLLU ,Andhra Pradesh 
          </option>
          <option value="KA150/1/0.18040873/-1/1.330742945">IRINJALAKUDA ,Kerala 
          </option>
          <option value="KA154/1/0.458362434/-1/1.536808642">ISLAMPUR ,West Bengal 
          </option>
          <option value="KA155/1/0.394763228/-1/1.345608466">ITARSI ,Madhya Pradesh 
          </option>
          <option value="KA161/1/0.404444004/-1/1.395850529">JABALPUR ,Madhya 
          Pradesh </option>
          <option value="KA165/1/0.526797178/-1/1.3447694">JAGADHRI ,Haryana </option>
          <option value="KA170/1/0.333239859/-1/1.43222134">JAGDALPUR ,Madhya 
          Pradesh </option>
          <option value="KA172/1/0.444578483/-1/1.473932099">JAGDISPUR ,Bihar 
          </option>
          <option value="KA178/1/0.537462522/-1/1.317856261">JAGRAOH ,Punjab </option>
          <option value="KA180/1/0.440174603/-1/1.483753527">JAHANABAD ,Bihar 
          </option>
          <option value="KA183/1/0.455825838/-1/1.402994709">JAHANABAD ,Uttar 
          Pradesh </option>
          <option value="KA184/1/0.495989418/-1/1.363704145">JAHANGIRABAD ,Uttar 
          Pradesh </option>
          <option value="KA190/1/0.469769841/-1/1.310707231">JAIPUR ,Rajasthan 
          </option>
          <option value="KA191/1/0.458541887/-1/1.423825838">JAIS ,Uttar Pradesh 
          </option>
          <option value="KA192/1/0.469886243/-1/1.238154762">JAISALMER ,Rajasthan 
          </option>
          <option value="KA202/1/0.517135802/-1/1.345070106">JALABAD ,Uttar Pradesh 
          </option>
          <option value="KA203/1/0.484111552/-1/1.353242504">JALABAD ,Uttar Pradesh 
          </option>
          <option value="KA204/1/0.486648148/-1/1.366240741">JALAI ,Uttar Pradesh 
          </option>
          <option value="KA205/1/0.204101411/-1/1.359702822">JALAKANDAPURAM ,Tamil 
          Nadu </option>
          <option value="KA211/1/0.456451499/-1/1.37995679">JALAUN ,Uttar Pradesh 
          </option>
          <option value="KA213/1/0.479688272/-1/1.362229718">JALESAR ,Uttar Pradesh 
          </option>
          <option value="KA216/1/0.366894621/-1/1.319369489">JALGAON ,Maharashtra 
          </option>
          <option value="KA218/1/0.346393298/-1/1.325010141">JALNA ,Maharashtra 
          </option>
          <option value="KA219/1/0.442512346/-1/1.267890653">JALOR ,Rajasthan 
          </option>
          <option value="KA220/1/0.46308157/-1/1.537681658">JALPAIGURI ,West Bengal 
          </option>
          <option value="KA223/1/0.441969136/-1/1.510079806">JAMALPUR ,Bihar </option>
          <option value="KA228/1/0.288070988/-1/1.314538801">JAMKHANDI ,Karnataka 
          </option>
          <option value="KA230/1/0.259091711/-1/1.368554233">JAMMALAMADUGU ,Andhra 
          Pradesh </option>
          <option value="KA231/1/0.571093034/-1/1.293562169">JAMMU ,Jammu &amp; 
          Kashmir </option>
          <option value="KA232/1/0.392231481/-1/1.222261023">JAMNAGAR ,Gujarat 
          </option>
          <option value="KA234/1/0.397716931/-1/1.505234568">JAMSHEDPUR ,Bihar 
          </option>
          <option value="KA239/1/0.427384921/-1/1.537162698">JANGIPUR ,West Bengal 
          </option>
          <option value="KA244/1/0.51204321/-1/1.359198413">JANSATH ,Uttar Pradesh 
          </option>
          <option value="KA245/1/0.412708554/-1/1.311017637">JAORA ,Madhya Pradesh 
          </option>
          <option value="KA250/1/0.511194444/-1/1.376333774">JASPUR ,Uttar Pradesh 
          </option>
          <option value="KA251/1/0.475575397/-1/1.362787478">JASRANA ,Uttar Pradesh 
          </option>
          <option value="KA254/1/0.469449735/-1/1.377720899">JASWANTNAGAR ,Uttar 
          Pradesh </option>
          <option value="KA260/1/0.449709877/-1/1.443847002">JAUNPUR ,Uttar Pradesh 
          </option>
          <option value="KA266/1/0.195676808/-1/1.37996164">JAYAMKONDACHOLAPURAM 
          ,Tamil Nadu </option>
          <option value="KA269/1/0.464148589/-1/1.503376984">JAYNAGAR ,Bihar </option>
          <option value="KA270/1/0.387070988/-1/1.543880071">JAYNAGAR ,West Bengal 
          </option>
          <option value="KA273/1/0.401674603/-1/1.223696649">JETPUR ,Gujarat </option>
          <option value="KA274/1/0.379781305/-1/1.233052469">JETPUR ,Gujarat </option>
          <option value="KA277/1/0.432462963/-1/1.50811552">JHA JHA ,Bihar </option>
          <option value="KA279/1/0.499340829/-1/1.338406085">JHAJJAR ,Haryana 
          </option>
          <option value="KA285/1/0.426589506/-1/1.493293651">JHALPO ,Bihar </option>
          <option value="KA286/1/0.444229277/-1/1.371789242">JHANSI ,Uttar Pradesh 
          </option>
          <option value="KA289/1/0.41467284/-1/1.508925485">JHARIA ,Bihar </option>
          <option value="KE4/1/0.423121693/-1/1.541037919">JIAGANJ ,West Bengal 
          </option>
          <option value="KE7/1/0.511766755/-1/1.332338624">JIND ,Haryana </option>
          <option value="KE11/1/0.458881393/-1/1.275005732">JODHPUR ,Rajasthan 
          </option>
          <option value="KE16/1/0.467165344/-1/1.644926808">JORAHT ,Assam </option>
          <option value="KE21/1/0.546832892/-1/1.319631393">JULLUNDUR ,Punjab 
          </option>
          <option value="KE24/1/0.37566358/-1/1.230190917">JUNAGADH ,Gujarat </option>
          <option value="KE34/1/0.178555996/-1/1.345045855">KADAIKAN ,Tamil Nadu 
          </option>
          <option value="KE35/1/0.157511464/-1/1.350410053">KADAIYANALLUR ,Tamil 
          Nadu </option>
          <option value="KE37/1/0.216488536/-1/1.378763668">KADALADI ,Tamil Nadu 
          </option>
          <option value="KE38/1/0.14244224/-1/1.359436067">KADAMBUR ,Tamil Nadu 
          </option>
          <option value="KE41/1/0.24637963/-1/1.364703263">KADIRI ,Andhra Pradesh 
          </option>
          <option value="KE53/1/0.513260582/-1/1.348009259">KAIRANA ,Uttar Pradesh 
          </option>
          <option value="KE55/1/0.520235009/-1/1.333953704">KAITHAL ,Haryana </option>
          <option value="KE56/1/0.486982804/-1/1.382663139">KAKALA ,Uttar Pradesh 
          </option>
          <option value="KE60/1/0.295865079/-1/1.435912257">KAKINADA ,Andhra Pradesh 
          </option>
          <option value="KE61/1/0.469115079/-1/1.398033069">KAKORI ,Uttar Pradesh 
          </option>
          <option value="KE66/1/0.177532628/-1/1.334778219">KALADI ,Kerala </option>
          <option value="KE68/1/0.240123016/-1/1.391650353">KALAHASTI ,Andhra 
          Pradesh </option>
          <option value="KE69/1/0.157239859/-1/1.373040564">KALAIYARKOVIL ,Tamil 
          Nadu </option>
          <option value="KE70/1/0.139963845/-1/1.354164021">KALAKKADU ,Tamil Nadu 
          </option>
          <option value="MP3/1/0.193426367/-1/1.345113757">KALAPPATTI ,Tamil Nadu 
          </option>
          <option value="MP5/1/0.222953704/-1/1.386635362">KALAVAI ,Tamil Nadu 
          </option>
          <option value="MP6/1/0.264970018/-1/1.308936949">KALGHATGI ,Karnataka 
          </option>
          <option value="MP8/1/0.194954145/-1/1.327275132">KALIKAVU ,Kerala </option>
          <option value="MP10/1/0.472708995/-1/1.544850088">KALIMPONG ,West Bengal 
          </option>
          <option value="MP13/1/0.53844224/-1/1.328473104">KALKA ,Haryana </option>
          <option value="MP14/1/0.204964727/-1/1.378700617">KALLAKKURICHCHI ,Tamil 
          Nadu </option>
          <option value="MP16/1/0.139983245/-1/1.352558642">KALLIDAIKURICHCHI 
          ,Tamil Nadu </option>
          <option value="MP20/1/0.405855379/-1/1.265839065">KALOL ,Gujarat </option>
          <option value="MP21/1/0.456039242/-1/1.392402116">KALPI ,Uttar Pradesh 
          </option>
          <option value="MP23/1/0.158534832/-1/1.345652116">KALUGUMALAI ,Tamil 
          Nadu </option>
          <option value="MP24/1/0.253315256/-1/1.38653836">KALUVAYA ,Andhra Pradesh 
          </option>
          <option value="MP27/1/0.253960317/-1/1.346282628">KALYANDRUG ,Andhra 
          Pradesh </option>
          <option value="MP30/1/0.254910935/-1/1.373651675">KAMALAPURAM ,Andhra 
          Pradesh </option>
          <option value="MP33/1/0.482826279/-1/1.34914903">KAMAN ,Rajasthan </option>
          <option value="MP34/1/0.190399912/-1/1.348217813">KAMANAAYAKKANPALAIYAM 
          ,Tamil Nadu </option>
          <option value="MP42/1/0.370440035/-1/1.379680335">KAMTHI ,Maharashtra 
          </option>
          <option value="MP43/1/0.158263228/-1/1.362496473">KAMUDI ,Tamil Nadu 
          </option>
          <option value="MP45/1/0.323835538/-1/1.397160053">Kanakanur ,Andhra 
          Pradesh </option>
          <option value="MP46/1/0.21891358/-1/1.345045855">KANAKAPURA ,Karnataka 
          </option>
          <option value="MP48/1/0.271847443/-1/1.334167108">KANAKGIRI ,Karnataka 
          </option>
          <option value="MP53/1/0.224049824/-1/1.391582451">KANCHIPURAM ,Tamil 
          Nadu </option>
          <option value="MP54/1/0.399196208/-1/1.543443563">KANCHRAPARA ,West 
          Bengal </option>
          <option value="MP58/1/0.511975309/-1/1.34475">KANDHLA ,Uttar Pradesh 
          </option>
          <option value="MP62/1/0.26562963/-1/1.395186067">KANDUKUR ,Andhra Pradesh 
          </option>
          <option value="MP63/1/0.2585097/-1/1.345671517">KANEKALLA ,Andhra Pradesh 
          </option>
          <option value="MP64/1/0.192204145/-1/1.354280423">KANGAYAM ,Tamil Nadu 
          </option>
          <option value="MP69/1/0.268917989/-1/1.38821649">KANI GIRI ,Andhra Pradesh 
          </option>
          <option value="MP72/1/0.2254806/-1/1.384244268">KANIPPETTAI ,Tamil Nadu 
          </option>
          <option value="MP77/1/0.353886684/-1/1.423011023">KANKER ,Madhya Pradesh 
          </option>
          <option value="MP80/1/0.472417989/-1/1.380834656">KANNAUJ ,Uttar Pradesh 
          </option>
          <option value="MP85/1/0.465045855/-1/1.389031305">KANSUA ,Uttar Pradesh 
          </option>
          <option value="MP88/1/0.507333774/-1/1.372759259">KANTH ,Uttar Pradesh 
          </option>
          <option value="MP89/1/0.380314815/-1/1.532205908">KANTHI ,West Bengal 
          </option>
          <option value="MP91/1/0.401960758/-1/1.275815697">KAPADVANJ ,Gujarat 
          </option>
          <option value="MP96/1/0.54781261/-1/1.31012037">KAPURTHALA ,Punjab </option>
          <option value="MP97/1/0.301796737/-1/1.295216049">KARAD ,Maharashtra 
          </option>
          <option value="MP100/1/0.175718695/-1/1.375397707">KARAIKKUDI ,Tamil 
          Nadu </option>
          <option value="MP107/1/0.462640212/-1/1.344924603">KARAULI ,Rajasthan 
          </option>
          <option value="MP112/1/0.444578483/-1/1.364378307">KARERA ,Madhya Pradesh 
          </option>
          <option value="MP115/1/0.471525573/-1/1.378147707">KARHAL ,Uttar Pradesh 
          </option>
          <option value="MP117/1/0.190792769/-1/1.393992945">KARIKAL ,Tamil Nadu 
          </option>
          <option value="MP118/1/0.214892857/-1/1.365508377">KARIMANGALAM ,Tamil 
          Nadu </option>
          <option value="MP119/1/0.321866402/-1/1.381790123">KARIMNAGAR ,Andhra 
          Pradesh </option>
          <option value="MP123/1/0.23044224/-1/1.309407407">KARKAL ,Karnataka 
          </option>
          <option value="MP127/1/0.518387125/-1/1.344124339">KARNAL ,Haryana </option>
          <option value="MP131/1/0.157511464/-1/1.327891093">KARUNAGAPALLI ,Kerala 
          </option>
          <option value="MP132/1/0.191292328/-1/1.363325838">KARUR ,Tamil Nadu 
          </option>
          <option value="MP133/1/0.194095679/-1/1.328967813">KARUVAMBRAM ,Kerala 
          </option>
          <option value="MP134/1/0.23431746/-1/1.387343474">KARVETNAGAR ,Andhra 
          Pradesh </option>
          <option value="MP136/1/0.258630952/-1/1.294347884">KARWAR ,Karnataka 
          </option>
          <option value="MP137/1/0.440189153/-1/1.412757937">KARWI ,Uttar Pradesh 
          </option>
          <option value="MP140/1/0.218118166/-1/1.309358907">KASARAGOD ,Kerala 
          </option>
          <option value="MP141/1/0.451291005/-1/1.528277337">KASBA ,Bihar </option>
          <option value="MP145/1/0.485522928/-1/1.373152116">KASGANJ ,Uttar Pradesh 
          </option>
          <option value="MP146/1/0.510098325/-1/1.378642416">KASHIPUR ,Uttar Pradesh 
          </option>
          <option value="MP156/1/0.565132275/-1/1.318637125">KATHUA ,Jammu &amp; 
          Kashmir </option>
          <option value="MP157/1/0.446368166/-1/1.503828042">KATIHAR ,Bihar </option>
          <option value="MP158/1/0.279030423/-1/1.311900353">KATKOL ,Karnataka 
          </option>
          <option value="MP166/1/0.486522046/-1/1.367409612">KAURIAGANJ ,Uttar 
          Pradesh </option>
          <option value="MP168/1/0.260372134/-1/1.396723545">KAVALI ,Andhra Pradesh 
          </option>
          <option value="MP171/1/0.199503527/-1/1.354227072">KAVUNDAPPADI ,Tamil 
          Nadu </option>
          <option value="MP173/1/0.384306437/-1/1.41844224">KAWARDHA ,Madhya Pradesh 
          </option>
          <option value="MP174/1/0.140701058/-1/1.364164903">KAYALPATNAM ,Tamil 
          Nadu </option>
          <option value="MP175/1/0.158869489/-1/1.327861993">KAYANKULAM ,Kerala 
          </option>
          <option value="MP176/1/0.141661376/-1/1.357908289">KAYATTAR ,Tamil Nadu 
          </option>
          <option value="MP199/1/0.445281746/-1/1.509580247">KHAGARIA ,Bihar </option>
          <option value="MP200/1/0.44662037/-1/1.484820547">KHAGAUL ,Bihar </option>
          <option value="MP201/1/0.48785582/-1/1.35906261">KHAIR ,Uttar Pradesh 
          </option>
          <option value="MP202/1/0.480609788/-1/1.410022487">KHAIRABAD ,Uttar 
          Pradesh </option>
          <option value="MP213/1/0.389597884/-1/1.267958554">KHAMBHAT ,Gujarat 
          </option>
          <option value="MP214/1/0.361389771/-1/1.327876543">KHAMGAON ,Maharashtra 
          </option>
          <option value="MP216/1/0.301074074/-1/1.396844797">KHAMMAM ,Andhra Pradesh 
          </option>
          <option value="MP221/1/0.481962963/-1/1.310430776">KHANDELA ,Rajasthan 
          </option>
          <option value="MP224/1/0.381018078/-1/1.333037037">KHANDWA ,Madhya Pradesh 
          </option>
          <option value="MP226/1/0.498225309/-1/1.364257055">KHANPUR ,Uttar Pradesh 
          </option>
          <option value="MP229/1/0.438598325/-1/1.511146825">KHARAGPUR ,Bihar 
          </option>
          <option value="MP230/1/0.389893739/-1/1.519362875">KHARAGPUR ,West Bengal 
          </option>
          <option value="MP253/1/0.503996914/-1/1.349367284">KHEKRA ,Uttar Pradesh 
          </option>
          <option value="MP255/1/0.487167108/-1/1.41074515">KHERI ,Uttar Pradesh 
          </option>
          <option value="MP267/1/0.491556437/-1/1.391742504">KHUDAGANJ ,Uttar 
          Pradesh </option>
          <option value="MP271/1/0.419784832/-1/1.367627866">KHURAI ,Madhya Pradesh 
          </option>
          <option value="MP274/1/0.493268519/-1/1.345899471">KHURJA ,Uttar Pradesh 
          </option>
          <option value="MP281/1/0.158248677/-1/1.363102734">KILAKARAI ,Tamil 
          Nadu </option>
          <option value="MP282/1/0.185142416/-1/1.339119048">KILAKKOTTARA ,Kerala 
          </option>
          <option value="MP284/1/0.177750882/-1/1.363068783">KILASEVVALPATTI ,Tamil 
          Nadu </option>
          <option value="MP285/1/0.141447972/-1/1.328463404">KILIMANUR ,Kerala 
          </option>
          <option value="MP288/1/0.202908289/-1/1.382614638">KIRANUR ,Tamil Nadu 
          </option>
          <option value="MP289/1/0.184550705/-1/1.375640212">KIRANUR ,Tamil Nadu 
          </option>
          <option value="MP290/1/0.515220018/-1/1.365479277">KIRATPUR ,Uttar Pradesh 
          </option>
          <option value="MP301/1/0.193222663/-1/1.359862875">KODUMUDI ,Tamil Nadu 
          </option>
          <option value="MP302/1/0.273753527/-1/1.357903439">KODUMURU ,Andhra 
          Pradesh </option>
          <option value="MP304/1/0.448177249/-1/1.643282628">KOHIMA ,Nagaland 
          </option>
          <option value="MP307/1/0.265896384/-1/1.367419312">KOILKUNTLA ,Andhra 
          Pradesh </option>
          <option value="MP311/1/0.139823192/-1/1.348955026">KOLACHEL ,Tamil Nadu 
          </option>
          <option value="MP313/1/0.22936067/-1/1.364286155">KOLAR ,Karnataka </option>
          <option value="MP315/1/0.225907407/-1/1.366463845">KOLAR GOLD FIELDS 
          ,Karnataka </option>
          <option value="MP316/1/0.440339506/-1/1.355051587">KOLARAS ,Madhya Pradesh 
          </option>
          <option value="MP321/1/0.291543651/-1/1.296016314">KOLHAPUR ,Maharashtra 
          </option>
          <option value="MP324/1/0.212259259/-1/1.346243827">KOLLEGAL ,Karnataka 
          </option>
          <option value="MP325/1/0.296582892/-1/1.362748677">Kolur ,Andhra Pradesh 
          </option>
          <option value="MP332/1/0.194566138/-1/1.326319665">KONDOTTI ,Kerala 
          </option>
          <option value="MP333/1/0.204193563/-1/1.352388889">KONGADAK ,Tamil Nadu 
          </option>
          <option value="MP336/1/0.45432716/-1/1.459042328">KOPAGANI ,Uttar Pradesh 
          </option>
          <option value="MP337/1/0.346960758/-1/1.300264991">KOPARGAON ,Maharashtra 
          </option>
          <option value="MP339/1/0.267802469/-1/1.329549824">KOPPAL ,Karnataka 
          </option>
          <option value="MP349/1/0.485348325/-1/1.352005732">KOSI ,Uttar Pradesh 
          </option>
          <option value="MP350/1/0.276838183/-1/1.366551146">KOSIGI ,Andhra Pradesh 
          </option>
          <option value="MP356/1/0.439558642/-1/1.324137125">KOTA ,Rajasthan </option>
          <option value="MP361/1/0.519560847/-1/1.371197531">KOTDWARA ,Uttar Pradesh 
          </option>
          <option value="MP365/1/0.533965608/-1/1.306604056">KOTKAPURA ,Punjab 
          </option>
          <option value="MP370/1/0.30633157/-1/1.408116402">KOTTAGUDEM ,Andhra 
          Pradesh </option>
          <option value="MP372/1/0.192757055/-1/1.325582451">KOTTAKKAL ,Kerala 
          </option>
          <option value="MP374/1/0.238406085/-1/1.366463845">KOTTAKOTA ,Andhra 
          Pradesh </option>
          <option value="MP375/1/0.200546296/-1/1.346520282">KOTTAMANGALAM ,Tamil 
          Nadu </option>
          <option value="MP377/1/0.269538801/-1/1.399701499">KOTTAPATNAM ,Andhra 
          Pradesh </option>
          <option value="MP379/1/0.142544092/-1/1.340525573">KOTTARAKARA ,Kerala 
          </option>
          <option value="MP382/1/0.158651235/-1/1.336092593">KOTTAYAM ,Kerala 
          </option>
          <option value="MP384/1/0.258829806/-1/1.330825397">KOTTURU ,Karnataka 
          </option>
          <option value="MP387/1/0.15728351/-1/1.359664021">KOVILPATTI ,Tamil 
          Nadu </option>
          <option value="MP388/1/0.253324956/-1/1.380829806">KOVUR ,Andhra Pradesh 
          </option>
          <option value="MP392/1/0.196520723/-1/1.323162257">KOZHIKODE ,Kerala 
          </option>
          <option value="MP395/1/0.218768078/-1/1.365678131">KRISHNAGIRI ,Tamil 
          Nadu </option>
          <option value="MP396/1/0.40866843/-1/1.545296296">KRISHNANAGAR ,West 
          Bengal </option>
          <option value="MP397/1/0.220926367/-1/1.33540873">KRISHNARAJPET ,Karnataka 
          </option>
          <option value="MP401/1/0.473965168/-1/1.307001764">KUCHAMAN ,Rajasthan 
          </option>
          <option value="MP407/1/0.26017328/-1/1.333580247">KUDLIGI ,Karnataka 
          </option>
          <option value="MP411/1/0.270421517/-1/1.326775573">KUKNUR ,Karnataka 
          </option>
          <option value="MP415/1/0.140744709/-1/1.364257055">KULASEKHARAPATNAM 
          ,Tamil Nadu </option>
          <option value="MP419/1/0.441998236/-1/1.390559083">KULPAHAR ,Uttar Pradesh 
          </option>
          <option value="MP421/1/0.414100529/-1/1.517296737">KULTI ,West Bengal 
          </option>
          <option value="MP422/1/0.189289242/-1/1.362782628">KULUMANI ,Tamil Nadu 
          </option>
          <option value="MP426/1/0.191340829/-1/1.386029101">KUMBAKONAM ,Tamil 
          Nadu </option>
          <option value="MP428/1/0.476928571/-1/1.345055556">KUMHER ,Rajasthan 
          </option>
          <option value="MP430/1/0.251811728/-1/1.299037919">KUMTA ,Karnataka 
          </option>
          <option value="MP431/1/0.453944004/-1/1.382061728">KUNCH ,Uttar Pradesh 
          </option>
          <option value="MP433/1/0.189395944/-1/1.352160935">KUNDADAM ,Tamil Nadu 
          </option>
          <option value="MP436/1/0.500776455/-1/1.363088183">KUNDARKHI ,Uttar 
          Pradesh </option>
          <option value="MP437/1/0.265590829/-1/1.312395062">KUNDGOL ,Karnataka 
          </option>
          <option value="MP438/1/0.372588624/-1/1.245104938">KUNDLA ,Gujarat </option>
          <option value="MP441/1/0.227333333/-1/1.344813051">KUNIGAL ,Karnataka 
          </option>
          <option value="MP444/1/0.196695326/-1/1.351617725">KUNNATTUR ,Tamil 
          Nadu </option>
          <option value="MP449/1/0.222551146/-1/1.367909171">KUPPAM ,Andhra Pradesh 
          </option>
          <option value="MP450/1/0.238323633/-1/1.370276014">KURABALAKOTA ,Andhra 
          Pradesh </option>
          <option value="MP451/1/0.478451499/-1/1.37887037">KURAULI ,Uttar Pradesh 
          </option>
          <option value="MP454/1/0.20187522/-1/1.389802469">KURINJIPPADI ,Tamil 
          Nadu </option>
          <option value="MP455/1/0.276265873/-1/1.362598325">KURNOOL ,Andhra Pradesh 
          </option>
          <option value="MP457/1/0.469391534/-1/1.541377425">KURSEONG ,West Bengal 
          </option>
          <option value="MP466/1/0.275106702/-1/1.327313933">KUSHTAGI ,Karnataka 
          </option>
          <option value="MP473/1/0.206448854/-1/1.319374339">KUTTAPARAMBA ,Kerala 
          </option>
          <option value="MP476/1/0.142253086/-1/1.348115961">KUZHITTURA ,Tamil 
          Nadu </option>
          <option value="MP477/1/0.48564903/-1/1.310067019">LACHHMANGARH ,Rajasthan 
          </option>
          <option value="MP478/1/0.477685185/-1/1.341805996">LACHMANGARH ,Rajasthan 
          </option>
          <option value="MP481/1/0.482520723/-1/1.298843915">LADNUN ,Rajasthan 
          </option>
          <option value="MP485/1/0.457382716/-1/1.363384039">LAHAR ,Madhya Pradesh 
          </option>
          <option value="MP487/1/0.483835097/-1/1.412626984">LAHARPUR ,Uttar Pradesh 
          </option>
          <option value="MP489/1/0.451586861/-1/1.487095238">LAIGANJ ,Bihar </option>
          <option value="MP494/1/0.488001323/-1/1.410395944">LAKHIMPUR ,Uttar 
          Pradesh </option>
          <option value="MP504/1/0.18973545/-1/1.355706349">LAKKAMAPAYAKKANPATTI 
          ,Tamil Nadu </option>
          <option value="MP505/1/0.247684303/-1/1.374097884">LAKKIREDDIPALLE ,Andhra 
          Pradesh </option>
          <option value="MP507/1/0.264130952/-1/1.310130071">LAKSHMOSHWAR ,Karnataka 
          </option>
          <option value="MH4/1/0.431129189/-1/1.362501323">LALITPUR ,Uttar Pradesh 
          </option>
          <option value="MH22/1/0.457867725/-1/1.364936067">LASHKAR ,Madhya Pradesh 
          </option>
          <option value="MH25/1/0.32122619/-1/1.337125661">LATUR ,Maharashtra 
          </option>
          <option value="MH28/1/0.596798501/-1/1.354571429">LEH ,Jammu &amp; Kashmir 
          </option>
          <option value="MH34/1/0.39380776/-1/1.253636243">LIMBDI ,Gujarat </option>
          <option value="MH45/1/0.409056437/-1/1.478660935">LOHARDAGA ,Bihar </option>
          <option value="MH64/1/0.439505291/-1/1.503401235">LUCKEESARAI ,Bihar 
          </option>
          <option value="MH65/1/0.468794974/-1/1.412884039">LUCKNOW ,Uttar Pradesh 
          </option>
          <option value="MH66/1/0.539625661/-1/1.324306878">LUDHIANA ,Punjab </option>
          <option value="MH69/1/0.449603175/-1/1.62687963">LUMDING ,Assam </option>
          <option value="MH78/1/0.287692681/-1/1.38711552">MACHERLA ,Andhra Pradesh 
          </option>
          <option value="MH79/1/0.448410053/-1/1.438880511">MACHHLISHAHR ,Uttar 
          Pradesh </option>
          <option value="MH80/1/0.282580688/-1/1.41460097">MACHILIPATNAM ,Andhra 
          Pradesh </option>
          <option value="MH82/1/0.243265873/-1/1.34475485">MADAKASIRA ,Andhra 
          Pradesh </option>
          <option value="MH83/1/0.236558201/-1/1.370717372">MADANAPALLE ,Andhra 
          Pradesh </option>
          <option value="MH87/1/0.266235891/-1/1.345026455">MADDIKERA ,Andhra 
          Pradesh </option>
          <option value="MH89/1/0.266643298/-1/1.291161376">MADGAON ,Goa </option>
          <option value="MH91/1/0.456926808/-1/1.508042769">MADHEPUR ,Bihar </option>
          <option value="MH94/1/0.499782187/-1/1.396849647">MADHO TANDA ,Uttar 
          Pradesh </option>
          <option value="MH95/1/0.565093474/-1/1.31998545">MADHOPUR ,Punjab </option>
          <option value="MH97/1/0.460161817/-1/1.503343034">MADHUBANI ,Bihar </option>
          <option value="MH98/1/0.238372134/-1/1.348091711">MADHUGIRI ,Karnataka 
          </option>
          <option value="MH99/1/0.423689153/-1/1.512601852">MADHUPUR ,Bihar </option>
          <option value="MH101/1/0.228055996/-1/1.401151675">MADRAS ,Tamil Nadu 
          </option>
          <option value="MH103/1/0.182998677/-1/1.386339506">MADUKKUR ,Tamil Nadu 
          </option>
          <option value="MH104/1/0.158549383/-1/1.364029101">MADURAI ,Tamil Nadu 
          </option>
          <option value="MH105/1/0.218380071/-1/1.394924162">MADURANTAKAM ,Tamil 
          Nadu </option>
          <option value="MH106/1/0.226091711/-1/1.3447403">MAGEDI ,Karnataka </option>
          <option value="MH110/1/0.220286155/-1/1.400210758">MAHABALIPURAM ,Tamil 
          Nadu </option>
          <option value="MH111/1/0.47903836/-1/1.35739418">MAHABAN ,Uttar Pradesh 
          </option>
          <option value="MH120/1/0.455893739/-1/1.467554233">MAHARAJGANJ ,Bihar 
          </option>
          <option value="MH122/1/0.436847443/-1/1.392115961">MAHARAJPUR ,Madhya 
          Pradesh </option>
          <option value="MH126/1/0.292314815/-1/1.345943122">MAHBUNAGAR ,Andhra 
          Pradesh </option>
          <option value="MH130/1/0.412053792/-1/1.263976631">MAHESANA ,Gujarat 
          </option>
          <option value="MH135/1/0.476637566/-1/1.416385802">MAHMUDABAD ,Uttar 
          Pradesh </option>
          <option value="MH136/1/0.441566578/-1/1.394594356">MAHOBA ,Uttar Pradesh 
          </option>
          <option value="MH142/1/0.368165344/-1/1.253059083">MAHUVA ,Gujarat </option>
          <option value="MH144/1/0.423727954/-1/1.410041887">MAIHAR ,Madhya Pradesh 
          </option>
          <option value="MH146/1/0.475425044/-1/1.379840388">MAINPURI ,Uttar Pradesh 
          </option>
          <option value="MH147/1/0.252611993/-1/1.39864418">MAIPADU ,Andhra Pradesh 
          </option>
          <option value="MH155/1/0.472160935/-1/1.304712522">MAKRANA ,Rajasthan 
          </option>
          <option value="MH165/1/0.21615873/-1/1.345399912">MALAVALLI ,Karnataka 
          </option>
          <option value="MH168/1/0.358809524/-1/1.301351411">MALEGAON ,Maharashtra 
          </option>
          <option value="MH173/1/0.532995591/-1/1.324859788">MALER KOTLA ,Punjab 
          </option>
          <option value="MH175/1/0.43725485/-1/1.391145944">MALHARA ,Madhya Pradesh 
          </option>
          <option value="MH180/1/0.29533157/-1/1.29084612">MALKAPUR ,Maharashtra 
          </option>
          <option value="MH182/1/0.472131834/-1/1.399410494">MALLANWAN ,Uttar 
          Pradesh </option>
          <option value="MH188/1/0.226794974/-1/1.360643739">MALUR ,Karnataka 
          </option>
          <option value="MH189/1/0.204984127/-1/1.362705026">MALUR ,Tamil Nadu 
          </option>
          <option value="MH195/1/0.157579365/-1/1.369892857">MANAMADURAI ,Tamil 
          Nadu </option>
          <option value="MH196/1/0.185195767/-1/1.369291446">MANAPPARAI ,Tamil 
          Nadu </option>
          <option value="MH198/1/0.184720459/-1/1.327517637">MANATTALA ,Kerala 
          </option>
          <option value="MH204/1/0.440184303/-1/1.310993386">MANDALGARH ,Rajasthan 
          </option>
          <option value="MH209/1/0.329350088/-1/1.474790564">MANDASA ,Andhra Pradesh 
          </option>
          <option value="MH210/1/0.553661817/-1/1.343387125">MANDI ,Himachal Pradesh 
          </option>
          <option value="MH211/1/0.394447972/-1/1.403387566">MANDLA ,Madhya Pradesh 
          </option>
          <option value="MH215/1/0.398672399/-1/1.210805115">MANDVI ,Gujarat </option>
          <option value="MH217/1/0.218646825/-1/1.342645062">MANDYA ,Karnataka 
          </option>
          <option value="MH222/1/0.224699735/-1/1.30677381">MANGALORE ,Karnataka 
          </option>
          <option value="MH228/1/0.520133157/-1/1.359799824">MANGLAUR ,Uttar Pradesh 
          </option>
          <option value="MH233/1/0.368795855/-1/1.224123457">MANGROL ,Gujarat 
          </option>
          <option value="MH237/1/0.437579806/-1/1.415852293">MANIKPUR ,Uttar Pradesh 
          </option>
          <option value="MH244/1/0.353566578/-1/1.292689153">MANMAD ,Maharashtra 
          </option>
          <option value="MH245/1/0.190438713/-1/1.374107584">MANNACHCHANELLUR 
          ,Tamil Nadu </option>
          <option value="MH246/1/0.196850529/-1/1.380276896">MANNARGUDI ,Tamil 
          Nadu </option>
          <option value="MH247/1/0.186287037/-1/1.387309524">MANNARGUDI ,Tamil 
          Nadu </option>
          <option value="MH251/1/0.276726631/-1/1.311628748">MANOLI ,Karnataka 
          </option>
          <option value="MH255/1/0.523402116/-1/1.316386684">MANSA ,Punjab </option>
          <option value="MH259/1/0.279088624/-1/1.345225309">MANVI ,Karnataka 
          </option>
          <option value="MH265/1/0.21284612/-1/1.395806878">MARAKKANAM ,Tamil 
          Nadu </option>
          <option value="MH269/1/0.446984127/-1/1.432657848">MARIAHU ,Uttar Pradesh 
          </option>
          <option value="MH270/1/0.465162257/-1/1.646779541">MARIANI ,Assam </option>
          <option value="MH272/1/0.274772046/-1/1.384147266">MARKAPUR ,Andhra 
          Pradesh </option>
          <option value="MH274/1/0.269029541/-1/1.288372575">MARMAGAO ,Goa </option>
          <option value="MH283/1/0.278564815/-1/1.338430335">MASKI ,Karnataka 
          </option>
          <option value="MH289/1/0.480032628/-1/1.345613316">MATHURA ,Uttar Pradesh 
          </option>
          <option value="MH292/1/0.158850088/-1/1.331460758">MATTANCHERI ,Kerala 
          </option>
          <option value="MH295/1/0.452949735/-1/1.459018078">MAU ,Uttar Pradesh 
          </option>
          <option value="MH297/1/0.448924162/-1/1.415784392">MAU AIMMA ,Uttar 
          Pradesh </option>
          <option value="MH298/1/0.440659612/-1/1.381639771">MAU RANIPUR ,Uttar 
          Pradesh </option>
          <option value="MH299/1/0.448405203/-1/1.398843034">MAUDAHA ,Uttar Pradesh 
          </option>
          <option value="MH302/1/0.46144709/-1/1.412098325">MAURAWAN ,Uttar Pradesh 
          </option>
          <option value="MH304/1/0.508056437/-1/1.360435185">MAWANA ,Uttar Pradesh 
          </option>
          <option value="MH305/1/0.193770723/-1/1.380247795">MAYURAM ,Tamil Nadu 
          </option>
          <option value="MH306/1/0.206550705/-1/1.360968695">MECHCHERI ,Tamil 
          Nadu </option>
          <option value="MH313/1/0.470919312/-1/1.451054233">MEHNDAWAL ,Uttar 
          Pradesh </option>
          <option value="MH315/1/0.1402597/-1/1.356783069">MEL PALAIYAM ,Tamil 
          Nadu </option>
          <option value="MH318/1/0.175107584/-1/1.367904321">MELUR ,Tamil Nadu 
          </option>
          <option value="MH321/1/0.20187037/-1/1.329486772">MEPPADI ,Kerala </option>
          <option value="MH322/1/0.216798942/-1/1.310687831">MERCARA ,Karnataka 
          </option>
          <option value="MH325/1/0.197287037/-1/1.328468254">METTUPALAIYAM ,Tamil 
          Nadu </option>
          <option value="MH326/1/0.205735891/-1/1.345618166">METTUR ,Tamil Nadu 
          </option>
          <option value="MH328/1/0.393701058/-1/1.322817901">MHOW ,Madhya Pradesh 
          </option>
          <option value="MH337/1/0.293900794/-1/1.297398589">MIRAJ ,Maharashtra 
          </option>
          <option value="MH338/1/0.511373898/-1/1.361017196">MIRANPUR ,Uttar Pradesh 
          </option>
          <option value="MH339/1/0.460477072/-1/1.467287478">MIRGANJ ,Bihar </option>
          <option value="MH342/1/0.439093034/-1/1.44157716">MIRZAPUR ,Uttar Pradesh 
          </option>
          <option value="MH343/1/0.478970459/-1/1.406132716">MISRIKH ,Uttar Pradesh 
          </option>
          <option value="MH347/1/0.537996032/-1/1.312501764">MOGA ,Punjab </option>
          <option value="MH353/1/0.19307231/-1/1.364392857">MOHANUR ,Tamil Nadu 
          </option>
          <option value="MH363/1/0.44331261/-1/1.485620811">MOKAMEH ,Bihar </option>
          <option value="MH365/1/0.443167108/-1/1.509803351">MONGHYR ,Bihar </option>
          <option value="MH368/1/0.503492504/-1/1.363093034">MORADABAD ,Uttar 
          Pradesh </option>
          <option value="MH369/1/0.457945326/-1/1.365799383">MORAR ,Madhya Pradesh 
          </option>
          <option value="MH370/1/0.398337743/-1/1.236675485">MORBI ,Gujarat </option>
          <option value="MH378/1/0.465254409/-1/1.468126543">MOTIHARI ,Bihar </option>
          <option value="MH382/1/0.455491182/-1/1.45422134">MUBARAKPUR ,Uttar 
          Pradesh </option>
          <option value="MH391/1/0.157254409/-1/1.370877425">MUDUKULATTUR ,Tamil 
          Nadu </option>
          <option value="MH393/1/0.441285273/-1/1.451219136">MUGHAI SARAI ,Uttar 
          Pradesh </option>
          <option value="MH395/1/0.2117403/-1/1.343450176">MUGURU ,Karnataka </option>
          <option value="MH396/1/0.488078924/-1/1.400448413">MUHAMDI ,Uttar Pradesh 
          </option>
          <option value="MN2/1/0.454530864/-1/1.45585097">MUHAMMADABAD ,Uttar 
          Pradesh </option>
          <option value="MN3/1/0.447284832/-1/1.462403439">MUHAMMADABAD ,Uttar 
          Pradesh </option>
          <option value="MN7/1/0.531986772/-1/1.292946208">MUKTSAR ,Punjab </option>
          <option value="MN11/1/0.140453704/-1/1.345637566">MULAIKKARAIPPATTI 
          ,Tamil Nadu </option>
          <option value="MG1/1/0.188387125/-1/1.345623016">MULANUR ,Tamil Nadu 
          </option>
          <option value="MG2/1/0.229792328/-1/1.368690035">MULBAGAL ,Karnataka 
          </option>
          <option value="MG3/1/0.228526455/-1/1.293227513">MULKI ,Karnataka </option>
          <option value="MG10/1/0.265411376/-1/1.324864638">MUNDARGI ,Karnataka 
          </option>
          <option value="MG17/1/0.426148148/-1/1.363558642">MUNGAOLI ,Madhya Pradesh 
          </option>
          <option value="MG20/1/0.448075397/-1/1.401263228">MUNGRA BADSHAHPUR 
          ,Uttar Pradesh </option>
          <option value="MG22/1/0.267409612/-1/1.327570988">MUNIRABAD ,Karnataka 
          </option>
          <option value="MZ2/1/0.502561287/-1/1.353140653">MURADNAGAR ,Uttar Pradesh 
          </option>
          <option value="MZ4/1/0.606935185/-1/1.353441358">Murgi ,Jammu &amp; 
          Kashmir </option>
          <option value="MZ5/1/0.277347443/-1/1.308223986">MURGOD ,Karnataka </option>
          <option value="MZ7/1/0.452202822/-1/1.518873016">MURLIGANJ ,Bihar </option>
          <option value="MZ8/1/0.421972222/-1/1.541251323">MURSHIBABAD ,West Bengal 
          </option>
          <option value="MZ11/1/0.416181217/-1/1.403727072">MURWARA ,Madhya Pradesh 
          </option>
          <option value="MZ13/1/0.191214727/-1/1.369660053">MUSIRI ,Tamil Nadu 
          </option>
          <option value="MZ14/1/0.53187522/-1/1.363141534">MUSSORIE ,Uttar Pradesh 
          </option>
          <option value="NG1/1/0.249473986/-1/1.398488977">MUTTUKURU ,Andhra Pradesh 
          </option>
          <option value="NG2/1/0.181868607/-1/1.388463845">MUTTUPET ,Tamil Nadu 
          </option>
          <option value="NG3/1/0.185258818/-1/1.34091843">MUVATAGUPUDUR ,Kerala 
          </option>
          <option value="NG4/1/0.159698854/-1/1.336999559">MUVATTUPULA ,Kerala 
          </option>
          <option value="NG6/1/0.514526455/-1/1.356608466">MUZAFFARNAGAR ,Uttar 
          Pradesh </option>
          <option value="NG7/1/0.456092593/-1/1.490752205">MUZAFFARPUR ,Bihar 
          </option>
          <option value="NG9/1/0.214815256/-1/1.338260582">MYSORE ,Karnataka </option>
          <option value="NG10/1/0.530366843/-1/1.329598325">NABHA ,Punjab </option>
          <option value="NG15/1/0.475294092/-1/1.347858907">NADBAI ,Rajasthan 
          </option>
          <option value="ND1/1/0.396164903/-1/1.272110229">NADIAD ,Gujarat </option>
          <option value="ND2/1/0.233686949/-1/1.393221781">NAGALAPURAM ,Tamil 
          Nadu </option>
          <option value="OR2/1/0.188367725/-1/1.394070547">NAGAPPATTINAM ,Tamil 
          Nadu </option>
          <option value="OR7/1/0.232532628/-1/1.380281746">NAGARI ,Andhra Pradesh 
          </option>
          <option value="OR8/1/0.474896384/-1/1.275786596">NAGAUR ,Rajasthan </option>
          <option value="OR11/1/0.139876543/-1/1.345041005">NAGERCOIL ,Tamil Nadu 
          </option>
          <option value="OR12/1/0.514152998/-1/1.362525573">NAGINA ,Uttar Pradesh 
          </option>
          <option value="OR14/1/0.369382716/-1/1.380917108">NAGPUR ,Maharashtra 
          </option>
          <option value="OR23/1/0.513294533/-1/1.38712522">NAINITAL ,Uttar Pradesh 
          </option>
          <option value="OR25/1/0.517092152/-1/1.367787919">NAJIBABAD ,Uttar Pradesh 
          </option>
          <option value="OR35/1/0.424130511/-1/1.533525132">NALHATI ,West Bengal 
          </option>
          <option value="OR37/1/0.195914462/-1/1.364785714">NAMAKKAL ,Tamil Nadu 
          </option>
          <option value="OR38/1/0.198329806/-1/1.350065697">NAMBIYUR ,Tamil Nadu 
          </option>
          <option value="OR40/1/0.249027778/-1/1.381993827">NANDALUR ,Andhra Pradesh 
          </option>
          <option value="OR43/1/0.33441843/-1/1.349784392">NANDED ,Maharashtra 
          </option>
          <option value="OR47/1/0.276838183/-1/1.366551146">NANDIKOTKUR ,Andhra 
          Pradesh </option>
          <option value="OR51/1/0.373054233/-1/1.296287919">NANDURBAR ,Maharashtra 
          </option>
          <option value="OR52/1/0.270377866/-1/1.362515873">NANDYAL ,Andhra Pradesh 
          </option>
          <option value="OR54/1/0.211594797/-1/1.338886243">NANJANGUD ,Karnataka 
          </option>
          <option value="OR55/1/0.189924603/-1/1.390030423">NANNILAM ,Tamil Nadu 
          </option>
          <option value="OR56/1/0.486560847/-1/1.422933422">NANPARA ,Uttar Pradesh 
          </option>
          <option value="OR66/1/0.287028219/-1/1.426590388">NARASAPUR ,Andhra 
          Pradesh </option>
          <option value="OR67/1/0.283492504/-1/1.397776014">NARASAROPET ,Andhra 
          Pradesh </option>
          <option value="OR74/1/0.271852293/-1/1.310716931">NAREGAL ,Karnataka 
          </option>
          <option value="OR75/1/0.27446164/-1/1.31012037">NARGUND ,Karnataka </option>
          <option value="OR78/1/0.489548501/-1/1.32882716">NARNAUL ,Haryana </option>
          <option value="OR81/1/0.400617284/-1/1.382750441">NARSIMHAPUR ,Madhya 
          Pradesh </option>
          <option value="OR84/1/0.213272928/-1/1.328477954">NARSIPUR ,Karnataka 
          </option>
          <option value="OR88/1/0.349216049/-1/1.288236772">NASIK ,Maharashtra 
          </option>
          <option value="OR90/1/0.459157848/-1/1.304702822">NASIRABAD ,Rajasthan 
          </option>
          <option value="OR91/1/0.178439594/-1/1.365954586">NATTAM ,Tamil Nadu 
          </option>
          <option value="OR97/1/0.478946208/-1/1.456476631">NAUTANWA ,Uttar Pradesh 
          </option>
          <option value="OR98/1/0.408697531/-1/1.543099206">NAVADWIP ,West Bengal 
          </option>
          <option value="OR99/1/0.271619489/-1/1.31010582">NAVALGUND ,Karnataka 
          </option>
          <option value="OR101/1/0.365822751/-1/1.2732306">NAVSARI ,Gujarat </option>
          <option value="OR103/1/0.498361111/-1/1.39040388">NAWABGANJ ,Uttar Pradesh 
          </option>
          <option value="OR104/1/0.469813492/-1/1.417593474">NAWABGANJ ,Uttar 
          Pradesh </option>
          <option value="OR105/1/0.469081129/-1/1.434224427">NAWABGANJ ,Uttar 
          Pradesh </option>
          <option value="OR106/1/0.434349647/-1/1.493599206">NAWADA ,Bihar </option>
          <option value="OR109/1/0.48618254/-1/1.314242945">NAWALGARH ,Rajasthan 
          </option>
          <option value="OR118/1/0.242819665/-1/1.394982363">NAYUDUPETA ,Andhra 
          Pradesh </option>
          <option value="OR119/1/0.140739859/-1/1.361453704">NAZARETH ,Tamil Nadu 
          </option>
          <option value="OR122/1/0.228710758/-1/1.351200617">NELAMANGALA ,Karnataka 
          </option>
          <option value="OR123/1/0.205595238/-1/1.391131393">NELLIKKUPPAM ,Tamil 
          Nadu </option>
          <option value="OR125/1/0.252291887/-1/1.380863757">NELLORE ,Andhra Pradesh 
          </option>
          <option value="OR126/1/0.501707672/-1/1.394904762">NEORIA HUSAINPUR 
          ,Uttar Pradesh </option>
          <option value="OR132/1/0.498817019/-1/1.34473545">NEW DELHI ,NEW DELHI 
          </option>
          <option value="OR134/1/0.202675485/-1/1.387940035">NEYVELI ,Tamil Nadu 
          </option>
          <option value="OR138/1/0.295103616/-1/1.42612963">NIDADAVOLE ,Andhra 
          Pradesh </option>
          <option value="OR139/1/0.188018519/-1/1.38657231">NIDAMANGALAM ,Tamil 
          Nadu </option>
          <option value="OR143/1/0.196768078/-1/1.330869048">NILAMBUR ,Kerala 
          </option>
          <option value="OR144/1/0.484111552/-1/1.310697531">NIM KATHANA ,Rajasthan 
          </option>
          <option value="OR145/1/0.427132716/-1/1.307147266">NIMACH ,Madhya Pradesh 
          </option>
          <option value="OR150/1/0.333598765/-1/1.362511023">NIRMAL ,Andhra Pradesh 
          </option>
          <option value="OR151/1/0.459371252/-1/1.511549383">NIRMALJ ,Bihar </option>
          <option value="OR157/1/0.325925926/-1/1.363592593">NIZAMABAD ,Andhra 
          Pradesh </option>
          <option value="OR159/1/0.277657848/-1/1.398008818">NIZAMPATAM ,Andhra 
          Pradesh </option>
          <option value="OR171/1/0.457513668/-1/1.601678571">NORTH GAUHATI ,Assam 
          </option>
          <option value="OR174/1/0.460084215/-1/1.618435626">NOWGONG ,Assam </option>
          <option value="OR175/1/0.437526455/-1/1.386994268">NOWGONG ,Madhya Pradesh 
          </option>
          <option value="OR180/1/0.563905203/-1/1.32492769">NURPUR ,Himachal Pradesh 
          </option>
          <option value="OR184/1/0.293061728/-1/1.411661817">NUZVID ,Andhra Pradesh 
          </option>
          <option value="OR185/1/0.247029541/-1/1.319505291">NYAMTI ,Karnataka 
          </option>
          <option value="OR194/1/0.270518519/-1/1.397674162">ONGOLE ,Andhra Pradesh 
          </option>
          <option value="OR195/1/0.199251323/-1/1.339109347">OOTACAMUND ,Tamil 
          Nadu </option>
          <option value="OR196/1/0.453682099/-1/1.37997134">ORAI ,Uttar Pradesh 
          </option>
          <option value="OR197/1/0.245559965/-1/1.384098765">ORAMPADU ,Andhra 
          Pradesh </option>
          <option value="OR203/1/0.188052469/-1/1.333565697">OTTAPALAM ,Kerala 
          </option>
          <option value="OR217/1/0.46972134/-1/1.46630291">PADRAUNA ,Uttar Pradesh 
          </option>
          <option value="OR224/1/0.234880071/-1/1.381382716">PAKALA ,Andhra Pradesh 
          </option>
          <option value="OR230/1/0.288439594/-1/1.415459436">PALAKOLLU ,Andhra 
          Pradesh </option>
          <option value="OR235/1/0.456019841/-1/1.598254409">PALASHARI ,Assam 
          </option>
          <option value="OR237/1/0.140623457/-1/1.345627866">PALAYANKOTTAI ,Tamil 
          Nadu </option>
          <option value="OR240/1/0.188013668/-1/1.338294533">PALGHAT ,Kerala </option>
          <option value="PU7/1/0.375915785/-1/1.240890212">PALITANA ,Gujarat </option>
          <option value="PU8/1/0.324776455/-1/1.46247134">PALKONDA ,Andhra Pradesh 
          </option>
          <option value="PU10/1/0.191874339/-1/1.349473986">PALLADAM ,Tamil Nadu 
          </option>
          <option value="PU11/1/0.214766755/-1/1.363175485">PALLAKKODU ,Tamil 
          Nadu </option>
          <option value="PU13/1/0.225310847/-1/1.378375661">PALLIKONDAJ ,Tamil 
          Nadu </option>
          <option value="PU14/1/0.230568342/-1/1.374927249">PALMANER ,Andhra Pradesh 
          </option>
          <option value="PU15/1/0.182465168/-1/1.353354056">PALNI ,Tamil Nadu 
          </option>
          <option value="PU18/1/0.192800705/-1/1.380601852">PALUVUR ,Tamil Nadu 
          </option>
          <option value="PU19/1/0.491304233/-1/1.350186949">PALWAL ,Haryana </option>
          <option value="PU21/1/0.159141093/-1/1.383075397">PAMBAN ,Tamil Nadu 
          </option>
          <option value="PU25/1/0.260852293/-1/1.354852734">PAMIDI ,Andhra Pradesh 
          </option>
          <option value="PU29/1/0.142354938/-1/1.354474427">PANAIKKUDI ,Tamil 
          Nadu </option>
          <option value="PU31/1/0.270494268/-1/1.275791446">PANAJI ,Goa </option>
          <option value="PU32/1/0.157676367/-1/1.378584215">PANALKKULAM ,Tamil 
          Nadu </option>
          <option value="PU38/1/0.158190476/-1/1.363767196">PANDALKUDI ,Tamil 
          Nadu </option>
          <option value="PU41/1/0.308591711/-1/1.315203263">PANDHARPUR ,Maharashtra 
          </option>
          <option value="PU47/1/0.513076279/-1/1.328448854">PANIPAT ,Haryana </option>
          <option value="PU51/1/0.431551146/-1/1.397140653">PANNA ,Madhya Pradesh 
          </option>
          <option value="PU52/1/0.388467813/-1/1.481585538">PANPOSH ,Orissa </option>
          <option value="PU53/1/0.205580688/-1/1.389036155">PANRUTI ,Tamil Nadu 
          </option>
          <option value="PU55/1/0.331605379/-1/1.276465608">PANVEL ,Maharashtra 
          </option>
          <option value="PU58/1/0.190695767/-1/1.384084215">PAPANASAM ,Tamil Nadu 
          </option>
          <option value="PU59/1/0.140482804/-1/1.351263668">PAPANASAM ,Tamil Nadu 
          </option>
          <option value="PU61/1/0.202864638/-1/1.361667108">PAPPAMBADI ,Tamil 
          Nadu </option>
          <option value="PU62/1/0.182397266/-1/1.345065256">PAPPAMPATTI ,Tamil 
          Nadu </option>
          <option value="PU63/1/0.179603616/-1/1.329559524">PAPPINIVATTI ,Kerala 
          </option>
          <option value="PU64/1/0.15784127/-1/1.3722597">PARAMAGUDI ,Tamil Nadu 
          </option>
          <option value="PU65/1/0.19471649/-1/1.362268519">PARAMATI ,Tamil Nadu 
          </option>
          <option value="PU68/1/0.387415344/-1/1.374898148">PARASIA ,Madhya Pradesh 
          </option>
          <option value="PU72/1/0.336246914/-1/1.340491623">PARBHANI ,Maharashtra 
          </option>
          <option value="RA3/1/0.327880511/-1/1.467869489">PARKLAKIMIDI ,Orissa 
          </option>
          <option value="RA14/1/0.17710582/-1/1.330762346">PARUR ,Kerala </option>
          <option value="RA15/1/0.327909612/-1/1.456762787">PARVATIPURAM ,Andhra 
          Pradesh </option>
          <option value="RA24/1/0.416438272/-1/1.259145944">PATAN ,Gujarat </option>
          <option value="RA28/1/0.563328042/-1/1.320858466">PATHANKOT ,Punjab 
          </option>
          <option value="RA29/1/0.561106702/-1/1.334181658">PATHIAR ,Himachal 
          Pradesh </option>
          <option value="RA31/1/0.529406526/-1/1.333880952">PATIALA ,Punjab </option>
          <option value="RA33/1/0.447226631/-1/1.485615961">PATNA ,Bihar </option>
          <option value="RA39/1/0.157438713/-1/1.34143739">PATTANAPURAM ,Kerala 
          </option>
          <option value="RA41/1/0.268728836/-1/1.353232804">PATTIKONDA ,Andhra 
          Pradesh </option>
          <option value="RA42/1/0.181965608/-1/1.384942681">PATTUKKOTTAI ,Tamil 
          Nadu </option>
          <option value="RA47/1/0.489994709/-1/1.398678131">PAWAYAN ,Uttar Pradesh 
          </option>
          <option value="RA48/1/0.36297575/-1/1.390549383">PAWNI ,Maharashtra 
          </option>
          <option value="RA53/1/0.203378748/-1/1.370785273">PEDDA NAYAKKANPALAIYAM 
          ,Tamil Nadu </option>
          <option value="RA55/1/0.324926808/-1/1.385970899">PEDDAPALLI ,Andhra 
          Pradesh </option>
          <option value="RA56/1/0.298222222/-1/1.434209877">PEDDEPURAM ,Andhra 
          Pradesh </option>
          <option value="RA61/1/0.19910582/-1/1.383560406">PENNADAM ,Tamil Nadu 
          </option>
          <option value="RA62/1/0.211808201/-1/1.360085979">PENNAGARAM ,Tamil 
          Nadu </option>
          <option value="RA67/1/0.24583642/-1/1.345351411">PENUKONDA ,Andhra Pradesh 
          </option>
          <option value="RA70/1/0.196263668/-1/1.376944885">PERAMBALUR ,Tamil 
          Nadu </option>
          <option value="RA71/1/0.225766755/-1/1.363112434">PERANAMBATTU ,Tamil 
          Nadu </option>
          <option value="RA73/1/0.191544533/-1/1.330878748">PERINTALMANNA ,Kerala 
          </option>
          <option value="RA74/1/0.176654762/-1/1.353887566">PERIYAKULAM ,Tamil 
          Nadu </option>
          <option value="RA75/1/0.208723545/-1/1.36072619">PERUMBALAI ,Tamil Nadu 
          </option>
          <option value="RA77/1/0.392444885/-1/1.271096561">PETLAD ,Gujarat </option>
          <option value="RA79/1/0.546279982/-1/1.320451058">PHAGWARA ,Punjab </option>
          <option value="RA80/1/0.473776014/-1/1.263414021">PHALIODI ,Rajasthan 
          </option>
          <option value="RA84/1/0.31405291/-1/1.299576279">PHALTAN ,Maharashtra 
          </option>
          <option value="RA86/1/0.464497795/-1/1.387362875">PHAPHUND ,Uttar Pradesh 
          </option>
          <option value="RA93/1/0.529324074/-1/1.313651235">PHUL ,Punjab </option>
          <option value="RA100/1/0.446111111/-1/1.43332716">PHULPUR ,Uttar Pradesh 
          </option>
          <option value="RA105/1/0.48233157/-1/1.400244709">PIHANI ,Uttar Pradesh 
          </option>
          <option value="RA106/1/0.495237654/-1/1.310430776">PILANI ,Rajasthan 
          </option>
          <option value="RA107/1/0.49994709/-1/1.380553351">PILIBHIT ,Uttar Pradesh 
          </option>
          <option value="RA109/1/0.501324515/-1/1.355900353">PILKHUA ,Uttar Pradesh 
          </option>
          <option value="RA125/1/0.298852734/-1/1.436276014">PITHAPURAM ,Andhra 
          Pradesh </option>
          <option value="RA132/1/0.272473104/-1/1.380262346">PODILE ,Andhra Pradesh 
          </option>
          <option value="RA137/1/0.186025132/-1/1.344497795">POLLACHI ,Tamil Nadu 
          </option>
          <option value="RA139/1/0.218428571/-1/1.381571869">POLUR ,Tamil Nadu 
          </option>
          <option value="RA142/1/0.208350088/-1/1.393978395">PONDICHERRY ,Tamil 
          Nadu </option>
          <option value="RA145/1/0.179361111/-1/1.371435185">PONNAMARAVATI ,Tamil 
          Nadu </option>
          <option value="RA146/1/0.188003968/-1/1.325708554">PONNANI ,Kerala </option>
          <option value="RA148/1/0.232828483/-1/1.400186508">PONNERI ,Tamil Nadu 
          </option>
          <option value="RA149/1/0.22772619/-1/1.396835097">POONAMALLEE ,Tamil 
          Nadu </option>
          <option value="RA151/1/0.377899471/-1/1.215441799">PORBANDAR ,Gujarat 
          </option>
          <option value="RA153/1/0.203732804/-1/1.619667549">PORT BLAIR ,Andaman 
          and Nicobar Islan </option>
          <option value="RA156/1/0.200623898/-1/1.392644621">PORTO NOVO ,Tamil 
          Nadu </option>
          <option value="RA164/1/0.257471781/-1/1.371464286">PRODDATUR ,Andhra 
          Pradesh </option>
          <option value="RA166/1/0.182896825/-1/1.345627866">PUDU CHATTRAM ,Tamil 
          Nadu </option>
          <option value="RA167/1/0.181228395/-1/1.376382275">PUDUKKOTTAI ,Tamil 
          Nadu </option>
          <option value="RA168/1/0.194352734/-1/1.339992063">PUDUR ,Tamil Nadu 
          </option>
          <option value="RA170/1/0.199246473/-1/1.363088183">PULAMBADI ,Tamil 
          Nadu </option>
          <option value="RA172/1/0.36189903/-1/1.362239418">PULGAON ,Maharashtra 
          </option>
          <option value="RA173/1/0.251748677/-1/1.365843034">PULIVENDLA ,Andhra 
          Pradesh </option>
          <option value="RA174/1/0.157254409/-1/1.351394621">PULIYANGUDI ,Tamil 
          Nadu </option>
          <option value="RA177/1/0.191268078/-1/1.341238536">PULUVAPPATTI ,Tamil 
          Nadu </option>
          <option value="RA178/1/0.157734568/-1/1.328458554">PUNALUR ,Kerala </option>
          <option value="RA179/1/0.589727072/-1/1.293673721">PUNCH ,Jammu &amp; 
          Kashmir </option>
          <option value="RA180/1/0.323636684/-1/1.276097002">PUNE ,Maharashtra 
          </option>
          <option value="RA181/1/0.233274691/-1/1.371857143">PUNGANURU ,Andhra 
          Pradesh </option>
          <option value="RA183/1/0.198160053/-1/1.34477425">PUNJAI PULIYAMPATTI 
          ,Tamil Nadu </option>
          <option value="RA191/1/0.497856702/-1/1.399420194">PURANPUR ,Uttar Pradesh 
          </option>
          <option value="RA192/1/0.345612434/-1/1.498594797">PURI ,Orissa </option>
          <option value="RA193/1/0.328937831/-1/1.336388448">PURLI ,Maharashtra 
          </option>
          <option value="RA195/1/0.450059083/-1/1.527181217">PURNEA ,Bihar </option>
          <option value="RA196/1/0.407329806/-1/1.508037919">PURULIYA ,West Bengal 
          </option>
          <option value="RA198/1/0.461941799/-1/1.397999118">PURWA ,Uttar Pradesh 
          </option>
          <option value="RA199/1/0.34759612/-1/1.354401675">PUSAD ,Maharashtra 
          </option>
          <option value="RA200/1/0.234361111/-1/1.389681217">PUTTUR ,Andhra Pradesh 
          </option>
          <option value="RA201/1/0.222706349/-1/1.312986772">PUTTUR ,Karnataka 
          </option>
          <option value="RA202/1/0.142282187/-1/1.345671517">PUVAR ,Kerala </option>
          <option value="RA205/1/0.19964903/-1/1.321585979">QUILANDI ,Kerala </option>
          <option value="RA206/1/0.140497354/-1/1.337256614">QUILON ,Kerala </option>
          <option value="RA209/1/0.524304233/-1/1.347121693">RADAUR ,Haryana </option>
          <option value="RA213/1/0.14132672/-1/1.356356261">RADHAPURAM ,Tamil 
          Nadu </option>
          <option value="RA214/1/0.457940476/-1/1.41458157">RAE BARELI ,Uttar 
          Pradesh </option>
          <option value="RA224/1/0.282978395/-1/1.350628307">RAICHUR ,Karnataka 
          </option>
          <option value="RA226/1/0.44714418/-1/1.538671076">RAIGANJ ,West Bengal 
          </option>
          <option value="RA227/1/0.381973545/-1/1.453789683">RAIGARH ,Madhya Pradesh 
          </option>
          <option value="RA230/1/0.535047178/-1/1.320130952">RAIKOT ,Punjab </option>
          <option value="RA232/1/0.370891093/-1/1.425474868">RAIPUR ,Madhya Pradesh 
          </option>
          <option value="RA236/1/0.368369048/-1/1.414993827">RAJ NANDGAON ,Madhya 
          Pradesh </option>
          <option value="RA239/1/0.29701455/-1/1.427832011">RAJAHMUNDRY ,Andhra 
          Pradesh </option>
          <option value="RA240/1/0.469667989/-1/1.364863316">RAJAKHERA ,Rajasthan 
          </option>
          <option value="RA241/1/0.247854056/-1/1.38215873">RAJAMPET ,Andhra Pradesh 
          </option>
          <option value="RA242/1/0.159223545/-1/1.35411552">RAJAPALAIYAM ,Tamil 
          Nadu </option>
          <option value="RA245/1/0.443079806/-1/1.416754409">RAJAPUR ,Uttar Pradesh 
          </option>
          <option value="RA248/1/0.430261023/-1/1.492769841">RAJAULI ,Bihar </option>
          <option value="RA250/1/0.277381393/-1/1.358810406">RAJAVOLU ,Andhra 
          Pradesh </option>
          <option value="RA257/1/0.389306878/-1/1.236161376">RAJKOT ,Gujarat </option>
          <option value="RA258/1/0.437628307/-1/1.533520282">RAJMAHAL ,Bihar </option>
          <option value="RA273/1/0.178890653/-1/1.376052469">RAMACHANDRAPURAM 
          ,Tamil Nadu </option>
          <option value="RA275/1/0.221998236/-1/1.349275132">RAMANAGARAM ,Karnataka 
          </option>
          <option value="RA276/1/0.157618166/-1/1.376547178">RAMANATHAPURAM ,Tamil 
          Nadu </option>
          <option value="RA283/1/0.159194444/-1/1.38487963">RAMESVARAM ,Tamil 
          Nadu </option>
          <option value="RA285/1/0.41252425/-1/1.493119048">RAMGARH ,Bihar </option>
          <option value="RA289/1/0.475793651/-1/1.312627866">RAMGARH ,Rajasthan 
          </option>
          <option value="RA297/1/0.441178571/-1/1.449730159">RAMNAGAR ,Uttar Pradesh 
          </option>
          <option value="RA305/1/0.520390212/-1/1.352253086">RAMPUR ,Uttar Pradesh 
          </option>
          <option value="RA306/1/0.502958995/-1/1.382013228">RAMPUR ,Uttar Pradesh 
          </option>
          <option value="RA307/1/0.422083774/-1/1.532661817">RAMPUR HAT ,West 
          Bengal </option>
          <option value="RA309/1/0.505839947/-1/1.386305556">RAMPURA ,Uttar Pradesh 
          </option>
          <option value="RA313/1/0.373645944/-1/1.385078483">RAMTEK ,Maharashtra 
          </option>
          <option value="RA314/1/0.404584656/-1/1.546567019">RANAGHAT ,West Bengal 
          </option>
          <option value="RA317/1/0.407819665/-1/1.498793651">RANCHI ,Bihar </option>
          <option value="RA328/1/0.25517769/-1/1.320344356">RANIBENNUR ,Karnataka 
          </option>
          <option value="RA331/1/0.412208995/-1/1.521201058">RANIGANJ ,West Bengal 
          </option>
          <option value="RA332/1/0.440785714/-1/1.380335097">RANIPUR ,Uttar Pradesh 
          </option>
          <option value="RA334/1/0.45541358/-1/1.523068342">RANJGANJ ,Bihar </option>
          <option value="RA344/1/0.200070988/-1/1.365159171">RASIPURAM ,Tamil 
          Nadu </option>
          <option value="RA346/1/0.451470459/-1/1.464042769">RASRA ,Uttar Pradesh 
          </option>
          <option value="RA351/1/0.446867725/-1/1.38930776">RATH ,Uttar Pradesh 
          </option>
          <option value="RA353/1/0.407373457/-1/1.310256173">RATLAM ,Madhya Pradesh 
          </option>
          <option value="RA354/1/0.296684744/-1/1.279705467">RATNAIRI ,Maharashtra 
          </option>
          <option value="RA358/1/0.388492063/-1/1.468136243">RAURKELA ,Orissa 
          </option>
          <option value="SK1/1/0.471215168/-1/1.468150794">RAXUAL ,Bihar </option>
          <option value="SK3/1/0.245526014/-1/1.363102734">RAYACHOTI ,Andhra Pradesh 
          </option>
          <option value="SK4/1/0.256608466/-1/1.341742945">RAYADRUG ,Andhra Pradesh 
          </option>
          <option value="TN10/1/0.445868607/-1/1.461656526">REOTIPUR ,Uttar Pradesh 
          </option>
          <option value="TN14/1/0.450320988/-1/1.467554233">REVELGANJ ,Bihar </option>
          <option value="TN15/1/0.428199735/-1/1.419324956">REWA ,Madhya Pradesh 
          </option>
          <option value="TN16/1/0.492172399/-1/1.337659171">REWARI ,Haryana </option>
          <option value="TN26/1/0.430964286/-1/1.45035097">ROBERTSGANJ ,Uttar 
          Pradesh </option>
          <option value="TN28/1/0.504467372/-1/1.337305115">ROHTAK ,Haryana </option>
          <option value="TN31/1/0.274015432/-1/1.322284392">RON ,Karnataka </option>
          <option value="TN34/1/0.521350529/-1/1.360061728">ROORKEE ,Uttar Pradesh 
          </option>
          <option value="TN37/1/0.467034392/-1/1.427351852">RUDAULI ,Uttar Pradesh 
          </option>
          <option value="TN42/1/0.449685626/-1/1.502009259">RUSERA ,Bihar </option>
          <option value="TN43/1/0.458246032/-1/1.351414021">SABALGARH ,Madhya 
          Pradesh </option>
          <option value="TN47/1/0.479135362/-1/1.364242504">SADABAD ,Uttar Pradesh 
          </option>
          <option value="TN50/1/0.530580247/-1/1.348179012">SADHAURA ,Haryana 
          </option>
          <option value="TN55/1/0.466854938/-1/1.402810406">SAFIPUR ,Uttar Pradesh 
          </option>
          <option value="TN56/1/0.247204145/-1/1.310003968">SAGAR ,Karnataka </option>
          <option value="TN57/1/0.41636552/-1/1.375048501">SAGAR ,Madhya Pradesh 
          </option>
          <option value="TN58/1/0.467267196/-1/1.479606702">SAGAULI ,Bihar </option>
          <option value="TN59/1/0.523232363/-1/1.353950617">SAHARANPUR ,Uttar 
          Pradesh </option>
          <option value="TN61/1/0.490086861/-1/1.37498545">SAHASWAN ,Uttar Pradesh 
          </option>
          <option value="TN62/1/0.451072751/-1/1.47181746">SAHATWAR ,Uttar Pradesh 
          </option>
          <option value="TN64/1/0.485387125/-1/1.363364638">SAHAWAR ,Uttar Pradesh 
          </option>
          <option value="TN65/1/0.440693563/-1/1.530023369">SAHIBGANJ ,Bihar </option>
          <option value="TN68/1/0.445985009/-1/1.45308642">SAIDPUR ,Uttar Pradesh 
          </option>
          <option value="TN78/1/0.225897707/-1/1.310716931">SAKLESHPUR ,Karnataka 
          </option>
          <option value="TN85/1/0.2035/-1/1.364669312">SALEM ,Tamil Nadu </option>
          <option value="TN91/1/0.323311728/-1/1.452863316">SALUR ,Andhra Pradesh 
          </option>
          <option value="TN94/1/0.297756614/-1/1.434840388">SAMALKOT ,Andhra Pradesh 
          </option>
          <option value="TN95/1/0.526559524/-1/1.330272487">SAMANA ,Punjab </option>
          <option value="TN97/1/0.451412257/-1/1.497726631">SAMASTIPUR ,Bihar 
          </option>
          <option value="TN99/1/0.374780864/-1/1.466259259">SAMBALPUR ,Orissa 
          </option>
          <option value="TN100/1/0.499078924/-1/1.37171164">SAMBHAL ,Uttar Pradesh 
          </option>
          <option value="TN101/1/0.469798942/-1/1.309834215">SAMBHAR ,Rajasthan 
          </option>
          <option value="TN103/1/0.451286155/-1/1.363384039">SAMTHAR ,Uttar Pradesh 
          </option>
          <option value="TN108/1/0.476467813/-1/1.396000882">SAND ,Uttar Pradesh 
          </option>
          <option value="TN109/1/0.472607143/-1/1.405754409">SANDILA ,Uttar Pradesh 
          </option>
          <option value="TN114/1/0.34155291/-1/1.295701058">SANGAMNER ,Maharashtra 
          </option>
          <option value="TN115/1/0.307728395/-1/1.36344224">SANGAREDDI ,Andhra 
          Pradesh </option>
          <option value="TN117/1/0.294279101/-1/1.301914021">SANGLI ,Maharashtra 
          </option>
          <option value="TN119/1/0.528/-1/1.324238977">SANGRUR ,Punjab </option>
          <option value="TN122/1/0.158534832/-1/1.353882716">SANKARANAYINARKOVIL 
          ,Tamil Nadu </option>
          <option value="TN127/1/0.405816578/-1/1.544287478">SANTIPUR ,West Bengal 
          </option>
          <option value="TN142/1/0.497473545/-1/1.382018078">SARAUL ,Uttar Pradesh 
          </option>
          <option value="TN145/1/0.496576279/-1/1.300619048">SARDARSHAHR ,Rajasthan 
          </option>
          <option value="TN146/1/0.508885802/-1/1.355032187">SARDHANA ,Uttar Pradesh 
          </option>
          <option value="TN158/1/0.435547619/-1/1.466933422">SASARAM ,Bihar </option>
          <option value="TN164/1/0.308897266/-1/1.293242063">SATARA ,Maharashtra 
          </option>
          <option value="TN168/1/0.428839947/-1/1.411239859">SATNA ,Madhya Pradesh 
          </option>
          <option value="TN169/1/0.141472222/-1/1.360362434">SATTANKULAM ,Tamil 
          Nadu </option>
          <option value="TN173/1/0.157472663/-1/1.360512787">SATTUR ,Tamil Nadu 
          </option>
          <option value="TN174/1/0.200895503/-1/1.348673721">SATYAMANGALAM ,Tamil 
          Nadu </option>
          <option value="TN176/1/0.275218254/-1/1.311551146">SAUNDATTI ,Karnataka 
          </option>
          <option value="TN178/1/0.277570547/-1/1.288852734">SAVANTVADI ,Maharashtra 
          </option>
          <option value="TN179/1/0.261337302/-1/1.315266314">SAVANUR ,Karnataka 
          </option>
          <option value="TN181/1/0.139857143/-1/1.362404321">SAYARPURAM ,Tamil 
          Nadu </option>
          <option value="TN182/1/0.405084215/-1/1.346481481">SEHORE ,Madhya Pradesh 
          </option>
          <option value="TN187/1/0.196942681/-1/1.362215168">SENDAMANGALAM ,Tamil 
          Nadu </option>
          <option value="TN191/1/0.509928571/-1/1.3722403">SEOHARA ,Uttar Pradesh 
          </option>
          <option value="TN193/1/0.456698854/-1/1.375514109">SEONDHA ,Madhya Pradesh 
          </option>
          <option value="TN194/1/0.385698413/-1/1.389031305">SEONI ,Madhya Pradesh 
          </option>
          <option value="TN208/1/0.498676367/-1/1.379476631">SHAHABAD ,Uttar Pradesh 
          </option>
          <option value="TN209/1/0.482617725/-1/1.395738977">SHAHABAD ,Uttar Pradesh 
          </option>
          <option value="TN212/1/0.500582451/-1/1.34474515">SHAHDARA ,NEW DELHI 
          </option>
          <option value="TN214/1/0.454817019/-1/1.443662698">SHAHGANJ ,Uttar Pradesh 
          </option>
          <option value="TN215/1/0.48674515/-1/1.395234568">SHAHJAHANPUR ,Uttar 
          Pradesh </option>
          <option value="TN223/1/0.438947531/-1/1.498958554">SHAIKHPURA ,Bihar 
          </option>
          <option value="TN226/1/0.5142403/-1/1.349871693">SHAMLI ,Uttar Pradesh 
          </option>
          <option value="TN227/1/0.471680776/-1/1.363927249">SHAMSHABAD ,Uttar 
          Pradesh </option>
          <option value="TN238/1/0.428772046/-1/1.480436067">SHERGHATI ,Bihar 
          </option>
          <option value="TN239/1/0.51205291/-1/1.371925044">SHERKOT ,Uttar Pradesh 
          </option>
          <option value="TN240/1/0.446411817/-1/1.463058201">SHERPUR ,Uttar Pradesh 
          </option>
          <option value="TN241/1/0.157438713/-1/1.327600088">SHERTALLAI ,Kerala 
          </option>
          <option value="TN243/1/0.473320106/-1/1.474722663">SHIKARPUR ,Bihar 
          </option>
          <option value="TN244/1/0.24915388/-1/1.310134921">SHIKARPUR ,Karnataka 
          </option>
          <option value="TN245/1/0.493845679/-1/1.362030864">SHIKARPUR ,Uttar 
          Pradesh </option>
          <option value="TN246/1/0.473295855/-1/1.362816578">SHIKHNABAD ,Uttar 
          Pradesh </option>
          <option value="TN248/1/0.446455467/-1/1.604176367">SHILLONG ,Meghalaya 
          </option>
          <option value="TN250/1/0.24308642/-1/1.319481041">SHIMOGA ,Karnataka 
          </option>
          <option value="TN257/1/0.443894621/-1/1.355856702">SHIVPURI ,Madhya 
          Pradesh </option>
          <option value="TN258/1/0.308436508/-1/1.325208995">SHOLAPUR ,Maharashtra 
          </option>
          <option value="TN259/1/0.229006614/-1/1.386742063">SHOLINGHUR ,Andhra 
          Pradesh </option>
          <option value="TN260/1/0.187834215/-1/1.327289683">SHORANUR ,Kerala 
          </option>
          <option value="TN262/1/0.479508818/-1/1.319864198">SHRI MADHOPUR ,Rajasthan 
          </option>
          <option value="TN267/1/0.471137566/-1/1.652269841">SIBSAGAR ,Assam </option>
          <option value="TN269/1/0.250361552/-1/1.307598325">SIDDAPUR ,Karnataka 
          </option>
          <option value="TN270/1/0.417544092/-1/1.263627425">SIDDHAPUR ,Gujarat 
          </option>
          <option value="TN271/1/0.252602293/-1/1.378894621">SIDDHAVATTAM ,Andhra 
          Pradesh </option>
          <option value="TN272/1/0.316070547/-1/1.363374339">SIDDIPET ,Andhra 
          Pradesh </option>
          <option value="TN273/1/0.425920194/-1/1.429597443">SIDHI ,Madhya Pradesh 
          </option>
          <option value="TN275/1/0.233711199/-1/1.359450617">SIDLAGHATTA ,Karnataka 
          </option>
          <option value="TN278/1/0.496794533/-1/1.356574515">SIKANDARABAD ,Uttar 
          Pradesh </option>
          <option value="TN281/1/0.48345679/-1/1.362491623">SIKANDRA RAO ,Uttar 
          Pradesh </option>
          <option value="TN282/1/0.482021164/-1/1.311934303">SIKAR ,Rajasthan 
          </option>
          <option value="TN287/1/0.43342328/-1/1.619948854">SILCHAR ,Assam </option>
          <option value="TN290/1/0.466539683/-1/1.543918871">SILIGURI ,West Bengal 
          </option>
          <option value="TP9/1/0.543093474/-1/1.347344797">SIMLA ,Himachal Pradesh 
          </option>
          <option value="UP7/1/0.275368607/-1/1.340186067">SINDHNUR ,Karnataka 
          </option>
          <option value="UP12/1/0.494408289/-1/1.412505732">SINGAHI KALAN ,Uttar 
          Pradesh </option>
          <option value="UP21/1/0.251045414/-1/1.313859788">SIRALKOPPA ,Karnataka 
          </option>
          <option value="UP24/1/0.196181217/-1/1.380563051">SIRKAZHI ,Tamil Nadu 
          </option>
          <option value="UP27/1/0.434529101/-1/1.271940476">SIROHI ,Rajasthan 
          </option>
          <option value="UP29/1/0.420716049/-1/1.356516314">SIRONJ ,Madhya Pradesh 
          </option>
          <option value="UP31/1/0.515481922/-1/1.310033069">SIRSA ,Haryana </option>
          <option value="UP35/1/0.321104938/-1/1.376144621">SIRSILLA ,Andhra Pradesh 
          </option>
          <option value="UP36/1/0.272958113/-1/1.34255291">SIRUGUPPA ,Karnataka 
          </option>
          <option value="UP41/1/0.267472663/-1/1.37116358">SIRVEL ,Andhra Pradesh 
          </option>
          <option value="UP44/1/0.474033069/-1/1.462374339">SISWA BAZAR ,Uttar 
          Pradesh </option>
          <option value="UP46/1/0.464410494/-1/1.492774691">SITAMARHI ,Bihar </option>
          <option value="UP49/1/0.481477954/-1/1.408615961">SITAPUR ,Uttar Pradesh 
          </option>
          <option value="UP51/1/0.417306437/-1/1.52844709">SIURI ,West Bengal 
          </option>
          <option value="UP52/1/0.157336861/-1/1.370324515">SIVAGANGA ,Tamil Nadu 
          </option>
          <option value="UP53/1/0.15732716/-1/1.351937831">SIVAGIRI ,Tamil Nadu 
          </option>
          <option value="UP54/1/0.159150794/-1/1.358378748">SIVAKASI ,Tamil Nadu 
          </option>
          <option value="UP55/1/0.457804674/-1/1.47291358">SIWAN ,Bihar </option>
          <option value="UP62/1/0.396286155/-1/1.362239418">SOHAGPUR ,Madhya Pradesh 
          </option>
          <option value="UP65/1/0.493244268/-1/1.346510582">SOHNA ,Haryana </option>
          <option value="UP67/1/0.452610229/-1/1.286185185">SOJAT ,Rajasthan </option>
          <option value="UP72/1/0.330649912/-1/1.476968254">SOMPETA ,Andhra Pradesh 
          </option>
          <option value="UP73/1/0.219839947/-1/1.324306878">SOMVARPET ,Karnataka 
          </option>
          <option value="UP76/1/0.406907848/-1/1.51963448">SONAMUKHI ,West Bengal 
          </option>
          <option value="UP77/1/0.506169753/-1/1.344716049">SONEPAT ,Haryana </option>
          <option value="UP86/1/0.598670635/-1/1.300134039">SOPOR ,Jammu &amp; 
          Kashmir </option>
          <option value="UP90/1/0.486982804/-1/1.37499515">SORON ,Uttar Pradesh 
          </option>
          <option value="UP94/1/0.319373457/-1/1.464983686">SRIKAKULAM ,Andhra 
          Pradesh </option>
          <option value="UP96/1/0.199028219/-1/1.386485009">SRIMUSHNAM ,Tamil 
          Nadu </option>
          <option value="UP97/1/0.595062169/-1/1.306094797">SRINAGAR ,Jammu &amp; 
          Kashmir </option>
          <option value="UP100/1/0.226518519/-1/1.399502646">SRIPERUMBUDUR,Tamil 
          Nadu </option>
          <option value="UP102/1/0.141928131/-1/1.360381834">SRIVAIKUNTAM ,Tamil 
          Nadu </option>
          <option value="UP104/1/0.15732231/-1/1.345346561">SRIVILLIPUTTUR ,Tamil 
          Nadu </option>
          <option value="UP108/1/0.483495591/-1/1.300260141">SUJANGARH ,Rajasthan 
          </option>
          <option value="UP114/1/0.440664462/-1/1.517689594">SULTANGANJ ,Bihar 
          </option>
          <option value="UP116/1/0.458430335/-1/1.433002205">SULTANPUR ,Uttar 
          Pradesh </option>
          <option value="UP117/1/0.192456349/-1/1.346636684">SULUR ,Tamil Nadu 
          </option>
          <option value="UP121/1/0.526006614/-1/1.32327381">SUNAM ,Punjab </option>
          <option value="UP123/1/0.550586861/-1/1.342785714">SUNDARNGAR ,Himachal 
          Pradesh </option>
          <option value="UP134/1/0.494287037/-1/1.322313492">SURAJGARH ,Rajasthan 
          </option>
          <option value="UP135/1/0.370071429/-1/1.271450617">SURAT ,Gujarat </option>
          <option value="UP138/1/0.396805115/-1/1.250604938">SURENDRANAGAR ,Gujarat 
          </option>
          <option value="UP140/1/0.299260141/-1/1.390253527">SURIAPET ,Andhra 
          Pradesh </option>
          <option value="UP151/1/0.293522487/-1/1.423510582">TADEPALLEGUDEM ,Andhra 
          Pradesh </option>
          <option value="UP153/1/0.260226631/-1/1.362035714">TADPATRI ,Andhra 
          Pradesh </option>
          <option value="UP162/1/0.394317019/-1/1.538006614">TAKI ,West Bengal 
          </option>
          <option value="UP163/1/0.227241182/-1/1.380563051">TAKKOLAM ,Tamil Nadu 
          </option>
          <option value="UP166/1/0.19798545/-1/1.322395944">TALAKKOLATTUR ,Kerala 
          </option>
          <option value="UP172/1/0.182431217/-1/1.328410053">TALIKKULAM ,Kerala 
          </option>
          <option value="UP185/1/0.199741182/-1/1.370440917">TAMMAMPATTI ,Tamil 
          Nadu </option>
          <option value="UP186/1/0.242950617/-1/1.365290123">TANAKALLU ,Andhra 
          Pradesh </option>
          <option value="UP188/1/0.505883598/-1/1.378336861">TANDA ,Uttar Pradesh 
          </option>
          <option value="UP189/1/0.463503527/-1/1.44321164">TANDA ,Uttar Pradesh 
          </option>
          <option value="UP199/1/0.191690035/-1/1.324723986">TANUR ,Kerala </option>
          <option value="UP209/1/0.239303351/-1/1.323589065">TARIKERE ,Karnataka 
          </option>
          <option value="UP215/1/0.194207231/-1/1.362525573">TATTAYYANGARPETTAI 
          ,Tamil Nadu </option>
          <option value="UP216/1/0.275203704/-1/1.333919753">TAWARGERI ,Karnataka 
          </option>
          <option value="UP217/1/0.445044092/-1/1.50040388">TEGHRA ,Bihar </option>
          <option value="UP221/1/0.435377866/-1/1.468121693">TEKARI ,Bihar </option>
          <option value="UP224/1/0.205003527/-1/1.318137566">TELLICHERRY ,Kerala 
          </option>
          <option value="UP227/1/0.283497354/-1/1.408126102">TENALI ,Andhra Pradesh 
          </option>
          <option value="UP231/1/0.141758377/-1/1.349929894">TENKASI ,Tamil Nadu 
          </option>
          <option value="UP236/1/0.158229277/-1/1.349246032">TEVARAM ,Tamil Nadu 
          </option>
          <option value="UP237/1/0.464866402/-1/1.620380511">TEZPUR ,Assam </option>
          <option value="UP243/1/0.335791005/-1/1.258602734">THANA ,Maharashtra 
          </option>
          <option value="UP244/1/0.516597443/-1/1.351695326">THANA BHAWAN ,Uttar 
          Pradesh </option>
          <option value="UP248/1/0.523324515/-1/1.34147134">THANESAR ,Haryana 
          </option>
          <option value="UP249/1/0.188304674/-1/1.381843474">THANJAVUR ,Tamil 
          Nadu </option>
          <option value="UP254/1/0.204891975/-1/1.32658642">THARUVANA ,Kerala 
          </option>
          <option value="UP260/1/0.188130071/-1/1.390602734">THIRUVARUR ,Tamil 
          Nadu </option>
          <option value="UP267/1/0.488229277/-1/1.392217813">TIHAR ,Uttar Pradesh 
          </option>
          <option value="UP269/1/0.487647266/-1/1.341796296">TIJARA ,Rajasthan 
          </option>
          <option value="UP270/1/0.431910053/-1/1.376367725">TIKAMGARH ,Madhya 
          Pradesh </option>
          <option value="UP285/1/0.213583333/-1/1.380242945">TINDIVANAM ,Tamil 
          Nadu </option>
          <option value="UP286/1/0.479988977/-1/1.664977072">TINSUKIA ,Assam </option>
          <option value="UP290/1/0.142417989/-1/1.364126102">TIRUCHCHENDUR ,Tamil 
          Nadu </option>
          <option value="UP291/1/0.188619929/-1/1.374102734">TIRUCHCHIRAPPALLI 
          ,Tamil Nadu </option>
          <option value="UP292/1/0.198664462/-1/1.360100529">TIRUCHENGODU ,Tamil 
          Nadu </option>
          <option value="UP293/1/0.220092152/-1/1.397824515">TIRUKKALUKKUNRAM 
          ,Tamil Nadu </option>
          <option value="UP294/1/0.208873898/-1/1.382920194">TIRUKKOYILUR ,Tamil 
          Nadu </option>
          <option value="UP295/1/0.159805556/-1/1.361589506">TIRUMANGALAM ,Tamil 
          Nadu </option>
          <option value="UP297/1/0.204984127/-1/1.386">TIRUNAMANALLUR ,Tamil Nadu 
          </option>
          <option value="UP298/1/0.140691358/-1/1.345627866">TIRUNEVELI ,Tamil 
          Nadu </option>
          <option value="UP299/1/0.237969577/-1/1.386630511">TIRUPATI ,Andhra 
          Pradesh </option>
          <option value="UP300/1/0.218016314/-1/1.371939594">TIRUPPATTUR ,Tamil 
          Nadu </option>
          <option value="UP301/1/0.176485009/-1/1.372468254">TIRUPPATTUR ,Tamil 
          Nadu </option>
          <option value="UP302/1/0.193775573/-1/1.350502205">TIRUPPUR ,Tamil Nadu 
          </option>
          <option value="UP303/1/0.159854056/-1/1.366366843">TIRUPPUVANAM ,Tamil 
          Nadu </option>
          <option value="UP304/1/0.192892857/-1/1.32441358">TIRURANGADI ,Kerala 
          </option>
          <option value="UP305/1/0.230005732/-1/1.380238095">TIRUTTANI ,Andhra 
          Pradesh </option>
          <option value="UP306/1/0.183857143/-1/1.390597884">TIRUTTURAIPPUNDI 
          ,Tamil Nadu </option>
          <option value="UP307/1/0.159131393/-1/1.377992504">TIRUVADANAI ,Tamil 
          Nadu </option>
          <option value="UP308/1/0.229467372/-1/1.395220018">TIRUVALLUR ,Tamil 
          Nadu </option>
          <option value="UP309/1/0.213510582/-1/1.380684303">TIRUVANNAMALAI ,Tamil 
          Nadu </option>
          <option value="UP310/1/0.220955467/-1/1.388847002">TIRUVETTIPURAM ,Tamil 
          Nadu </option>
          <option value="UP311/1/0.298731481/-1/1.397727513">TIRUVURU ,Andhra 
          Pradesh </option>
          <option value="UP312/1/0.13968254/-1/1.359673721">TISAIYANVILAI ,Tamil 
          Nadu </option>
          <option value="UP316/1/0.199018519/-1/1.382003527">TITTAGUDI ,Tamil 
          Nadu </option>
          <option value="UP319/1/0.518799383/-1/1.325228395">TOHANA ,Haryana </option>
          <option value="UP322/1/0.158369929/-1/1.379636684">TONDI ,Tamil Nadu 
          </option>
          <option value="UP323/1/0.456844356/-1/1.32328351">TONK ,Rajasthan </option>
          <option value="UP327/1/0.181014991/-1/1.362530423">TOVARANKURICHCHI 
          ,Tamil Nadu </option>
          <option value="UP328/1/0.192529101/-1/1.394279101">TRANQUEBAR ,Tamil 
          Nadu </option>
          <option value="UP329/1/0.183469136/-1/1.330636243">TRICHUR ,Kerala </option>
          <option value="UP332/1/0.158981041/-1/1.340244268">TRIPUNITTURA ,Kerala 
          </option>
          <option value="UP333/1/0.139745591/-1/1.328473104">TRIVANDRUM ,Kerala 
          </option>
          <option value="UP335/1/0.244003086/-1/1.377808201">TSUNDUPALLE ,Andhra 
          Pradesh </option>
          <option value="UP339/1/0.48072134/-1/1.432342593">TULSIPUR ,Uttar Pradesh 
          </option>
          <option value="UP340/1/0.251608025/-1/1.310411376">TUMINKATTI ,Karnataka 
          </option>
          <option value="UP341/1/0.232891534/-1/1.346103175">TUMKUR ,Karnataka 
          </option>
          <option value="UP345/1/0.475066138/-1/1.365959436">TUNDLA ,Uttar Pradesh 
          </option>
          <option value="UP348/1/0.445558201/-1/1.575454145">TURA ,Meghalaya </option>
          <option value="UP350/1/0.194634039/-1/1.372361552">TURAIYUR ,Tamil Nadu 
          </option>
          <option value="UP352/1/0.142039683/-1/1.364436508">TUTICORIN ,Tamil 
          Nadu </option>
          <option value="UP355/1/0.484029101/-1/1.310144621">UDAIPUR ,Rajasthan 
          </option>
          <option value="UP356/1/0.4290194/-1/1.286675044">UDAIPUR ,Rajasthan 
          </option>
          <option value="UP358/1/0.195308201/-1/1.384477072">UDAIYARPALAIYAM ,Tamil 
          Nadu </option>
          <option value="UP360/1/0.184744709/-1/1.348707672">UDAMALPET ,Tamil 
          Nadu </option>
          <option value="UP362/1/0.259722222/-1/1.384564374">UDAYAGIRI ,Andhra 
          Pradesh </option>
          <option value="UP364/1/0.57477425/-1/1.311813051">UDHAMPUR ,Jammu &amp; 
          Kashmir </option>
          <option value="UP365/1/0.232784832/-1/1.305085979">UDIPI ,Karnataka 
          </option>
          <option value="UP367/1/0.488913139/-1/1.382008377">UJHANI ,Uttar Pradesh 
          </option>
          <option value="UP368/1/0.404652557/-1/1.310697531">UJJAIN ,Madhya Pradesh 
          </option>
          <option value="UP373/1/0.248203263/-1/1.305915344">ULANAHALLI ,Karnataka 
          </option>
          <option value="UP374/1/0.335529101/-1/1.277348325">ULHASNAGAR ,Maharashtra 
          </option>
          <option value="UP375/1/0.266095238/-1/1.396849647">ULLAPALEM ,Andhra 
          Pradesh </option>
          <option value="UP379/1/0.410768519/-1/1.411501764">UMARIA ,Madhya Pradesh 
          </option>
          <option value="UP394/1/0.425590388/-1/1.410376543">UNCHAHRA ,Madhya 
          Pradesh </option>
          <option value="UP397/1/0.463503527/-1/1.397446208">UNNAO ,Uttar Pradesh 
          </option>
          <option value="UP399/1/0.379601852/-1/1.22707716">UPLETA ,Gujarat </option>
          <option value="UP400/1/0.196646825/-1/1.370901675">UPPILIYAPURAM ,Tamil 
          Nadu </option>
          <option value="UP402/1/0.260958995/-1/1.348984127">URAVAKONDA ,Andhra 
          Pradesh </option>
          <option value="UP404/1/0.297785714/-1/1.296656526">URUN ISLAMPUR ,Maharashtra 
          </option>
          <option value="UP405/1/0.1595097/-1/1.358194444">USILAMPATTI ,Tamil 
          Nadu </option>
          <option value="UP409/1/0.477030423/-1/1.438972663">UTRAULA ,Uttar Pradesh 
          </option>
          <option value="WB2/1/0.159567901/-1/1.350167549">UTTAMAPALAIYAM ,Tamil 
          Nadu </option>
          <option value="WB5/1/0.220237654/-1/1.39258642">UTTIRAMERUR ,Tamil Nadu 
          </option>
          <option value="WB11/1/0.175961199/-1/1.345943122">VADIPPATTI ,Tamil 
          Nadu </option>
          <option value="WB13/1/0.389476631/-1/1.277876984">VADODARA ,Gujarat 
          </option>
          <option value="WB14/1/0.158534832/-1/1.333837302">VAIKAM ,Kerala </option>
          <option value="WB17/1/0.189929453/-1/1.328759259">VALANCHER ,Kerala 
          </option>
          <option value="WB18/1/0.208054233/-1/1.389448413">VALAVANUR ,Tamil Nadu 
          </option>
          <option value="WB22/1/0.187101852/-1/1.380446649">VALLAM ,Tamil Nadu 
          </option>
          <option value="WB23/1/0.359857143/-1/1.273308201">VALSAD ,Gujarat </option>
          <option value="WB24/1/0.218302469/-1/1.389938272">VANDAVASI ,Tamil Nadu 
          </option>
          <option value="WB25/1/0.258213845/-1/1.375455908">VANIPENTA ,Andhra 
          Pradesh </option>
          <option value="WB26/1/0.221406526/-1/1.372574956">VANIYAMBADI ,Tamil 
          Nadu </option>
          <option value="WB32/1/0.140861111/-1/1.339317901">VARKKALLAI ,Kerala 
          </option>
          <option value="WB35/1/0.337939594/-1/1.271169312">VASEI ,Maharashtra 
          </option>
          <option value="WB37/1/0.177353175/-1/1.357709436">VATTALKUNDU ,Tamil 
          Nadu </option>
          <option value="WB40/1/0.181092593/-1/1.380839506">VEDARANNIYAM ,Tamil 
          Nadu </option>
          <option value="WB41/1/0.183842593/-1/1.345933422">VEDASANDUR ,Tamil 
          Nadu </option>
          <option value="WB44/1/0.191044974/-1/1.356918871">VELLAKKOVIL ,Tamil 
          Nadu </option>
          <option value="WB45/1/0.225441799/-1/1.381746473">VELLORE ,Tamil Nadu 
          </option>
          <option value="WB46/1/0.27442769/-1/1.371963845">VELUGODU ,Andhra Pradesh 
          </option>
          <option value="WB49/1/0.250851411/-1/1.369931658">VEMPALLE ,Andhra Pradesh 
          </option>
          <option value="WB50/1/0.277051587/-1/1.285574074">VENGURLA ,Maharashtra 
          </option>
          <option value="WB51/1/0.24367328/-1/1.389511464">VENKATAGIRI ,Andhra 
          Pradesh </option>
          <option value="WB56/1/0.246064374/-1/1.366623898">VEPARALA ,Andhra Pradesh 
          </option>
          <option value="WB57/1/0.175796296/-1/1.33212037">VERAPOLI ,Kerala </option>
          <option value="WB60/1/0.27557716/-1/1.402204145">VETAPALEM ,Andhra Pradesh 
          </option>
          <option value="WB61/1/0.211357143/-1/1.383671958">VETTAVALAM ,Tamil 
          Nadu </option>
          <option value="WB62/1/0.410734568/-1/1.35851455">VIDISHA ,Madhya Pradesh 
          </option>
          <option value="WB64/1/0.141113316/-1/1.358223545">VIJAYA NARAYANAM ,Tamil 
          Nadu </option>
          <option value="WB66/1/0.288289242/-1/1.407849647">VIJAYAWADA ,Andhra 
          Pradesh </option>
          <option value="WB68/1/0.158515432/-1/1.362205467">VILATTIKULAM ,Tamil 
          Nadu </option>
          <option value="WB69/1/0.20847134/-1/1.388061287">VILLUPURAM ,Tamil Nadu 
          </option>
          <option value="WB72/1/0.258951058/-1/1.389487213">VINJAMUR ,Andhra Pradesh 
          </option>
          <option value="WB76/1/0.185132716/-1/1.362787478">VIRALIMALAI ,Tamil 
          Nadu </option>
          <option value="WB78/1/0.159267196/-1/1.351554674">VIRAPANDI ,Tamil Nadu 
          </option>
          <option value="WB80/1/0.212904321/-1/1.323458113">VIRARAJENDRAPET ,Karnataka 
          </option>
          <option value="WB81/1/0.158602734/-1/1.361177249">VIRUDUNAGER ,Tamil 
          Nadu </option>
          <option value="WB83/1/0.309294974/-1/1.454361993">VISHAKHAPATNAM ,Andhra 
          Pradesh </option>
          <option value="WB84/1/0.413838624/-1/1.266707231">VISNAGAR ,Gujarat 
          </option>
          <option value="WB86/1/0.3162694/-1/1.456350529">VIZIANAGARAM ,Andhra 
          Pradesh </option>
          <option value="WB87/1/0.201036155/-1/1.385088183">VRIDDHACHALAM ,Tamil 
          Nadu </option>
          <option value="WB88/1/0.481565256/-1/1.345618166">VRINDAVAN ,Uttar Pradesh 
          </option>
          <option value="WB98/1/0.22330291/-1/1.39372134">WALAJABAD ,Tamil Nadu 
          </option>
          <option value="WB99/1/0.225635802/-1/1.385742945">WALAJAPET ,Tamil Nadu 
          </option>
          <option value="WB106/1/0.394845679/-1/1.238644621">WANKANER ,Gujarat 
          </option>
          <option value="WB109/1/0.314159612/-1/1.389618166">WARANGAL ,Andhra 
          Pradesh </option>
          <option value="WB111/1/0.362199735/-1/1.362821429">WARDHA ,Maharashtra 
          </option>
          <option value="WB112/1/0.43672619/-1/1.48501455">WARIS ALLGANJ ,Bihar 
          </option>
          <option value="WB113/1/0.353149471/-1/1.379500882">WARORA ,Maharashtra 
          </option>
          <option value="WB116/1/0.350932981/-1/1.346830688">WASHIM ,Maharashtra 
          </option>
          <option value="WB117/1/0.159456349/-1/1.355551146">WATRAP ,Tamil Nadu 
          </option>
          <option value="WB119/1/0.471743827/-1/1.347417549">WER ,Rajasthan </option>
          <option value="WB123/1/0.292693122/-1/1.346884039">YADGIR ,Karnataka 
          </option>
          <option value="WB124/1/0.262690476/-1/1.359634921">YADIKI ,Andhra Pradesh 
          </option>
          <option value="WB129/1/0.526132716/-1/1.349469136">YAMUNANGAR ,Haryana 
          </option>
          <option value="WB134/1/0.356146825/-1/1.364354056">YAVATMAL ,Maharashtra 
          </option>
          <option value="WB140/1/0.307141534/-1/1.402640653">YELLANDU ,Andhra 
          Pradesh </option>
          <option value="WB151/1/0.468353616/-1/1.420018519">ZAIDPUR ,Uttar Pradesh 
          </option>
          <option value="WB152/1/0.443763668/-1/1.458945326">ZAMANIA ,Uttar Pradesh 
          </option>
        </SELECT></td>
    <td><select style='height:80px' name=to city size=10 multiple id="destination city">
          <option 
                          value=AN3/1/0.158995591/-1/1.369611552>ABIRAMAM ,Tamil 
          Nadu 
          <option 
                          value=AN4/1/0.526186067/-1/1.295638007>ABOHAR ,Punjab 
          <option 
                          value=AN6/1/0.371031746/-1/1.353291005>ACHALPUR ,Maharashtra 
          <option 
                          value=AN12/1/0.275936067/-1/1.396306437>ADDANKI ,Andhra 
          Pradesh 
          <option 
                          value=AN15/1/0.343536596/-1/1.371362434>ADILABAD ,Andhra 
          Pradesh 
          <option 
                          value=AN16/1/0.27280291/-1/1.349202381>ADONI ,Andhra 
          Pradesh 
          <option 
                          value=AN17/1/0.410181658/-1/1.502780423>ADRA ,West Bengal 
          <option 
                          value=AN18/1/0.192305996/-1/1.387770282>ADUTURAI ,Tamil 
          Nadu 
          <option 
                          value=AP1/1/0.416108466/-1/1.593700176>AGARTALA ,Tripura 
          <option 
                          value=AP6/1/0.474527778/-1/1.362064815>AGRA ,Uttar Pradesh 
          <option 
                          value=AP7/1/0.402280864/-1/1.258015873>AHMADABAD ,Gujarat 
          <option 
                          value=AP8/1/0.33331261/-1/1.305061728>AHMADNAGAR ,Maharashtra 
          <option 
                          value=AP12/1/0.436895944/-1/1.449633157>AHRAURA ,Uttar 
          Pradesh 
          <option 
                          value=AP19/1/0.461704145/-1/1.303281746>AJMER ,Rajasthan 
          <option 
                          value=AP23/1/0.46142284/-1/1.432633598>AKBARPUR ,Uttar 
          Pradesh 
          <option 
                          value=AP28/1/0.361491623/-1/1.344391093>AKOLA ,Maharashtra 
          <option 
                          value=AP31/1/0.368310847/-1/1.345429012>AKOT ,Maharashtra 
          <option 
                          value=AP35/1/0.27721164/-1/1.364247354>ALAMPUR ,Andhra 
          Pradesh 
          <option 
                          value=AP37/1/0.192228395/-1/1.332993386>ALANALLUR ,Kerala 
          <option 
                          value=AP39/1/0.180874339/-1/1.379141975>ALANGUDI ,Tamil 
          Nadu 
          <option 
                          value=AP40/1/0.487375661/-1/1.383633157>ALAPUR ,Uttar 
          Pradesh 
          <option 
                          value=AP42/1/0.490838624/-1/1.407165785>ALIGANJ ,Uttar 
          Pradesh 
          <option 
                          value=AP43/1/0.487031305/-1/1.364257055>ALIGARH ,Uttar 
          Pradesh 
          <option 
                          value=AP44/1/0.480090829/-1/1.382343034>ALIGNJ ,Uttar 
          Pradesh 
          <option 
                          value=AP48/1/0.444238977/-1/1.428748677>ALLAHABAD ,Uttar 
          Pradesh 
          <option 
                          value=AP50/1/0.159883157/-1/1.332682981>ALLEPPEY ,Kerala 
          <option 
                          value=AP51/1/0.256370811/-1/1.397795414>ALLUR ,Andhra 
          Pradesh 
          <option 
                          value=AP55/1/0.516869048/-1/1.390762787>ALMORA ,Uttar 
          Pradesh 
          <option 
                          value=AP59/1/0.48123545/-1/1.33761067>ALWAR ,Rajasthan 
          <option 
                          value=AP60/1/0.176480159/-1/1.327590388>ALWAYE ,Kerala 
          <option 
                          value=AP63/1/0.367428131/-1/1.310571429>AMALNER ,Maharashtra 
          <option 
                          value=AP73/1/0.466238977/-1/1.365799383>AMBAH ,Madhya 
          Pradesh 
          <option 
                          value=AP75/1/0.529906085/-1/1.341519841>AMBALA ,Haryana 
          <option 
                          value=AP76/1/0.529726631/-1/1.337523369>AMBALA CANTONMENT 
          ,Punjab 
          <option 
                          value=AP77/1/0.157938272/-1/1.33319224>AMBALAPULAI ,Kerala 
          <option 
                          value=AP78/1/0.403667989/-1/1.452664462>AMBIKAPUR ,Madhya 
          Pradesh 
          <option 
                          value=AP79/1/0.22327866/-1/1.374398589>AMBUR ,Tamil 
          Nadu 
          <option 
                          value=AP83/1/0.467116843/-1/1.417059965>AMETHI ,Uttar 
          Pradesh 
          <option 
                          value=AP86/1/0.38282716/-1/1.364261905>AMLA ,Madhya 
          Pradesh 
          <option 
                          value=AP95/1/0.365454145/-1/1.357690035>AMRAVATI ,Maharashtra 
          <option 
                          value=AP96/1/0.377191358/-1/1.239997795>AMRELI ,Gujarat 
          <option 
                          value=AP98/1/0.552284392/-1/1.307278219>AMRITSAR ,Punjab 
          <option 
                          value=AP99/1/0.504695326/-1/1.37004321>AMROHA ,Uttar 
          Pradesh 
          <option 
                          value=AP102/1/0.184710758/-1/1.343261023>ANAIMALAI ,Tamil 
          Nadu 
          <option 
                          value=AP103/1/0.308800265/-1/1.449356702>ANAKAPALLE 
          ,Andhra Pradesh 
          <option 
                          value=AP105/1/0.393919312/-1/1.27381261>ANAND ,Gujarat 
          <option 
                          value=AP107/1/0.256395062/-1/1.354741182>ANANTAPUR ,Andhra 
          Pradesh 
          <option 
                          value=AP110/1/0.589290564/-1/1.312918871>ANANTNAG ,Jammu 
          &amp; Kashmir 
          <option 
                          value=AP114/1/0.197888448/-1/1.38601455>ANDIMATAM ,Tamil 
          Nadu 
          <option 
                          value=AP115/1/0.159888007/-1/1.355337743>ANDIPPATTI 
          ,Tamil Nadu 
          <option 
                          value=AP116/1/0.202098325/-1/1.354750882>ANDIYUR ,Tamil 
          Nadu 
          <option 
                          value=AP117/1/0.221886684/-1/1.356564815>ANEKAL ,Karnataka 
          <option 
                          value=AP118/1/0.363717813/-1/1.485824515>ANGUL ,Orissa 
          <option 
                          value=AP120/1/0.369479718/-1/1.349837743>ANJANGAON ,Maharashtra 
          <option 
                          value=AP121/1/0.403546737/-1/1.222590829>ANJAR ,Gujarat 
          <option 
                          value=AP122/1/0.142417989/-1/1.340617725>ANJENGO ,Kerala 
          <option 
                          value=AP123/1/0.377647266/-1/1.258617284>ANKLESHWAR 
          ,Gujarat 
          <option 
                          value=AP125/1/0.255914903/-1/1.297093034>ANKOLA ,Karnataka 
          <option 
                          value=AP126/1/0.269233245/-1/1.317036596>ANNIGERI ,Karnataka 
          <option 
                          value=AP127/1/0.196186067/-1/1.346297178>ANNUR ,Tamil 
          Nadu 
          <option 
                          value=AP129/1/0.350855379/-1/1.417142416>Antagarh ,Madhya 
          Pradesh 
          <option 
                          value=AP131/1/0.495140653/-1/1.366643298>ANUPSHAHR ,Uttar 
          Pradesh 
          <option 
                          value=AP134/1/0.493729277/-1/1.382333333>AONLA ,Uttar 
          Pradesh 
          <option 
                          value=AP142/1/0.221168871/-1/1.384307319>ARANI ,Tamil 
          Nadu 
          <option 
                          value=AP143/1/0.232876984/-1/1.398425926>ARANI ,Tamil 
          Nadu 
          <option 
                          value=AP144/1/0.177455026/-1/1.379311728>ARANTANGI ,Tamil 
          Nadu 
          <option 
                          value=AP145/1/0.456446649/-1/1.527981481>ARARIA ,Bihar 
          <option 
                          value=AP147/1/0.188047619/-1/1.360333333>ARAVAKKURICHCHI 
          ,Tamil Nadu 
          <option 
                          value=AP150/1/0.195938713/-1/1.327837743>ARIKKOD ,Kerala 
          <option 
                          value=AP151/1/0.178953704/-1/1.377512346>ARIMALAM ,Tamil 
          Nadu 
          <option 
                          value=AP153/1/0.194415785/-1/1.380606702>ARIYALUR ,Tamil 
          Nadu 
          <option 
                          value=AP155/1/0.22276455/-1/1.327973545>ARKALGUD ,Karnataka 
          <option 
                          value=AP156/1/0.228429453/-1/1.391058642>ARKONAM ,Tamil 
          Nadu 
          <option 
                          value=AP161/1/0.446246914/-1/1.467840388>ARRAH ,Bihar 
          <option 
                          value=AP162/1/0.232377425/-1/1.331305556>ARSIKERE ,Karnataka 
          <option 
                          value=AP163/1/0.157264109/-1/1.363539242>ARUPPUKKOTTAI 
          ,Tamil Nadu 
          <option 
                          value=AP164/1/0.366584215/-1/1.366027337>ARVI ,Maharashtra 
          <option 
                          value=AP167/1/0.41358157/-1/1.518582011>ASANSOL ,West 
          Bengal 
          <option 
                          value=AP170/1/0.429048501/-1/1.357040123>ASHOKNAGAR 
          ,Madhya Pradesh 
          <option 
                          value=AP185/1/0.441474427/-1/1.397708113>ATARRA ,Uttar 
          Pradesh 
          <option 
                          value=AP189/1/0.180481481/-1/1.385902998>ATIRAMPATTINAM 
          ,Tamil Nadu 
          <option 
                          value=AP192/1/0.277231041/-1/1.372177249>ATMAKUR ,Andhra 
          Pradesh 
          <option 
                          value=AP193/1/0.255134039/-1/1.390292328>ATMAKUR ,Andhra 
          Pradesh 
          <option 
                          value=AP195/1/0.489432099/-1/1.362205467>ATRAULI ,Uttar 
          Pradesh 
          <option 
                          value=AP197/1/0.201414462/-1/1.364242504>ATTAYYAMPATTI 
          ,Tamil Nadu 
          <option 
                          value=AP198/1/0.20240873/-1/1.362802028>ATTUR ,Tamil 
          Nadu 
          <option 
                          value=AP201/1/0.462067901/-1/1.38820679>AURAIYA ,Uttar 
          Pradesh 
          <option 
                          value=AP202/1/0.432113757/-1/1.473238536>AURANGABAD 
          ,Bihar 
          <option 
                          value=AP203/1/0.347203263/-1/1.315101411>AURANGABAD 
          ,Maharashtra 
          <option 
                          value=AP206/1/0.195419753/-1/1.34916843>AVANASHI ,Tamil 
          Nadu 
          <option 
                          value=AP214/1/0.467873457/-1/1.435213845>AYODHYA ,Uttar 
          Pradesh 
          <option 
                          value=AP215/1/0.455078924/-1/1.449516755>AZAMGARH ,Uttar 
          Pradesh 
          <option 
                          value=AP216/1/0.207966931/-1/1.315736772>AZHIKKAL ,Kerala 
          <option 
                          value=AP217/1/0.423989859/-1/1.537870811>AZIMGANJ ,West 
          Bengal 
          <option 
                          value=AP222/1/0.202447531/-1/1.319670194>BADAGARA ,Kerala 
          <option 
                          value=AP223/1/0.277876102/-1/1.321338624>BADAMI ,Karnataka 
          <option 
                          value=AP226/1/0.36411552/-1/1.357146825>BADNERA ,Maharashtra 
          <option 
                          value=AP229/1/0.257321429/-1/1.380466049>BADVEL ,Andhra 
          Pradesh 
          <option 
                          value=AP232/1/0.473121252/-1/1.468247795>BAGAHA ,Bihar 
          <option 
                          value=AP233/1/0.282595238/-1/1.321678131>BAGALKOT ,Karnataka 
          <option 
                          value=AP240/1/0.275358907/-1/1.303208995>BAGEVADI ,Karnataka 
          <option 
                          value=AP248/1/0.469115079/-1/1.372298501>BAH ,Uttar 
          Pradesh 
          <option 
                          value=AP249/1/0.501115961/-1/1.341185185>BAHADURGARH 
          ,Haryana 
          <option 
                          value=AP253/1/0.502357584/-1/1.388012787>BAHERI ,Uttar 
          Pradesh 
          <option 
                          value=AP257/1/0.481439153/-1/1.424674603>BAHRAICH ,Uttar 
          Pradesh 
          <option 
                          value=AP263/1/0.275931217/-1/1.304130511>BAIL HONGAL 
          ,Karnataka 
          <option 
                          value=AP272/1/0.380916226/-1/1.400089506>BALAGHAT ,Madhya 
          Pradesh 
          <option 
                          value=AP278/1/0.37512522/-1/1.518092152>BALASORE ,Orissa 
          <option 
                          value=AP280/1/0.3465/-1/1.38546164>BALHARSHAH ,Maharashtra 
          <option 
                          value=AP286/1/0.449748677/-1/1.469266314>BALLIA ,Uttar 
          Pradesh 
          <option 
                          value=AP290/1/0.450922399/-1/1.261367284>BALOTRA ,Rajasthan 
          <option 
                          value=AP291/1/0.478926808/-1/1.43492284>BALRAMPUR ,Uttar 
          Pradesh 
          <option 
                          value=AP294/1/0.440421958/-1/1.550020282>BALURGHAT ,West 
          Bengal 
          <option 
                          value=AP305/1/0.276071869/-1/1.289638448>BANDA ,Goa 
          <option 
                          value=AP307/1/0.444753086/-1/1.402630952>BANDA ,Uttar 
          Pradesh 
          <option 
                          value=AP320/1/0.226542769/-1/1.354702381>BANGALORE ,Karnataka 
          <option 
                          value=AP321/1/0.26732231/-1/1.365809083>BANGANAPALLE 
          ,Andhra Pradesh 
          <option 
                          value=AP323/1/0.402353616/-1/1.551116402>BANGAON ,West 
          Bengal 
          <option 
                          value=AP324/1/0.226722222/-1/1.365013668>BANGARAPET 
          ,Karnataka 
          <option 
                          value=AP325/1/0.469517637/-1/1.400477513>BANGARMAU ,Uttar 
          Pradesh 
          <option 
                          value=AP328/1/0.434393298/-1/1.517558642>BANKA ,Bihar 
          <option 
                          value=AP329/1/0.260430335/-1/1.31395679>BANKAPUR ,Karnataka 
          <option 
                          value=AP333/1/0.405680776/-1/1.520308642>BANKURA ,West 
          Bengal 
          <option 
                          value=AP334/1/0.451955467/-1/1.522515432>BANMNKHI ,Bihar 
          <option 
                          value=AP336/1/0.215256614/-1/1.34200485>BANNUR ,Karnataka 
          <option 
                          value=AP347/1/0.225179894/-1/1.310154321>BANTVAL ,Karnataka 
          <option 
                          value=AP350/1/0.277696649/-1/1.397426808>BAPATLA ,Andhra 
          Pradesh 
          <option 
                          value=AP361/1/0.31681261/-1/1.302122575>BARAMATI ,Maharashtra 
          <option 
                          value=AP364/1/0.597361111/-1/1.292650353>BARAMULA ,Jammu 
          &amp; Kashmir 
          <option 
                          value=AP365/1/0.438156966/-1/1.335874339>BARAN ,Rajasthan 
          <option 
                          value=AP370/1/0.508129189/-1/1.349066578>BARAUT ,Uttar 
          Pradesh 
          <option 
                          value=AP371/1/0.440363757/-1/1.496882716>BARBIGHA ,Bihar 
          <option 
                          value=AP372/1/0.405641975/-1/1.534126543>BARDDHAMAN 
          ,West Bengal 
          <option 
                          value=AP375/1/0.495053351/-1/1.386509259>BAREILLY ,Uttar 
          Pradesh 
          <option 
                          value=AP383/1/0.444670635/-1/1.49654321>BARH ,Bihar 
          <option 
                          value=AP388/1/0.441488977/-1/1.501839506>BARHIYA ,Bihar 
          <option 
                          value=AP390/1/0.46531746/-1/1.35518739>BARI ,Rajasthan 
          <option 
                          value=AP393/1/0.382987213/-1/1.514386684>BARIPADA ,Orissa 
          <option 
                          value=AP394/1/0.422054674/-1/1.499598765>BARKI SARIA 
          ,Bihar 
          <option 
                          value=AP396/1/0.449394621/-1/1.246438713>BARMER ,Rajasthan 
          <option 
                          value=AP401/1/0.459511905/-1/1.589223545>BARPETA ,Assam 
          <option 
                          value=AP404/1/0.318398589/-1/1.321585979>BARSI ,Maharashtra 
          <option 
                          value=AP409/1/0.444753086/-1/1.50093254>BARUNI ,Bihar 
          <option 
                          value=AP412/1/0.442992504/-1/1.374616843>BARWA SAGAR 
          ,Uttar Pradesh 
          <option 
                          value=AP419/1/0.456242945/-1/1.527166667>BASANTPUR ,Bihar 
          <option 
                          value=AP427/1/0.395548942/-1/1.537967813>BASIRHAT ,West 
          Bengal 
          <option 
                          value=AP432/1/0.467844356/-1/1.444710317>BASTI ,Uttar 
          Pradesh 
          <option 
                          value=AP435/1/0.555383598/-1/1.313078924>BATALA ,Punjab 
          <option 
                          value=AP442/1/0.469803792/-1/1.349469136>BAYANA ,Rajasthan 
          <option 
                          value=AP444/1/0.455593034/-1/1.297510141>BEAWAR ,Rajasthan 
          <option 
                          value=AP449/1/0.443715168/-1/1.503750441>BEGUSARAI ,Bihar 
          <option 
                          value=AP453/1/0.452469577/-1/1.43166358>BELA ,Uttar 
          Pradesh 
          <option 
                          value=AP463/1/0.276750882/-1/1.300871252>BELGAUM ,Karnataka 
          <option 
                          value=AP467/1/0.264320106/-1/1.328473104>BELLARY ,Karnataka 
          <option 
                          value=AP470/1/0.229802028/-1/1.324471781>BELUR ,Karnataka 
          <option 
                          value=AP472/1/0.441430776/-1/1.448440035>BENARES ,Uttar 
          Pradesh 
          <option 
                          value=AP475/1/0.420633598/-1/1.540824515>BERHAMPORE 
          ,West Bengal 
          <option 
                          value=AP476/1/0.33712963/-1/1.480799824>BERHAMPUR ,Orissa 
          <option 
                          value=AP480/1/0.269713404/-1/1.364436508>BETAMCHERLA 
          ,Andhra Pradesh 
          <option 
                          value=AP484/1/0.467931658/-1/1.475464727>BETTIAH ,Bihar 
          <option 
                          value=AP486/1/0.382429453/-1/1.360241182>BETUL ,Madhya 
          Pradesh 
          <option 
                          value=AP488/1/0.195371252/-1/1.32387037>BEYPORE ,Kerala 
          <option 
                          value=AP489/1/0.437196649/-1/1.459900794>BHABUA ,Bihar 
          <option 
                          value=AP495/1/0.443370811/-1/1.441620811>BHADOHI ,Uttar 
          Pradesh 
          <option 
                          value=AP496/1/0.367568783/-1/1.510797619>BHADRAKH ,Orissa 
          <option 
                          value=AP497/1/0.241524691/-1/1.32162478>BHADRAVATI ,Karnataka 
          <option 
                          value=AP501/1/0.440698413/-1/1.503061728>BHAGALPUR ,Bihar 
          <option 
                          value=AU14/1/0.438447972/-1/1.436470018>BHARATGANJ ,Uttar 
          Pradesh 
          <option 
                          value=AU15/1/0.47519224/-1/1.353>BHARATPUR ,Rajasthan 
          <option 
                          value=AU17/1/0.467150794/-1/1.379660935>BHARTHANA ,Uttar 
          Pradesh 
          <option 
                          value=AU18/1/0.379165344/-1/1.274205467>BHARUCH ,Gujarat 
          <option 
                          value=AU20/1/0.472083333/-1/1.34529321>BHASAWAR ,Rajasthan 
          <option 
                          value=AU22/1/0.379422399/-1/1.430795414>BHATAPARA ,Madhya 
          Pradesh 
          <option 
                          value=AU25/1/0.244158289/-1/1.301579365>BHATKALI ,Karnataka 
          <option 
                          value=AU29/1/0.199736332/-1/1.345647266>BHAVANI ,Tamil 
          Nadu 
          <option 
                          value=AU30/1/0.380111111/-1/1.259635802>BHAVNAGAR ,Gujarat 
          <option 
                          value=AU32/1/0.347562169/-1/1.452218254>BHAWANIPATNA 
          ,Orissa 
          <option 
                          value=AU40/1/0.472301587/-1/1.314601852>BHESLANA ,Rajasthan 
          <option 
                          value=AS3/1/0.442551146/-1/1.303170194>BHILWARA ,Rajasthan 
          <option 
                          value=AS6/1/0.288885802/-1/1.423563933>BHIMAVARAM ,Andhra 
          Pradesh 
          <option 
                          value=AS9/1/0.463818783/-1/1.363068783>BHIND ,Madhya 
          Pradesh 
          <option 
                          value=AS10/1/0.426647707/-1/1.296675926>BHINDAR ,Rajasthan 
          <option 
                          value=AS11/1/0.483723545/-1/1.43056261>BHINGA ,Uttar 
          Pradesh 
          <option 
                          value=AS15/1/0.336940476/-1/1.275534392>BHIWANDI ,Maharashtra 
          <option 
                          value=AS16/1/0.502667989/-1/1.329380071>BHIWANI ,Haryana 
          <option 
                          value=AS18/1/0.314688272/-1/1.450118166>BHOGAPURAM ,Andhra 
          Pradesh 
          <option 
                          value=AS23/1/0.475934303/-1/1.382401235>BHONGAON ,Uttar 
          Pradesh 
          <option 
                          value=AS25/1/0.405598325/-1/1.351632275>BHOPAL ,Madhya 
          Pradesh 
          <option 
                          value=AS29/1/0.353804233/-1/1.485611111>BHUBANESHWAR 
          ,Orissa 
          <option 
                          value=AS30/1/0.405981481/-1/1.216329365>BHUJ ,Gujarat 
          <option 
                          value=AS34/1/0.367491182/-1/1.32327381>BHUSAWAL ,Maharashtra 
          <option 
                          value=AS38/1/0.312665785/-1/1.353645062>BIDAR ,Karnataka 
          <option 
                          value=AS40/1/0.439961199/-1/1.49323545>BIHAR ,Bihar 
          <option 
                          value=AS42/1/0.293750441/-1/1.322012787>BIJAPUR ,Karnataka 
          <option 
                          value=AS45/1/0.429940917/-1/1.387876984>BIJAWAR ,Madhya 
          Pradesh 
          <option 
                          value=AS49/1/0.512843474/-1/1.364281305>BIJNOR ,Uttar 
          Pradesh 
          <option 
                          value=AS52/1/0.489233245/-1/1.27490873>BIKANER ,Rajasthan 
          <option 
                          value=AS55/1/0.546958995/-1/1.34036552>BILASPUR ,Himachal 
          Pradesh 
          <option 
                          value=AS56/1/0.385586861/-1/1.434452381>BILASPUR ,Madhya 
          Pradesh 
          <option 
                          value=AS58/1/0.474445326/-1/1.397305556>BILGRAM ,Uttar 
          Pradesh 
          <option 
                          value=AS60/1/0.468697972/-1/1.397902116>BILHAUR ,Uttar 
          Pradesh 
          <option 
                          value=AS65/1/0.422001323/-1/1.365183422>BINA ,Madhya 
          Pradesh 
          <option 
                          value=AS67/1/0.454584215/-1/1.406782628>BINDKI ,Uttar 
          Pradesh 
          <option 
                          value=AS76/1/0.237416667/-1/1.310978836>BIRUR ,Karnataka 
          <option 
                          value=AS77/1/0.494068783/-1/1.393391534>BISALPUR ,Uttar 
          Pradesh 
          <option 
                          value=BI3/1/0.402979277/-1/1.524780423>BISHNUPUR ,West 
          Bengal 
          <option 
                          value=BI7/1/0.48016843/-1/1.414154762>BISWAN ,Uttar 
          Pradesh 
          <option 
                          value=BI10/1/0.324286596/-1/1.455467813>BOBBILI ,Andhra 
          Pradesh 
          <option 
                          value=BI12/1/0.325794974/-1/1.360241182>BODHAN ,Andhra 
          Pradesh 
          <option 
                          value=BI33/1/0.39103836/-1/1.272842593>BORSAD ,Gujarat 
          <option 
                          value=BI34/1/0.38722619/-1/1.25125485>BOTAD ,Gujarat 
          <option 
                          value=BI41/1/0.48947575/-1/1.381474868>BUDAUN ,Uttar 
          Pradesh 
          <option 
                          value=BI43/1/0.511388448/-1/1.352747795>BUDHANA ,Uttar 
          Pradesh 
          <option 
                          value=BI44/1/0.247868607/-1/1.345618166>BUKKAPATNAM 
          ,Andhra Pradesh 
          <option 
                          value=BI46/1/0.495926367/-1/1.359271164>BULANDSHAHR 
          ,Uttar Pradesh 
          <option 
                          value=BI54/1/0.372011464/-1/1.3309903>BURHANPUR ,Madhya 
          Pradesh 
          <option 
                          value=BI58/1/0.256133157/-1/1.310130071>BYADGI ,Karnataka 
          <option 
                          value=BI59/1/0.393613757/-1/1.537104497>CALCUTTA ,West 
          Bengal 
          <option 
                          value=BI60/1/0.206996914/-1/1.315833774>CANNANORE ,Kerala 
          <option 
                          value=BI70/1/0.461248236/-1/1.484946649>CHAKIA ,Bihar 
          <option 
                          value=BI71/1/0.437385802/-1/1.452926367>CHAKIA ,Uttar 
          Pradesh 
          <option 
                          value=BI77/1/0.357175044/-1/1.311003086>CHALISGAON ,Maharashtra 
          <option 
                          value=BI79/1/0.250002646/-1/1.338260582>CHALLAKERE ,Karnataka 
          <option 
                          value=BI87/1/0.208151235/-1/1.343387125>CHAMRAJNAGAR 
          ,Karnataka 
          <option 
                          value=BI96/1/0.496779982/-1/1.37555291>CHANDAUSI ,Uttar 
          Pradesh 
          <option 
                          value=BI99/1/0.431454145/-1/1.364295855>CHANDERI ,Madhya 
          Pradesh 
          <option 
                          value=BI100/1/0.536691358/-1/1.328162698>CHANDIGARH 
          ,Chandigarh City 
          <option 
                          value=BI105/1/0.508711199/-1/1.366648148>CHANDPUR ,Uttar 
          Pradesh 
          <option 
                          value=BI107/1/0.396916667/-1/1.528156085>CHANDRAKONA 
          ROAD ,West Bengal 
          <option 
                          value=BI108/1/0.348275132/-1/1.384651675>CHANDRAPUR 
          ,Maharashtra 
          <option 
                          value=BI112/1/0.370794092/-1/1.357452381>Chandur Bazar 
          ,Maharashtra 
          <option 
                          value=BI115/1/0.159044092/-1/1.336407848>CHANGANACHERI 
          ,Kerala 
          <option 
                          value=BI119/1/0.244837302/-1/1.325606702>CHANNAGIRI 
          ,Karnataka 
          <option 
                          value=BI120/1/0.220940917/-1/1.347902557>CHANNAPATNA 
          ,Karnataka 
          <option 
                          value=BI121/1/0.225194444/-1/1.333599647>CHANNARAYAPATNA 
          ,Karnataka 
          <option 
                          value=BI124/1/0.470671958/-1/1.476104938>CHANPATIA ,Bihar 
          <option 
                          value=BI133/1/0.443511464/-1/1.392416667>CHARKHARI ,Uttar 
          Pradesh 
          <option 
                          value=BI135/1/0.515869929/-1/1.354794533>CHARTHAWAL 
          ,Uttar Pradesh 
          <option 
                          value=BI142/1/0.422568783/-1/1.443575397>CHATRA ,Uttar 
          Pradesh 
          <option 
                          value=BI143/1/0.337895944/-1/1.48392328>CHATRAPUR ,Orissa 
          <option 
                          value=BI144/1/0.182707672/-1/1.35520679>CHATTRAPPATT 
          ,Tamil Nadu 
          <option 
                          value=BI155/1/0.214849206/-1/1.375712963>CHENGAM ,Tamil 
          Nadu 
          <option 
                          value=BI156/1/0.159713404/-1/1.337712522>CHENGANNUR 
          ,Kerala 
          <option 
                          value=BI158/1/0.194900794/-1/1.355070988>CHENNIMALAI 
          ,Tamil Nadu 
          <option 
                          value=BI163/1/0.217628307/-1/1.38543254>CHETPUT ,Tamil 
          Nadu 
          <option 
                          value=BI164/1/0.21560097/-1/1.396878748>CHEYUR ,Tamil 
          Nadu 
          <option 
                          value=BI166/1/0.528082451/-1/1.350696208>CHHACHRAULI 
          ,Haryana 
          <option 
                          value=BI172/1/0.484111552/-1/1.353242504>CHHATA ,Uttar 
          Pradesh 
          <option 
                          value=BI173/1/0.434951058/-1/1.389627866>CHHATARPUR 
          ,Madhya Pradesh 
          <option 
                          value=BI177/1/0.474028219/-1/1.388056437>CHHIBRAMAU 
          ,Uttar Pradesh 
          <option 
                          value=BI181/1/0.385140653/-1/1.378385362>CHHINDWARA 
          ,Madhya Pradesh 
          <option 
                          value=BI190/1/0.198994268/-1/1.391436949>CHIDAMBARAM 
          ,Tamil Nadu 
          <option 
                          value=BI191/1/0.234370811/-1/1.357025573>CHIK BALLAPUR 
          ,Karnataka 
          <option 
                          value=BI195/1/0.232435626/-1/1.322982804>CHIKMAGALUR 
          ,Karnataka 
          <option 
                          value=BI196/1/0.234191358/-1/1.337727072>CHIKNAYAKANHALLI 
          ,Karnataka 
          <option 
                          value=BI205/1/0.272055996/-1/1.380844356>CHIMAKURTI 
          ,Andhra Pradesh 
          <option 
                          value=BI210/1/0.22162963/-1/1.396359788>CHINGLEPUT ,Tamil 
          Nadu 
          <option 
                          value=BI213/1/0.259945326/-1/1.391189594>CHINNA ANNALURU 
          ,Andhra Pradesh 
          <option 
                          value=BI214/1/0.189429894/-1/1.345933422>CHINNA DHARAPURAM 
          ,Tamil Nadu 
          <option 
                          value=BI215/1/0.27388448/-1/1.400763668>CHINNA GANJAM 
          ,Andhra Pradesh 
          <option 
                          value=BI217/1/0.203165344/-1/1.377240741>CHINNA SALEM 
          ,Tamil Nadu 
          <option 
                          value=BI225/1/0.319771164/-1/1.459212081>CHIPURUPALLE 
          ,Andhra Pradesh 
          <option 
                          value=BI229/1/0.276362875/-1/1.40305291>CHIRALA ,Andhra 
          Pradesh 
          <option 
                          value=BI230/1/0.493011464/-1/1.320742063>CHIRAWA ,Rajasthan 
          <option 
                          value=BI232/1/0.404948413/-1/1.438060847>CHIRMIRI ,Madhya 
          Pradesh 
          <option 
                          value=BI238/1/0.184895062/-1/1.327609788>CHITTALANCHERI 
          ,Kerala 
          <option 
                          value=BI239/1/0.4344806/-1/1.292965608>CHITTAURGARH 
          ,Rajasthan 
          <option 
                          value=BI241/1/0.230675044/-1/1.381018959>CHITTOOR ,Andhra 
          Pradesh 
          <option 
                          value=CH2/1/0.247466049/-1/1.385141534>CHITVEL ,Andhra 
          Pradesh 
          <option 
                          value=GO5/1/0.17488933/-1/1.361148148>CHOLAVANDAN ,Tamil 
          Nadu 
          <option 
                          value=GO6/1/0.474246473/-1/1.322158289>CHOMUN ,Rajasthan 
          <option 
                          value=GO7/1/0.370958995/-1/1.314660053>CHOPDA ,Maharashtra 
          <option 
                          value=GU9/1/0.399817019/-1/1.539544092>CHUNCHURA ,West 
          Bengal 
          <option 
                          value=GU14/1/0.174811728/-1/1.330912698>COCHIN ,Kerala 
          <option 
                          value=GU15/1/0.192150794/-1/1.343930335>COIMBATORE ,Tamil 
          Nadu 
          <option 
                          value=GU16/1/0.44110582/-1/1.519353175>COLGONG ,Bihar 
          <option 
                          value=GU18/1/0.459565256/-1/1.562053351>COOCH BEHAR 
          ,West Bengal 
          <option 
                          value=GU19/1/0.237843474/-1/1.30406746>COONDAPOOR ,Karnataka 
          <option 
                          value=GU20/1/0.198145503/-1/1.340840829>COONOOR ,Tamil 
          Nadu 
          <option 
                          value=GU22/1/0.205182981/-1/1.392693122>CUDDALORE ,Tamil 
          Nadu 
          <option 
                          value=GU23/1/0.252650794/-1/1.376231922>CUDDAPAH ,Andhra 
          Pradesh 
          <option 
                          value=GU24/1/0.271939594/-1/1.381164462>CUMBUM ,Andhra 
          Pradesh 
          <option 
                          value=GU25/1/0.357305996/-1/1.499477513>CUTTACK ,Orissa 
          <option 
                          value=GU28/1/0.386387125/-1/1.275199735>DABHOI ,Gujarat 
          <option 
                          value=GU29/1/0.339574074/-1/1.438977513>Dabugam ,Orissa 
          <option 
                          value=GU34/1/0.498492063/-1/1.35412037>DADRI ,Uttar 
          Pradesh 
          <option 
                          value=GU48/1/0.451732363/-1/1.533660935>DALKOLA ,West 
          Bengal 
          <option 
                          value=GU50/1/0.419755732/-1/1.467796737>DALTONGANJ ,Bihar 
          <option 
                          value=GU55/1/0.447604938/-1/1.484936949>DANAPUR ,Bihar 
          <option 
                          value=GU61/1/0.456572751/-1/1.499676367>DARBHANGA ,Bihar 
          <option 
                          value=GU64/1/0.472136684/-1/1.541023369>DARJEELING ,West 
          Bengal 
          <option 
                          value=GU66/1/0.469420635/-1/1.42397134>DARYABAD ,Uttar 
          Pradesh 
          <option 
                          value=GU70/1/0.448172399/-1/1.369858907>DATIA ,Madhya 
          Pradesh 
          <option 
                          value=GU72/1/0.437075397/-1/1.473587743>DAUDNAGAR ,Bihar 
          <option 
                          value=GU74/1/0.322361111/-1/1.302137125>DAUND ,Maharashtra 
          <option 
                          value=GU75/1/0.469478836/-1/1.327609788>DAUSA ,Rajasthan 
          <option 
                          value=GU76/1/0.252364638/-1/1.311017637>DAVANGERE ,Karnataka 
          <option 
                          value=GU84/1/0.52962963/-1/1.362734127>DEHRA DUN ,Uttar 
          Pradesh 
          <option 
                          value=GU85/1/0.434577601/-1/1.469634921>DEHRI ,Bihar 
          <option 
                          value=GU88/1/0.448094797/-1/1.4987403>DELSINGH SARAI 
          ,Bihar 
          <option 
                          value=GU89/1/0.449772928/-1/1.31616358>DELVI ,Rajasthan 
          <option 
                          value=GU91/1/0.218680776/-1/1.358179894>DENKANIKOTA 
          ,Tamil Nadu 
          <option 
                          value=GU93/1/0.518818783/-1/1.345894621>DEOBAND ,Haryana 
          <option 
                          value=GU99/1/0.427583774/-1/1.513664021>DEOGHAR ,Bihar 
          <option 
                          value=GU116/1/0.17711067/-1/1.355682099>DEVADANAPPATTI 
          ,Tamil Nadu 
          <option 
                          value=GU117/1/0.159097443/-1/1.376324074>DEVAKOTTAI 
          ,Tamil Nadu 
          <option 
                          value=GU119/1/0.231203704/-1/1.356797619>DEVANHALLI 
          ,Karnataka 
          <option 
                          value=GU124/1/0.175713845/-1/1.346287478>DEVIKOLAM ,Kerala 
          <option 
                          value=GU132/1/0.400879189/-1/1.327837743>DEWAS ,Madhya 
          Pradesh 
          <option 
                          value=GU134/1/0.183444885/-1/1.347698854>DHALI ,Tamil 
          Nadu 
          <option 
                          value=GU140/1/0.511616402/-1/1.370722222>DHAMPUR ,Uttar 
          Pradesh 
          <option 
                          value=GU142/1/0.361520723/-1/1.42397619>DHAMTARI ,Madhya 
          Pradesh 
          <option 
                          value=GU143/1/0.505587743/-1/1.366425044>DHANAURA ,Uttar 
          Pradesh 
          <option 
                          value=GU144/1/0.415327601/-1/1.502198413>DHANBAD ,Bihar 
          <option 
                          value=GU163/1/0.187426808/-1/1.353654762>DHARAPURAM 
          ,Tamil Nadu 
          <option 
                          value=GU169/1/0.2117306/-1/1.364771164>DHARMAPURI ,Tamil 
          Nadu 
          <option 
                          value=GU170/1/0.22602866/-1/1.316110229>Dharmastala 
          ,Karnataka 
          <option 
                          value=GU171/1/0.251671076/-1/1.345618166>DHARMAVARAM 
          ,Andhra Pradesh 
          <option 
                          value=GU174/1/0.562581129/-1/1.327309083>DHARMSALA ,Himachal 
          Pradesh 
          <option 
                          value=GU178/1/0.269776455/-1/1.309669312>DHARWAR ,Karnataka 
          <option 
                          value=GU181/1/0.360662257/-1/1.494675926>DHENKANAL ,Orissa 
          <option 
                          value=GU186/1/0.426720459/-1/1.347698854>DHIRPUR ,Madhya 
          Pradesh 
          <option 
                          value=GU189/1/0.396887566/-1/1.264883598>DHOLKA ,Gujarat 
          <option 
                          value=GU190/1/0.466035273/-1/1.359804674>DHOLPUR ,Rajasthan 
          <option 
                          value=GU191/1/0.268719136/-1/1.345933422>DHONE ,Andhra 
          Pradesh 
          <option 
                          value=GU192/1/0.37949515/-1/1.229972663>DHORAJI ,Gujarat 
          <option 
                          value=GU194/1/0.401373898/-1/1.247733686>DHRANGADHRA 
          ,Gujarat 
          <option 
                          value=GU196/1/0.454351411/-1/1.571045414>DHUBRI ,Assam 
          <option 
                          value=GU197/1/0.364954586/-1/1.305522487>DHULE ,Maharashtra 
          <option 
                          value=GU198/1/0.431425044/-1/1.531420194>DHULIAN ,Bihar 
          <option 
                          value=GU202/1/0.464284392/-1/1.554201058>DHUPGARI ,West 
          Bengal 
          <option 
                          value=GU206/1/0.492521605/-1/1.366444444>DIBAI ,Uttar 
          Pradesh 
          <option 
                          value=GU207/1/0.479790123/-1/1.65714418>DIBRUGRH ,Assam 
          <option 
                          value=GU209/1/0.479639771/-1/1.350128748>DIG ,Rajasthan 
          <option 
                          value=GU218/1/0.561077601/-1/1.310144621>DINANAGAR ,Punjab 
          <option 
                          value=GU219/1/0.180830688/-1/1.361482804>DINDIGUL ,Tamil 
          Nadu 
          <option 
                          value=GU221/1/0.456213845/-1/1.562218254>DINHATA ,West 
          Bengal 
          <option 
                          value=GU223/1/0.423606702/-1/1.260305115>DISA ,Gujarat 
          <option 
                          value=GU227/1/0.232018519/-1/1.353732363>DOD BALLAPUR 
          ,Karnataka 
          <option 
                          value=HA4/1/0.335422399/-1/1.276048501>DOMBIVLI ,Maharashtra 
          <option 
                          value=HA12/1/0.369964727/-1/1.410109788>DONGARGARH ,Madhya 
          Pradesh 
          <option 
                          value=HA27/1/0.41526455/-1/1.51963448>DUBRAJPUR ,West 
          Bengal 
          <option 
                          value=HA33/1/0.423645503/-1/1.523349647>DUMKA ,Bihar 
          <option 
                          value=HA35/1/0.44606746/-1/1.467830688>DUMRAON ,Bihar 
          <option 
                          value=HA43/1/0.370105379/-1/1.420770282>DURG ,Madhya 
          Pradesh 
          <option 
                          value=HA52/1/0.204571869/-1/1.382551587>ELAVANASUR ,Tamil 
          Nadu 
          <option 
                          value=HA58/1/0.291791005/-1/1.416128748>ELURU ,Andhra 
          Pradesh 
          <option 
                          value=HA59/1/0.275358907/-1/1.352835097>EMMIGANURU ,Andhra 
          Pradesh 
          <option 
                          value=HP2/1/0.436512787/-1/1.538966931>ENGLISH BAZAR 
          ,West Bengal 
          <option 
                          value=HP3/1/0.188421076/-1/1.351200617>ERAKAMPATTI ,Tamil 
          Nadu 
          <option 
                          value=HP6/1/0.174860229/-1/1.332280423>ERNAKULAM ,Kerala 
          <option 
                          value=HP7/1/0.197907848/-1/1.357205026>ERODE ,Tamil 
          Nadu 
          <option 
                          value=HP11/1/0.481186949/-1/1.362802028>ETAH ,Uttar 
          Pradesh 
          <option 
                          value=HP12/1/0.467533951/-1/1.382018078>ETAWAH ,Uttar 
          Pradesh 
          <option 
                          value=HP13/1/0.158171076/-1/1.361739859>ETTAIYAPURAM 
          ,Tamil Nadu 
          <option 
                          value=HP14/1/0.467563051/-1/1.434049824>FAIZABAD ,Uttar 
          Pradesh 
          <option 
                          value=HP16/1/0.463013668/-1/1.55759127>FALAKATA ,West 
          Bengal 
          <option 
                          value=HP17/1/0.49555776/-1/1.349735891>FARIDABAD ,Haryana 
          <option 
                          value=HP18/1/0.535420635/-1/1.305255732>FARIDKOT ,Punjab 
          <option 
                          value=HP19/1/0.492647707/-1/1.380257496>FARIDPUR ,Uttar 
          Pradesh 
          <option 
                          value=HP20/1/0.477791887/-1/1.390355379>FARRUKHABAD 
          ,Uttar Pradesh 
          <option 
                          value=HP24/1/0.471850529/-1/1.367113757>FATEHABAD ,Uttar 
          Pradesh 
          <option 
                          value=HP27/1/0.488772487/-1/1.308762346>FATEHPUR ,Rajasthan 
          <option 
                          value=HP28/1/0.474421076/-1/1.41791843>FATEHPUR ,Uttar 
          Pradesh 
          <option 
                          value=HP29/1/0.452692681/-1/1.411036155>FATEHPUR ,Uttar 
          Pradesh 
          <option 
                          value=HP30/1/0.420439594/-1/1.531701499>FATEHPUR ,West 
          Bengal 
          <option 
                          value=HP31/1/0.473063051/-1/1.355968254>FATEHPUR SIKRI 
          ,Uttar Pradesh 
          <option 
                          value=HP33/1/0.530856702/-1/1.29250485>FAZILKA ,Punjab 
          <option 
                          value=HP35/1/0.474042769/-1/1.368748236>FIROZABAD ,Uttar 
          Pradesh 
          <option 
                          value=HP36/1/0.539839065/-1/1.302820988>FIROZPUR ,Punjab 
          <option 
                          value=HP37/1/0.485008818/-1/1.343484127>FIROZPUR JHIRKA 
          ,Haryana 
          <option 
                          value=HP38/1/0.459119048/-1/1.524271164>FORBESGANJ ,Bihar 
          <option 
                          value=HP41/1/0.269388448/-1/1.32054321>GADAG ,Karnataka 
          <option 
                          value=HP43/1/0.400190476/-1/1.375640212>GADARWARA ,Madhya 
          Pradesh 
          <option 
                          value=JK2/1/0.445199295/-1/1.463397707>GAHMAR ,Uttar 
          Pradesh 
          <option 
                          value=JK6/1/0.274684744/-1/1.310983686>GAJENDRAGARH 
          ,Karnataka 
          <option 
                          value=JK12/1/0.402828924/-1/1.222251323>GANDHI DAM ,Gujarat 
          <option 
                          value=JK16/1/0.522456349/-1/1.289643298>GANGANAGAR ,Rajasthan 
          <option 
                          value=JK17/1/0.462203704/-1/1.339482804>GANGAPUR ,Rajasthan 
          <option 
                          value=JK20/1/0.269402998/-1/1.336058642>GANGAWATI ,Karnataka 
          <option 
                          value=JK23/1/0.520041005/-1/1.348969577>GANGOH ,Uttar 
          Pradesh 
          <option 
                          value=JK24/1/0.477175926/-1/1.537380952>GANGTOK ,Sikkim 
          <option 
                          value=JK30/1/0.320702381/-1/1.457247795>GARBHAM ,Andhra 
          Pradesh 
          <option 
                          value=JK44/1/0.457183862/-1/1.59007716>GAUHATI ,Assam 
          <option 
                          value=JK46/1/0.237537919/-1/1.353392857>GAURIBIDANUR 
          ,Karnataka 
          <option 
                          value=JK47/1/0.455491182/-1/1.570764109>GAURIPUR ,Assam 
          <option 
                          value=JK48/1/0.43286067/-1/1.484059083>GAYA ,Bihar 
          <option 
                          value=JK60/1/0.395597443/-1/1.532036155>GHATAL ,West 
          Bengal 
          <option 
                          value=JK64/1/0.500432099/-1/1.351855379>GHAZIABAD ,Uttar 
          Pradesh 
          <option 
                          value=JK65/1/0.446838624/-1/1.449541005>GHAZIPUR ,Uttar 
          Pradesh 
          <option 
                          value=JK74/1/0.268447531/-1/1.378036155>GIDDALUR ,Andhra 
          Pradesh 
          <option 
                          value=JK76/1/0.627140653/-1/1.297122134>GILGIT ,Jammu 
          &amp; Kashmir 
          <option 
                          value=JK81/1/0.422185626/-1/1.501917108>GIRIDIH ,Bihar 
          <option 
                          value=JK82/1/0.45706261/-1/1.58233157>GOALPARA ,Assam 
          <option 
                          value=JK90/1/0.397484127/-1/1.285239418>GODHRA ,Gujarat 
          <option 
                          value=JK93/1/0.461413139/-1/1.369660053>GOHAD ,Madhya 
          Pradesh 
          <option 
                          value=JK95/1/0.282275132/-1/1.306395503>GOKAK ,Karnataka 
          <option 
                          value=JK96/1/0.254033069/-1/1.297548942>GOKARN ,Karnataka 
          <option 
                          value=JK98/1/0.490295414/-1/1.397412257>GOLA GOKARANNATH 
          ,Uttar Pradesh 
          <option 
                          value=JK99/1/0.462853616/-1/1.640736332>GOLAGHAT ,Assam 
          <option 
                          value=JK111/1/0.473645062/-1/1.431062169>GONDA ,Uttar 
          Pradesh 
          <option 
                          value=JK112/1/0.383447972/-1/1.236248677>GONDAL ,Gujarat 
          <option 
                          value=JK113/1/0.374693563/-1/1.40028351>GONDIA ,Maharashtra 
          <option 
                          value=JK117/1/0.263932099/-1/1.345341711>GOOTY ,Andhra 
          Pradesh 
          <option 
                          value=JK121/1/0.462111552/-1/1.474436508>GOPALGANJ ,Bihar 
          <option 
                          value=JK124/1/0.199983686/-1/1.352097884>GOPICHETTIPALAIYAM 
          ,Tamil Nadu 
          <option 
                          value=JK125/1/0.441440476/-1/1.439263668>GOPIGANJ ,Uttar 
          Pradesh 
          <option 
                          value=JK127/1/0.467145944/-1/1.455530864>GORAKHPUR ,Uttar 
          Pradesh 
          <option 
                          value=JK137/1/0.480095679/-1/1.352481041>GOVARDHAN ,Uttar 
          Pradesh 
          <option 
                          value=JK143/1/0.15731746/-1/1.348794974>GUDALUR ,Tamil 
          Nadu 
          <option 
                          value=JK149/1/0.287008818/-1/1.412753086>GUDIVADA ,Andhra 
          Pradesh 
          <option 
                          value=JK150/1/0.225951058/-1/1.376940035>GUDIYATTAM 
          ,Tamil Nadu 
          <option 
                          value=JK151/1/0.211585097/-1/1.390277778>GUDRAIPPATTU 
          ,Tamil Nadu 
          <option 
                          value=JK152/1/0.24695194/-1/1.394123898>GUDUR ,Andhra 
          Pradesh 
          <option 
                          value=JK154/1/0.498986772/-1/1.358238095>GULAOTHI ,Uttar 
          Pradesh 
          <option 
                          value=JK155/1/0.302635802/-1/1.341481041>GULBARGA ,Karnataka 
          <option 
                          value=JK163/1/0.402319665/-1/1.47622619>GUMLA ,Bihar 
          <option 
                          value=JK164/1/0.240850529/-1/1.360595238>GUMMANAYAKANAPALAYA 
          ,Karnataka 
          <option 
                          value=JK165/1/0.430304674/-1/1.349857143>GUNA ,Madhya 
          Pradesh 
          <option 
                          value=JK168/1/0.206157848/-1/1.339046296>GUNDALPET ,Karnataka 
          <option 
                          value=JK173/1/0.264834215/-1/1.350924162>GUNTAKAL ,Andhra 
          Pradesh 
          <option 
                          value=JK174/1/0.284574074/-1/1.397412257>GUNTUR ,Andhra 
          Pradesh 
          <option 
                          value=JK179/1/0.559317019/-1/1.316629189>GURDASPUR ,Punjab 
          <option 
                          value=JK181/1/0.496983686/-1/1.346500882>GURGAON ,Haryana 
          <option 
                          value=JK186/1/0.447226631/-1/1.382415785>GURSARAI ,Uttar 
          Pradesh 
          <option 
                          value=JK191/1/0.458231481/-1/1.364237654>GWALIOR ,Madhya 
          Pradesh 
          <option 
                          value=JK193/1/0.398555996/-1/1.537419753>HABRA ,West 
          Bengal 
          <option 
                          value=JK196/1/0.262249118/-1/1.325694004>HADAGALLI ,Karnataka 
          <option 
                          value=JK200/1/0.448351852/-1/1.487686949>HAJIPUR ,Bihar 
          <option 
                          value=KA4/1/0.510205026/-1/1.388570547>HALDWANI ,Uttar 
          Pradesh 
          <option 
                          value=KA5/1/0.267627866/-1/1.305241182>HALIYAL ,Karnataka 
          <option 
                          value=KA11/1/0.453153439/-1/1.399381393>HAMIRPUR ,Uttar 
          Pradesh 
          <option 
                          value=KA16/1/0.257743386/-1/1.311686949>HANGAL ,Karnataka 
          <option 
                          value=KA18/1/0.508143739/-1/1.326246914>HANSI ,Haryana 
          <option 
                          value=KA22/1/0.394714727/-1/1.540155203>HAORA ,West 
          Bengal 
          <option 
                          value=KA23/1/0.50158642/-1/1.358058642>HAPUR ,Uttar 
          Pradesh 
          <option 
                          value=KA26/1/0.389903439/-1/1.345991623>HARDA KHAS ,Madhya 
          Pradesh 
          <option 
                          value=KA27/1/0.478354497/-1/1.399085538>HARDOI ,Uttar 
          Pradesh 
          <option 
                          value=KA30/1/0.253402557/-1/1.310712081>HARIHAR ,Karnataka 
          <option 
                          value=KA33/1/0.159097443/-1/1.334821869>HARIPAD ,Kerala 
          <option 
                          value=KA36/1/0.258155644/-1/1.326639771>HARPANAHALLI 
          ,Karnataka 
          <option 
                          value=KA42/1/0.210377425/-1/1.362496473>HARUR ,Tamil 
          Nadu 
          <option 
                          value=KA45/1/0.501450617/-1/1.366929453>HASANPUR ,Uttar 
          Pradesh 
          <option 
                          value=KA47/1/0.227105379/-1/1.328633157>HASSAN ,Karnataka 
          <option 
                          value=KA52/1/0.481890212/-1/1.364261905>HATHRAS ,Uttar 
          Pradesh 
          <option 
                          value=KA60/1/0.258194444/-1/1.310130071>HAVERI ,Karnataka 
          <option 
                          value=KA62/1/0.418974868/-1/1.490601852>HAZARIBAG ,Bihar 
          <option 
                          value=KA63/1/0.419173721/-1/1.490456349>HAZARIBAGH ,Bihar 
          <option 
                          value=KA66/1/0.270334215/-1/1.311657848>HEBLI ,Karnataka 
          <option 
                          value=KA76/1/0.466748236/-1/1.345011905>HINDAUN ,Rajasthan 
          <option 
                          value=KA79/1/0.241335538/-1/1.345050705>HINDUPUR ,Andhra 
          Pradesh 
          <option 
                          value=KA80/1/0.358916226/-1/1.376537478>HINGANGHAT ,Maharashtra 
          <option 
                          value=KA81/1/0.34429321/-1/1.34693739>HINGOLI ,Maharashtra 
          <option 
                          value=KA87/1/0.252374339/-1/1.316925044>HIREKERUR ,Karnataka 
          <option 
                          value=KA90/1/0.509021605/-1/1.310716931>HISAR ,Haryana 
          <option 
                          value=KA91/1/0.433534832/-1/1.491319665>HISUA ,Bihar 
          <option 
                          value=KA94/1/0.487074956/-1/1.35079321>HODAL ,Haryana 
          <option 
                          value=KA99/1/0.223196208/-1/1.331130952>HOLE NARSIPUR 
          ,Karnataka 
          <option 
                          value=KA103/1/0.24859612/-1/1.320746914>HONNALI ,Karnataka 
          <option 
                          value=KA107/1/0.39712037/-1/1.345642416>HOSHANGABAD 
          ,Madhya Pradesh 
          <option 
                          value=KA108/1/0.550485009/-1/1.32547575>HOSHIARPUR ,Punjab 
          <option 
                          value=KA109/1/0.228191799/-1/1.358213845>HOSKOTE ,Karnataka 
          <option 
                          value=KA110/1/0.266638448/-1/1.333541446>HOSPET ,Karnataka 
          <option 
                          value=KA111/1/0.222318342/-1/1.358858907>HOSUR ,Tamil 
          Nadu 
          <option 
                          value=KA113/1/0.267918871/-1/1.311007937>HUBLI ,Karnataka 
          <option 
                          value=KA118/1/0.214747354/-1/1.332052469>HUNSUR ,Karnataka 
          <option 
                          value=KA126/1/0.303712522/-1/1.362515873>HYDERABAD ,Andhra 
          Pradesh 
          <option 
                          value=KA129/1/0.291213845/-1/1.300129189>ICHALKARANJI 
          ,Maharashtra 
          <option 
                          value=KA130/1/0.333656966/-1/1.478791887>ICHCHAPURAM 
          ,Andhra Pradesh 
          <option 
                          value=KA131/1/0.202205026/-1/1.345923721>IDAPPADI ,Tamil 
          Nadu 
          <option 
                          value=KA136/1/0.159296296/-1/1.37280776>ILAIYANKUDI 
          ,Tamil Nadu 
          <option 
                          value=KA137/1/0.278652116/-1/1.328875661>ILKAL ,Karnataka 
          <option 
                          value=KA138/1/0.432797619/-1/1.640236772>IMPHAL ,Manipur 
          <option 
                          value=KA143/1/0.396819665/-1/1.324651235>INDORE ,Madhya 
          Pradesh 
          <option 
                          value=KA145/1/0.276231922/-1/1.400152557>INKOLLU ,Andhra 
          Pradesh 
          <option 
                          value=KA150/1/0.18040873/-1/1.330742945>IRINJALAKUDA 
          ,Kerala 
          <option 
                          value=KA154/1/0.458362434/-1/1.536808642>ISLAMPUR ,West 
          Bengal 
          <option 
                          value=KA155/1/0.394763228/-1/1.345608466>ITARSI ,Madhya 
          Pradesh 
          <option 
                          value=KA161/1/0.404444004/-1/1.395850529>JABALPUR ,Madhya 
          Pradesh 
          <option 
                          value=KA165/1/0.526797178/-1/1.3447694>JAGADHRI ,Haryana 
          <option 
                          value=KA170/1/0.333239859/-1/1.43222134>JAGDALPUR ,Madhya 
          Pradesh 
          <option 
                          value=KA172/1/0.444578483/-1/1.473932099>JAGDISPUR ,Bihar 
          <option 
                          value=KA178/1/0.537462522/-1/1.317856261>JAGRAOH ,Punjab 
          <option 
                          value=KA180/1/0.440174603/-1/1.483753527>JAHANABAD ,Bihar 
          <option 
                          value=KA183/1/0.455825838/-1/1.402994709>JAHANABAD ,Uttar 
          Pradesh 
          <option 
                          value=KA184/1/0.495989418/-1/1.363704145>JAHANGIRABAD 
          ,Uttar Pradesh 
          <option 
                          value=KA190/1/0.469769841/-1/1.310707231>JAIPUR ,Rajasthan 
          <option 
                          value=KA191/1/0.458541887/-1/1.423825838>JAIS ,Uttar 
          Pradesh 
          <option 
                          value=KA192/1/0.469886243/-1/1.238154762>JAISALMER ,Rajasthan 
          <option 
                          value=KA202/1/0.517135802/-1/1.345070106>JALABAD ,Uttar 
          Pradesh 
          <option 
                          value=KA203/1/0.484111552/-1/1.353242504>JALABAD ,Uttar 
          Pradesh 
          <option 
                          value=KA204/1/0.486648148/-1/1.366240741>JALAI ,Uttar 
          Pradesh 
          <option 
                          value=KA205/1/0.204101411/-1/1.359702822>JALAKANDAPURAM 
          ,Tamil Nadu 
          <option 
                          value=KA211/1/0.456451499/-1/1.37995679>JALAUN ,Uttar 
          Pradesh 
          <option 
                          value=KA213/1/0.479688272/-1/1.362229718>JALESAR ,Uttar 
          Pradesh 
          <option 
                          value=KA216/1/0.366894621/-1/1.319369489>JALGAON ,Maharashtra 
          <option 
                          value=KA218/1/0.346393298/-1/1.325010141>JALNA ,Maharashtra 
          <option 
                          value=KA219/1/0.442512346/-1/1.267890653>JALOR ,Rajasthan 
          <option 
                          value=KA220/1/0.46308157/-1/1.537681658>JALPAIGURI ,West 
          Bengal 
          <option 
                          value=KA223/1/0.441969136/-1/1.510079806>JAMALPUR ,Bihar 
          <option 
                          value=KA228/1/0.288070988/-1/1.314538801>JAMKHANDI ,Karnataka 
          <option 
                          value=KA230/1/0.259091711/-1/1.368554233>JAMMALAMADUGU 
          ,Andhra Pradesh 
          <option 
                          value=KA231/1/0.571093034/-1/1.293562169>JAMMU ,Jammu 
          &amp; Kashmir 
          <option 
                          value=KA232/1/0.392231481/-1/1.222261023>JAMNAGAR ,Gujarat 
          <option 
                          value=KA234/1/0.397716931/-1/1.505234568>JAMSHEDPUR 
          ,Bihar 
          <option 
                          value=KA239/1/0.427384921/-1/1.537162698>JANGIPUR ,West 
          Bengal 
          <option 
                          value=KA244/1/0.51204321/-1/1.359198413>JANSATH ,Uttar 
          Pradesh 
          <option 
                          value=KA245/1/0.412708554/-1/1.311017637>JAORA ,Madhya 
          Pradesh 
          <option 
                          value=KA250/1/0.511194444/-1/1.376333774>JASPUR ,Uttar 
          Pradesh 
          <option 
                          value=KA251/1/0.475575397/-1/1.362787478>JASRANA ,Uttar 
          Pradesh 
          <option 
                          value=KA254/1/0.469449735/-1/1.377720899>JASWANTNAGAR 
          ,Uttar Pradesh 
          <option 
                          value=KA260/1/0.449709877/-1/1.443847002>JAUNPUR ,Uttar 
          Pradesh 
          <option 
                          value=KA266/1/0.195676808/-1/1.37996164>JAYAMKONDACHOLAPURAM 
          ,Tamil Nadu 
          <option 
                          value=KA269/1/0.464148589/-1/1.503376984>JAYNAGAR ,Bihar 
          <option 
                          value=KA270/1/0.387070988/-1/1.543880071>JAYNAGAR ,West 
          Bengal 
          <option 
                          value=KA273/1/0.401674603/-1/1.223696649>JETPUR ,Gujarat 
          <option 
                          value=KA274/1/0.379781305/-1/1.233052469>JETPUR ,Gujarat 
          <option 
                          value=KA277/1/0.432462963/-1/1.50811552>JHA JHA ,Bihar 
          <option 
                          value=KA279/1/0.499340829/-1/1.338406085>JHAJJAR ,Haryana 
          <option 
                          value=KA285/1/0.426589506/-1/1.493293651>JHALPO ,Bihar 
          <option 
                          value=KA286/1/0.444229277/-1/1.371789242>JHANSI ,Uttar 
          Pradesh 
          <option 
                          value=KA289/1/0.41467284/-1/1.508925485>JHARIA ,Bihar 
          <option 
                          value=KE4/1/0.423121693/-1/1.541037919>JIAGANJ ,West 
          Bengal 
          <option 
                          value=KE7/1/0.511766755/-1/1.332338624>JIND ,Haryana 
          <option 
                          value=KE11/1/0.458881393/-1/1.275005732>JODHPUR ,Rajasthan 
          <option 
                          value=KE16/1/0.467165344/-1/1.644926808>JORAHT ,Assam 
          <option 
                          value=KE21/1/0.546832892/-1/1.319631393>JULLUNDUR ,Punjab 
          <option 
                          value=KE24/1/0.37566358/-1/1.230190917>JUNAGADH ,Gujarat 
          <option 
                          value=KE34/1/0.178555996/-1/1.345045855>KADAIKAN ,Tamil 
          Nadu 
          <option 
                          value=KE35/1/0.157511464/-1/1.350410053>KADAIYANALLUR 
          ,Tamil Nadu 
          <option 
                          value=KE37/1/0.216488536/-1/1.378763668>KADALADI ,Tamil 
          Nadu 
          <option 
                          value=KE38/1/0.14244224/-1/1.359436067>KADAMBUR ,Tamil 
          Nadu 
          <option 
                          value=KE41/1/0.24637963/-1/1.364703263>KADIRI ,Andhra 
          Pradesh 
          <option 
                          value=KE53/1/0.513260582/-1/1.348009259>KAIRANA ,Uttar 
          Pradesh 
          <option 
                          value=KE55/1/0.520235009/-1/1.333953704>KAITHAL ,Haryana 
          <option 
                          value=KE56/1/0.486982804/-1/1.382663139>KAKALA ,Uttar 
          Pradesh 
          <option 
                          value=KE60/1/0.295865079/-1/1.435912257>KAKINADA ,Andhra 
          Pradesh 
          <option 
                          value=KE61/1/0.469115079/-1/1.398033069>KAKORI ,Uttar 
          Pradesh 
          <option 
                          value=KE66/1/0.177532628/-1/1.334778219>KALADI ,Kerala 
          <option 
                          value=KE68/1/0.240123016/-1/1.391650353>KALAHASTI ,Andhra 
          Pradesh 
          <option 
                          value=KE69/1/0.157239859/-1/1.373040564>KALAIYARKOVIL 
          ,Tamil Nadu 
          <option 
                          value=KE70/1/0.139963845/-1/1.354164021>KALAKKADU ,Tamil 
          Nadu 
          <option 
                          value=MP3/1/0.193426367/-1/1.345113757>KALAPPATTI ,Tamil 
          Nadu 
          <option 
                          value=MP5/1/0.222953704/-1/1.386635362>KALAVAI ,Tamil 
          Nadu 
          <option 
                          value=MP6/1/0.264970018/-1/1.308936949>KALGHATGI ,Karnataka 
          <option 
                          value=MP8/1/0.194954145/-1/1.327275132>KALIKAVU ,Kerala 
          <option 
                          value=MP10/1/0.472708995/-1/1.544850088>KALIMPONG ,West 
          Bengal 
          <option 
                          value=MP13/1/0.53844224/-1/1.328473104>KALKA ,Haryana 
          <option 
                          value=MP14/1/0.204964727/-1/1.378700617>KALLAKKURICHCHI 
          ,Tamil Nadu 
          <option 
                          value=MP16/1/0.139983245/-1/1.352558642>KALLIDAIKURICHCHI 
          ,Tamil Nadu 
          <option 
                          value=MP20/1/0.405855379/-1/1.265839065>KALOL ,Gujarat 
          <option 
                          value=MP21/1/0.456039242/-1/1.392402116>KALPI ,Uttar 
          Pradesh 
          <option 
                          value=MP23/1/0.158534832/-1/1.345652116>KALUGUMALAI 
          ,Tamil Nadu 
          <option 
                          value=MP24/1/0.253315256/-1/1.38653836>KALUVAYA ,Andhra 
          Pradesh 
          <option 
                          value=MP27/1/0.253960317/-1/1.346282628>KALYANDRUG ,Andhra 
          Pradesh 
          <option 
                          value=MP30/1/0.254910935/-1/1.373651675>KAMALAPURAM 
          ,Andhra Pradesh 
          <option 
                          value=MP33/1/0.482826279/-1/1.34914903>KAMAN ,Rajasthan 
          <option 
                          value=MP34/1/0.190399912/-1/1.348217813>KAMANAAYAKKANPALAIYAM 
          ,Tamil Nadu 
          <option 
                          value=MP42/1/0.370440035/-1/1.379680335>KAMTHI ,Maharashtra 
          <option 
                          value=MP43/1/0.158263228/-1/1.362496473>KAMUDI ,Tamil 
          Nadu 
          <option 
                          value=MP45/1/0.323835538/-1/1.397160053>Kanakanur ,Andhra 
          Pradesh 
          <option 
                          value=MP46/1/0.21891358/-1/1.345045855>KANAKAPURA ,Karnataka 
          <option 
                          value=MP48/1/0.271847443/-1/1.334167108>KANAKGIRI ,Karnataka 
          <option 
                          value=MP53/1/0.224049824/-1/1.391582451>KANCHIPURAM 
          ,Tamil Nadu 
          <option 
                          value=MP54/1/0.399196208/-1/1.543443563>KANCHRAPARA 
          ,West Bengal 
          <option 
                          value=MP58/1/0.511975309/-1/1.34475>KANDHLA ,Uttar Pradesh 
          <option 
                          value=MP62/1/0.26562963/-1/1.395186067>KANDUKUR ,Andhra 
          Pradesh 
          <option 
                          value=MP63/1/0.2585097/-1/1.345671517>KANEKALLA ,Andhra 
          Pradesh 
          <option 
                          value=MP64/1/0.192204145/-1/1.354280423>KANGAYAM ,Tamil 
          Nadu 
          <option 
                          value=MP69/1/0.268917989/-1/1.38821649>KANI GIRI ,Andhra 
          Pradesh 
          <option 
                          value=MP72/1/0.2254806/-1/1.384244268>KANIPPETTAI ,Tamil 
          Nadu 
          <option 
                          value=MP77/1/0.353886684/-1/1.423011023>KANKER ,Madhya 
          Pradesh 
          <option 
                          value=MP80/1/0.472417989/-1/1.380834656>KANNAUJ ,Uttar 
          Pradesh 
          <option 
                          value=MP85/1/0.465045855/-1/1.389031305>KANSUA ,Uttar 
          Pradesh 
          <option 
                          value=MP88/1/0.507333774/-1/1.372759259>KANTH ,Uttar 
          Pradesh 
          <option 
                          value=MP89/1/0.380314815/-1/1.532205908>KANTHI ,West 
          Bengal 
          <option 
                          value=MP91/1/0.401960758/-1/1.275815697>KAPADVANJ ,Gujarat 
          <option 
                          value=MP96/1/0.54781261/-1/1.31012037>KAPURTHALA ,Punjab 
          <option 
                          value=MP97/1/0.301796737/-1/1.295216049>KARAD ,Maharashtra 
          <option 
                          value=MP100/1/0.175718695/-1/1.375397707>KARAIKKUDI 
          ,Tamil Nadu 
          <option 
                          value=MP107/1/0.462640212/-1/1.344924603>KARAULI ,Rajasthan 
          <option 
                          value=MP112/1/0.444578483/-1/1.364378307>KARERA ,Madhya 
          Pradesh 
          <option 
                          value=MP115/1/0.471525573/-1/1.378147707>KARHAL ,Uttar 
          Pradesh 
          <option 
                          value=MP117/1/0.190792769/-1/1.393992945>KARIKAL ,Tamil 
          Nadu 
          <option 
                          value=MP118/1/0.214892857/-1/1.365508377>KARIMANGALAM 
          ,Tamil Nadu 
          <option 
                          value=MP119/1/0.321866402/-1/1.381790123>KARIMNAGAR 
          ,Andhra Pradesh 
          <option 
                          value=MP123/1/0.23044224/-1/1.309407407>KARKAL ,Karnataka 
          <option 
                          value=MP127/1/0.518387125/-1/1.344124339>KARNAL ,Haryana 
          <option 
                          value=MP131/1/0.157511464/-1/1.327891093>KARUNAGAPALLI 
          ,Kerala 
          <option 
                          value=MP132/1/0.191292328/-1/1.363325838>KARUR ,Tamil 
          Nadu 
          <option 
                          value=MP133/1/0.194095679/-1/1.328967813>KARUVAMBRAM 
          ,Kerala 
          <option 
                          value=MP134/1/0.23431746/-1/1.387343474>KARVETNAGAR 
          ,Andhra Pradesh 
          <option 
                          value=MP136/1/0.258630952/-1/1.294347884>KARWAR ,Karnataka 
          <option 
                          value=MP137/1/0.440189153/-1/1.412757937>KARWI ,Uttar 
          Pradesh 
          <option 
                          value=MP140/1/0.218118166/-1/1.309358907>KASARAGOD ,Kerala 
          <option 
                          value=MP141/1/0.451291005/-1/1.528277337>KASBA ,Bihar 
          <option 
                          value=MP145/1/0.485522928/-1/1.373152116>KASGANJ ,Uttar 
          Pradesh 
          <option 
                          value=MP146/1/0.510098325/-1/1.378642416>KASHIPUR ,Uttar 
          Pradesh 
          <option 
                          value=MP156/1/0.565132275/-1/1.318637125>KATHUA ,Jammu 
          &amp; Kashmir 
          <option 
                          value=MP157/1/0.446368166/-1/1.503828042>KATIHAR ,Bihar 
          <option 
                          value=MP158/1/0.279030423/-1/1.311900353>KATKOL ,Karnataka 
          <option 
                          value=MP166/1/0.486522046/-1/1.367409612>KAURIAGANJ 
          ,Uttar Pradesh 
          <option 
                          value=MP168/1/0.260372134/-1/1.396723545>KAVALI ,Andhra 
          Pradesh 
          <option 
                          value=MP171/1/0.199503527/-1/1.354227072>KAVUNDAPPADI 
          ,Tamil Nadu 
          <option 
                          value=MP173/1/0.384306437/-1/1.41844224>KAWARDHA ,Madhya 
          Pradesh 
          <option 
                          value=MP174/1/0.140701058/-1/1.364164903>KAYALPATNAM 
          ,Tamil Nadu 
          <option 
                          value=MP175/1/0.158869489/-1/1.327861993>KAYANKULAM 
          ,Kerala 
          <option 
                          value=MP176/1/0.141661376/-1/1.357908289>KAYATTAR ,Tamil 
          Nadu 
          <option 
                          value=MP199/1/0.445281746/-1/1.509580247>KHAGARIA ,Bihar 
          <option 
                          value=MP200/1/0.44662037/-1/1.484820547>KHAGAUL ,Bihar 
          <option 
                          value=MP201/1/0.48785582/-1/1.35906261>KHAIR ,Uttar 
          Pradesh 
          <option 
                          value=MP202/1/0.480609788/-1/1.410022487>KHAIRABAD ,Uttar 
          Pradesh 
          <option 
                          value=MP213/1/0.389597884/-1/1.267958554>KHAMBHAT ,Gujarat 
          <option 
                          value=MP214/1/0.361389771/-1/1.327876543>KHAMGAON ,Maharashtra 
          <option 
                          value=MP216/1/0.301074074/-1/1.396844797>KHAMMAM ,Andhra 
          Pradesh 
          <option 
                          value=MP221/1/0.481962963/-1/1.310430776>KHANDELA ,Rajasthan 
          <option 
                          value=MP224/1/0.381018078/-1/1.333037037>KHANDWA ,Madhya 
          Pradesh 
          <option 
                          value=MP226/1/0.498225309/-1/1.364257055>KHANPUR ,Uttar 
          Pradesh 
          <option 
                          value=MP229/1/0.438598325/-1/1.511146825>KHARAGPUR ,Bihar 
          <option 
                          value=MP230/1/0.389893739/-1/1.519362875>KHARAGPUR ,West 
          Bengal 
          <option 
                          value=MP253/1/0.503996914/-1/1.349367284>KHEKRA ,Uttar 
          Pradesh 
          <option 
                          value=MP255/1/0.487167108/-1/1.41074515>KHERI ,Uttar 
          Pradesh 
          <option 
                          value=MP267/1/0.491556437/-1/1.391742504>KHUDAGANJ ,Uttar 
          Pradesh 
          <option 
                          value=MP271/1/0.419784832/-1/1.367627866>KHURAI ,Madhya 
          Pradesh 
          <option 
                          value=MP274/1/0.493268519/-1/1.345899471>KHURJA ,Uttar 
          Pradesh 
          <option 
                          value=MP281/1/0.158248677/-1/1.363102734>KILAKARAI ,Tamil 
          Nadu 
          <option 
                          value=MP282/1/0.185142416/-1/1.339119048>KILAKKOTTARA 
          ,Kerala 
          <option 
                          value=MP284/1/0.177750882/-1/1.363068783>KILASEVVALPATTI 
          ,Tamil Nadu 
          <option 
                          value=MP285/1/0.141447972/-1/1.328463404>KILIMANUR ,Kerala 
          <option 
                          value=MP288/1/0.202908289/-1/1.382614638>KIRANUR ,Tamil 
          Nadu 
          <option 
                          value=MP289/1/0.184550705/-1/1.375640212>KIRANUR ,Tamil 
          Nadu 
          <option 
                          value=MP290/1/0.515220018/-1/1.365479277>KIRATPUR ,Uttar 
          Pradesh 
          <option 
                          value=MP301/1/0.193222663/-1/1.359862875>KODUMUDI ,Tamil 
          Nadu 
          <option 
                          value=MP302/1/0.273753527/-1/1.357903439>KODUMURU ,Andhra 
          Pradesh 
          <option 
                          value=MP304/1/0.448177249/-1/1.643282628>KOHIMA ,Nagaland 
          <option 
                          value=MP307/1/0.265896384/-1/1.367419312>KOILKUNTLA 
          ,Andhra Pradesh 
          <option 
                          value=MP311/1/0.139823192/-1/1.348955026>KOLACHEL ,Tamil 
          Nadu 
          <option 
                          value=MP313/1/0.22936067/-1/1.364286155>KOLAR ,Karnataka 
          <option 
                          value=MP315/1/0.225907407/-1/1.366463845>KOLAR GOLD 
          FIELDS ,Karnataka 
          <option 
                          value=MP316/1/0.440339506/-1/1.355051587>KOLARAS ,Madhya 
          Pradesh 
          <option 
                          value=MP321/1/0.291543651/-1/1.296016314>KOLHAPUR ,Maharashtra 
          <option 
                          value=MP324/1/0.212259259/-1/1.346243827>KOLLEGAL ,Karnataka 
          <option 
                          value=MP325/1/0.296582892/-1/1.362748677>Kolur ,Andhra 
          Pradesh 
          <option 
                          value=MP332/1/0.194566138/-1/1.326319665>KONDOTTI ,Kerala 
          <option 
                          value=MP333/1/0.204193563/-1/1.352388889>KONGADAK ,Tamil 
          Nadu 
          <option 
                          value=MP336/1/0.45432716/-1/1.459042328>KOPAGANI ,Uttar 
          Pradesh 
          <option 
                          value=MP337/1/0.346960758/-1/1.300264991>KOPARGAON ,Maharashtra 
          <option 
                          value=MP339/1/0.267802469/-1/1.329549824>KOPPAL ,Karnataka 
          <option 
                          value=MP349/1/0.485348325/-1/1.352005732>KOSI ,Uttar 
          Pradesh 
          <option 
                          value=MP350/1/0.276838183/-1/1.366551146>KOSIGI ,Andhra 
          Pradesh 
          <option 
                          value=MP356/1/0.439558642/-1/1.324137125>KOTA ,Rajasthan 
          <option 
                          value=MP361/1/0.519560847/-1/1.371197531>KOTDWARA ,Uttar 
          Pradesh 
          <option 
                          value=MP365/1/0.533965608/-1/1.306604056>KOTKAPURA ,Punjab 
          <option 
                          value=MP370/1/0.30633157/-1/1.408116402>KOTTAGUDEM ,Andhra 
          Pradesh 
          <option 
                          value=MP372/1/0.192757055/-1/1.325582451>KOTTAKKAL ,Kerala 
          <option 
                          value=MP374/1/0.238406085/-1/1.366463845>KOTTAKOTA ,Andhra 
          Pradesh 
          <option 
                          value=MP375/1/0.200546296/-1/1.346520282>KOTTAMANGALAM 
          ,Tamil Nadu 
          <option 
                          value=MP377/1/0.269538801/-1/1.399701499>KOTTAPATNAM 
          ,Andhra Pradesh 
          <option 
                          value=MP379/1/0.142544092/-1/1.340525573>KOTTARAKARA 
          ,Kerala 
          <option 
                          value=MP382/1/0.158651235/-1/1.336092593>KOTTAYAM ,Kerala 
          <option 
                          value=MP384/1/0.258829806/-1/1.330825397>KOTTURU ,Karnataka 
          <option 
                          value=MP387/1/0.15728351/-1/1.359664021>KOVILPATTI ,Tamil 
          Nadu 
          <option 
                          value=MP388/1/0.253324956/-1/1.380829806>KOVUR ,Andhra 
          Pradesh 
          <option 
                          value=MP392/1/0.196520723/-1/1.323162257>KOZHIKODE ,Kerala 
          <option 
                          value=MP395/1/0.218768078/-1/1.365678131>KRISHNAGIRI 
          ,Tamil Nadu 
          <option 
                          value=MP396/1/0.40866843/-1/1.545296296>KRISHNANAGAR 
          ,West Bengal 
          <option 
                          value=MP397/1/0.220926367/-1/1.33540873>KRISHNARAJPET 
          ,Karnataka 
          <option 
                          value=MP401/1/0.473965168/-1/1.307001764>KUCHAMAN ,Rajasthan 
          <option 
                          value=MP407/1/0.26017328/-1/1.333580247>KUDLIGI ,Karnataka 
          <option 
                          value=MP411/1/0.270421517/-1/1.326775573>KUKNUR ,Karnataka 
          <option 
                          value=MP415/1/0.140744709/-1/1.364257055>KULASEKHARAPATNAM 
          ,Tamil Nadu 
          <option 
                          value=MP419/1/0.441998236/-1/1.390559083>KULPAHAR ,Uttar 
          Pradesh 
          <option 
                          value=MP421/1/0.414100529/-1/1.517296737>KULTI ,West 
          Bengal 
          <option 
                          value=MP422/1/0.189289242/-1/1.362782628>KULUMANI ,Tamil 
          Nadu 
          <option 
                          value=MP426/1/0.191340829/-1/1.386029101>KUMBAKONAM 
          ,Tamil Nadu 
          <option 
                          value=MP428/1/0.476928571/-1/1.345055556>KUMHER ,Rajasthan 
          <option 
                          value=MP430/1/0.251811728/-1/1.299037919>KUMTA ,Karnataka 
          <option 
                          value=MP431/1/0.453944004/-1/1.382061728>KUNCH ,Uttar 
          Pradesh 
          <option 
                          value=MP433/1/0.189395944/-1/1.352160935>KUNDADAM ,Tamil 
          Nadu 
          <option 
                          value=MP436/1/0.500776455/-1/1.363088183>KUNDARKHI ,Uttar 
          Pradesh 
          <option 
                          value=MP437/1/0.265590829/-1/1.312395062>KUNDGOL ,Karnataka 
          <option 
                          value=MP438/1/0.372588624/-1/1.245104938>KUNDLA ,Gujarat 
          <option 
                          value=MP441/1/0.227333333/-1/1.344813051>KUNIGAL ,Karnataka 
          <option 
                          value=MP444/1/0.196695326/-1/1.351617725>KUNNATTUR ,Tamil 
          Nadu 
          <option 
                          value=MP449/1/0.222551146/-1/1.367909171>KUPPAM ,Andhra 
          Pradesh 
          <option 
                          value=MP450/1/0.238323633/-1/1.370276014>KURABALAKOTA 
          ,Andhra Pradesh 
          <option 
                          value=MP451/1/0.478451499/-1/1.37887037>KURAULI ,Uttar 
          Pradesh 
          <option 
                          value=MP454/1/0.20187522/-1/1.389802469>KURINJIPPADI 
          ,Tamil Nadu 
          <option 
                          value=MP455/1/0.276265873/-1/1.362598325>KURNOOL ,Andhra 
          Pradesh 
          <option 
                          value=MP457/1/0.469391534/-1/1.541377425>KURSEONG ,West 
          Bengal 
          <option 
                          value=MP466/1/0.275106702/-1/1.327313933>KUSHTAGI ,Karnataka 
          <option 
                          value=MP473/1/0.206448854/-1/1.319374339>KUTTAPARAMBA 
          ,Kerala 
          <option 
                          value=MP476/1/0.142253086/-1/1.348115961>KUZHITTURA 
          ,Tamil Nadu 
          <option 
                          value=MP477/1/0.48564903/-1/1.310067019>LACHHMANGARH 
          ,Rajasthan 
          <option 
                          value=MP478/1/0.477685185/-1/1.341805996>LACHMANGARH 
          ,Rajasthan 
          <option 
                          value=MP481/1/0.482520723/-1/1.298843915>LADNUN ,Rajasthan 
          <option 
                          value=MP485/1/0.457382716/-1/1.363384039>LAHAR ,Madhya 
          Pradesh 
          <option 
                          value=MP487/1/0.483835097/-1/1.412626984>LAHARPUR ,Uttar 
          Pradesh 
          <option 
                          value=MP489/1/0.451586861/-1/1.487095238>LAIGANJ ,Bihar 
          <option 
                          value=MP494/1/0.488001323/-1/1.410395944>LAKHIMPUR ,Uttar 
          Pradesh 
          <option 
                          value=MP504/1/0.18973545/-1/1.355706349>LAKKAMAPAYAKKANPATTI 
          ,Tamil Nadu 
          <option 
                          value=MP505/1/0.247684303/-1/1.374097884>LAKKIREDDIPALLE 
          ,Andhra Pradesh 
          <option 
                          value=MP507/1/0.264130952/-1/1.310130071>LAKSHMOSHWAR 
          ,Karnataka 
          <option 
                          value=MH4/1/0.431129189/-1/1.362501323>LALITPUR ,Uttar 
          Pradesh 
          <option 
                          value=MH22/1/0.457867725/-1/1.364936067>LASHKAR ,Madhya 
          Pradesh 
          <option 
                          value=MH25/1/0.32122619/-1/1.337125661>LATUR ,Maharashtra 
          <option 
                          value=MH28/1/0.596798501/-1/1.354571429>LEH ,Jammu &amp; 
          Kashmir 
          <option 
                          value=MH34/1/0.39380776/-1/1.253636243>LIMBDI ,Gujarat 
          <option 
                          value=MH45/1/0.409056437/-1/1.478660935>LOHARDAGA ,Bihar 
          <option 
                          value=MH64/1/0.439505291/-1/1.503401235>LUCKEESARAI 
          ,Bihar 
          <option 
                          value=MH65/1/0.468794974/-1/1.412884039>LUCKNOW ,Uttar 
          Pradesh 
          <option 
                          value=MH66/1/0.539625661/-1/1.324306878>LUDHIANA ,Punjab 
          <option 
                          value=MH69/1/0.449603175/-1/1.62687963>LUMDING ,Assam 
          <option 
                          value=MH78/1/0.287692681/-1/1.38711552>MACHERLA ,Andhra 
          Pradesh 
          <option 
                          value=MH79/1/0.448410053/-1/1.438880511>MACHHLISHAHR 
          ,Uttar Pradesh 
          <option 
                          value=MH80/1/0.282580688/-1/1.41460097>MACHILIPATNAM 
          ,Andhra Pradesh 
          <option 
                          value=MH82/1/0.243265873/-1/1.34475485>MADAKASIRA ,Andhra 
          Pradesh 
          <option 
                          value=MH83/1/0.236558201/-1/1.370717372>MADANAPALLE 
          ,Andhra Pradesh 
          <option 
                          value=MH87/1/0.266235891/-1/1.345026455>MADDIKERA ,Andhra 
          Pradesh 
          <option 
                          value=MH89/1/0.266643298/-1/1.291161376>MADGAON ,Goa 
          <option 
                          value=MH91/1/0.456926808/-1/1.508042769>MADHEPUR ,Bihar 
          <option 
                          value=MH94/1/0.499782187/-1/1.396849647>MADHO TANDA 
          ,Uttar Pradesh 
          <option 
                          value=MH95/1/0.565093474/-1/1.31998545>MADHOPUR ,Punjab 
          <option 
                          value=MH97/1/0.460161817/-1/1.503343034>MADHUBANI ,Bihar 
          <option 
                          value=MH98/1/0.238372134/-1/1.348091711>MADHUGIRI ,Karnataka 
          <option 
                          value=MH99/1/0.423689153/-1/1.512601852>MADHUPUR ,Bihar 
          <option 
                          value=MH101/1/0.228055996/-1/1.401151675>MADRAS ,Tamil 
          Nadu 
          <option 
                          value=MH103/1/0.182998677/-1/1.386339506>MADUKKUR ,Tamil 
          Nadu 
          <option 
                          value=MH104/1/0.158549383/-1/1.364029101>MADURAI ,Tamil 
          Nadu 
          <option 
                          value=MH105/1/0.218380071/-1/1.394924162>MADURANTAKAM 
          ,Tamil Nadu 
          <option 
                          value=MH106/1/0.226091711/-1/1.3447403>MAGEDI ,Karnataka 
          <option 
                          value=MH110/1/0.220286155/-1/1.400210758>MAHABALIPURAM 
          ,Tamil Nadu 
          <option 
                          value=MH111/1/0.47903836/-1/1.35739418>MAHABAN ,Uttar 
          Pradesh 
          <option 
                          value=MH120/1/0.455893739/-1/1.467554233>MAHARAJGANJ 
          ,Bihar 
          <option 
                          value=MH122/1/0.436847443/-1/1.392115961>MAHARAJPUR 
          ,Madhya Pradesh 
          <option 
                          value=MH126/1/0.292314815/-1/1.345943122>MAHBUNAGAR 
          ,Andhra Pradesh 
          <option 
                          value=MH130/1/0.412053792/-1/1.263976631>MAHESANA ,Gujarat 
          <option 
                          value=MH135/1/0.476637566/-1/1.416385802>MAHMUDABAD 
          ,Uttar Pradesh 
          <option 
                          value=MH136/1/0.441566578/-1/1.394594356>MAHOBA ,Uttar 
          Pradesh 
          <option 
                          value=MH142/1/0.368165344/-1/1.253059083>MAHUVA ,Gujarat 
          <option 
                          value=MH144/1/0.423727954/-1/1.410041887>MAIHAR ,Madhya 
          Pradesh 
          <option 
                          value=MH146/1/0.475425044/-1/1.379840388>MAINPURI ,Uttar 
          Pradesh 
          <option 
                          value=MH147/1/0.252611993/-1/1.39864418>MAIPADU ,Andhra 
          Pradesh 
          <option 
                          value=MH155/1/0.472160935/-1/1.304712522>MAKRANA ,Rajasthan 
          <option 
                          value=MH165/1/0.21615873/-1/1.345399912>MALAVALLI ,Karnataka 
          <option 
                          value=MH168/1/0.358809524/-1/1.301351411>MALEGAON ,Maharashtra 
          <option 
                          value=MH173/1/0.532995591/-1/1.324859788>MALER KOTLA 
          ,Punjab 
          <option 
                          value=MH175/1/0.43725485/-1/1.391145944>MALHARA ,Madhya 
          Pradesh 
          <option 
                          value=MH180/1/0.29533157/-1/1.29084612>MALKAPUR ,Maharashtra 
          <option 
                          value=MH182/1/0.472131834/-1/1.399410494>MALLANWAN ,Uttar 
          Pradesh 
          <option 
                          value=MH188/1/0.226794974/-1/1.360643739>MALUR ,Karnataka 
          <option 
                          value=MH189/1/0.204984127/-1/1.362705026>MALUR ,Tamil 
          Nadu 
          <option 
                          value=MH195/1/0.157579365/-1/1.369892857>MANAMADURAI 
          ,Tamil Nadu 
          <option 
                          value=MH196/1/0.185195767/-1/1.369291446>MANAPPARAI 
          ,Tamil Nadu 
          <option 
                          value=MH198/1/0.184720459/-1/1.327517637>MANATTALA ,Kerala 
          <option 
                          value=MH204/1/0.440184303/-1/1.310993386>MANDALGARH 
          ,Rajasthan 
          <option 
                          value=MH209/1/0.329350088/-1/1.474790564>MANDASA ,Andhra 
          Pradesh 
          <option 
                          value=MH210/1/0.553661817/-1/1.343387125>MANDI ,Himachal 
          Pradesh 
          <option 
                          value=MH211/1/0.394447972/-1/1.403387566>MANDLA ,Madhya 
          Pradesh 
          <option 
                          value=MH215/1/0.398672399/-1/1.210805115>MANDVI ,Gujarat 
          <option 
                          value=MH217/1/0.218646825/-1/1.342645062>MANDYA ,Karnataka 
          <option 
                          value=MH222/1/0.224699735/-1/1.30677381>MANGALORE ,Karnataka 
          <option 
                          value=MH228/1/0.520133157/-1/1.359799824>MANGLAUR ,Uttar 
          Pradesh 
          <option 
                          value=MH233/1/0.368795855/-1/1.224123457>MANGROL ,Gujarat 
          <option 
                          value=MH237/1/0.437579806/-1/1.415852293>MANIKPUR ,Uttar 
          Pradesh 
          <option 
                          value=MH244/1/0.353566578/-1/1.292689153>MANMAD ,Maharashtra 
          <option 
                          value=MH245/1/0.190438713/-1/1.374107584>MANNACHCHANELLUR 
          ,Tamil Nadu 
          <option 
                          value=MH246/1/0.196850529/-1/1.380276896>MANNARGUDI 
          ,Tamil Nadu 
          <option 
                          value=MH247/1/0.186287037/-1/1.387309524>MANNARGUDI 
          ,Tamil Nadu 
          <option 
                          value=MH251/1/0.276726631/-1/1.311628748>MANOLI ,Karnataka 
          <option 
                          value=MH255/1/0.523402116/-1/1.316386684>MANSA ,Punjab 
          <option 
                          value=MH259/1/0.279088624/-1/1.345225309>MANVI ,Karnataka 
          <option 
                          value=MH265/1/0.21284612/-1/1.395806878>MARAKKANAM ,Tamil 
          Nadu 
          <option 
                          value=MH269/1/0.446984127/-1/1.432657848>MARIAHU ,Uttar 
          Pradesh 
          <option 
                          value=MH270/1/0.465162257/-1/1.646779541>MARIANI ,Assam 
          <option 
                          value=MH272/1/0.274772046/-1/1.384147266>MARKAPUR ,Andhra 
          Pradesh 
          <option 
                          value=MH274/1/0.269029541/-1/1.288372575>MARMAGAO ,Goa 
          <option 
                          value=MH283/1/0.278564815/-1/1.338430335>MASKI ,Karnataka 
          <option 
                          value=MH289/1/0.480032628/-1/1.345613316>MATHURA ,Uttar 
          Pradesh 
          <option 
                          value=MH292/1/0.158850088/-1/1.331460758>MATTANCHERI 
          ,Kerala 
          <option 
                          value=MH295/1/0.452949735/-1/1.459018078>MAU ,Uttar 
          Pradesh 
          <option 
                          value=MH297/1/0.448924162/-1/1.415784392>MAU AIMMA ,Uttar 
          Pradesh 
          <option 
                          value=MH298/1/0.440659612/-1/1.381639771>MAU RANIPUR 
          ,Uttar Pradesh 
          <option 
                          value=MH299/1/0.448405203/-1/1.398843034>MAUDAHA ,Uttar 
          Pradesh 
          <option 
                          value=MH302/1/0.46144709/-1/1.412098325>MAURAWAN ,Uttar 
          Pradesh 
          <option 
                          value=MH304/1/0.508056437/-1/1.360435185>MAWANA ,Uttar 
          Pradesh 
          <option 
                          value=MH305/1/0.193770723/-1/1.380247795>MAYURAM ,Tamil 
          Nadu 
          <option 
                          value=MH306/1/0.206550705/-1/1.360968695>MECHCHERI ,Tamil 
          Nadu 
          <option 
                          value=MH313/1/0.470919312/-1/1.451054233>MEHNDAWAL ,Uttar 
          Pradesh 
          <option 
                          value=MH315/1/0.1402597/-1/1.356783069>MEL PALAIYAM 
          ,Tamil Nadu 
          <option 
                          value=MH318/1/0.175107584/-1/1.367904321>MELUR ,Tamil 
          Nadu 
          <option 
                          value=MH321/1/0.20187037/-1/1.329486772>MEPPADI ,Kerala 
          <option 
                          value=MH322/1/0.216798942/-1/1.310687831>MERCARA ,Karnataka 
          <option 
                          value=MH325/1/0.197287037/-1/1.328468254>METTUPALAIYAM 
          ,Tamil Nadu 
          <option 
                          value=MH326/1/0.205735891/-1/1.345618166>METTUR ,Tamil 
          Nadu 
          <option 
                          value=MH328/1/0.393701058/-1/1.322817901>MHOW ,Madhya 
          Pradesh 
          <option 
                          value=MH337/1/0.293900794/-1/1.297398589>MIRAJ ,Maharashtra 
          <option 
                          value=MH338/1/0.511373898/-1/1.361017196>MIRANPUR ,Uttar 
          Pradesh 
          <option 
                          value=MH339/1/0.460477072/-1/1.467287478>MIRGANJ ,Bihar 
          <option 
                          value=MH342/1/0.439093034/-1/1.44157716>MIRZAPUR ,Uttar 
          Pradesh 
          <option 
                          value=MH343/1/0.478970459/-1/1.406132716>MISRIKH ,Uttar 
          Pradesh 
          <option 
                          value=MH347/1/0.537996032/-1/1.312501764>MOGA ,Punjab 
          <option 
                          value=MH353/1/0.19307231/-1/1.364392857>MOHANUR ,Tamil 
          Nadu 
          <option 
                          value=MH363/1/0.44331261/-1/1.485620811>MOKAMEH ,Bihar 
          <option 
                          value=MH365/1/0.443167108/-1/1.509803351>MONGHYR ,Bihar 
          <option 
                          value=MH368/1/0.503492504/-1/1.363093034>MORADABAD ,Uttar 
          Pradesh 
          <option 
                          value=MH369/1/0.457945326/-1/1.365799383>MORAR ,Madhya 
          Pradesh 
          <option 
                          value=MH370/1/0.398337743/-1/1.236675485>MORBI ,Gujarat 
          <option 
                          value=MH378/1/0.465254409/-1/1.468126543>MOTIHARI ,Bihar 
          <option 
                          value=MH382/1/0.455491182/-1/1.45422134>MUBARAKPUR ,Uttar 
          Pradesh 
          <option 
                          value=MH391/1/0.157254409/-1/1.370877425>MUDUKULATTUR 
          ,Tamil Nadu 
          <option 
                          value=MH393/1/0.441285273/-1/1.451219136>MUGHAI SARAI 
          ,Uttar Pradesh 
          <option 
                          value=MH395/1/0.2117403/-1/1.343450176>MUGURU ,Karnataka 
          <option 
                          value=MH396/1/0.488078924/-1/1.400448413>MUHAMDI ,Uttar 
          Pradesh 
          <option 
                          value=MN2/1/0.454530864/-1/1.45585097>MUHAMMADABAD ,Uttar 
          Pradesh 
          <option 
                          value=MN3/1/0.447284832/-1/1.462403439>MUHAMMADABAD 
          ,Uttar Pradesh 
          <option 
                          value=MN7/1/0.531986772/-1/1.292946208>MUKTSAR ,Punjab 
          <option 
                          value=MN11/1/0.140453704/-1/1.345637566>MULAIKKARAIPPATTI 
          ,Tamil Nadu 
          <option 
                          value=MG1/1/0.188387125/-1/1.345623016>MULANUR ,Tamil 
          Nadu 
          <option 
                          value=MG2/1/0.229792328/-1/1.368690035>MULBAGAL ,Karnataka 
          <option 
                          value=MG3/1/0.228526455/-1/1.293227513>MULKI ,Karnataka 
          <option 
                          value=MG10/1/0.265411376/-1/1.324864638>MUNDARGI ,Karnataka 
          <option 
                          value=MG17/1/0.426148148/-1/1.363558642>MUNGAOLI ,Madhya 
          Pradesh 
          <option 
                          value=MG20/1/0.448075397/-1/1.401263228>MUNGRA BADSHAHPUR 
          ,Uttar Pradesh 
          <option 
                          value=MG22/1/0.267409612/-1/1.327570988>MUNIRABAD ,Karnataka 
          <option 
                          value=MZ2/1/0.502561287/-1/1.353140653>MURADNAGAR ,Uttar 
          Pradesh 
          <option 
                          value=MZ4/1/0.606935185/-1/1.353441358>Murgi ,Jammu 
          &amp; Kashmir 
          <option 
                          value=MZ5/1/0.277347443/-1/1.308223986>MURGOD ,Karnataka 
          <option 
                          value=MZ7/1/0.452202822/-1/1.518873016>MURLIGANJ ,Bihar 
          <option 
                          value=MZ8/1/0.421972222/-1/1.541251323>MURSHIBABAD ,West 
          Bengal 
          <option 
                          value=MZ11/1/0.416181217/-1/1.403727072>MURWARA ,Madhya 
          Pradesh 
          <option 
                          value=MZ13/1/0.191214727/-1/1.369660053>MUSIRI ,Tamil 
          Nadu 
          <option 
                          value=MZ14/1/0.53187522/-1/1.363141534>MUSSORIE ,Uttar 
          Pradesh 
          <option 
                          value=NG1/1/0.249473986/-1/1.398488977>MUTTUKURU ,Andhra 
          Pradesh 
          <option 
                          value=NG2/1/0.181868607/-1/1.388463845>MUTTUPET ,Tamil 
          Nadu 
          <option 
                          value=NG3/1/0.185258818/-1/1.34091843>MUVATAGUPUDUR 
          ,Kerala 
          <option 
                          value=NG4/1/0.159698854/-1/1.336999559>MUVATTUPULA ,Kerala 
          <option 
                          value=NG6/1/0.514526455/-1/1.356608466>MUZAFFARNAGAR 
          ,Uttar Pradesh 
          <option 
                          value=NG7/1/0.456092593/-1/1.490752205>MUZAFFARPUR ,Bihar 
          <option 
                          value=NG9/1/0.214815256/-1/1.338260582>MYSORE ,Karnataka 
          <option 
                          value=NG10/1/0.530366843/-1/1.329598325>NABHA ,Punjab 
          <option 
                          value=NG15/1/0.475294092/-1/1.347858907>NADBAI ,Rajasthan 
          <option 
                          value=ND1/1/0.396164903/-1/1.272110229>NADIAD ,Gujarat 
          <option 
                          value=ND2/1/0.233686949/-1/1.393221781>NAGALAPURAM ,Tamil 
          Nadu 
          <option 
                          value=OR2/1/0.188367725/-1/1.394070547>NAGAPPATTINAM 
          ,Tamil Nadu 
          <option 
                          value=OR7/1/0.232532628/-1/1.380281746>NAGARI ,Andhra 
          Pradesh 
          <option 
                          value=OR8/1/0.474896384/-1/1.275786596>NAGAUR ,Rajasthan 
          <option 
                          value=OR11/1/0.139876543/-1/1.345041005>NAGERCOIL ,Tamil 
          Nadu 
          <option 
                          value=OR12/1/0.514152998/-1/1.362525573>NAGINA ,Uttar 
          Pradesh 
          <option 
                          value=OR14/1/0.369382716/-1/1.380917108>NAGPUR ,Maharashtra 
          <option 
                          value=OR23/1/0.513294533/-1/1.38712522>NAINITAL ,Uttar 
          Pradesh 
          <option 
                          value=OR25/1/0.517092152/-1/1.367787919>NAJIBABAD ,Uttar 
          Pradesh 
          <option 
                          value=OR35/1/0.424130511/-1/1.533525132>NALHATI ,West 
          Bengal 
          <option 
                          value=OR37/1/0.195914462/-1/1.364785714>NAMAKKAL ,Tamil 
          Nadu 
          <option 
                          value=OR38/1/0.198329806/-1/1.350065697>NAMBIYUR ,Tamil 
          Nadu 
          <option 
                          value=OR40/1/0.249027778/-1/1.381993827>NANDALUR ,Andhra 
          Pradesh 
          <option 
                          value=OR43/1/0.33441843/-1/1.349784392>NANDED ,Maharashtra 
          <option 
                          value=OR47/1/0.276838183/-1/1.366551146>NANDIKOTKUR 
          ,Andhra Pradesh 
          <option 
                          value=OR51/1/0.373054233/-1/1.296287919>NANDURBAR ,Maharashtra 
          <option 
                          value=OR52/1/0.270377866/-1/1.362515873>NANDYAL ,Andhra 
          Pradesh 
          <option 
                          value=OR54/1/0.211594797/-1/1.338886243>NANJANGUD ,Karnataka 
          <option 
                          value=OR55/1/0.189924603/-1/1.390030423>NANNILAM ,Tamil 
          Nadu 
          <option 
                          value=OR56/1/0.486560847/-1/1.422933422>NANPARA ,Uttar 
          Pradesh 
          <option 
                          value=OR66/1/0.287028219/-1/1.426590388>NARASAPUR ,Andhra 
          Pradesh 
          <option 
                          value=OR67/1/0.283492504/-1/1.397776014>NARASAROPET 
          ,Andhra Pradesh 
          <option 
                          value=OR74/1/0.271852293/-1/1.310716931>NAREGAL ,Karnataka 
          <option 
                          value=OR75/1/0.27446164/-1/1.31012037>NARGUND ,Karnataka 
          <option 
                          value=OR78/1/0.489548501/-1/1.32882716>NARNAUL ,Haryana 
          <option 
                          value=OR81/1/0.400617284/-1/1.382750441>NARSIMHAPUR 
          ,Madhya Pradesh 
          <option 
                          value=OR84/1/0.213272928/-1/1.328477954>NARSIPUR ,Karnataka 
          <option 
                          value=OR88/1/0.349216049/-1/1.288236772>NASIK ,Maharashtra 
          <option 
                          value=OR90/1/0.459157848/-1/1.304702822>NASIRABAD ,Rajasthan 
          <option 
                          value=OR91/1/0.178439594/-1/1.365954586>NATTAM ,Tamil 
          Nadu 
          <option 
                          value=OR97/1/0.478946208/-1/1.456476631>NAUTANWA ,Uttar 
          Pradesh 
          <option 
                          value=OR98/1/0.408697531/-1/1.543099206>NAVADWIP ,West 
          Bengal 
          <option 
                          value=OR99/1/0.271619489/-1/1.31010582>NAVALGUND ,Karnataka 
          <option 
                          value=OR101/1/0.365822751/-1/1.2732306>NAVSARI ,Gujarat 
          <option 
                          value=OR103/1/0.498361111/-1/1.39040388>NAWABGANJ ,Uttar 
          Pradesh 
          <option 
                          value=OR104/1/0.469813492/-1/1.417593474>NAWABGANJ ,Uttar 
          Pradesh 
          <option 
                          value=OR105/1/0.469081129/-1/1.434224427>NAWABGANJ ,Uttar 
          Pradesh 
          <option 
                          value=OR106/1/0.434349647/-1/1.493599206>NAWADA ,Bihar 
          <option 
                          value=OR109/1/0.48618254/-1/1.314242945>NAWALGARH ,Rajasthan 
          <option 
                          value=OR118/1/0.242819665/-1/1.394982363>NAYUDUPETA 
          ,Andhra Pradesh 
          <option 
                          value=OR119/1/0.140739859/-1/1.361453704>NAZARETH ,Tamil 
          Nadu 
          <option 
                          value=OR122/1/0.228710758/-1/1.351200617>NELAMANGALA 
          ,Karnataka 
          <option 
                          value=OR123/1/0.205595238/-1/1.391131393>NELLIKKUPPAM 
          ,Tamil Nadu 
          <option 
                          value=OR125/1/0.252291887/-1/1.380863757>NELLORE ,Andhra 
          Pradesh 
          <option 
                          value=OR126/1/0.501707672/-1/1.394904762>NEORIA HUSAINPUR 
          ,Uttar Pradesh 
          <option 
                          value=OR132/1/0.498817019/-1/1.34473545>NEW DELHI ,NEW 
          DELHI 
          <option 
                          value=OR134/1/0.202675485/-1/1.387940035>NEYVELI ,Tamil 
          Nadu 
          <option 
                          value=OR138/1/0.295103616/-1/1.42612963>NIDADAVOLE ,Andhra 
          Pradesh 
          <option 
                          value=OR139/1/0.188018519/-1/1.38657231>NIDAMANGALAM 
          ,Tamil Nadu 
          <option 
                          value=OR143/1/0.196768078/-1/1.330869048>NILAMBUR ,Kerala 
          <option 
                          value=OR144/1/0.484111552/-1/1.310697531>NIM KATHANA 
          ,Rajasthan 
          <option 
                          value=OR145/1/0.427132716/-1/1.307147266>NIMACH ,Madhya 
          Pradesh 
          <option 
                          value=OR150/1/0.333598765/-1/1.362511023>NIRMAL ,Andhra 
          Pradesh 
          <option 
                          value=OR151/1/0.459371252/-1/1.511549383>NIRMALJ ,Bihar 
          <option 
                          value=OR157/1/0.325925926/-1/1.363592593>NIZAMABAD ,Andhra 
          Pradesh 
          <option 
                          value=OR159/1/0.277657848/-1/1.398008818>NIZAMPATAM 
          ,Andhra Pradesh 
          <option 
                          value=OR171/1/0.457513668/-1/1.601678571>NORTH GAUHATI 
          ,Assam 
          <option 
                          value=OR174/1/0.460084215/-1/1.618435626>NOWGONG ,Assam 
          <option 
                          value=OR175/1/0.437526455/-1/1.386994268>NOWGONG ,Madhya 
          Pradesh 
          <option 
                          value=OR180/1/0.563905203/-1/1.32492769>NURPUR ,Himachal 
          Pradesh 
          <option 
                          value=OR184/1/0.293061728/-1/1.411661817>NUZVID ,Andhra 
          Pradesh 
          <option 
                          value=OR185/1/0.247029541/-1/1.319505291>NYAMTI ,Karnataka 
          <option 
                          value=OR194/1/0.270518519/-1/1.397674162>ONGOLE ,Andhra 
          Pradesh 
          <option 
                          value=OR195/1/0.199251323/-1/1.339109347>OOTACAMUND 
          ,Tamil Nadu 
          <option 
                          value=OR196/1/0.453682099/-1/1.37997134>ORAI ,Uttar 
          Pradesh 
          <option 
                          value=OR197/1/0.245559965/-1/1.384098765>ORAMPADU ,Andhra 
          Pradesh 
          <option 
                          value=OR203/1/0.188052469/-1/1.333565697>OTTAPALAM ,Kerala 
          <option 
                          value=OR217/1/0.46972134/-1/1.46630291>PADRAUNA ,Uttar 
          Pradesh 
          <option 
                          value=OR224/1/0.234880071/-1/1.381382716>PAKALA ,Andhra 
          Pradesh 
          <option 
                          value=OR230/1/0.288439594/-1/1.415459436>PALAKOLLU ,Andhra 
          Pradesh 
          <option 
                          value=OR235/1/0.456019841/-1/1.598254409>PALASHARI ,Assam 
          <option 
                          value=OR237/1/0.140623457/-1/1.345627866>PALAYANKOTTAI 
          ,Tamil Nadu 
          <option 
                          value=OR240/1/0.188013668/-1/1.338294533>PALGHAT ,Kerala 
          <option 
                          value=PU7/1/0.375915785/-1/1.240890212>PALITANA ,Gujarat 
          <option 
                          value=PU8/1/0.324776455/-1/1.46247134>PALKONDA ,Andhra 
          Pradesh 
          <option 
                          value=PU10/1/0.191874339/-1/1.349473986>PALLADAM ,Tamil 
          Nadu 
          <option 
                          value=PU11/1/0.214766755/-1/1.363175485>PALLAKKODU ,Tamil 
          Nadu 
          <option 
                          value=PU13/1/0.225310847/-1/1.378375661>PALLIKONDAJ 
          ,Tamil Nadu 
          <option 
                          value=PU14/1/0.230568342/-1/1.374927249>PALMANER ,Andhra 
          Pradesh 
          <option 
                          value=PU15/1/0.182465168/-1/1.353354056>PALNI ,Tamil 
          Nadu 
          <option 
                          value=PU18/1/0.192800705/-1/1.380601852>PALUVUR ,Tamil 
          Nadu 
          <option 
                          value=PU19/1/0.491304233/-1/1.350186949>PALWAL ,Haryana 
          <option 
                          value=PU21/1/0.159141093/-1/1.383075397>PAMBAN ,Tamil 
          Nadu 
          <option 
                          value=PU25/1/0.260852293/-1/1.354852734>PAMIDI ,Andhra 
          Pradesh 
          <option 
                          value=PU29/1/0.142354938/-1/1.354474427>PANAIKKUDI ,Tamil 
          Nadu 
          <option 
                          value=PU31/1/0.270494268/-1/1.275791446>PANAJI ,Goa 
          <option 
                          value=PU32/1/0.157676367/-1/1.378584215>PANALKKULAM 
          ,Tamil Nadu 
          <option 
                          value=PU38/1/0.158190476/-1/1.363767196>PANDALKUDI ,Tamil 
          Nadu 
          <option 
                          value=PU41/1/0.308591711/-1/1.315203263>PANDHARPUR ,Maharashtra 
          <option 
                          value=PU47/1/0.513076279/-1/1.328448854>PANIPAT ,Haryana 
          <option 
                          value=PU51/1/0.431551146/-1/1.397140653>PANNA ,Madhya 
          Pradesh 
          <option 
                          value=PU52/1/0.388467813/-1/1.481585538>PANPOSH ,Orissa 
          <option 
                          value=PU53/1/0.205580688/-1/1.389036155>PANRUTI ,Tamil 
          Nadu 
          <option 
                          value=PU55/1/0.331605379/-1/1.276465608>PANVEL ,Maharashtra 
          <option 
                          value=PU58/1/0.190695767/-1/1.384084215>PAPANASAM ,Tamil 
          Nadu 
          <option 
                          value=PU59/1/0.140482804/-1/1.351263668>PAPANASAM ,Tamil 
          Nadu 
          <option 
                          value=PU61/1/0.202864638/-1/1.361667108>PAPPAMBADI ,Tamil 
          Nadu 
          <option 
                          value=PU62/1/0.182397266/-1/1.345065256>PAPPAMPATTI 
          ,Tamil Nadu 
          <option 
                          value=PU63/1/0.179603616/-1/1.329559524>PAPPINIVATTI 
          ,Kerala 
          <option 
                          value=PU64/1/0.15784127/-1/1.3722597>PARAMAGUDI ,Tamil 
          Nadu 
          <option 
                          value=PU65/1/0.19471649/-1/1.362268519>PARAMATI ,Tamil 
          Nadu 
          <option 
                          value=PU68/1/0.387415344/-1/1.374898148>PARASIA ,Madhya 
          Pradesh 
          <option 
                          value=PU72/1/0.336246914/-1/1.340491623>PARBHANI ,Maharashtra 
          <option 
                          value=RA3/1/0.327880511/-1/1.467869489>PARKLAKIMIDI 
          ,Orissa 
          <option 
                          value=RA14/1/0.17710582/-1/1.330762346>PARUR ,Kerala 
          <option 
                          value=RA15/1/0.327909612/-1/1.456762787>PARVATIPURAM 
          ,Andhra Pradesh 
          <option 
                          value=RA24/1/0.416438272/-1/1.259145944>PATAN ,Gujarat 
          <option 
                          value=RA28/1/0.563328042/-1/1.320858466>PATHANKOT ,Punjab 
          <option 
                          value=RA29/1/0.561106702/-1/1.334181658>PATHIAR ,Himachal 
          Pradesh 
          <option 
                          value=RA31/1/0.529406526/-1/1.333880952>PATIALA ,Punjab 
          <option 
                          value=RA33/1/0.447226631/-1/1.485615961 selected>PATNA 
          ,Bihar 
          <option 
                          value=RA39/1/0.157438713/-1/1.34143739>PATTANAPURAM 
          ,Kerala 
          <option 
                          value=RA41/1/0.268728836/-1/1.353232804>PATTIKONDA ,Andhra 
          Pradesh 
          <option 
                          value=RA42/1/0.181965608/-1/1.384942681>PATTUKKOTTAI 
          ,Tamil Nadu 
          <option 
                          value=RA47/1/0.489994709/-1/1.398678131>PAWAYAN ,Uttar 
          Pradesh 
          <option 
                          value=RA48/1/0.36297575/-1/1.390549383>PAWNI ,Maharashtra 
          <option 
                          value=RA53/1/0.203378748/-1/1.370785273>PEDDA NAYAKKANPALAIYAM 
          ,Tamil Nadu 
          <option 
                          value=RA55/1/0.324926808/-1/1.385970899>PEDDAPALLI ,Andhra 
          Pradesh 
          <option 
                          value=RA56/1/0.298222222/-1/1.434209877>PEDDEPURAM ,Andhra 
          Pradesh 
          <option 
                          value=RA61/1/0.19910582/-1/1.383560406>PENNADAM ,Tamil 
          Nadu 
          <option 
                          value=RA62/1/0.211808201/-1/1.360085979>PENNAGARAM ,Tamil 
          Nadu 
          <option 
                          value=RA67/1/0.24583642/-1/1.345351411>PENUKONDA ,Andhra 
          Pradesh 
          <option 
                          value=RA70/1/0.196263668/-1/1.376944885>PERAMBALUR ,Tamil 
          Nadu 
          <option 
                          value=RA71/1/0.225766755/-1/1.363112434>PERANAMBATTU 
          ,Tamil Nadu 
          <option 
                          value=RA73/1/0.191544533/-1/1.330878748>PERINTALMANNA 
          ,Kerala 
          <option 
                          value=RA74/1/0.176654762/-1/1.353887566>PERIYAKULAM 
          ,Tamil Nadu 
          <option 
                          value=RA75/1/0.208723545/-1/1.36072619>PERUMBALAI ,Tamil 
          Nadu 
          <option 
                          value=RA77/1/0.392444885/-1/1.271096561>PETLAD ,Gujarat 
          <option 
                          value=RA79/1/0.546279982/-1/1.320451058>PHAGWARA ,Punjab 
          <option 
                          value=RA80/1/0.473776014/-1/1.263414021>PHALIODI ,Rajasthan 
          <option 
                          value=RA84/1/0.31405291/-1/1.299576279>PHALTAN ,Maharashtra 
          <option 
                          value=RA86/1/0.464497795/-1/1.387362875>PHAPHUND ,Uttar 
          Pradesh 
          <option 
                          value=RA93/1/0.529324074/-1/1.313651235>PHUL ,Punjab 
          <option 
                          value=RA100/1/0.446111111/-1/1.43332716>PHULPUR ,Uttar 
          Pradesh 
          <option 
                          value=RA105/1/0.48233157/-1/1.400244709>PIHANI ,Uttar 
          Pradesh 
          <option 
                          value=RA106/1/0.495237654/-1/1.310430776>PILANI ,Rajasthan 
          <option 
                          value=RA107/1/0.49994709/-1/1.380553351>PILIBHIT ,Uttar 
          Pradesh 
          <option 
                          value=RA109/1/0.501324515/-1/1.355900353>PILKHUA ,Uttar 
          Pradesh 
          <option 
                          value=RA125/1/0.298852734/-1/1.436276014>PITHAPURAM 
          ,Andhra Pradesh 
          <option 
                          value=RA132/1/0.272473104/-1/1.380262346>PODILE ,Andhra 
          Pradesh 
          <option 
                          value=RA137/1/0.186025132/-1/1.344497795>POLLACHI ,Tamil 
          Nadu 
          <option 
                          value=RA139/1/0.218428571/-1/1.381571869>POLUR ,Tamil 
          Nadu 
          <option 
                          value=RA142/1/0.208350088/-1/1.393978395>PONDICHERRY 
          ,Tamil Nadu 
          <option 
                          value=RA145/1/0.179361111/-1/1.371435185>PONNAMARAVATI 
          ,Tamil Nadu 
          <option 
                          value=RA146/1/0.188003968/-1/1.325708554>PONNANI ,Kerala 
          <option 
                          value=RA148/1/0.232828483/-1/1.400186508>PONNERI ,Tamil 
          Nadu 
          <option 
                          value=RA149/1/0.22772619/-1/1.396835097>POONAMALLEE 
          ,Tamil Nadu 
          <option 
                          value=RA151/1/0.377899471/-1/1.215441799>PORBANDAR ,Gujarat 
          <option 
                          value=RA153/1/0.203732804/-1/1.619667549>PORT BLAIR 
          ,Andaman and Nicobar Islan 
          <option 
                          value=RA156/1/0.200623898/-1/1.392644621>PORTO NOVO 
          ,Tamil Nadu 
          <option 
                          value=RA164/1/0.257471781/-1/1.371464286>PRODDATUR ,Andhra 
          Pradesh 
          <option 
                          value=RA166/1/0.182896825/-1/1.345627866>PUDU CHATTRAM 
          ,Tamil Nadu 
          <option 
                          value=RA167/1/0.181228395/-1/1.376382275>PUDUKKOTTAI 
          ,Tamil Nadu 
          <option 
                          value=RA168/1/0.194352734/-1/1.339992063>PUDUR ,Tamil 
          Nadu 
          <option 
                          value=RA170/1/0.199246473/-1/1.363088183>PULAMBADI ,Tamil 
          Nadu 
          <option 
                          value=RA172/1/0.36189903/-1/1.362239418>PULGAON ,Maharashtra 
          <option 
                          value=RA173/1/0.251748677/-1/1.365843034>PULIVENDLA 
          ,Andhra Pradesh 
          <option 
                          value=RA174/1/0.157254409/-1/1.351394621>PULIYANGUDI 
          ,Tamil Nadu 
          <option 
                          value=RA177/1/0.191268078/-1/1.341238536>PULUVAPPATTI 
          ,Tamil Nadu 
          <option 
                          value=RA178/1/0.157734568/-1/1.328458554>PUNALUR ,Kerala 
          <option 
                          value=RA179/1/0.589727072/-1/1.293673721>PUNCH ,Jammu 
          &amp; Kashmir 
          <option 
                          value=RA180/1/0.323636684/-1/1.276097002>PUNE ,Maharashtra 
          <option 
                          value=RA181/1/0.233274691/-1/1.371857143>PUNGANURU ,Andhra 
          Pradesh 
          <option 
                          value=RA183/1/0.198160053/-1/1.34477425>PUNJAI PULIYAMPATTI 
          ,Tamil Nadu 
          <option 
                          value=RA191/1/0.497856702/-1/1.399420194>PURANPUR ,Uttar 
          Pradesh 
          <option 
                          value=RA192/1/0.345612434/-1/1.498594797>PURI ,Orissa 
          <option 
                          value=RA193/1/0.328937831/-1/1.336388448>PURLI ,Maharashtra 
          <option 
                          value=RA195/1/0.450059083/-1/1.527181217>PURNEA ,Bihar 
          <option 
                          value=RA196/1/0.407329806/-1/1.508037919>PURULIYA ,West 
          Bengal 
          <option 
                          value=RA198/1/0.461941799/-1/1.397999118>PURWA ,Uttar 
          Pradesh 
          <option 
                          value=RA199/1/0.34759612/-1/1.354401675>PUSAD ,Maharashtra 
          <option 
                          value=RA200/1/0.234361111/-1/1.389681217>PUTTUR ,Andhra 
          Pradesh 
          <option 
                          value=RA201/1/0.222706349/-1/1.312986772>PUTTUR ,Karnataka 
          <option 
                          value=RA202/1/0.142282187/-1/1.345671517>PUVAR ,Kerala 
          <option 
                          value=RA205/1/0.19964903/-1/1.321585979>QUILANDI ,Kerala 
          <option 
                          value=RA206/1/0.140497354/-1/1.337256614>QUILON ,Kerala 
          <option 
                          value=RA209/1/0.524304233/-1/1.347121693>RADAUR ,Haryana 
          <option 
                          value=RA213/1/0.14132672/-1/1.356356261>RADHAPURAM ,Tamil 
          Nadu 
          <option 
                          value=RA214/1/0.457940476/-1/1.41458157>RAE BARELI ,Uttar 
          Pradesh 
          <option 
                          value=RA224/1/0.282978395/-1/1.350628307>RAICHUR ,Karnataka 
          <option 
                          value=RA226/1/0.44714418/-1/1.538671076>RAIGANJ ,West 
          Bengal 
          <option 
                          value=RA227/1/0.381973545/-1/1.453789683>RAIGARH ,Madhya 
          Pradesh 
          <option 
                          value=RA230/1/0.535047178/-1/1.320130952>RAIKOT ,Punjab 
          <option 
                          value=RA232/1/0.370891093/-1/1.425474868>RAIPUR ,Madhya 
          Pradesh 
          <option 
                          value=RA236/1/0.368369048/-1/1.414993827>RAJ NANDGAON 
          ,Madhya Pradesh 
          <option 
                          value=RA239/1/0.29701455/-1/1.427832011>RAJAHMUNDRY 
          ,Andhra Pradesh 
          <option 
                          value=RA240/1/0.469667989/-1/1.364863316>RAJAKHERA ,Rajasthan 
          <option 
                          value=RA241/1/0.247854056/-1/1.38215873>RAJAMPET ,Andhra 
          Pradesh 
          <option 
                          value=RA242/1/0.159223545/-1/1.35411552>RAJAPALAIYAM 
          ,Tamil Nadu 
          <option 
                          value=RA245/1/0.443079806/-1/1.416754409>RAJAPUR ,Uttar 
          Pradesh 
          <option 
                          value=RA248/1/0.430261023/-1/1.492769841>RAJAULI ,Bihar 
          <option 
                          value=RA250/1/0.277381393/-1/1.358810406>RAJAVOLU ,Andhra 
          Pradesh 
          <option 
                          value=RA257/1/0.389306878/-1/1.236161376>RAJKOT ,Gujarat 
          <option 
                          value=RA258/1/0.437628307/-1/1.533520282>RAJMAHAL ,Bihar 
          <option 
                          value=RA273/1/0.178890653/-1/1.376052469>RAMACHANDRAPURAM 
          ,Tamil Nadu 
          <option 
                          value=RA275/1/0.221998236/-1/1.349275132>RAMANAGARAM 
          ,Karnataka 
          <option 
                          value=RA276/1/0.157618166/-1/1.376547178>RAMANATHAPURAM 
          ,Tamil Nadu 
          <option 
                          value=RA283/1/0.159194444/-1/1.38487963>RAMESVARAM ,Tamil 
          Nadu 
          <option 
                          value=RA285/1/0.41252425/-1/1.493119048>RAMGARH ,Bihar 
          <option 
                          value=RA289/1/0.475793651/-1/1.312627866>RAMGARH ,Rajasthan 
          <option 
                          value=RA297/1/0.441178571/-1/1.449730159>RAMNAGAR ,Uttar 
          Pradesh 
          <option 
                          value=RA305/1/0.520390212/-1/1.352253086>RAMPUR ,Uttar 
          Pradesh 
          <option 
                          value=RA306/1/0.502958995/-1/1.382013228>RAMPUR ,Uttar 
          Pradesh 
          <option 
                          value=RA307/1/0.422083774/-1/1.532661817>RAMPUR HAT 
          ,West Bengal 
          <option 
                          value=RA309/1/0.505839947/-1/1.386305556>RAMPURA ,Uttar 
          Pradesh 
          <option 
                          value=RA313/1/0.373645944/-1/1.385078483>RAMTEK ,Maharashtra 
          <option 
                          value=RA314/1/0.404584656/-1/1.546567019>RANAGHAT ,West 
          Bengal 
          <option 
                          value=RA317/1/0.407819665/-1/1.498793651>RANCHI ,Bihar 
          <option 
                          value=RA328/1/0.25517769/-1/1.320344356>RANIBENNUR ,Karnataka 
          <option 
                          value=RA331/1/0.412208995/-1/1.521201058>RANIGANJ ,West 
          Bengal 
          <option 
                          value=RA332/1/0.440785714/-1/1.380335097>RANIPUR ,Uttar 
          Pradesh 
          <option 
                          value=RA334/1/0.45541358/-1/1.523068342>RANJGANJ ,Bihar 
          <option 
                          value=RA344/1/0.200070988/-1/1.365159171>RASIPURAM ,Tamil 
          Nadu 
          <option 
                          value=RA346/1/0.451470459/-1/1.464042769>RASRA ,Uttar 
          Pradesh 
          <option 
                          value=RA351/1/0.446867725/-1/1.38930776>RATH ,Uttar 
          Pradesh 
          <option 
                          value=RA353/1/0.407373457/-1/1.310256173>RATLAM ,Madhya 
          Pradesh 
          <option 
                          value=RA354/1/0.296684744/-1/1.279705467>RATNAIRI ,Maharashtra 
          <option 
                          value=RA358/1/0.388492063/-1/1.468136243>RAURKELA ,Orissa 
          <option 
                          value=SK1/1/0.471215168/-1/1.468150794>RAXUAL ,Bihar 
          <option 
                          value=SK3/1/0.245526014/-1/1.363102734>RAYACHOTI ,Andhra 
          Pradesh 
          <option 
                          value=SK4/1/0.256608466/-1/1.341742945>RAYADRUG ,Andhra 
          Pradesh 
          <option 
                          value=TN10/1/0.445868607/-1/1.461656526>REOTIPUR ,Uttar 
          Pradesh 
          <option 
                          value=TN14/1/0.450320988/-1/1.467554233>REVELGANJ ,Bihar 
          <option 
                          value=TN15/1/0.428199735/-1/1.419324956>REWA ,Madhya 
          Pradesh 
          <option 
                          value=TN16/1/0.492172399/-1/1.337659171>REWARI ,Haryana 
          <option 
                          value=TN26/1/0.430964286/-1/1.45035097>ROBERTSGANJ ,Uttar 
          Pradesh 
          <option 
                          value=TN28/1/0.504467372/-1/1.337305115>ROHTAK ,Haryana 
          <option 
                          value=TN31/1/0.274015432/-1/1.322284392>RON ,Karnataka 
          <option 
                          value=TN34/1/0.521350529/-1/1.360061728>ROORKEE ,Uttar 
          Pradesh 
          <option 
                          value=TN37/1/0.467034392/-1/1.427351852>RUDAULI ,Uttar 
          Pradesh 
          <option 
                          value=TN42/1/0.449685626/-1/1.502009259>RUSERA ,Bihar 
          <option 
                          value=TN43/1/0.458246032/-1/1.351414021>SABALGARH ,Madhya 
          Pradesh 
          <option 
                          value=TN47/1/0.479135362/-1/1.364242504>SADABAD ,Uttar 
          Pradesh 
          <option 
                          value=TN50/1/0.530580247/-1/1.348179012>SADHAURA ,Haryana 
          <option 
                          value=TN55/1/0.466854938/-1/1.402810406>SAFIPUR ,Uttar 
          Pradesh 
          <option 
                          value=TN56/1/0.247204145/-1/1.310003968>SAGAR ,Karnataka 
          <option 
                          value=TN57/1/0.41636552/-1/1.375048501>SAGAR ,Madhya 
          Pradesh 
          <option 
                          value=TN58/1/0.467267196/-1/1.479606702>SAGAULI ,Bihar 
          <option 
                          value=TN59/1/0.523232363/-1/1.353950617>SAHARANPUR ,Uttar 
          Pradesh 
          <option 
                          value=TN61/1/0.490086861/-1/1.37498545>SAHASWAN ,Uttar 
          Pradesh 
          <option 
                          value=TN62/1/0.451072751/-1/1.47181746>SAHATWAR ,Uttar 
          Pradesh 
          <option 
                          value=TN64/1/0.485387125/-1/1.363364638>SAHAWAR ,Uttar 
          Pradesh 
          <option 
                          value=TN65/1/0.440693563/-1/1.530023369>SAHIBGANJ ,Bihar 
          <option 
                          value=TN68/1/0.445985009/-1/1.45308642>SAIDPUR ,Uttar 
          Pradesh 
          <option 
                          value=TN78/1/0.225897707/-1/1.310716931>SAKLESHPUR ,Karnataka 
          <option 
                          value=TN85/1/0.2035/-1/1.364669312>SALEM ,Tamil Nadu 
          <option 
                          value=TN91/1/0.323311728/-1/1.452863316>SALUR ,Andhra 
          Pradesh 
          <option 
                          value=TN94/1/0.297756614/-1/1.434840388>SAMALKOT ,Andhra 
          Pradesh 
          <option 
                          value=TN95/1/0.526559524/-1/1.330272487>SAMANA ,Punjab 
          <option 
                          value=TN97/1/0.451412257/-1/1.497726631>SAMASTIPUR ,Bihar 
          <option 
                          value=TN99/1/0.374780864/-1/1.466259259>SAMBALPUR ,Orissa 
          <option 
                          value=TN100/1/0.499078924/-1/1.37171164>SAMBHAL ,Uttar 
          Pradesh 
          <option 
                          value=TN101/1/0.469798942/-1/1.309834215>SAMBHAR ,Rajasthan 
          <option 
                          value=TN103/1/0.451286155/-1/1.363384039>SAMTHAR ,Uttar 
          Pradesh 
          <option 
                          value=TN108/1/0.476467813/-1/1.396000882>SAND ,Uttar 
          Pradesh 
          <option 
                          value=TN109/1/0.472607143/-1/1.405754409>SANDILA ,Uttar 
          Pradesh 
          <option 
                          value=TN114/1/0.34155291/-1/1.295701058>SANGAMNER ,Maharashtra 
          <option 
                          value=TN115/1/0.307728395/-1/1.36344224>SANGAREDDI ,Andhra 
          Pradesh 
          <option 
                          value=TN117/1/0.294279101/-1/1.301914021>SANGLI ,Maharashtra 
          <option 
                          value=TN119/1/0.528/-1/1.324238977>SANGRUR ,Punjab 
          <option 
                          value=TN122/1/0.158534832/-1/1.353882716>SANKARANAYINARKOVIL 
          ,Tamil Nadu 
          <option 
                          value=TN127/1/0.405816578/-1/1.544287478>SANTIPUR ,West 
          Bengal 
          <option 
                          value=TN142/1/0.497473545/-1/1.382018078>SARAUL ,Uttar 
          Pradesh 
          <option 
                          value=TN145/1/0.496576279/-1/1.300619048>SARDARSHAHR 
          ,Rajasthan 
          <option 
                          value=TN146/1/0.508885802/-1/1.355032187>SARDHANA ,Uttar 
          Pradesh 
          <option 
                          value=TN158/1/0.435547619/-1/1.466933422>SASARAM ,Bihar 
          <option 
                          value=TN164/1/0.308897266/-1/1.293242063>SATARA ,Maharashtra 
          <option 
                          value=TN168/1/0.428839947/-1/1.411239859>SATNA ,Madhya 
          Pradesh 
          <option 
                          value=TN169/1/0.141472222/-1/1.360362434>SATTANKULAM 
          ,Tamil Nadu 
          <option 
                          value=TN173/1/0.157472663/-1/1.360512787>SATTUR ,Tamil 
          Nadu 
          <option 
                          value=TN174/1/0.200895503/-1/1.348673721>SATYAMANGALAM 
          ,Tamil Nadu 
          <option 
                          value=TN176/1/0.275218254/-1/1.311551146>SAUNDATTI ,Karnataka 
          <option 
                          value=TN178/1/0.277570547/-1/1.288852734>SAVANTVADI 
          ,Maharashtra 
          <option 
                          value=TN179/1/0.261337302/-1/1.315266314>SAVANUR ,Karnataka 
          <option 
                          value=TN181/1/0.139857143/-1/1.362404321>SAYARPURAM 
          ,Tamil Nadu 
          <option 
                          value=TN182/1/0.405084215/-1/1.346481481>SEHORE ,Madhya 
          Pradesh 
          <option 
                          value=TN187/1/0.196942681/-1/1.362215168>SENDAMANGALAM 
          ,Tamil Nadu 
          <option 
                          value=TN191/1/0.509928571/-1/1.3722403>SEOHARA ,Uttar 
          Pradesh 
          <option 
                          value=TN193/1/0.456698854/-1/1.375514109>SEONDHA ,Madhya 
          Pradesh 
          <option 
                          value=TN194/1/0.385698413/-1/1.389031305>SEONI ,Madhya 
          Pradesh 
          <option 
                          value=TN208/1/0.498676367/-1/1.379476631>SHAHABAD ,Uttar 
          Pradesh 
          <option 
                          value=TN209/1/0.482617725/-1/1.395738977>SHAHABAD ,Uttar 
          Pradesh 
          <option 
                          value=TN212/1/0.500582451/-1/1.34474515>SHAHDARA ,NEW 
          DELHI 
          <option 
                          value=TN214/1/0.454817019/-1/1.443662698>SHAHGANJ ,Uttar 
          Pradesh 
          <option 
                          value=TN215/1/0.48674515/-1/1.395234568>SHAHJAHANPUR 
          ,Uttar Pradesh 
          <option 
                          value=TN223/1/0.438947531/-1/1.498958554>SHAIKHPURA 
          ,Bihar 
          <option 
                          value=TN226/1/0.5142403/-1/1.349871693>SHAMLI ,Uttar 
          Pradesh 
          <option 
                          value=TN227/1/0.471680776/-1/1.363927249>SHAMSHABAD 
          ,Uttar Pradesh 
          <option 
                          value=TN238/1/0.428772046/-1/1.480436067>SHERGHATI ,Bihar 
          <option 
                          value=TN239/1/0.51205291/-1/1.371925044>SHERKOT ,Uttar 
          Pradesh 
          <option 
                          value=TN240/1/0.446411817/-1/1.463058201>SHERPUR ,Uttar 
          Pradesh 
          <option 
                          value=TN241/1/0.157438713/-1/1.327600088>SHERTALLAI 
          ,Kerala 
          <option 
                          value=TN243/1/0.473320106/-1/1.474722663>SHIKARPUR ,Bihar 
          <option 
                          value=TN244/1/0.24915388/-1/1.310134921>SHIKARPUR ,Karnataka 
          <option 
                          value=TN245/1/0.493845679/-1/1.362030864>SHIKARPUR ,Uttar 
          Pradesh 
          <option 
                          value=TN246/1/0.473295855/-1/1.362816578>SHIKHNABAD 
          ,Uttar Pradesh 
          <option 
                          value=TN248/1/0.446455467/-1/1.604176367>SHILLONG ,Meghalaya 
          <option 
                          value=TN250/1/0.24308642/-1/1.319481041>SHIMOGA ,Karnataka 
          <option 
                          value=TN257/1/0.443894621/-1/1.355856702>SHIVPURI ,Madhya 
          Pradesh 
          <option 
                          value=TN258/1/0.308436508/-1/1.325208995>SHOLAPUR ,Maharashtra 
          <option 
                          value=TN259/1/0.229006614/-1/1.386742063>SHOLINGHUR 
          ,Andhra Pradesh 
          <option 
                          value=TN260/1/0.187834215/-1/1.327289683>SHORANUR ,Kerala 
          <option 
                          value=TN262/1/0.479508818/-1/1.319864198>SHRI MADHOPUR 
          ,Rajasthan 
          <option 
                          value=TN267/1/0.471137566/-1/1.652269841>SIBSAGAR ,Assam 
          <option 
                          value=TN269/1/0.250361552/-1/1.307598325>SIDDAPUR ,Karnataka 
          <option 
                          value=TN270/1/0.417544092/-1/1.263627425>SIDDHAPUR ,Gujarat 
          <option 
                          value=TN271/1/0.252602293/-1/1.378894621>SIDDHAVATTAM 
          ,Andhra Pradesh 
          <option 
                          value=TN272/1/0.316070547/-1/1.363374339>SIDDIPET ,Andhra 
          Pradesh 
          <option 
                          value=TN273/1/0.425920194/-1/1.429597443>SIDHI ,Madhya 
          Pradesh 
          <option 
                          value=TN275/1/0.233711199/-1/1.359450617>SIDLAGHATTA 
          ,Karnataka 
          <option 
                          value=TN278/1/0.496794533/-1/1.356574515>SIKANDARABAD 
          ,Uttar Pradesh 
          <option 
                          value=TN281/1/0.48345679/-1/1.362491623>SIKANDRA RAO 
          ,Uttar Pradesh 
          <option 
                          value=TN282/1/0.482021164/-1/1.311934303>SIKAR ,Rajasthan 
          <option 
                          value=TN287/1/0.43342328/-1/1.619948854>SILCHAR ,Assam 
          <option 
                          value=TN290/1/0.466539683/-1/1.543918871>SILIGURI ,West 
          Bengal 
          <option 
                          value=TP9/1/0.543093474/-1/1.347344797>SIMLA ,Himachal 
          Pradesh 
          <option 
                          value=UP7/1/0.275368607/-1/1.340186067>SINDHNUR ,Karnataka 
          <option 
                          value=UP12/1/0.494408289/-1/1.412505732>SINGAHI KALAN 
          ,Uttar Pradesh 
          <option 
                          value=UP21/1/0.251045414/-1/1.313859788>SIRALKOPPA ,Karnataka 
          <option 
                          value=UP24/1/0.196181217/-1/1.380563051>SIRKAZHI ,Tamil 
          Nadu 
          <option 
                          value=UP27/1/0.434529101/-1/1.271940476>SIROHI ,Rajasthan 
          <option 
                          value=UP29/1/0.420716049/-1/1.356516314>SIRONJ ,Madhya 
          Pradesh 
          <option 
                          value=UP31/1/0.515481922/-1/1.310033069>SIRSA ,Haryana 
          <option 
                          value=UP35/1/0.321104938/-1/1.376144621>SIRSILLA ,Andhra 
          Pradesh 
          <option 
                          value=UP36/1/0.272958113/-1/1.34255291>SIRUGUPPA ,Karnataka 
          <option 
                          value=UP41/1/0.267472663/-1/1.37116358>SIRVEL ,Andhra 
          Pradesh 
          <option 
                          value=UP44/1/0.474033069/-1/1.462374339>SISWA BAZAR 
          ,Uttar Pradesh 
          <option 
                          value=UP46/1/0.464410494/-1/1.492774691>SITAMARHI ,Bihar 
          <option 
                          value=UP49/1/0.481477954/-1/1.408615961>SITAPUR ,Uttar 
          Pradesh 
          <option 
                          value=UP51/1/0.417306437/-1/1.52844709>SIURI ,West Bengal 
          <option 
                          value=UP52/1/0.157336861/-1/1.370324515>SIVAGANGA ,Tamil 
          Nadu 
          <option 
                          value=UP53/1/0.15732716/-1/1.351937831>SIVAGIRI ,Tamil 
          Nadu 
          <option 
                          value=UP54/1/0.159150794/-1/1.358378748>SIVAKASI ,Tamil 
          Nadu 
          <option 
                          value=UP55/1/0.457804674/-1/1.47291358>SIWAN ,Bihar 
          <option 
                          value=UP62/1/0.396286155/-1/1.362239418>SOHAGPUR ,Madhya 
          Pradesh 
          <option 
                          value=UP65/1/0.493244268/-1/1.346510582>SOHNA ,Haryana 
          <option 
                          value=UP67/1/0.452610229/-1/1.286185185>SOJAT ,Rajasthan 
          <option 
                          value=UP72/1/0.330649912/-1/1.476968254>SOMPETA ,Andhra 
          Pradesh 
          <option 
                          value=UP73/1/0.219839947/-1/1.324306878>SOMVARPET ,Karnataka 
          <option 
                          value=UP76/1/0.406907848/-1/1.51963448>SONAMUKHI ,West 
          Bengal 
          <option 
                          value=UP77/1/0.506169753/-1/1.344716049>SONEPAT ,Haryana 
          <option 
                          value=UP86/1/0.598670635/-1/1.300134039>SOPOR ,Jammu 
          &amp; Kashmir 
          <option 
                          value=UP90/1/0.486982804/-1/1.37499515>SORON ,Uttar 
          Pradesh 
          <option 
                          value=UP94/1/0.319373457/-1/1.464983686>SRIKAKULAM ,Andhra 
          Pradesh 
          <option 
                          value=UP96/1/0.199028219/-1/1.386485009>SRIMUSHNAM ,Tamil 
          Nadu 
          <option 
                          value=UP97/1/0.595062169/-1/1.306094797>SRINAGAR ,Jammu 
          &amp; Kashmir 
          <option 
                          value=UP100/1/0.226518519/-1/1.399502646>SRIPERUMBUDUR,Tamil 
          Nadu 
          <option 
                          value=UP102/1/0.141928131/-1/1.360381834>SRIVAIKUNTAM 
          ,Tamil Nadu 
          <option 
                          value=UP104/1/0.15732231/-1/1.345346561>SRIVILLIPUTTUR 
          ,Tamil Nadu 
          <option 
                          value=UP108/1/0.483495591/-1/1.300260141>SUJANGARH ,Rajasthan 
          <option 
                          value=UP114/1/0.440664462/-1/1.517689594>SULTANGANJ 
          ,Bihar 
          <option 
                          value=UP116/1/0.458430335/-1/1.433002205>SULTANPUR ,Uttar 
          Pradesh 
          <option 
                          value=UP117/1/0.192456349/-1/1.346636684>SULUR ,Tamil 
          Nadu 
          <option 
                          value=UP121/1/0.526006614/-1/1.32327381>SUNAM ,Punjab 
          <option 
                          value=UP123/1/0.550586861/-1/1.342785714>SUNDARNGAR 
          ,Himachal Pradesh 
          <option 
                          value=UP134/1/0.494287037/-1/1.322313492>SURAJGARH ,Rajasthan 
          <option 
                          value=UP135/1/0.370071429/-1/1.271450617>SURAT ,Gujarat 
          <option 
                          value=UP138/1/0.396805115/-1/1.250604938>SURENDRANAGAR 
          ,Gujarat 
          <option 
                          value=UP140/1/0.299260141/-1/1.390253527>SURIAPET ,Andhra 
          Pradesh 
          <option 
                          value=UP151/1/0.293522487/-1/1.423510582>TADEPALLEGUDEM 
          ,Andhra Pradesh 
          <option 
                          value=UP153/1/0.260226631/-1/1.362035714>TADPATRI ,Andhra 
          Pradesh 
          <option 
                          value=UP162/1/0.394317019/-1/1.538006614>TAKI ,West 
          Bengal 
          <option 
                          value=UP163/1/0.227241182/-1/1.380563051>TAKKOLAM ,Tamil 
          Nadu 
          <option 
                          value=UP166/1/0.19798545/-1/1.322395944>TALAKKOLATTUR 
          ,Kerala 
          <option 
                          value=UP172/1/0.182431217/-1/1.328410053>TALIKKULAM 
          ,Kerala 
          <option 
                          value=UP185/1/0.199741182/-1/1.370440917>TAMMAMPATTI 
          ,Tamil Nadu 
          <option 
                          value=UP186/1/0.242950617/-1/1.365290123>TANAKALLU ,Andhra 
          Pradesh 
          <option 
                          value=UP188/1/0.505883598/-1/1.378336861>TANDA ,Uttar 
          Pradesh 
          <option 
                          value=UP189/1/0.463503527/-1/1.44321164>TANDA ,Uttar 
          Pradesh 
          <option 
                          value=UP199/1/0.191690035/-1/1.324723986>TANUR ,Kerala 
          <option 
                          value=UP209/1/0.239303351/-1/1.323589065>TARIKERE ,Karnataka 
          <option 
                          value=UP215/1/0.194207231/-1/1.362525573>TATTAYYANGARPETTAI 
          ,Tamil Nadu 
          <option 
                          value=UP216/1/0.275203704/-1/1.333919753>TAWARGERI ,Karnataka 
          <option 
                          value=UP217/1/0.445044092/-1/1.50040388>TEGHRA ,Bihar 
          <option 
                          value=UP221/1/0.435377866/-1/1.468121693>TEKARI ,Bihar 
          <option 
                          value=UP224/1/0.205003527/-1/1.318137566>TELLICHERRY 
          ,Kerala 
          <option 
                          value=UP227/1/0.283497354/-1/1.408126102>TENALI ,Andhra 
          Pradesh 
          <option 
                          value=UP231/1/0.141758377/-1/1.349929894>TENKASI ,Tamil 
          Nadu 
          <option 
                          value=UP236/1/0.158229277/-1/1.349246032>TEVARAM ,Tamil 
          Nadu 
          <option 
                          value=UP237/1/0.464866402/-1/1.620380511>TEZPUR ,Assam 
          <option 
                          value=UP243/1/0.335791005/-1/1.258602734>THANA ,Maharashtra 
          <option 
                          value=UP244/1/0.516597443/-1/1.351695326>THANA BHAWAN 
          ,Uttar Pradesh 
          <option 
                          value=UP248/1/0.523324515/-1/1.34147134>THANESAR ,Haryana 
          <option 
                          value=UP249/1/0.188304674/-1/1.381843474>THANJAVUR ,Tamil 
          Nadu 
          <option 
                          value=UP254/1/0.204891975/-1/1.32658642>THARUVANA ,Kerala 
          <option 
                          value=UP260/1/0.188130071/-1/1.390602734>THIRUVARUR 
          ,Tamil Nadu 
          <option 
                          value=UP267/1/0.488229277/-1/1.392217813>TIHAR ,Uttar 
          Pradesh 
          <option 
                          value=UP269/1/0.487647266/-1/1.341796296>TIJARA ,Rajasthan 
          <option 
                          value=UP270/1/0.431910053/-1/1.376367725>TIKAMGARH ,Madhya 
          Pradesh 
          <option 
                          value=UP285/1/0.213583333/-1/1.380242945>TINDIVANAM 
          ,Tamil Nadu 
          <option 
                          value=UP286/1/0.479988977/-1/1.664977072>TINSUKIA ,Assam 
          <option 
                          value=UP290/1/0.142417989/-1/1.364126102>TIRUCHCHENDUR 
          ,Tamil Nadu 
          <option 
                          value=UP291/1/0.188619929/-1/1.374102734>TIRUCHCHIRAPPALLI 
          ,Tamil Nadu 
          <option 
                          value=UP292/1/0.198664462/-1/1.360100529>TIRUCHENGODU 
          ,Tamil Nadu 
          <option 
                          value=UP293/1/0.220092152/-1/1.397824515>TIRUKKALUKKUNRAM 
          ,Tamil Nadu 
          <option 
                          value=UP294/1/0.208873898/-1/1.382920194>TIRUKKOYILUR 
          ,Tamil Nadu 
          <option 
                          value=UP295/1/0.159805556/-1/1.361589506>TIRUMANGALAM 
          ,Tamil Nadu 
          <option 
                          value=UP297/1/0.204984127/-1/1.386>TIRUNAMANALLUR ,Tamil 
          Nadu 
          <option 
                          value=UP298/1/0.140691358/-1/1.345627866>TIRUNEVELI 
          ,Tamil Nadu 
          <option 
                          value=UP299/1/0.237969577/-1/1.386630511>TIRUPATI ,Andhra 
          Pradesh 
          <option 
                          value=UP300/1/0.218016314/-1/1.371939594>TIRUPPATTUR 
          ,Tamil Nadu 
          <option 
                          value=UP301/1/0.176485009/-1/1.372468254>TIRUPPATTUR 
          ,Tamil Nadu 
          <option 
                          value=UP302/1/0.193775573/-1/1.350502205>TIRUPPUR ,Tamil 
          Nadu 
          <option 
                          value=UP303/1/0.159854056/-1/1.366366843>TIRUPPUVANAM 
          ,Tamil Nadu 
          <option 
                          value=UP304/1/0.192892857/-1/1.32441358>TIRURANGADI 
          ,Kerala 
          <option 
                          value=UP305/1/0.230005732/-1/1.380238095>TIRUTTANI ,Andhra 
          Pradesh 
          <option 
                          value=UP306/1/0.183857143/-1/1.390597884>TIRUTTURAIPPUNDI 
          ,Tamil Nadu 
          <option 
                          value=UP307/1/0.159131393/-1/1.377992504>TIRUVADANAI 
          ,Tamil Nadu 
          <option 
                          value=UP308/1/0.229467372/-1/1.395220018>TIRUVALLUR 
          ,Tamil Nadu 
          <option 
                          value=UP309/1/0.213510582/-1/1.380684303>TIRUVANNAMALAI 
          ,Tamil Nadu 
          <option 
                          value=UP310/1/0.220955467/-1/1.388847002>TIRUVETTIPURAM 
          ,Tamil Nadu 
          <option 
                          value=UP311/1/0.298731481/-1/1.397727513>TIRUVURU ,Andhra 
          Pradesh 
          <option 
                          value=UP312/1/0.13968254/-1/1.359673721>TISAIYANVILAI 
          ,Tamil Nadu 
          <option 
                          value=UP316/1/0.199018519/-1/1.382003527>TITTAGUDI ,Tamil 
          Nadu 
          <option 
                          value=UP319/1/0.518799383/-1/1.325228395>TOHANA ,Haryana 
          <option 
                          value=UP322/1/0.158369929/-1/1.379636684>TONDI ,Tamil 
          Nadu 
          <option 
                          value=UP323/1/0.456844356/-1/1.32328351>TONK ,Rajasthan 
          <option 
                          value=UP327/1/0.181014991/-1/1.362530423>TOVARANKURICHCHI 
          ,Tamil Nadu 
          <option 
                          value=UP328/1/0.192529101/-1/1.394279101>TRANQUEBAR 
          ,Tamil Nadu 
          <option 
                          value=UP329/1/0.183469136/-1/1.330636243>TRICHUR ,Kerala 
          <option 
                          value=UP332/1/0.158981041/-1/1.340244268>TRIPUNITTURA 
          ,Kerala 
          <option 
                          value=UP333/1/0.139745591/-1/1.328473104>TRIVANDRUM 
          ,Kerala 
          <option 
                          value=UP335/1/0.244003086/-1/1.377808201>TSUNDUPALLE 
          ,Andhra Pradesh 
          <option 
                          value=UP339/1/0.48072134/-1/1.432342593>TULSIPUR ,Uttar 
          Pradesh 
          <option 
                          value=UP340/1/0.251608025/-1/1.310411376>TUMINKATTI 
          ,Karnataka 
          <option 
                          value=UP341/1/0.232891534/-1/1.346103175>TUMKUR ,Karnataka 
          <option 
                          value=UP345/1/0.475066138/-1/1.365959436>TUNDLA ,Uttar 
          Pradesh 
          <option 
                          value=UP348/1/0.445558201/-1/1.575454145>TURA ,Meghalaya 
          <option 
                          value=UP350/1/0.194634039/-1/1.372361552>TURAIYUR ,Tamil 
          Nadu 
          <option 
                          value=UP352/1/0.142039683/-1/1.364436508>TUTICORIN ,Tamil 
          Nadu 
          <option 
                          value=UP355/1/0.484029101/-1/1.310144621>UDAIPUR ,Rajasthan 
          <option 
                          value=UP356/1/0.4290194/-1/1.286675044>UDAIPUR ,Rajasthan 
          <option 
                          value=UP358/1/0.195308201/-1/1.384477072>UDAIYARPALAIYAM 
          ,Tamil Nadu 
          <option 
                          value=UP360/1/0.184744709/-1/1.348707672>UDAMALPET ,Tamil 
          Nadu 
          <option 
                          value=UP362/1/0.259722222/-1/1.384564374>UDAYAGIRI ,Andhra 
          Pradesh 
          <option 
                          value=UP364/1/0.57477425/-1/1.311813051>UDHAMPUR ,Jammu 
          &amp; Kashmir 
          <option 
                          value=UP365/1/0.232784832/-1/1.305085979>UDIPI ,Karnataka 
          <option 
                          value=UP367/1/0.488913139/-1/1.382008377>UJHANI ,Uttar 
          Pradesh 
          <option 
                          value=UP368/1/0.404652557/-1/1.310697531>UJJAIN ,Madhya 
          Pradesh 
          <option 
                          value=UP373/1/0.248203263/-1/1.305915344>ULANAHALLI 
          ,Karnataka 
          <option 
                          value=UP374/1/0.335529101/-1/1.277348325>ULHASNAGAR 
          ,Maharashtra 
          <option 
                          value=UP375/1/0.266095238/-1/1.396849647>ULLAPALEM ,Andhra 
          Pradesh 
          <option 
                          value=UP379/1/0.410768519/-1/1.411501764>UMARIA ,Madhya 
          Pradesh 
          <option 
                          value=UP394/1/0.425590388/-1/1.410376543>UNCHAHRA ,Madhya 
          Pradesh 
          <option 
                          value=UP397/1/0.463503527/-1/1.397446208>UNNAO ,Uttar 
          Pradesh 
          <option 
                          value=UP399/1/0.379601852/-1/1.22707716>UPLETA ,Gujarat 
          <option 
                          value=UP400/1/0.196646825/-1/1.370901675>UPPILIYAPURAM 
          ,Tamil Nadu 
          <option 
                          value=UP402/1/0.260958995/-1/1.348984127>URAVAKONDA 
          ,Andhra Pradesh 
          <option 
                          value=UP404/1/0.297785714/-1/1.296656526>URUN ISLAMPUR 
          ,Maharashtra 
          <option 
                          value=UP405/1/0.1595097/-1/1.358194444>USILAMPATTI ,Tamil 
          Nadu 
          <option 
                          value=UP409/1/0.477030423/-1/1.438972663>UTRAULA ,Uttar 
          Pradesh 
          <option 
                          value=WB2/1/0.159567901/-1/1.350167549>UTTAMAPALAIYAM 
          ,Tamil Nadu 
          <option 
                          value=WB5/1/0.220237654/-1/1.39258642>UTTIRAMERUR ,Tamil 
          Nadu 
          <option 
                          value=WB11/1/0.175961199/-1/1.345943122>VADIPPATTI ,Tamil 
          Nadu 
          <option 
                          value=WB13/1/0.389476631/-1/1.277876984>VADODARA ,Gujarat 
          <option 
                          value=WB14/1/0.158534832/-1/1.333837302>VAIKAM ,Kerala 
          <option 
                          value=WB17/1/0.189929453/-1/1.328759259>VALANCHER ,Kerala 
          <option 
                          value=WB18/1/0.208054233/-1/1.389448413>VALAVANUR ,Tamil 
          Nadu 
          <option 
                          value=WB22/1/0.187101852/-1/1.380446649>VALLAM ,Tamil 
          Nadu 
          <option 
                          value=WB23/1/0.359857143/-1/1.273308201>VALSAD ,Gujarat 
          <option 
                          value=WB24/1/0.218302469/-1/1.389938272>VANDAVASI ,Tamil 
          Nadu 
          <option 
                          value=WB25/1/0.258213845/-1/1.375455908>VANIPENTA ,Andhra 
          Pradesh 
          <option 
                          value=WB26/1/0.221406526/-1/1.372574956>VANIYAMBADI 
          ,Tamil Nadu 
          <option 
                          value=WB32/1/0.140861111/-1/1.339317901>VARKKALLAI ,Kerala 
          <option 
                          value=WB35/1/0.337939594/-1/1.271169312>VASEI ,Maharashtra 
          <option 
                          value=WB37/1/0.177353175/-1/1.357709436>VATTALKUNDU 
          ,Tamil Nadu 
          <option 
                          value=WB40/1/0.181092593/-1/1.380839506>VEDARANNIYAM 
          ,Tamil Nadu 
          <option 
                          value=WB41/1/0.183842593/-1/1.345933422>VEDASANDUR ,Tamil 
          Nadu 
          <option 
                          value=WB44/1/0.191044974/-1/1.356918871>VELLAKKOVIL 
          ,Tamil Nadu 
          <option 
                          value=WB45/1/0.225441799/-1/1.381746473>VELLORE ,Tamil 
          Nadu 
          <option 
                          value=WB46/1/0.27442769/-1/1.371963845>VELUGODU ,Andhra 
          Pradesh 
          <option 
                          value=WB49/1/0.250851411/-1/1.369931658>VEMPALLE ,Andhra 
          Pradesh 
          <option 
                          value=WB50/1/0.277051587/-1/1.285574074>VENGURLA ,Maharashtra 
          <option 
                          value=WB51/1/0.24367328/-1/1.389511464>VENKATAGIRI ,Andhra 
          Pradesh 
          <option 
                          value=WB56/1/0.246064374/-1/1.366623898>VEPARALA ,Andhra 
          Pradesh 
          <option 
                          value=WB57/1/0.175796296/-1/1.33212037>VERAPOLI ,Kerala 
          <option 
                          value=WB60/1/0.27557716/-1/1.402204145>VETAPALEM ,Andhra 
          Pradesh 
          <option 
                          value=WB61/1/0.211357143/-1/1.383671958>VETTAVALAM ,Tamil 
          Nadu 
          <option 
                          value=WB62/1/0.410734568/-1/1.35851455>VIDISHA ,Madhya 
          Pradesh 
          <option 
                          value=WB64/1/0.141113316/-1/1.358223545>VIJAYA NARAYANAM 
          ,Tamil Nadu 
          <option 
                          value=WB66/1/0.288289242/-1/1.407849647>VIJAYAWADA ,Andhra 
          Pradesh 
          <option 
                          value=WB68/1/0.158515432/-1/1.362205467>VILATTIKULAM 
          ,Tamil Nadu 
          <option 
                          value=WB69/1/0.20847134/-1/1.388061287>VILLUPURAM ,Tamil 
          Nadu 
          <option 
                          value=WB72/1/0.258951058/-1/1.389487213>VINJAMUR ,Andhra 
          Pradesh 
          <option 
                          value=WB76/1/0.185132716/-1/1.362787478>VIRALIMALAI 
          ,Tamil Nadu 
          <option 
                          value=WB78/1/0.159267196/-1/1.351554674>VIRAPANDI ,Tamil 
          Nadu 
          <option 
                          value=WB80/1/0.212904321/-1/1.323458113>VIRARAJENDRAPET 
          ,Karnataka 
          <option 
                          value=WB81/1/0.158602734/-1/1.361177249>VIRUDUNAGER 
          ,Tamil Nadu 
          <option 
                          value=WB83/1/0.309294974/-1/1.454361993>VISHAKHAPATNAM 
          ,Andhra Pradesh 
          <option 
                          value=WB84/1/0.413838624/-1/1.266707231>VISNAGAR ,Gujarat 
          <option 
                          value=WB86/1/0.3162694/-1/1.456350529>VIZIANAGARAM ,Andhra 
          Pradesh 
          <option 
                          value=WB87/1/0.201036155/-1/1.385088183>VRIDDHACHALAM 
          ,Tamil Nadu 
          <option 
                          value=WB88/1/0.481565256/-1/1.345618166>VRINDAVAN ,Uttar 
          Pradesh 
          <option 
                          value=WB98/1/0.22330291/-1/1.39372134>WALAJABAD ,Tamil 
          Nadu 
          <option 
                          value=WB99/1/0.225635802/-1/1.385742945>WALAJAPET ,Tamil 
          Nadu 
          <option 
                          value=WB106/1/0.394845679/-1/1.238644621>WANKANER ,Gujarat 
          <option 
                          value=WB109/1/0.314159612/-1/1.389618166>WARANGAL ,Andhra 
          Pradesh 
          <option 
                          value=WB111/1/0.362199735/-1/1.362821429>WARDHA ,Maharashtra 
          <option 
                          value=WB112/1/0.43672619/-1/1.48501455>WARIS ALLGANJ 
          ,Bihar 
          <option 
                          value=WB113/1/0.353149471/-1/1.379500882>WARORA ,Maharashtra 
          <option 
                          value=WB116/1/0.350932981/-1/1.346830688>WASHIM ,Maharashtra 
          <option 
                          value=WB117/1/0.159456349/-1/1.355551146>WATRAP ,Tamil 
          Nadu 
          <option 
                          value=WB119/1/0.471743827/-1/1.347417549>WER ,Rajasthan 
          <option 
                          value=WB123/1/0.292693122/-1/1.346884039>YADGIR ,Karnataka 
          <option 
                          value=WB124/1/0.262690476/-1/1.359634921>YADIKI ,Andhra 
          Pradesh 
          <option 
                          value=WB129/1/0.526132716/-1/1.349469136>YAMUNANGAR 
          ,Haryana 
          <option 
                          value=WB134/1/0.356146825/-1/1.364354056>YAVATMAL ,Maharashtra 
          <option 
                          value=WB140/1/0.307141534/-1/1.402640653>YELLANDU ,Andhra 
          Pradesh 
          <option 
                          value=WB151/1/0.468353616/-1/1.420018519>ZAIDPUR ,Uttar 
          Pradesh 
          <option 
                          value=WB152/1/0.443763668/-1/1.458945326>ZAMANIA ,Uttar 
          Pradesh&nbsp;</option>
        </select></td>
  </tr>
  <tr> 
<TR>
<Td colspan=2 align=center><button onclick=doSubmit();>Calculate</button>&nbsp;&nbsp;<button type=reset>Clear Now</button>
</TD></TR></tABLE></form>


</TD></TR></TABLE>
<SCRIPT>setFooter("<%=path%>","<%=path+"/Images/Balcony.jpg"%>")</SCRIPT>


