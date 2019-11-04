<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MainCSS.ascx.cs" Inherits="BiasClassifier.Lib.MainCSS" %>
<style>

    
a:link {
    color: white;
    background-color: transparent; 
}

a:visited {
    color: white;
    background-color: transparent; 
}

a:hover {
    color: lightblue;
    background-color: transparent;
    text-decoration: underline;
}

a:active {
    color: lightblue;
    background-color: transparent;
    text-decoration: underline;
}



.button2 {
    -moz-box-shadow: 0px 0px 0px 2px #9fb4f2;
    -webkit-box-shadow: 0px 0px 0px 2px #9fb4f2;
    box-shadow: 0px 0px 0px 2px #9fb4f2;
    background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #7892c2), color-stop(1, #476e9e));
    background: -moz-linear-gradient(top, #7892c2 5%, #476e9e 100%);
    background: -webkit-linear-gradient(top, #7892c2 5%, #476e9e 100%);
    background: -o-linear-gradient(top, #7892c2 5%, #476e9e 100%);
    background: -ms-linear-gradient(top, #7892c2 5%, #476e9e 100%);
    background: linear-gradient(to bottom, #7892c2 5%, #476e9e 100%);
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#7892c2', endColorstr='#476e9e',GradientType=0);
    background-color: #7892c2;
    -moz-border-radius: 10px;
    -webkit-border-radius: 10px;
    border-radius: 10px;
    border: 1px solid #4e6096;
    display: inline-block;
    cursor: pointer;
    color: #ffffff;
    font-family: Arial;
    font-size: 19px;
    padding: 12px 37px;
    text-decoration: none;
    text-shadow: 0px 1px 0px #283966;
}

.button2:hover {
    background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #476e9e), color-stop(1, #7892c2));
    background: -moz-linear-gradient(top, #476e9e 5%, #7892c2 100%);
    background: -webkit-linear-gradient(top, #476e9e 5%, #7892c2 100%);
    background: -o-linear-gradient(top, #476e9e 5%, #7892c2 100%);
    background: -ms-linear-gradient(top, #476e9e 5%, #7892c2 100%);
    background: linear-gradient(to bottom, #476e9e 5%, #7892c2 100%);
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#476e9e', endColorstr='#7892c2',GradientType=0);
    background-color: #476e9e;
}

.button2:active {
    position: relative;
    top: 1px;
}





    a:link {
        color: white;
        background-color: transparent; 
    }

    a:visited {
        color: white;
        background-color: transparent; 
    }

    a:hover {
        color: lightblue;
        background-color: transparent;
        text-decoration: underline;
    }

    a:active {
        color: lightblue;
        background-color: transparent;
        text-decoration: underline;
    } 
	.button1 {
	 	height: 24px; 
	 	cursor: pointer;
	}
    .Button1 {
	    -moz-box-shadow:inset 0px -3px 7px 0px #29bbff;
	    -webkit-box-shadow:inset 0px -3px 7px 0px #29bbff;
	    box-shadow:inset 0px -3px 7px 0px #29bbff;
	    background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #2dabf9), color-stop(1, #0688fa));
	    background:-moz-linear-gradient(top, #2dabf9 5%, #0688fa 100%);
	    background:-webkit-linear-gradient(top, #2dabf9 5%, #0688fa 100%);
	    background:-o-linear-gradient(top, #2dabf9 5%, #0688fa 100%);
	    background:-ms-linear-gradient(top, #2dabf9 5%, #0688fa 100%);
	    background:linear-gradient(to bottom, #2dabf9 5%, #0688fa 100%);
	    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#2dabf9', endColorstr='#0688fa',GradientType=0);
	    background-color:#2dabf9;
	    -moz-border-radius:3px;
	    -webkit-border-radius:3px;
	    border-radius:3px;
	    border:1px solid #0b0e07;
	    display:inline-block;
	    cursor:pointer;
	    color:#ffffff;
	    font-family:Arial;
	    font-size:14px;
	    padding:4px 10px;
	    text-decoration:none;
	    text-shadow:0px 1px 0px #263666;
    }
    .Button1:hover {
	    background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #0688fa), color-stop(1, #2dabf9));
	    background:-moz-linear-gradient(top, #0688fa 5%, #2dabf9 100%);
	    background:-webkit-linear-gradient(top, #0688fa 5%, #2dabf9 100%);
	    background:-o-linear-gradient(top, #0688fa 5%, #2dabf9 100%);
	    background:-ms-linear-gradient(top, #0688fa 5%, #2dabf9 100%);
	    background:linear-gradient(to bottom, #0688fa 5%, #2dabf9 100%);
	    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#0688fa', endColorstr='#2dabf9',GradientType=0);
	    background-color:#0688fa;
    }
    .Button1:active {
	    position:relative;
	    top:1px;
    }
    .Button3 {
	    -moz-box-shadow:inset 0px -3px 7px 0px #29bbff;
	    -webkit-box-shadow:inset 0px -3px 7px 0px #29bbff;
	    box-shadow:inset 0px -3px 7px 0px #29bbff;
	    
		background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #7892c2), color-stop(1, #476e9e));
		background: -moz-linear-gradient(top, #7892c2 5%, #476e9e 100%);
		background: -webkit-linear-gradient(top, #7892c2 5%, #476e9e 100%);
		background: -o-linear-gradient(top, #7892c2 5%, #476e9e 100%);
		background: -ms-linear-gradient(top, #7892c2 5%, #476e9e 100%);
		background: linear-gradient(to bottom, #7892c2 5%, #476e9e 100%);
    
    
 	    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#2dabf9', endColorstr='#0688fa',GradientType=0);
	    background-color:#2dabf9;
	    -moz-border-radius:3px;
	    -webkit-border-radius:3px;
	    border-radius:3px;
	    border:1px solid #0b0e07;
	    display:inline-block;
	    cursor:pointer;
	    color:#ffffff;
	    font-family:Arial;
	    font-size:14px;
	    padding:4px 10px;
	    text-decoration:none;
	    text-shadow:0px 1px 0px #263666;
    }
    .Button3:hover {
	    background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #0688fa), color-stop(1, #2dabf9));
	    background:-moz-linear-gradient(top, #0688fa 5%, #2dabf9 100%);
	    background:-webkit-linear-gradient(top, #0688fa 5%, #2dabf9 100%);
	    background:-o-linear-gradient(top, #0688fa 5%, #2dabf9 100%);
	    background:-ms-linear-gradient(top, #0688fa 5%, #2dabf9 100%);
	    background:linear-gradient(to bottom, #0688fa 5%, #2dabf9 100%);
	    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#0688fa', endColorstr='#2dabf9',GradientType=0);
	    background-color:#0688fa;
    }
    .Button3:active {
	    position:relative;
	    top:1px;
    }
    .InputStyle1 { 
       background-color:#FFFFFF;
       border:solid 1px #A9A9A9;
       font-size:13px;
       color:#000000;
       -moz-border-radius:0px;
       -webkit-border-radius:0px;
       border-radius:0px;
       padding-top:0px;
       padding-bottom:0px;
       padding-left:5px;
       padding-right:5px;
    }

.Error1 { 
    font-family: Arial;
    color: red;
    font-size: 14px; 
} 

.Messages1 { 
    font-family: Arial;
    color: lawngreen;
    font-size: 14px; 
} 

.RelatedTargetDiv1
{ 
  position: absolute;
  top: 90px;
  left: 380px;
} 


.AdminMenu {
    height: 38px;
    width: 435px;
    position: absolute;
    background-color: yellowgreen;
    top: 43.5px;
    left: 355px;
    color: white;
}

.AdminBtn { 
	    cursor:pointer;
}


.ChartingHeader {
    height: 38px;
    width: 335px;
    position: absolute;
    background-color: yellowgreen;
    top: 43.5px;
    left: 355px;
    color: white;
}

.EmoCharts {
    height: 138px;
    width: 335px;
    position: absolute; 
    top: 83.5px;
    left: 355px;
    color: white;
}
.PlutCharts {
    height: 300px;
    width: 300px;
    position: absolute; 
    top: 85px;
    left: 355px;
    color: white;
}
.tick1 {
    height: 40px;
    width: 5px;  
    background-color: lawngreen;
}
.tick2 {
    height: 40px;
    width: 5px;  
    background-color: blue;
}
.tick3 {
    height: 40px;
    width: 5px;
    background-color: green;
}
.tick4 {
    height: 40px;
    width: 5px;  
    background-color: darkblue;
}

body {
    background-image: url("/Img/Background.png");
    background-color: #000;
    font-family: Arial;
    color: white;
    font-size: 14px;
    background-repeat: no-repeat;
} 

.CatagorySelected { 
    color: gray;
}
.CatagoryNotSelected { 
    color: black;
}
.SubCatOn {
    top: 123px; 
    left: 537px; 
    position: absolute;
    visibility: visible;
}
.SubCatOff {
    top: 123px; 
    left: 537px; 
    position: absolute;
    visibility: hidden;
}

</style>