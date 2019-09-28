<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<title>HiAPTProject</title>
	<meta name="description" content="description">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="/master/resources/plugins/bootstrap/bootstrap.css" rel="stylesheet">
	<link href="/master/resources/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">
	<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
	<link href="/master/resources/plugins/fancybox/jquery.fancybox.css" rel="stylesheet">
	<link href="/master/resources/plugins/fullcalendar/fullcalendar.css" rel="stylesheet">
	<link href="/master/resources/plugins/xcharts/xcharts.min.css" rel="stylesheet">
	<link href="/master/resources/plugins/select2/select2.css" rel="stylesheet">		
	<link href="/master/resources/css/style_v1.css" rel="stylesheet">
	<!-- 한글폰트 추가-->
	<link href="/master/resources/css/basic.css" rel="stylesheet">
	<link href="/master/resources/plugins/chartist/chartist.min.css" rel="stylesheet">
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
				<script src="http://getbootstrap.com/docs-assets/js/html5shiv.js"></script>
				<script src="http://getbootstrap.com/docs-assets/js/respond.min.js"></script>
			<![endif]-->
		</head>
		<body>
			<!--Start Header-->
			<div id="screensaver">
				<canvas id="canvas"></canvas>
				<i class="fa fa-lock" id="screen_unlock"></i>
			</div>
			<div id="modalbox">
				<div class="devoops-modal">
					<div class="devoops-modal-header">
						<div class="modal-header-name">
							<span>Basic table</span>
						</div>
						<div class="box-icons">
							<a class="close-link">
								<i class="fa fa-times"></i>
							</a>
						</div>
					</div>
					<div class="devoops-modal-inner">
					</div>
					<div class="devoops-modal-bottom">
					</div>
				</div>
			</div>
			<header class="navbar">
				<div class="container-fluid expanded-panel">
					<div class="row">
						<div id="logo" class="col-xs-12 col-sm-2">
							<a href="index_v1.html">HiAPT 관리자</a>
						</div>
						<div id="top-panel" class="col-xs-12 col-sm-10">
							<div class="row">
								<div class="col-xs-8 col-sm-4">
									<!--div id="search">
										<input type="text" placeholder="search"/>
										<i class="fa fa-search"></i>
									</div-->
								</div>
								<div class="col-xs-4 col-sm-8 top-panel-right">
									<!--a href="#" class="about">about</a>
									<a href="index.html" class="style2"></a-->
									<ul class="nav navbar-nav pull-right panel-menu">
										<!-- 알람 벨 아이콘 시작 -->
										<li class="hidden-xs">
											<a href="index.html" class="modal-link">
												<i class="fa fa-bell"></i>
												<span class="badge">7</span>
											</a>
										</li><!-- 알람 벨 끝 -->
										<!-- 달력 아이콘 시작 -->
										<li class="hidden-xs">
											<a class="ajax-link" href="/master/views/ajax/calendar.html">
												<i class="fa fa-calendar"></i>
												<span class="badge">7</span>
											</a>
										</li><!-- 달력 끝 -->
										<!-- 메세지 (채팅으로 변경 ) 시작-->
										<li class="hidden-xs">
											<a href="/master/views/ajax/page_messages.html" class="ajax-link">
												<i class="fa fa-comments"></i>
												<span class="badge">7</span>
											</a>
										</li>
										<!-- 채팅 끝-->
										<!-- 사용자 설정 부분 시작 -->
										<li class="dropdown">
											<a href="#" class="dropdown-toggle account" data-toggle="dropdown">
												<div class="avatar">
													<img src="/master/resources/images/ryan.png" class="img-circle" alt="avatar" />
												</div>
												<i class="fa fa-angle-down pull-right"></i>
												<div class="user-mini pull-right">
													<span class="welcome">안녕하세요!,</span>
													<span>사용자님</span>
												</div>
											</a>
											<ul class="dropdown-menu">
												<li>
													<a href="#">
														<i class="fa fa-user"></i>
														<span>Profile</span>
													</a>
												</li>
												<li>
													<a href="/master/views/ajax/page_messages.html" class="ajax-link">
														<i class="fa fa-envelope"></i>
														<span>메세지</span>
													</a>
												</li>
												<li>
													<a href="#">
														<i class="fa fa-cog"></i>
														<span>설정</span>
													</a>
												</li>
												<li>
													<a href="#">
														<i class="fa fa-power-off"></i>
														<span>로그아웃</span>
													</a>
												</li>
											</ul>
										</li>
										<!-- 사용자 설정부분 끝 -->
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>
			<!--End Header-->
			<!--Start Container-->
			<div id="main" class="container-fluid">
				<div class="row">
					<div id="sidebar-left" class="col-xs-2 col-sm-2">
						<ul class="nav main-menu">
							<!-- 서브메뉴 시작 -->
							<!--관리비 시작 -->
							<li class="dropdown">
								<a href="#" class="dropdown-toggle">
									<i class="fa fa-calculator"></i>
									<span class="hidden-xs">관리비관리</span>
								</a>
								<ul class="dropdown-menu">
									<li><a class="ajax-link" href="/master/views/maintenance/01_item/itemList.html">
										<span class="hidden-xs">부과항목등록</span>
									</a>
								</li>								
								<li><a class="ajax-link" href="/master/views/maintenance/02_base/baseList.html">부과기초작업</a></li>
								<!-- dept2 단계 시작 --->
								<li class="dropdown">
									<a href="#" class="dropdown-toggle">
										<i class="fa fa-plus-square"></i>
										<span class="hidden-xs">관리비부과처리</span>
									</a>
									<ul class="dropdown-menu">							
										<li class="dropdown">
											<li><a class="ajax-link" href="/master/views/maintenance/03_impose/imposeList.html">관리비부과처리</a></li>
											<li><a class="ajax-link" href="/master/views/maintenance/03_impose/lastMoneyGet.html">전월발생금액가져오기</a></li>
											<li><a class="ajax-link" href="/master/views/maintenance/03_impose/addList.html">행추가</a></li>
											<li><a class="ajax-link" href="/master/views/maintenance/03_impose/addExcel.html">엑셀자료올리기</a></li>			
											<li><a class="ajax-link" href="/master/views/maintenance/03_impose/faultMoney.html">기수금</a></li>				
										</li>
									</ul>
								</li>
								<!-- dept2 단계 끝 --->
								<li><a class="ajax-link" href="/master/views/maintenance/04_deadlineSet/deadlineList.html">부과마감등록</a></li>
								<li><a class="ajax-link" href="/master/views/maintenance/05_maintenance/maintenanceList.html">관리비조회</a></li>
								<li><a class="ajax-link" href="/master/views/maintenance/06_bill/billList.html">고지서출력</a></li>
								<li><a class="ajax-link" href="/master/views/maintenance/07_payment/paymentList.html">수납관리</a></li>
								<li><a class="ajax-link" href="/master/views/maintenance/08_etc/paymentList.html">결제서류등록</a></li>	
								<!-- dept2 단계 시작 --->
								<li class="dropdown">
									<a href="#" class="dropdown-toggle">
										<i class="fa fa-plus-square"></i>
										<span class="hidden-xs">기본정책관리</span>
									</a>
									<ul class="dropdown-menu">
										<li class="dropdown">
											<li><a class="ajax-link" href="/master/views/maintenance/08_etc/smsManage.html">SMS관리</a></li>
											<li><a class="ajax-link" href="/master/views/maintenance/08_etc/payManage.html">결제방법설정</a></li>			
										</li>
									</ul>
								</li>
								<!-- dept2 단계 끝 --->

							</ul>
						</li>
						<!-- 관리비 끝 -->
						<!-- 서브메뉴 끝 -->
						<!-- 보조 메뉴 단 시작-->
						<li>
							<a href="/master/views/ajax/dashboard.html" class="ajax-link">
								<i class="fa fa-dashboard"></i>
								<span class="hidden-xs">Dashboard</span>
							</a>
						</li>
						<!-- dashBoard 메뉴 chart 시작-->
						<li class="dropdown">
							<a href="#" class="dropdown-toggle">
								<i class="fa fa-bar-chart-o"></i>
								<span class="hidden-xs">Charts</span>
							</a>
							<ul class="dropdown-menu">
								<li><a class="ajax-link" href="/master/views/ajax/charts_xcharts.html">xCharts</a></li>
								<li><a class="ajax-link" href="/master/views/ajax/charts_flot.html">Flot Charts</a></li>
								<li><a class="ajax-link" href="/master/views/ajax/charts_google.html">Google Charts</a></li>
								<li><a class="ajax-link" href="/master/views/ajax/charts_morris.html">Morris Charts</a></li>
								<li><a class="ajax-link" href="/master/views/ajax/charts_amcharts.html">AmCharts</a></li>
								<li><a class="ajax-link" href="/master/views/ajax/charts_chartist.html">Chartist</a></li>
								<li><a class="ajax-link" href="/master/views/ajax/charts_coindesk.html">CoinDesk realtime</a></li>
							</ul>
						</li>
						<!-- dashBoard 메뉴 chart 메뉴끝-->
						<!-- table 메뉴 시작 -->
						<li class="dropdown">
							<a href="#" class="dropdown-toggle">
								<i class="fa fa-table"></i>
								<span class="hidden-xs">Tables</span>
							</a>
							<ul class="dropdown-menu">
								<li><a class="ajax-link" href="/master/views/ajax/tables_simple.html">Simple Tables</a></li>
								<li><a class="ajax-link" href="/master/views/ajax/tables_datatables.html">Data Tables</a></li>
								<li><a class="ajax-link" href="/master/views/ajax/tables_beauty.html">Beauty Tables</a></li>
							</ul>
						</li>
						<!-- 테이블 끝 -->
						<!-- Form 시작  -->
						<li class="dropdown">
							<a href="#" class="dropdown-toggle">
								<i class="fa fa-pencil-square-o"></i>
								<span class="hidden-xs">Forms</span>
							</a>
							<ul class="dropdown-menu">
								<li><a class="ajax-link" href="/master/views/ajax/forms_elements.html">Elements</a></li>
								<li><a class="ajax-link" href="/master/views/ajax/forms_layouts.html">Layouts</a></li>
								<li><a class="ajax-link" href="/master/views/ajax/forms_file_uploader.html">File Uploader</a></li>
							</ul>
						</li>
						<!-- Form 끝 -->
						<!-- UI 시작 -->
						<li class="dropdown">
							<a href="#" class="dropdown-toggle">
								<i class="fa fa-desktop"></i>
								<span class="hidden-xs">UI Elements</span>
							</a>
							<ul class="dropdown-menu">
								<li><a class="ajax-link" href="/master/views/ajax/ui_grid.html">Grid</a></li>
								<li><a class="ajax-link" href="/master/views/ajax/ui_buttons.html">Buttons</a></li>
								<li><a class="ajax-link" href="/master/views/ajax/ui_progressbars.html">Progress Bars</a></li>
								<li><a class="ajax-link" href="/master/views/ajax/ui_jquery-ui.html">Jquery UI</a></li>
								<li><a class="ajax-link" href="/master/views/ajax/ui_icons.html">Icons</a></li>
							</ul>
						</li>
						<!--UI 끝 -->
						<!-- page 종류 시작 -->
						<li class="dropdown">
							<a href="#" class="dropdown-toggle">
								<i class="fa fa-list"></i>
								<span class="hidden-xs">Pages</span>
							</a>
							<ul class="dropdown-menu">
								<li><a href="/master/views/ajax/page_login_v1.html">Login</a></li>
								<li><a href="/master/views/ajax/page_register_v1.html">Register</a></li>
								<li><a id="locked-screen" class="submenu" href="/master/views/ajax/page_locked.html">Locked Screen</a></li>
								<li><a class="ajax-link" href="/master/views/ajax/page_contacts.html">Contacts</a></li>
								<li><a class="ajax-link" href="/master/views/ajax/page_feed.html">Feed</a></li>
								<li><a class="ajax-link add-full" href="/master/views/ajax/page_messages.html">Messages</a></li>
								<li><a class="ajax-link" href="/master/views/ajax/page_pricing.html">Pricing</a></li>
								<li><a class="ajax-link" href="/master/views/ajax/page_product.html">Product</a></li>
								<li><a class="ajax-link" href="/master/views/ajax/page_invoice.html">Invoice</a></li>
								<li><a class="ajax-link" href="/master/views/ajax/page_search.html">Search Results</a></li>
								<li><a class="ajax-link" href="/master/views/ajax/page_404.html">Error 404</a></li>
								<li><a href="/master/views/ajax/page_500_v1.html">Error 500</a></li>
							</ul>
						</li>
						<!-- 페이지 종류 끝  -->
						<!-- 타이포그라픽 시작 -->
						<li>
							<a class="ajax-link" href="/master/views/ajax/typography.html">
								<i class="fa fa-font"></i>
								<span class="hidden-xs">Typography</span>
							</a>
						</li>
						<!-- 타이포그라픽 끝 -->
						<!-- 달력 시작 -->
						<li>
							<a class="ajax-link" href="/master/views/ajax/calendar.html">
								<i class="fa fa-calendar"></i>
								<span class="hidden-xs">Calendar</span>
							</a>
						</li>
						<!-- 달력 끝  -->
						<!-- 멀티탬플릿 시작 -->
						<li class="dropdown">
					<a href="#" class="dropdown-toggle">
						<i class="fa fa-picture-o"></i>
						 <span class="hidden-xs">Multilevel menu</span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="#">First level menu</a></li>
						<li><a href="#">First level menu</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle">
								<i class="fa fa-plus-square"></i>
								<span class="hidden-xs">Second level menu group</span>
							</a>
							<ul class="dropdown-menu">
								<li><a href="#">Second level menu</a></li>
								<li><a href="#">Second level menu</a></li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle">
										<i class="fa fa-plus-square"></i>
										<span class="hidden-xs">Three level menu group</span>
									</a>
									<ul class="dropdown-menu">
										<li><a href="#">Three level menu</a></li>
										<li><a href="#">Three level menu</a></li>
										<li class="dropdown">
											<a href="#" class="dropdown-toggle">
												<i class="fa fa-plus-square"></i>
												<span class="hidden-xs">Four level menu group</span>
											</a>
											<ul class="dropdown-menu">
												<li><a href="#">Four level menu</a></li>
												<li><a href="#">Four level menu</a></li>
												<li class="dropdown">
													<a href="#" class="dropdown-toggle">
														<i class="fa fa-plus-square"></i>
														<span class="hidden-xs">Five level menu group</span>
													</a>
													<ul class="dropdown-menu">
														<li><a href="#">Five level menu</a></li>
														<li><a href="#">Five level menu</a></li>
														<li class="dropdown">
															<a href="#" class="dropdown-toggle">
																<i class="fa fa-plus-square"></i>
																<span class="hidden-xs">Six level menu group</span>
															</a>
															<ul class="dropdown-menu">
																<li><a href="#">Six level menu</a></li>
																<li><a href="#">Six level menu</a></li>
															</ul>
														</li>
													</ul>
												</li>
											</ul>
										</li>
										<li><a href="#">Three level menu</a></li>
									</ul>
								</li>
							</ul>
						</li>
					</ul>
				</li>
				<!-- 멀티 탬플릿 끝 -->

					</ul>
				</div>
				<!--Start Content-->
				<!-- about 메뉴 시작,여기서는 생략 -->
				<div id="content" class="col-xs-12 col-sm-10">
					<div id="about">
						<div class="about-inner">
							<h4 class="page-header">HiAPT 팀이란?</h4>
							<p>HiAPT team</p>
							<p>Homepage - <a href="#" target="_blank">http://HiAPT</a></p>
							<p>Email - <a href="#">HiAPTme@gmail.com</a></p>
						</div>
					</div>
					<div class="preloader">
						
					</div>
					<div id="ajax-content"></div>
				</div>
				<!--End Content-->
			</div>
		</div>
		<!--End Container-->
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<!--<script src="http://code.jquery.com/jquery.js"></script>-->
		<script src="/master/resources/plugins/jquery/jquery.min.js"></script>
		<script src="/master/resources/plugins/jquery-ui/jquery-ui.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="/master/resources/plugins/bootstrap/bootstrap.min.js"></script>
		<script src="/master/resources/plugins/justified-gallery/jquery.justifiedGallery.min.js"></script>
		<script src="/master/resources/plugins/tinymce/tinymce.min.js"></script>
		<script src="/master/resources/plugins/tinymce/jquery.tinymce.min.js"></script>
		<!-- All functions for this theme + document.ready processing -->
		<script src="/master/resources/js/devoops.js"></script>
	</body>
	</html>
