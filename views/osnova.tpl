<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  
	<style>
		body   {
		background-image: url("/static/stat_ana.png");
		}
		.button1 {
			background-image: url("/static/malI_logo.png");
			border: none;
			display: inline-block;
		}
		
		.div-decorator
		{
			border-top:3px solid #428BCA;
			border-right:3px solid #D9534F;
			border-bottom:3px solid #5CB85C;
			border-left:3px solid #F0AD4E;
			margin:30px;
			border-radius:20px;
		}
		.div-heading
		{
			border-bottom:1px dashed #5BC0DE;
			padding-top:15px;
			padding-bottom:15px;
			margin:0px;
			background-color:#F5F5F5;
			border-radius:20px 20px 0px 0px;
		}
		.heading
		{
			color:#5FC9E5;
		}
		.div-content
		{
			padding:30px
		}
		.btn-circle
		{
			width: 30px;
			height: 30px;
			text-align: center;
			padding: 6px 0;
			font-size: 12px;
			line-height: 1.428571429;
			border-radius: 15px;
		}
		.btn-circle.btn-lg
		{
			width: 50px;
			height: 50px;
			padding: 10px 16px;
			font-size: 18px;
			line-height: 1.33;
			border-radius: 25px;
		}
		.btn-circle.btn-xl
		{
			width: 70px;
			height: 70px;
			padding: 10px 16px;
			font-size: 24px;
			line-height: 1.33;
			border-radius: 35px;
		}
		
	/* WRENCHING */
	@keyframes wrench {
		0%{transform:rotate(-12deg)}
		8%{transform:rotate(12deg)}
		10%{transform:rotate(24deg)}
		18%{transform:rotate(-24deg)}
		20%{transform:rotate(-24deg)}
		28%{transform:rotate(24deg)}
		30%{transform:rotate(24deg)}
		38%{transform:rotate(-24deg)}
		40%{transform:rotate(-24deg)}
		48%{transform:rotate(24deg)}
		50%{transform:rotate(24deg)}
		58%{transform:rotate(-24deg)}
		60%{transform:rotate(-24deg)}
		68%{transform:rotate(24deg)}
		75%,100%{transform:rotate(0deg)}
	}
	.faa-wrench.animated,
	.faa-wrench.animated-hover:hover,
	.faa-parent.animated-hover:hover > .faa-wrench {
		animation: wrench 2.5s ease infinite;
		transform-origin-x: 90%;
		transform-origin-y: 35%;
		transform-origin-z: initial;
	}
	.faa-wrench.animated.faa-fast,
	.faa-wrench.animated-hover.faa-fast:hover,
	.faa-parent.animated-hover:hover > .faa-wrench.faa-fast {
		animation: wrench 1.2s ease infinite;
	}
	.faa-wrench.animated.faa-slow,
	.faa-wrench.animated-hover.faa-slow:hover,
	.faa-parent.animated-hover:hover > .faa-wrench.faa-slow {
		animation: wrench 3.7s ease infinite;
	}

	/* BELL */
	@keyframes ring {
		0%{transform:rotate(-15deg)}
		2%{transform:rotate(15deg)}
		4%{transform:rotate(-18deg)}
		6%{transform:rotate(18deg)}
		8%{transform:rotate(-22deg)}
		10%{transform:rotate(22deg)}
		12%{transform:rotate(-18deg)}
		14%{transform:rotate(18deg)}
		16%{transform:rotate(-12deg)}
		18%{transform:rotate(12deg)}
		20%,100%{transform:rotate(0deg)}
	}
	.faa-ring.animated,
	.faa-ring.animated-hover:hover,
	.faa-parent.animated-hover:hover > .faa-ring {
		animation: ring 2s ease infinite;
		transform-origin-x: 50%;
		transform-origin-y: 0px;
		transform-origin-z: initial;
	}
	.faa-ring.animated.faa-fast,
	.faa-ring.animated-hover.faa-fast:hover,
	.faa-parent.animated-hover:hover > .faa-ring.faa-fast {
		animation: ring 1s ease infinite;
	}
	.faa-ring.animated.faa-slow,
	.faa-ring.animated-hover.faa-slow:hover,
	.faa-parent.animated-hover:hover > .faa-ring.faa-slow {
		animation: ring 3s ease infinite;
	}

	/* VERTICAL */
	@keyframes vertical {
		0%{transform:translate(0,-3px)}
		4%{transform:translate(0,3px)}
		8%{transform:translate(0,-3px)}
		12%{transform:translate(0,3px)}
		16%{transform:translate(0,-3px)}
		20%{transform:translate(0,3px)}
		22%,100%{transform:translate(0,0)}
	}
	.faa-vertical.animated,
	.faa-vertical.animated-hover:hover,
	.faa-parent.animated-hover:hover > .faa-vertical {
		animation: vertical 2s ease infinite;
	}
	.faa-vertical.animated.faa-fast,
	.faa-vertical.animated-hover.faa-fast:hover,
	.faa-parent.animated-hover:hover > .faa-vertical.faa-fast {
		animation: vertical 1s ease infinite;
	}
	.faa-vertical.animated.faa-slow,
	.faa-vertical.animated-hover.faa-slow:hover,
	.faa-parent.animated-hover:hover > .faa-vertical.faa-slow {
		animation: vertical 4s ease infinite;
	}

	/* HORIZONTAL */
	@keyframes horizontal {
		0%{transform:translate(0,0)}
		6%{transform:translate(5px,0)}
		12%{transform:translate(0,0)}
		18%{transform:translate(5px,0)}
		24%{transform:translate(0,0)}
		30%{transform:translate(5px,0)}
		36%,100%{transform:translate(0,0)}
	}
	.faa-horizontal.animated,
	.faa-horizontal.animated-hover:hover,
	.faa-parent.animated-hover:hover > .faa-horizontal {
		animation: horizontal 2s ease infinite;
	}
	.faa-horizontal.animated.faa-fast,
	.faa-horizontal.animated-hover.faa-fast:hover,
	.faa-parent.animated-hover:hover > .faa-horizontal.faa-fast {
		animation: horizontal 1s ease infinite;
	}
	.faa-horizontal.animated.faa-slow,
	.faa-horizontal.animated-hover.faa-slow:hover,
	.faa-parent.animated-hover:hover > .faa-horizontal.faa-slow {
		animation: horizontal 3s ease infinite;
	}

	/* FLASHING */
	@keyframes flash {
		0%,100%,50%{opacity:1}
		25%,75%{opacity:0}
	}
	.faa-flash.animated,
	.faa-flash.animated-hover:hover,
	.faa-parent.animated-hover:hover > .faa-flash {
		animation: flash 2s ease infinite;
	}
	.faa-flash.animated.faa-fast,
	.faa-flash.animated-hover.faa-fast:hover,
	.faa-parent.animated-hover:hover > .faa-flash.faa-fast {
		animation: flash 1s ease infinite;
	}
	.faa-flash.animated.faa-slow,
	.faa-flash.animated-hover.faa-slow:hover,
	.faa-parent.animated-hover:hover > .faa-flash.faa-slow {
		animation: flash 3s ease infinite;
	}

	/* BOUNCE */
	@keyframes bounce {
		0%,10%,20%,50%,80%,100%{transform:translateY(0)}
		40%{transform:translateY(-15px)}
		60%{transform:translateY(-15px)}
	}
	.faa-bounce.animated,
	.faa-bounce.animated-hover:hover,
	.faa-parent.animated-hover:hover > .faa-bounce {
		animation: bounce 2s ease infinite;
	}
	.faa-bounce.animated.faa-fast,
	.faa-bounce.animated-hover.faa-fast:hover,
	.faa-parent.animated-hover:hover > .faa-bounce.faa-fast {
		animation: bounce 1s ease infinite;
	}
	.faa-bounce.animated.faa-slow,
	.faa-bounce.animated-hover.faa-slow:hover,
	.faa-parent.animated-hover:hover > .faa-bounce.faa-slow {
		animation: bounce 3s ease infinite;
	}

	/* SPIN */
	@keyframes spin{
		0%{transform:rotate(0deg)}
		100%{transform:rotate(359deg)}
	}
	.faa-spin.animated,
	.faa-spin.animated-hover:hover,
	.faa-parent.animated-hover:hover > .faa-spin {
		animation: spin 1.5s linear infinite;
	}
	.faa-spin.animated.faa-fast,
	.faa-spin.animated-hover.faa-fast:hover,
	.faa-parent.animated-hover:hover > .faa-spin.faa-fast {
		animation: spin 0.7s linear infinite;
	}
	.faa-spin.animated.faa-slow,
	.faa-spin.animated-hover.faa-slow:hover,
	.faa-parent.animated-hover:hover > .faa-spin.faa-slow {
		animation: spin 2.2s linear infinite;
	}

	/* FLOAT */
	@keyframes float{
		0%{transform: translateY(0)}
		50%{transform: translateY(-6px)}
		100%{transform: translateY(0)}
	}
	.faa-float.animated,
	.faa-float.animated-hover:hover,
	.faa-parent.animated-hover:hover > .faa-float {
		animation: float 2s linear infinite;
	}
	.faa-float.animated.faa-fast,
	.faa-float.animated-hover.faa-fast:hover,
	.faa-parent.animated-hover:hover > .faa-float.faa-fast {
		animation: float 1s linear infinite;
	}
	.faa-float.animated.faa-slow,
	.faa-float.animated-hover.faa-slow:hover,
	.faa-parent.animated-hover:hover > .faa-float.faa-slow {
		animation: float 3s linear infinite;
	}

	/* PULSE */
	@keyframes pulse {
		0% {transform: scale(1.1)}
		50% {transform: scale(0.8)}
		100% {transform: scale(1.1)}
	}
	.faa-pulse.animated,
	.faa-pulse.animated-hover:hover,
	.faa-parent.animated-hover:hover > .faa-pulse {
		animation: pulse 2s linear infinite;
	}
	.faa-pulse.animated.faa-fast,
	.faa-pulse.animated-hover.faa-fast:hover,
	.faa-parent.animated-hover:hover > .faa-pulse.faa-fast {
		animation: pulse 1s linear infinite;
	}
	.faa-pulse.animated.faa-slow,
	.faa-pulse.animated-hover.faa-slow:hover,
	.faa-parent.animated-hover:hover > .faa-pulse.faa-slow {
		animation: pulse 3s linear infinite;
	}

	/* SHAKE */
	.faa-shake.animated,
	.faa-shake.animated-hover:hover,
	.faa-parent.animated-hover:hover > .faa-shake {
		animation: wrench 2.5s ease infinite;
	}
	.faa-shake.animated.faa-fast,
	.faa-shake.animated-hover.faa-fast:hover,
	.faa-parent.animated-hover:hover > .faa-shake.faa-fast {
		animation: wrench 1.2s ease infinite;
	}
	.faa-shake.animated.faa-slow,
	.faa-shake.animated-hover.faa-slow:hover,
	.faa-parent.animated-hover:hover > .faa-shake.faa-slow {
		animation: wrench 3.7s ease infinite;
	}

	/* TADA */
	@keyframes tada {
		0% {transform: scale(1)}
		10%,20% {transform:scale(.9) rotate(-8deg);}
		30%,50%,70% {transform:scale(1.3) rotate(8deg)}
		40%,60% {transform:scale(1.3) rotate(-8deg)}
		80%,100% {transform:scale(1) rotate(0)}
	}

	.faa-tada.animated,
	.faa-tada.animated-hover:hover,
	.faa-parent.animated-hover:hover > .faa-tada {
		animation: tada 2s linear infinite;
	}
	.faa-tada.animated.faa-fast,
	.faa-tada.animated-hover.faa-fast:hover,
	.faa-parent.animated-hover:hover > .faa-tada.faa-fast {
		animation: tada 1s linear infinite;
	}
	.faa-tada.animated.faa-slow,
	.faa-tada.animated-hover.faa-slow:hover,
	.faa-parent.animated-hover:hover > .faa-tada.faa-slow {
		animation: tada 3s linear infinite;
	}

	/* PASSING */
	@keyframes passing {
		0% {transform:translateX(-50%); opacity:0}
		50% {transform:translateX(0%); opacity:1}
		100% {transform:translateX(50%); opacity:0}
	}

	.faa-passing.animated,
	.faa-passing.animated-hover:hover,
	.faa-parent.animated-hover:hover > .faa-passing {
		animation: passing 2s linear infinite;
	}
	.faa-passing.animated.faa-fast,
	.faa-passing.animated-hover.faa-fast:hover,
	.faa-parent.animated-hover:hover > .faa-passing.faa-fast {
		animation: passing 1s linear infinite;
	}
	.faa-passing.animated.faa-slow,
	.faa-passing.animated-hover.faa-slow:hover,
	.faa-parent.animated-hover:hover > .faa-passing.faa-slow {
		animation: passing 3s linear infinite;
	}

	/* PASSING REVERSE */

	@keyframes passing-reverse {
		0% {transform:translateX(50%); opacity:0}
		50% {transform:translateX(0%); opacity:1}
		100% {transform:translateX(-50%); opacity:0}
	}

	.faa-passing-reverse.animated,
	.faa-passing-reverse.animated-hover:hover,
	.faa-parent.animated-hover:hover > .faa-passing-reverse {
		animation: passing-reverse 2s linear infinite;
	}
	.faa-passing-reverse.animated.faa-fast,
	.faa-passing-reverse.animated-hover.faa-fast:hover,
	.faa-parent.animated-hover:hover > .faa-passing-reverse.faa-fast {
		animation: passing-reverse 1s linear infinite;
	}
	.faa-passing-reverse.animated.faa-slow,
	.faa-passing-reverse.animated-hover.faa-slow:hover,
	.faa-parent.animated-hover:hover > .faa-passing-reverse.faa-slow {
		animation: passing-reverse 3s linear infinite;
	}

	/* WAVE */
	@keyframes burst {
		0% {opacity:.6}
		50% {transform:scale(1.8);opacity:0}
		100%{opacity:0}
	}
	.faa-burst.animated,
	.faa-burst.animated-hover:hover,
	.faa-parent.animated-hover:hover > .faa-burst {
		animation: burst 2s infinite linear
	}
	.faa-burst.animated.faa-fast,
	.faa-burst.animated-hover.faa-fast:hover,
	.faa-parent.animated-hover:hover > .faa-burst.faa-fast {
		animation: burst 1s infinite linear
	}
	.faa-burst.animated.faa-slow,
	.faa-burst.animated-hover.faa-slow:hover,
	.faa-parent.animated-hover:hover > .faa-burst.faa-slow {
		animation: burst 3s infinite linear
	}

	</style>
</head>

<script>
$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})
</script> 

<body>
<div 
	class="col-sm-12" 
	style="background-color:#20B2AA;height:100px">
		<button class="button1"> 
			<img src = "/static/mali_logo.png" width="150" height="100">
		</button>
		
		<div style="float: right">
		<div style='height:15px;'></div>
		<a href="/lokacija/">
		<button 
			type="button"			
			class="btn btn-default btn-circle btn-lg btn btn-secondary " 
			data-toggle="tooltip" data-placement="bottom" title="Lokacija">			
			<i class="fa fa-fw faa-bounce animated glyphicon glyphicon-map-marker"></i>
		</button>
		</a>
		<a href="/kontakt/">
		<button type="button" class="btn btn-default btn-circle btn-xl"
		data-toggle="tooltip" data-placement="bottom" title="Kontakt">
		<i class="fa fa-fw faa-horizontal animated glyphicon glyphicon-envelope"></i></button>
		</div>
		</a>
</div>
<div class="container">
<div class="row">
{{!base}}
</div>
</div>
</body>
</html>