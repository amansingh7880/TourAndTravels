 var ie4=document.all    // Microsoft Internet Explorer
 var ns4=document.layers // Netscape Navigator
 var ns_gecko=document.getElementById&&!document.all //Netscape Gecko,Mozilla..
 var ieop=0;
 var op_id=0;
 var mearray=["Home","Services","Travelling","Holiday","Faqs","Login"];
 var message="";
 function clickNS(e) {
 if(ns4 ||ns_gecko) {
 if (e.which==2 || e.which==3) {
 (message);return false;} } }
 if (ns4) {
 document.captureEvents(Event.MOUSEDOWN);
 document.onmousedown=clickNS; }
 else {
 document.onmouseup=clickNS;
 document.oncontextmenu=new Function('return  false')  }
 function setMenuRequireMents()  {
          this.tblColor="thistle"
          this.bgColor="#356546"//"#e2e0d2"
          this.color="aliceblue"
          this.onColor="aliceblue"
          this.onBg="teal";
          this.ofColor=this.color
          this.ofBg=this.bgColor
          this.fontFamily="Ms Sans Serif"
          this.fontSize="11px"
          this.fontWeight="bold"
          this.width=145
          this.height=50
          this.Cursor=document.all?"hand":"pointer"; 
          this.Padding="14px"
          this.lineHeight="12pt"
          this.Appearance=ie4?"filter:progid.DXImageTransform.Microsoft.alpha(Opacity=80)":"-moz-opacity:0.8"
          this.textAlign="justify"
          this.Tag=ns4 ? "LAYER" : "DIV";
          this.LTag=ns4 ?"A":"DIV";
          this.Display=ns4 ? "hide" : "hidden"
          this.DPointer=ie4 ? "<font style='font:bold 11px webdings' face=webdings>4</font>" : "<b>&raquo;</b>"
          this.RPointer=ie4 ? "<font face=webdings>6</font>" : "<b>&raquo;</b>"
          this.DIndicator=(!ns4) ? "<span class=mores>"+this.DPointer+"</span>":"<LAYER Class=pos>"+this.DPointer+"</LAYER>";
          this.RIndicator=(!ns4) ? "<span class=mores>"+this.RPointer+"</span>":"<LAYER Class=pos>"+this.RPointer+"</LAYER>";
		  this.ZIndex="500";
          }
  function webBrowser() {
                this.bwidth=(!ie4) ? window.innerWidth:document.body.clientWidth; 
                this.bwidth=(!ie4) ? window.innerHeight:document.body.clientHeight; 
                this.boffwidth=(!ie4) ? window.outerWidth:document.body.offsetWidth;
                this.boffheight=(!ie4) ? window.outerHeight:document.body.offsetHeight;
                this.bxoffset=(!ie4)?window.pageXOffset:document.body.scrollLeft;                     
                this.byoffset=(!ie4)?window.pageYOffset:document.body.scrollTop;                     
                       }
 var newMenu=new Object();
 var menuCount=0;
 var samsungMenu;

 document.write("<HTML xmlns:v='urn:schemas-microsoft-com:vml'>");
 document.write("<STYLE>v:\* {behavior:url(#default#VML)</STYLE>");
 document.write("<v:background fillcolor='rgb(123,108,45)'>");
 document.write("<v:fill color2='white' angle=45></v:background>");
 document.write("<BODY leftmargin=0 topmargin=0>");
 function insertMenuList(menuname,item,menuAction) {
 if(!newMenu[menuname]) {
              samsungMenu=new Object();
                        samsungMenu.name=menuname;
                        samsungMenu.num=menuCount++;
                        samsungMenu.items=new Array();
                        samsungMenu.actions=new Array();
              newMenu[menuname]=samsungMenu;
                        }      
 if(!ns4) { 
      newMenu[menuname].items[newMenu[menuname].items.length]=item;
      newMenu[menuname].actions[newMenu[menuname].actions.length]=menuAction;              
      } else {
      newMenu[menuname].items.push(item);
      newMenu[menuname].actions.push(menuAction);
             }
  }

 cb=new setMenuRequireMents();
 pwd=ns4?window.innerWidth-10:"";
 ppwd=130//parseInt(pwd/mearray.length);
 var slookAndFeel=ns4?"<ilayer width="+ppwd+" height=22><layer  width="+ppwd+" height=22 left=0 top=0 bgcolor="+cb.tblColor+"></layer><layer width="+(ppwd-2)+"  height=20 left=1 top=1 bgColor="+cb.bgColor+" onmouseover='bgColor=cb.onBg' onmouseout='bgColor=cb.ofBg'>":"";
 var mlookAndFeel=ns4?"<ilayer width="+cb.width+" height=22><layer  width="+cb.width+" height=22 left=0 top=0 bgcolor="+cb.tblColor+"></layer><layer width="+(cb.width-2)+"  height=20 left=1 top=1 bgColor="+cb.bgColor+" onmouseover='bgColor=cb.onBg' onmouseout='bgColor=cb.ofBg'>":"";

 function makeDiv(title) { var Toret;
 if(!ns4) Toret=cb.DIndicator+"<"+cb.Tag+" class=nested onmouseover=msap(event,'"+title+"',this); onmouseout=getpos(event); title='"+title+"'>"+title+"</"+cb.Tag+">" 
 else Toret=cb.RIndicator+"<"+cb.Tag+" onmouseover=msap(event,'"+title+"',this); onmouseout=getpos(event);>"+title+"</"+cb.Tag+">" 
 return Toret;}

 function genMenu(Caption,urls) { var Toret;
 if(!ns4) Toret="<"+cb.LTag+" class=nested  onmouseover=handle();  onmouseout='return true' title='"+Caption+"'  oncontextmenu=loca('"+urls+"','New'); onclick=loca('"+urls+"','Self');>"+Caption+"</"+cb.LTag+">"
 else Toret="<"+cb.LTag+" class=menu href='"+urls+"' onmouseover='handle();return true;' onmouseout='return true'><font color='"+cb.color+"'>"+Caption+"</font></"+cb.LTag+">"
 return(Toret) }
 /*******************************Items************************************/
 var loc=location.protocol+"//"+location.host+"/";
 var loc1=location.pathname;
 loc1=loc1.substring(1);
 loc1=loc1.substring(0,loc1.indexOf("/"));
 var path=loc+loc1;
 travelling=makeDiv("Travelling")
 guide=makeDiv("Guide");
 accomadation=makeDiv("Accomadation");
 insurance=genMenu("Travelling Insurance");
 car=makeDiv("Car");
 train=makeDiv("Train");
 flight=makeDiv("Flight");
 cruises=makeDiv("Cruises");
 insertMenuList("Services",accomadation,"javascript:void(0)")
 insertMenuList("Services",guide,"javascript:void(0)")
 insertMenuList("Services",insurance,path+"/Pages/Insurance.jsp")
 insertMenuList("Home","Travels",path+"/Pages/index.jsp")
 insertMenuList("Home","About Us",path+"/Pages/Aboutus.jsp")
 insertMenuList("Home","Contact",path+"/Pages/Contact.jsp")

 insertMenuList("Contact","Travels","http://www.mail.yahoo.com")
 insertMenuList("Contact","About Us","javascript:void(0)")
 insertMenuList("Contact","Contact","javascript:void(0)")

 insertMenuList("Travelling",car,"http://www.geocities.yahoo.com")
 insertMenuList("Travelling",train,"http://www.fortunecity.com")
 insertMenuList("Travelling",flight,"http://www.angelfire.com")
 insertMenuList("Travelling",cruises,"http://www.tripod.com")

 insertMenuList("Faqs","Related to Cars",path+"/Pages/Travelling/CarFaqs.jsp")
 insertMenuList("Faqs","Train",path+"/Pages/Travelling/TrainFaqs.jsp")
 insertMenuList("Faqs","Related to Flight",path+"/Pages/Travelling/FlightFaqs.jsp")
 insertMenuList("Faqs","Cruises",path+"/Pages/Travelling/CruiseFaqs.jsp")

 
 insertMenuList("Guide","Currency Conversion",path+"/Pages/Guide/CurrencyConversion.jsp")
 insertMenuList("Guide","Distance Calculator",path+"/Pages/Guide/DistanceCalculator.jsp")

 insertMenuList("Holiday","Cultural Tour",path+"/Pages/Holiday/CulturalTour.jsp")
 insertMenuList("Holiday","Himalayan Tour",path+"/Pages/Holiday/HimalayanTour.jsp")
 insertMenuList("Holiday","Adventure Tour",path+"/Pages/Holiday/AdventureTour.jsp")
 insertMenuList("Holiday","Safari Tour",path+"/Pages/Holiday/SafariTour.jsp")
 insertMenuList("Holiday","Wildlife Tour",path+"/Pages/Holiday/WildlifeTour.jsp")

 insertMenuList("Accomadation","Top Guest Houses",path+"/Pages/Accomadation/GuestHouses.jsp")
 insertMenuList("Accomadation","Book Hotel or Lodging",path+"/Pages/Accomadation/BookHotel.jsp")
 insertMenuList("Accomadation","Cancel Reservation",path+"/Pages/Accomadation/CancelReservation.jsp")
 insertMenuList("Accomadation","Cancel hotel Reservation",path+"/Pages/Accomadation/CancelReservationhotel2.jsp")
 insertMenuList("Accomadation","Cancel car Reservation",path+"/Pages/Accomadation/CancelReservationCar2.jsp")
 insertMenuList("Accomadation","Check Rates",path+"/Pages/Accomadation/Rates.jsp")
 insertMenuList("Accomadation","Faqs",path+"/Pages/Accomadation/Faqs.jsp")


 insertMenuList("Car","Provided by us",path+"/Pages/Travelling/CarsProvided.jsp")
 insertMenuList("Car","Book Car",path+"/Pages/Travelling/BookCar.jsp")
 insertMenuList("Car","Driving Directions",path+"/Pages/Travelling/DrivingDirections.jsp")
 insertMenuList("Car","Faqs",path+"/Pages/Travelling/CarFaqs.jsp")

 insertMenuList("Train","Passenger Status",path+"/Pages/Travelling/PassengerStatus.jsp")
 insertMenuList("Train","Reservation",path+"/Pages/Travelling/RailwayReservation.jsp")
 insertMenuList("Train","Time Table",path+"/Pages/Travelling/TimeTable.jsp")
  insertMenuList("Train","Faqs",path+"/Pages/Travelling/TrainFaqs.jsp")


 insertMenuList("Flight","Flight Search & Booking",path+"/Pages/Travelling/FlightBookingStart.jsp")
 insertMenuList("Flight","Faqs",path+"/Pages/Travelling/FlightFaqs.jsp")

 insertMenuList("Cruises","New 2 Cruising",path+"/Pages/Travelling/New2Cruising.jsp")
 insertMenuList("Cruises","Book Cruises",path+"/Pages/Travelling/CruiseBooking.jsp")
 insertMenuList("Cruises","Special Occasions",path+"/Pages/Travelling/SpecialOccasions.jsp")
 insertMenuList("Cruises","Faqs",path+"/Pages/Travelling/CruiseFaqs.jsp")
 insertMenuList("Cruises","Cruise Protection Plan",path+"/Pages/Travelling/CruiseProtectionPlan.jsp")

 insertMenuList("Login","Enroll Today",path+"/Pages/Enroll.jsp")
 insertMenuList("Login","Login Customer",path+"/Pages/Login.jsp")


 /*******************************End of Items************************************/

 function highlightmenu(e,state){
 source_el=ie4 ? event.srcElement: e.target
 if (source_el.className=="menuitem"){
 source_el.style.backgroundColor=(state=="on")?cb.onBg:cb.ofBg;
 source_el.style.color=(state=="on")?cb.onColor:cb.ofColor }
 else{ while(source_el.tagName!="TABLE"){
       source_el=ns_gecko? source_el.parentNode : source_el.parentElement
        if (source_el.className=="menuitem"){
        source_el.style.backgroundColor=(state=="on")?cb.onBg:cb.ofBg;
        source_el.style.color=(state=="on")?cb.onColor:cb.ofColor;}
                             } //for while
                         } //for else
                      } //for Function

 function getRef(id) {
 bounce=ie4?document.all[id]:ns_gecko?document.getElementById(id):document.layers[id];
 return bounce; }

 function getSty(id) {
 styleobj=ns4 ? getRef(id) : getRef(id).style;
 return styleobj;}

 function visualize(obj) { document.writeln(obj);}

 function handle() {getSty('nsmenu').visibility=cb.Display;}

 function loca(urls,tgt) { 
 if(urls=="javascript:void(0)") return;
 else { if(tgt=="New") open(urls);
 else ie4?navigate(urls):location.replace(urls);
 hidemenu();}
 }

 function hidemenu() {
 if(ie4) { STransitions(getRef('nsmenu'));STransitions(getRef('msap2'));}
 getSty('nsmenu').visibility=getSty('msap2').visibility=cb.Display;
 return true;} 

 function delayhide() {
 mtime=(!ns4)?"500":"50";
 hf=setTimeout('hidemenu()',mtime);
 ieop=0;}

 function clearHide() { if (window.hf) clearTimeout(hf);}

 function getpos(evt) {
 if (ns4||ns_gecko) return;
 if(ie4 && !getRef('msap2').contains(evt.toElement) && !getRef('nsmenu').contains(evt.toElement))
 setTimeout('hidemenu()',500);}

 function STransitions(obj) {
 if(!ie4) return;
 if(obj.filters!=null&&typeof obj.filters[0]=="object") { obj.filters[0].stop()}
 }

 function incropacity() {
  if(ieop<=100) {
                ieop+=20;
                if(ns_gecko)
                getSty('msap2').MozOpacity=ieop/100;
                op_id=setTimeout('incropacity()', 100);}
                } 

 function RTransitions(obj) {
 if(!ie4) return;
 obj.style.filter="revealTrans(duration=0.7,transition="+parseInt(Math.random()*21)+")"
 if(obj.filters!=null) {
           obj.filters[0].apply();
           obj.style.visibility="visible"
           obj.filters[0].play();}
                       }

 function msap(evt,menus,topp){
 mtable=buildPat(newMenu[menus])
 Item=(ie4)?evt.srcElement.innerText:evt.target.text;
 var ldiv="<"+cb.Tag+" onmouseover='clearHide()' onmouseout='delayhide()'>"+mtable+"</"+cb.Tag+">";
 cur=(topp==null)?getRef('msap2'):getRef('nsmenu')
 if(topp==null) clearHide();
 XYPos=getXY(evt,topp,menus);
 mLeft=XYPos[0]; mTop=XYPos[1]; nesLeft=XYPos[2]; nesTop=XYPos[3];
 if(ie4) {  cur.innerHTML=""; RTransitions(cur) }
 if (ns_gecko && topp==null) incropacity();
 mnTop=(topp==null)?mTop:nesTop
 mnLeft=(topp==null)?mLeft:nesLeft;
 if(ie4) cur.insertAdjacentHTML("afterBegin",mtable);
 else if(ns_gecko) cur.innerHTML=ldiv
 else { with(cur) {document.write(ldiv);document.close();} }
 with(ns4?cur:cur.style) {left=mnLeft;top=mnTop;visibility=ns4 ? "show" :"visible";} } 

 function pointer() {
     var a=getRef('tab1');
     for(i=0;i<mearray.length;i++)  
     a.rows[0].cells[i].innerHTML+=cb.DIndicator;
      } 

 function buildMenu() {
 var tplayer=getRef('toplayer');
  if(!ns4) visualize("<TABLE bgcolor="+cb.tblColor+" align=center CellPadding=3 CellSpacing=1 id=tab1 OnMouseOut=highlightmenu(event,'off'); OnMouseOver=highlightmenu(event,'on'); width='780' border=0><TR>");
  else  visualize("<layer id=mcont left=1 top="+(tplayer.clip.height+100)+"><table  cellspacing=0 cellpadding=0 border=0>");
 for(var item in mearray) 
 if(!ns4) visualize('<TD onselectstart="return false" id='+mearray[item]+' class=menuitem title="'+mearray[item]+'" onmouseover=msap(event,"'+mearray[item]+'",null); onmouseout=delayhide();>'+cb.RIndicator+mearray[item]+'</td>');
 else visualize('<TR><TD>'+slookAndFeel+'<a href="javascript:void(0)" class=shower onmouseout=delayhide(); onmouseover=msap(event,"'+mearray[item]+'",null);><font face="'+cb.fontFamily+'" color="'+cb.color+'"><b>'+mearray[item]+'</b></font></a></layer></ilayer></td></tr>');
 (!ns4)? visualize("</TR></TABLE>"): visualize("</TABLE></LAYER>"); 
 }

 function buildPat(menus) {
 if(ns4) applied="<table  cellspacing=0 border=0 cellpadding=0>"
 else applied="<table bgcolor="+cb.tblColor+" cellspacing=1 cellpadding=2 onMouseover=highlightmenu(event,'on'); onMouseout=highlightmenu(event,'off'); border=0>"
 for(var Menu in menus.items) { 
 loc=menus.actions[Menu];fresh=menus.items[Menu];
 rfresh=(fresh.indexOf("<")!=-1)?"Right Click To Open In New Window":fresh;
 if(ns4) applied+='<tr><td nowrap>'+mlookAndFeel+'<a class=menu onmouseover="return true;" onmouseout="return true;" href="'+loc+'">&nbsp;&nbsp;&nbsp;<font face="'+cb.fontFamily+'" color="'+cb.color+'"><B>'+fresh+'</b></a></font></layer></ilayer></td></tr>' 
 else applied+='<tr><td nowrap onselectstart="return false" title="'+rfresh+'" class=menuitem oncontextmenu=loca("'+loc+'","New"); onclick=loca("'+loc+'","Self");>'+fresh+'</td></tr>' 
 } applied+="</table>" 
 return applied; }
 function getXY(evt,topp,menus) {
 nodeTop=(topp!=null&&ns_gecko)?topp.parentNode.offsetTop+getRef('msap2').offsetTop:0;
 themenuoffsetX=(ie4)?document.body.scrollLeft:window.pageXOffset
 themenuoffsetY=(ie4)?document.body.scrollTop:window.pageYOffset 
 offTop=(!ie4) ? evt.target:event.srcElement;
 offTop=(ns_gecko) ?nodeTop : (ie4) ? themenuoffsetY+evt.clientY-evt.offsetY-5 : themenuoffsetY+evt.pageY-evt.layerY;
 offLeft=ns4 ? parseInt(getRef('msap2').clip.width+getRef('msap2').left) : getRef('msap2').offsetLeft+getRef('msap2').offsetWidth-1
 mTop=ns4 ? getRef('mcont').clip.width+getRef('mcont').clip.left :getRef('tab1').offsetTop+getRef('tab1').offsetHeight-1
 mLeft=ns4 ? evt.pageY-evt.layerY :((topp==null)?getRef(menus).offsetLeft+getRef('tab1').offsetLeft-1:"0") 
 return new Array(mLeft,mTop,offLeft,offTop);
 }
 var nsanc="padding-top:3px;text-decoration:none;font-size:12px;font-family:"+cb.fontFamily+";"
 visualize("<Style>.pos { position:relative;top:-2;left:120}\n"); 
 visualize("A.shower:link,A.shower:visited,A.shower:active {"+nsanc+"text-align:left;padding-left:12px}\n");
 visualize("A.menu:link,A.menu:active,A.menu:visited{"+nsanc+"}");
 visualize("#nsmenu,#msap2 {position:absolute}\n</style>");
 var propstoset=["background-color","color","width","font-size","font-family","font-weight","line-height","cursor","padding-left","z-index"];
 var propstoget=[cb.bgColor,cb.color,cb.width,cb.fontSize,cb.fontFamily,cb.fontWeight,cb.lineHeight,cb.Cursor,cb.Padding,cb.ZIndex];
 if(!ns4) { visualize("<style>\n"); var mitem="";
 for(mi=0;mi<propstoget.length;mi++)  mitem+=propstoset[mi]+":"+propstoget[mi]+";"
 visualize(".mores {float:right;font-size:12px;left:-3pt;position:relative;}");
 visualize(".nested {width:100%;sline-height:"+cb.lineHeight+"}");
 visualize(".menuitem{"+mitem+"}\n</style>");} 
 visualize("<SPAN id=msap2 onmouseout=getpos(event); onmouseover=clearHide();></SPAN>");
 visualize("<SPAN id=nsmenu onmouseout=getpos(event); onmouseover=clearHide();></SPAN>");
 visualize("<body>");
 buildMenu(); 
 var apptit="::&nbsp;&nbsp;HCU Travelling&nbsp;&nbsp;::"; for(tit=0;tit<150;tit++) apptit+="&nbsp;&nbsp;";
 document.write("<TITLE>"+apptit+"</TITLE>");
 function quickLinks() {
 var links=["Home","About-Us","Enroll Membership","Sign In","Insurance","Distance-Calculator","Currency-Convertor"];
 var navs=[
			path+"/index.jsp",
			path+"/Pages/Aboutus.jsp",
	 		path+"/Pages/Enroll.jsp",
			path+"/Pages/Login.jsp",
			path+"/Pages/Insurance.jsp",
 			path+"/Pages/Guide/DistanceCalculator.jsp",
			path+"/Pages/Guide/CurrencyConversion.jsp",
	 		path+"/Pages/Guide/Weather-Details.jsp",
 			path+"/Pages/Guide/CityGuide.jsp"
 ];
 document.write("<TABLE bgcolor=#234567 width=180 align=left cellpadding=0 cellspacing=0><TR><TD style='padding:2px 5px 2px 5px'>");
 for(var lk in links) 
 document.write("<a class=cap href='"+navs[lk]+"'>"+cb.DPointer+"&nbsp;&nbsp;&nbsp;"+links[lk].replace("-"," ")+"</a><br>");
 document.write("</TD></TR><TR><TD><img src='"+arguments[1]+"' width=180 height=200></TD></TR><TR><TD><img src='"+arguments[2]+"' width=180 height=50></TD></TR></TABLE>");
 }
 function setFooter() {
 try{
		document.body.style["cssText"]="background-attachment:fixed;background-image:url('"+arguments[1]+"');background-repeat:no-repeat;background-position:center";
	
 } catch(error) { }
 for(var i=0;i<15;i++) document.write("</TD></TR></TABLE><BR>");
 var links=[""];
 document.write("<HR size=1 noshade width=90% align=center color=gray><TABLE width=780  Align=center cellpadding=0 cellspacing=0><TR><TD align=center><BR>");
 var count=0;
 for(var lk in links) {
 count++;
 var toapp=(count==links.length)?"":"&nbsp;&nbsp;|&nbsp;&nbsp;"; 
 document.write("<a href='"+arguments[0]+"/"+links[lk].replace("-","")+".htm'>"+links[lk].replace("-"," ")+"</a>"+toapp);
 } //document.write("</TD></TR><TR><TD align=center><BR><BR><HR size=1 noshade width=90% align=center color=gray><img src='"+arguments[0]+"/Images/twisting_cranberry_wht.jpg' width='300' height='30'></TD></TR></TABLE>");
 }
 		 
onload=function() {
	var lks=document.getElementsByTagName("A");
	for(var i=0;i<document.links.length;i++) {
		document.links[i].oncontextmenu=new Function("return true");
		document.links[i].onmouseover=document.links[i].onmouseout=new Function("return true");
		document.links[i].onblur=document.links[i].onfocus=function() { status="Done ";this.blur();return true;}
	}
}
