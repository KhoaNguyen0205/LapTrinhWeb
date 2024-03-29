<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BUNDESLIGA || PLAYERS</title>
<script type="text/javascript">
$(document).ready(function() {

	  $(".toggle-accordion").on("click", function() {
	    var accordionId = $(this).attr("accordion-id"),
	      numPanelOpen = $(accordionId + ' .collapse.in').length;
	    
	    $(this).toggleClass("active");

	    if (numPanelOpen == 0) {
	      openAllPanels(accordionId);
	    } else {
	      closeAllPanels(accordionId);
	    }
	  })

	  openAllPanels = function(aId) {
	    console.log("setAllPanelOpen");
	    $(aId + ' .panel-collapse:not(".in")').collapse('show');
	  }
	  closeAllPanels = function(aId) {
	    console.log("setAllPanelclose");
	    $(aId + ' .panel-collapse.in').collapse('hide');
	  }
	     
	});
</script>
<style type="text/css">
{
color:#6a6c6f;
background-color:#f1f3f6;
margin-top:30px;
}
.container {
	max-width: 960px;
}

.panel-default>.panel-heading {
	color: #333;
	background-color: #fff;
	border-color: #e4e5e7;
	padding: 0;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

.panel-default>.panel-heading a {
	display: block;
	padding: 10px 15px;
}

.panel-default>.panel-heading a:after {
	content: "";
	position: relative;
	top: 1px;
	display: inline-block;
	font-family: 'Glyphicons Halflings';
	font-style: normal;
	font-weight: 400;
	line-height: 1;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
	float: right;
	transition: transform .25s linear;
	-webkit-transition: -webkit-transform .25s linear;
}

.panel-default>.panel-heading a[aria-expanded="true"] {
	background-color: #eee;
}

.panel-default>.panel-heading a[aria-expanded="true"]:after {
	content: "\2212";
	-webkit-transform: rotate(180deg);
	transform: rotate(180deg);
}

.panel-default>.panel-heading a[aria-expanded="false"]:after {
	content: "\002b";
	-webkit-transform: rotate(90deg);
	transform: rotate(90deg);
}

.accordion-option {
	width: 100%;
	float: left;
	clear: both;
	margin: 15px 0;
}

.accordion-option .title {
	font-size: 20px;
	font-weight: bold;
	float: left;
	padding: 0;
	margin: 0;
}

.accordion-option .toggle-accordion {
	float: right;
	font-size: 16px;
	color: #6a6c6f;
}

.accordion-option .toggle-accordion:before {
	content: "Expand All";
}

.accordion-option .toggle-accordion.active:before {
	content: "Collapse All";
}
</style>
<style type="text/css">
.club {
	width: 100px;
	height: auto;
}
</style>
<link rel="stylesheet" href="css1/style.css">
<%@include file="all_component/allCss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar2.jsp"%>
	<div class="container">
		<div class="accordion-option">
			<h3 class="title">All players of the Bundesliga</h3>
			<a href="javascript:void(0)" class="toggle-accordion active"
				accordion-id="#accordion"></a>
		</div>
		<div class="clearfix"></div>
		<div class="panel-group" id="accordion" role="tablist"
			aria-multiselectable="true">
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingOne">
					<h4 class="panel-title">
						<a role="button" data-toggle="collapse" data-parent="#accordion"
							href="#collapseOne" aria-expanded="true"
							aria-controls="collapseOne">FC Bayern M�nchen</a>
					</h4>
				</div>
				<div id="collapseOne" class="panel-collapse collapse in"
					role="tabpanel" aria-labelledby="headingOne">
					<div class="panel-body">
						<table>
							<tr>
								<h5>GOALKEEPER</h5>
								<div class="list-button div_left">
									<a href="" class="button "> <span> <img
											style="height: 50px; width: 50px"
											src="https://i.bundesliga.com/player/dfl-obj-0000i4-dfl-clu-00000g-dfl-sea-0001k6-circle.png">
									</span> <span> <b>ManuelNeuer</b>
									</span>
									</a>
								</div>

								<div class="list-button div_left">
									<a href="" class="button "> <span> <img
											style="height: 50px; width: 50px"
											src="https://i.bundesliga.com/player/dfl-obj-0000lt-dfl-clu-00000g-dfl-sea-0001k6-circle.png">
									</span> <span> <b>SvenUlreich</b>
									</span>
									</a>
								</div>

								<div class="list-button div_left">
									<a href="" class="button"> <span> <img
											style="height: 50px; width: 50px"
											src="https://i.bundesliga.com/player/dfl-obj-j01cnb-dfl-clu-00000g-dfl-sea-0001k6-circle.png">
									</span> <span> <b>JohannesSchenk</b>
									</span>
									</a>
								</div>
							</tr>
						</table>

					</div>
				</div>
			</div>  <br><br>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading" role="tab" id="headingTwo">
				<h4 class="panel-title">
					<a class="collapsed" role="button" data-toggle="collapse"
						data-parent="#accordion" href="#collapseTwo" aria-expanded="true"
						aria-controls="collapseTwo"> RB Leipzig </a>
				</h4>
			</div>
			<div id="collapseTwo" class="panel-collapse collapse in"
				role="tabpanel" aria-labelledby="headingTwo">
				<div class="panel-body">GOALKEEPER</div>
			</div>
		</div>
	</div>
</body>
</html>