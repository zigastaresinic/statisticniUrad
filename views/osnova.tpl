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
	background-size: 2000px 1000px;
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
	.btn-circle.btn-xl
	{
		width: 70px;
		height: 70px;
		padding: 10px 16px;
		font-size: 24px;
		line-height: 1.33;
		border-radius: 35px;
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
	style="background-color:#20B2AA; height:100px">
		<a href='/'>
		<button class="button1"> 
			<img src = "/static/mali_logo.png" width="140" height="90">
		</button>
		</a>
		<div style="float: right">
		<div style='height:15px;'></div>
		
		<a href="/lokacija/">
		<button 
			type="button"			
			class="btn btn-default btn-circle btn-xl btn btn-secondary " 
			data-toggle="tooltip" data-placement="bottom" title="Lokacija">
			<i class="fa faa-bounce animated glyphicon glyphicon-map-marker"></i>
		</button>
		</a>
		
		<a href="/kontakt/">
		<button 
			type="button" 
			class="btn btn-default btn-circle btn-xl btn btn-secondary"
			data-toggle="tooltip" data-placement="bottom" title="Kontakt">
			<i class="fa faa-pulse animated glyphicon glyphicon-envelope"></i>
		</button>
		</a>
		
		</div>
</div>

<div class="container">
<div class="row">
{{!base}}
</div>
</div>
</body>
</html>