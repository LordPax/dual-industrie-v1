viewMain = [[
<svg width="1024" height="612" version="1.1" xmlns="http://www.w3.org/2000/svg">
	<style>
		.name{
			font-size:45px;
			color:white;
			displays:none;
		}
		.ind{
			border:5px solid #F5B041;
			position:absolute;
			padding:10px;
			width:492px;
		}
		.i1{
			left:10px;
			top:10px;
		}
		.i2{
			left:522px;
			top:10px;
		}
		.i3{
			left:10px;
			top:100px;
		}
		.i4{
			left:522px;
			top:100px;
		}
		.state{
			float:right
		}
		.st1{
			color:{{color1}};
		}
		.st2{
			color:{{color2}};
		}
		.st3{
			color:{{color3}};
		}
		.st4{
			color:{{color4}};
		}
	</style>
	<!--{{infoInd}}-->

	<div class = "ind i1">
		<div class="name">{{name1}} <span class="state st1">{{state1}}</span></div>
	</div>
	<div class = "ind i2">
		<div class="name">{{name2}} <span class="state st2">{{state2}}</span></div>
	</div>
	<div class = "ind i3">
		<div class="name">{{name3}} <span class="state st3">{{state3}}</span></div>
	</div>
	<div class = "ind i4">
		<div class="name">{{name4}} <span class="state st4">{{state4}}</span></div>
	</div>
</svg>
]]