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
		.i5{
			left:10px;
			top:190px;
		}
		.i6{
			left:522px;
			top:190px;
		}
		.i7{
			left:10px;
			top:280px;
		}
		.i8{
			left:522px;
			top:280px;
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
		.st5{
			color:{{color5}};
		}
		.st6{
			color:{{color6}};
		}
		.st7{
			color:{{color7}};
		}
		.st8{
			color:{{color8}};
		}
		.img{
			opacity:0.6;
		}
	</style>
	<!--{{infoInd}}-->
	<image class="img" xlink:href="https://cdn.discordapp.com/attachments/597133708922978304/597137058988818432/3dlogo.gif" x="256" y="50" height="512" width="512" />

	<div class = "ind i1">
		<div class="name">{{name1}} - {{cycle1}} <span class="state st1">{{state1}}</span></div>
	</div>
	<div class = "ind i2">
		<div class="name">{{name2}} - {{cycle2}} <span class="state st2">{{state2}}</span></div>
	</div>
	<div class = "ind i3">
		<div class="name">{{name3}} - {{cycle3}} <span class="state st3">{{state3}}</span></div>
	</div>
	<div class = "ind i4">
		<div class="name">{{name4}} - {{cycle4}} <span class="state st4">{{state4}}</span></div>
	</div>
	<div class = "ind i5">
		<div class="name">{{name5}} - {{cycle5}} <span class="state st5">{{state5}}</span></div>
	</div>
	<div class = "ind i6">
		<div class="name">{{name6}} - {{cycle6}} <span class="state st6">{{state6}}</span></div>
	</div>
	<div class = "ind i7">
		<div class="name">{{name7}} - {{cycle7}} <span class="state st7">{{state7}}</span></div>
	</div>
	<div class = "ind i8">
		<div class="name">{{name8}} - {{cycle8}} <span class="state st8">{{state8}}</span></div>
	</div>
</svg>
]]

viewVeille = [[
<svg width="1024" height="612">
    <image xlink:href="https://cdn.discordapp.com/attachments/597133708922978304/597137058988818432/3dlogo.gif" x="256" y="50" height="512" width="512" />
</svg>
]]