<%@page import="quote.LclBean"%>
<%@page import="quote.FclBean"%>
<%@page import="java.util.Vector"%>
<%@page import="quote.UtilMgr"%>
<%@ page  contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="lcl" class="quote.LclMgr"/>
<%
		request.setCharacterEncoding("EUC-KR");
		int totalRecord = 0;
		int numPerPage = 10;
		int pagePerBlock = 5;
		int totalPage = 0;
		int totalBlock =0;
		int nowPage = 1;
		int nowBlock = 1;
		
		if(request.getParameter("numPerPage")!=null){
			numPerPage = UtilMgr.parseInt(request, "numPerPage");
		}
		
		//�˻��� �ʿ��� ����
		String keyField = "", keyWord = "";
		if(request.getParameter("keyWord")!=null){
			keyField = request.getParameter("keyField");
			keyWord = request.getParameter("keyWord");
		}
		
		//�˻� �Ŀ� �ٽ� ó�� ����Ʈ ��û
		if(request.getParameter("reload")!=null&&
				request.getParameter("reload").equals("true")){
			keyField =""; keyWord = ""; 
		}
		
		totalRecord = lcl.getTotalCountLcl(keyField, keyWord);
		
		if(request.getParameter("nowPage")!=null){
			nowPage = UtilMgr.parseInt(request, "nowPage");
		}
		
		//sql���� ���� start, cnt ����
		int start = (nowPage*numPerPage)-numPerPage;
		int cnt = numPerPage;
		
		//��ü������ ����
		totalPage = (int)Math.ceil((double)totalRecord/numPerPage);
		//��ü�� ����
		 totalBlock = (int)Math.ceil((double)totalPage/pagePerBlock);
		//�����
		nowBlock = (int)Math.ceil((double)nowPage/pagePerBlock);

%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>������ ���Թ��� ������ Ship-da</title>
	<link rel="stylesheet" href="assets/plugins/css/plugins.css">	
    <link href="assets/css/style.css" rel="stylesheet">
	<link href="assets/css/responsiveness.css" rel="stylesheet"><link id="jssDefault" rel="stylesheet" href="assets/css/skins/default.css">
	<script type="text/javascript">
	function check() {
		if(document.searchFrm.keyWord.value==""){
			alert("�˻�� �Է��ϼ���.");
			document.searchFrm.keyWord.focus();
			return;
		}
		document.searchFrm.submit();
	}
	
	function list() {
		document.listFrm.action = "boardLclView.jsp";
		document.listFrm.submit();
	}
	
	function numPerFn(numPerPage) {
		document.readFrm.numPerPage.value=numPerPage;
		document.readFrm.submit();
	}
	
	function pageing(page) {
		document.readFrm.nowPage.value=page;
		document.readFrm.submit();
	}
	
	function block(block) {
		document.readFrm.nowPage.value=<%=pagePerBlock%>*(block-1)+1;
		document.readFrm.submit();
	}
	
	function read(no) {
		document.readFrm.no.value = no;
		document.readFrm.action = "boardLclRead.jsp";
		document.readFrm.submit();
	}
</script>
	</head>
	<body>
	<%@ include file="../index/top.jsp" %>
		<section class="page-title-banner" style="background-image:url(assets/img/banner.jpg);">
			<div class="container">
				<div class="row">
					<div class="tr-list-detail">
						
					</div>
				</div>
			</div>
		</section>
		<section class="profile-header-nav padd-0 bb-1">
			<div class="container">
				<div class="row">
					
					<div class="col-md-8 col-sm-8">
						<div class="tab" role="tabpanel">
							<!-- Nav tabs -->
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="#LCL" aria-controls="home" role="tab" data-toggle="tab"><i class="ti-user"></i>LCL</a></li>
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		<!-- ============== Tour Detail ====================== -->	
		<section class="tr-single-detail gray-bg">
			<div class="container">
				<div class="row">
					
					
					
					<div class="col-md-8 col-sm-12">
						<div class="tab-content tabs">
							
							<div role="tabpanel" class="tab-pane fade in active" id="LCL">
								<div class="row">
									<%
										Vector<LclBean> vlist=lcl.getBoardListLcl(keyField, keyWord, start, cnt);
										int listSize=vlist.size();
										if(vlist.isEmpty()){
											out.println("�������� ����");
										}else{
									%>
									<%
										for(int i=0; i<numPerPage;i++){
											if(i==listSize) break;
											LclBean bean = vlist.get(i);
											int no = bean.getNo();
											String incoterms = bean.getIncoterms();
											String item = bean.getItem();
											//String client = bean.getClient();
											int volume = bean.getVolume();
											String departure = bean.getDeparture();
											String arrive = bean.getArrive();
											String address = bean.getAddress();
											String aAdrress = bean.getaAddress();
											String port = bean.getPort();
											String aport = bean.getAport();
											String regdate = bean.getRegdate();
											String client = bean.getClient();
											int count = bean.getCount();
											int cbmCal = bean.getCbmCal();
										
									%>
									<div class="tr-single-box">
										<div class="tr-single-header">
											<h4><i class="ti-user"></i>#<%=totalRecord-start-i%>&nbsp;&nbsp;&nbsp; LCL �����Ƿ� ����Ʈ (view <%=count%>)</h4>
										</div>
										<div class="tr-single-body">
											<div class="guider-box-detail">
												<div class="guider-box-thumb">
													<img src="<%=userProfile%>" class="img-responsive img-circle" alt="" />
												</div>
												<div class="guider-box-detail-content">
													<h4>ȸ���</h4>
													<p>
														<%=item %><span class="guider-status bg-success"><%=client %></span>
													</p>
													<a href="javascript:read('<%=no%>')"class="btn btn-info">View Detail</a>
												</div>
												<div class="pr-table">
													<ul>
														<li><strong>Volume : </strong><%=cbmCal%> CBM&nbsp;/&nbsp;R.TON</li>
														<li><strong>Incoterms : </strong><%=incoterms %></li>
														<li><strong>Departure : </strong><%=address %>(<%=departure %>) <%=port %></li>
														<li><strong>Destination : </strong><%=aAdrress %>(<%=arrive %>) <%=aport %></li>
														<li><strong>Request Date : </strong><%=regdate %></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
									<%}//---for%>		
								<%}//-----------if-else%>
								
								
								</div>
							</div>
							
							<form name="listFrm" method="post">
								<input type="hidden" name="reload" value="true">
								<input type="hidden" name="nowPage" value="1">
							</form>
							
							<form name="readFrm">
								<input type="hidden" name="nowPage" value="<%=nowPage%>">
								<input type="hidden" name="numPerPage" value="<%=numPerPage%>">
								<input type="hidden" name="keyField" value="<%=keyField%>">
								<input type="hidden" name="keyWord" value="<%=keyWord%>">
								<input type="hidden" name="no">
							</form>
							<div class="row">
								<ul class="pagination">
									
										<li class="page-item">
										<%if(nowBlock>1){%>
										  <a class="page-link" href="javascript:block('<%=nowBlock-1%>')" aria-label="Previous">
											<span class="ti-arrow-left"></span>
											<span class="sr-only">Previous</span>
										  </a>
										  <%}%>
										</li>
									
									<%
											int pageStart = (nowBlock-1)*pagePerBlock+1;
											int pageEnd = (pageStart+pagePerBlock/*15*/)<=totalPage?
													pageStart+pagePerBlock:totalPage+1;
											for(;pageStart<pageEnd;pageStart++){
									%>
									<li >
										<a  href="javascript:pageing('<%=pageStart%>')">
											<%if(nowPage==pageStart){%><font color="red"><%}%>
												<%=pageStart%>
											<%if(nowPage==pageStart){%></font><%}%>
										</a>
									</li>
									<%}//--for%>
									<%if(totalBlock>nowBlock){%>
										<li class="page-item">
										  <a class="page-link" href="javascript:block('<%=nowBlock+1%>')" aria-label="Next">
											<span class="ti-arrow-right"></span>
											<span class="sr-only">Next</span>
										  </a>
										</li>
									<%}%>
								</ul>
							</div>
							
							
						</div>
					</div>
					
					
				   	<form  name="searchFrm">
						<div class="col-md-4 col-sm-12">
							<div class="tr-single-box">
								<div class="tr-single-body">
									<form class="book-form">
										<div class="row">
											<div class="col-xs-12">
												<div class="form-group">
													<label>Incoterms</label>
													<div class="sl-side">
														<select class="wide form-control" name="incoterms">
																<option value="CFR / LCL">CFR / LCL</option>
																<option value="CIF / LCL">CIF / LCL</option>
																<option value="CIP / LCL">CIP / LCL</option>
																<option value="CPT / LCL">CPT / LCL</option>
																<option value="DAP / LCL">DAP / LCL</option>
																<option value="DDP / LCL">DDP / LCL</option>
																<option value="EXW / LCL">EXW / LCL</option>
																<option value="FCA / LCL">FCA / LCL</option>
																<option value="FOB / LCL">FOB / LCL</option>
															</select>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-12">
												<div class="form-group">
													<label>Destination</label>
													<input type="text" name="destination" class="form-control">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-12 mrg-top-15">
												<a href="#" class="btn btn-arrow theme-btn full-width">Search</a>		
											</div>
										</div>
										<div class="row">
											<div class="col-xs-12 mrg-top-15">
												<a href="boardLclWrite.jsp" class="btn btn-arrow theme-btn full-width">Write</a>		
											</div>
										</div>
										
									</form>
								</div>
							</div>
						</div>
				  	 </form>
				   
				   
				</div>
			</div>
		</section>
		<%@ include file="../index/footer.jsp" %>
		<button class="w3-button w3-teal w3-xlarge w3-right" onclick="openRightMenu()"><i class="spin theme-cl fa fa-cog" aria-hidden="true"></i></button>
		<div class="w3-sidebar w3-bar-block w3-card-2 w3-animate-right" style="display:none;right:0;" id="rightMenu">
		  <button onclick="closeRightMenu()" class="w3-bar-item w3-button w3-large theme-bg">Close &times;</button>
		   <ul id="styleOptions" title="switch styling">
				<li>
					<a href="javascript: void(0)" class="cl-box cl-default" data-theme="skins/default"></a>
				</li>
				<li>
					<a href="javascript: void(0)" class="cl-box cl-red" data-theme="skins/red"></a>
				</li>
				<li>
					<a href="javascript: void(0)" class="cl-box cl-green" data-theme="skins/green"></a>
				</li>
				<li>
					<a href="javascript: void(0)" class="cl-box cl-blue" data-theme="skins/blue"></a>
				</li>
				<li>
					<a href="javascript: void(0)" class="cl-box cl-pink" data-theme="skins/pink"></a>
				</li>
				<li>
					<a href="javascript: void(0)" class="cl-box cl-purple" data-theme="skins/purple"></a>
				</li>
			</ul>
		</div>
		<!-- /Switcher -->
		 
		<!-- =================== START JAVASCRIPT ================== -->
		<script src="assets/plugins/js/jquery.min.js"></script>
		<script src="assets/plugins/js/bootstrap.min.js"></script>
		<script src="assets/plugins/js/viewportchecker.js"></script>
		<script src="assets/plugins/js/bootsnav.js"></script>
		<script src="assets/plugins/js/slick.min.js"></script>
		<script src="assets/plugins/js/jquery.nice-select.min.js"></script>
		<script src="assets/plugins/js/jquery.fancybox.min.js"></script>
		<script src="assets/plugins/js/jquery.downCount.js"></script>
		<script src="assets/plugins/js/freshslider.1.0.0.js"></script>
		<script src="assets/plugins/js/moment.min.js"></script>
		<script src="assets/plugins/js/daterangepicker.js"></script>
		<script src="assets/plugins/js/wysihtml5-0.3.0.js"></script>
		<script src="assets/plugins/js/bootstrap-wysihtml5.js"></script>
		<script src="http://maps.google.com/maps/api/js?key="></script>
		<script src="assets/plugins/js/markerclusterer.js"></script>
		<script src="assets/js/map.js"></script>
		
		<!-- Dashboard Js -->
		<script src="assets/plugins/js/jquery.slimscroll.min.js"></script>
		<script src="assets/plugins/js/jquery.metisMenu.js"></script>
		<script src="assets/plugins/js/jquery.easing.min.js"></script>	
 
		<!-- Custom Js -->
		<script src="assets/js/custom.js"></script>

		<script>
			$('#checkin').daterangepicker({
				"singleDatePicker": true,
				"timePicker": true,
				"startDate": "12/12/2018",
				"endDate": "12/14/2018"
			}, function(start, end, label) {
			  console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
			});
		</script>
		
		<script>
			$('#checkout').daterangepicker({
				"singleDatePicker": true,
				"timePicker": true,
				"startDate": "12/18/2018",
				"endDate": "12/18/2018"
			}, function(start, end, label) {
			  console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
			});
		</script>

		<script src="assets/js/jQuery.style.switcher.js"></script>
		<script>
			function openRightMenu() {
				document.getElementById("rightMenu").style.display = "block";
			}
			function closeRightMenu() {
				document.getElementById("rightMenu").style.display = "none";
			}
		</script>

		<script type="text/javascript">
			$(document).ready(function() {
				$('#styleOptions').styleSwitcher();
			});
		</script>
    </body>

</html>