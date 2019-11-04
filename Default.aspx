<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BiasClassifier._Default" %>
<%@ Register Src="Lib/MainCSS.ascx" TagName="UCCSS" TagPrefix="TheControls" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head >
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="ROBOTS" content="NOINDEX, NOFOLLOW" />

        <title>mASI Authentication Screen</title>  
        <TheControls:UCCSS id="ForcedCSS" runat="server" />  
        <!-- script src="Lib/Default.aspx.js"></script -->  
        <script src="Lib/Bias.js"></script>
        <script>
		var BC1InputReference = ""; 
		var BC2InputReference = ""; 
		var BC3InputReference = "";  
		var BC4InputReference = ""; 
		var Part1 = "";
		var CatagoryLabelReference = "";
		var ThisClassificationReference = "";
		var BiasWordArray = "";
		var BiasFlag = "";
		var TheTextReference = "";
		var TextAreaFirstTime = "true";
		var SubCat1Reference = "";
		var Part2 = "";
		var Part3 = "";
		var SubmitBtnLocReference = "";

		function Init() 
		{
			BC1InputReference = document.getElementById("BC1InputID");
			BC2InputReference = document.getElementById("BC2InputID");
			BC3InputReference = document.getElementById("BC3InputID");
			BC4InputReference = document.getElementById("BC4InputID");
			CatagoryLabelReference = document.getElementById("CatagoryLabelID");
			ThisClassificationReference = document.getElementById("ThisClassificationID");	
			BiasWordArray = TheseBias();
			TheTextReference = document.getElementById("TheTextID");
			SubCat1Reference = document.getElementById("SubCat1ID");  
			SubmitBtnLocReference = document.getElementById("SubmitBtnLocID");  
		}
		
		function CheckFirstTime()
		{
			if( TextAreaFirstTime == "true")
			{
				TextAreaFirstTime = "false";
				TheTextReference.value = "";
				TheTextReference.className = "CatagoryNotSelected";
			}
		}
		
		function ResetButton()
		{
			BC1InputReference.className = "Button1";
			BC2InputReference.className = "Button1";
			BC3InputReference.className = "Button1";
			BC4InputReference.className = "Button1"; 
		}
		
		function CheckForBias(TextToTest)
		{
			for( var z = 0; z < BiasWordArray.length; z++)
			{
				if( TextToTest.indexOf(BiasWordArray[z]) > -1 )
				{
					return "(BIAS FLAG)";
				}
			}
			return "";
		}
 
		function SelectCatagory( Indexer )
		{
			ResetButton();
			CatagoryLabelReference.className = "CatagorySelected"; 
			BiasFlag = CheckForBias(TheTextReference.value);
			Part2 = "";
			
			switch(Indexer)
			{
			case "1": 
				BC1InputReference.className = "Button3";  
				Part1 = "BC1";
				PresentCatagory1();
				break;
			case "2":
				BC2InputReference.className = "Button3";
				Part1 = "BC2";
				PresentCatagory2();
				break;
			case "3":
				BC3InputReference.className = "Button3";
				Part1 = "BC3";
				PresentCatagory3();
				break;
			case "4":
				BC4InputReference.className = "Button3";
				Part1 = "BC4";
				PresentCatagory4();
				break;
			}
			 
			GenerateMap();
		}
		
		
		function GenerateMap()
		{
			ThisClassificationReference.innerHTML = "Encoded Bias: | " + Part1 + " | " + Part2 + " | " + Part3 + " | <span style=\"color:red\">" + BiasFlag + "</span>"; 
		}

		function PresentCatagory1() 
		{
			SubCat1Reference.innerHTML = "<span>&nbsp;Select a subcatagory?</span><br />" + 
					"<input onclick=\"PresentCatagory1Bias1();\" value=\"We favor simple-looking options and complete information\"  title=\"We favor simple-looking options and complete information\" class=\"Button1\" /><br />" +  
					"<input onclick=\"PresentCatagory1Bias2();\" value=\"To avoid mistakes we aim to preserve autonomy and group status, and avoid irreversible decisions\" title=\"To avoid mistakes we aim to preserve autonomy and group status, and avoid irreversible decisions\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"PresentCatagory1Bias3();\" value=\"To get things done, we tend to complete things we’ve invested time and energy in\" title=\"To get things done, we tend to complete things we’ve invested time and energy in\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"PresentCatagory1Bias4();\" value=\"To stay focused we favor the immediate relatable thing in front of us\" title=\"To stay focused we favor the immediate relatable thing in front of us\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"PresentCatagory1Bias5();\" value=\"To act we must be confident we can make an impact and feel what we do is important\" title=\"To act we must be confident we can make an impact and feel what we do is important\" class=\"Button1\" />  ";   
		} 

		function PresentCatagory2() 
		{
			SubCat1Reference.innerHTML = "<span>&nbsp;Select a subcatagory?</span><br />" + 
					"<input onclick=\"PresentCatagory2Bias1();\" value=\"We Project our current mindset and assumptions onto the past and future\"  title=\"We Project our current mindset and assumptions onto the past and future\" class=\"Button1\" /><br />" +  
					"<input onclick=\"PresentCatagory2Bias2();\" value=\"We think we know what other people are thinking\" title=\"We think we know what other people are thinking\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"PresentCatagory2Bias3();\" value=\"We simplify numbers and probabilities to make them easier to think about\" title=\"We simplify numbers and probabilities to make them easier to think about\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"PresentCatagory2Bias4();\" value=\"We imagine things and people we're familiar with or fond of as better\" title=\"We imagine things and people we're familiar with or fond of as better\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"PresentCatagory2Bias5();\" value=\"We fill in characteristics from stereotypes, generalities, and prior histories\" title=\"We fill in characteristics from stereotypes, generalities, and prior histories\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"PresentCatagory2Bias6();\" value=\"We tend to find stories and patterns even when looking at sparse data\" title=\"We tend to find stories and patterns even when looking at sparse data\" class=\"Button1\" />  ";
		} 
		
		function PresentCatagory3() 
		{
			SubCat1Reference.innerHTML = "<span>&nbsp;Select a subcatagory?</span><br />" + 
					"<input onclick=\"PresentCatagory3Bias1();\" value=\"We notice flaws in others more easily than we notice flaws in ourselves\"  title=\"We notice flaws in others more easily than we notice flaws in ourselves\" class=\"Button1\" /><br />" +  
					"<input onclick=\"PresentCatagory3Bias2();\" value=\"We are drawn to details that confirm our own existing beliefs\" title=\"We are drawn to details that confirm our own existing beliefs\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"PresentCatagory3Bias3();\" value=\"We notice when something has changed\" title=\"We notice when something has changed\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"PresentCatagory3Bias4();\" value=\"Bizarre, funny, visually-striking, or anthropomorphic things stick out more than non-bizarre/unfunny things\" title=\"Bizarre, funny, visually-striking, or anthropomorphic things stick out more than non-bizarre/unfunny things\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"PresentCatagory3Bias5();\" value=\"We notice things already primed in memory or repeated often\" title=\"We notice things already primed in memory or repeated often\" class=\"Button1\" />  ";   
		} 
		
		function PresentCatagory4() 
		{
			SubCat1Reference.innerHTML = "<span>&nbsp;Select a subcatagory?</span><br />" + 
					"<input onclick=\"PresentCatagory4Bias1();\" value=\"We store memories differently based on how they were experienced\"  title=\"We store memories differently based on how they were experienced\" class=\"Button1\" /><br />" +  
					"<input onclick=\"PresentCatagory4Bias2();\" value=\"We reduce events and lists to their key elements \" title=\"We reduce events and lists to their key elements \" class=\"Button1\" /> <br />" +  
					"<input onclick=\"PresentCatagory4Bias3();\" value=\"We discard specifics to form generalities\" title=\"We discard specifics to form generalities\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"PresentCatagory4Bias4();\" value=\"We edit and reinforce some memories after the fact\" title=\"We edit and reinforce some memories after the fact\" class=\"Button1\" /> ";   
		} 
		  
		function PresentCatagory1Bias1()
		{
			Part2 = "S1";
			GenerateMap();	
			SubCat1Reference.innerHTML = "<span>&nbsp;Select a subcatagory bias?</span><br />" + 
					"<input onclick=\"SetBias('B1');\" value=\"Less-is-better Effect\"  title=\"Less-is-better Effect\" class=\"Button1\" /><br />" +  
					"<input onclick=\"SetBias('B2');\" value=\"Conjunction Fallacy\" title=\"Conjunction Fallacy\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B3');\" value=\"Law of Triviality\" title=\"Law of Triviality\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B4');\" value=\"Bike-shedding Effect\" title=\"Bike-shedding Effect\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B5');\" value=\"Rhyme as a Reason Effect\" title=\"Rhyme as a Reason Effect\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B6');\" value=\"Belief Bias\" title=\"Belief Bias\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B7');\" value=\"Information Bias\" title=\"Information Bias\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B8');\" value=\"Ambiguity Bias\" title=\"Ambiguity Bias\" class=\"Button1\" />  ";      
			
		}
		  
		function PresentCatagory1Bias2()
		{
			Part2 = "S2";
			GenerateMap();	
			SubCat1Reference.innerHTML = "<span>&nbsp;Select a subcatagory bias?</span><br />" + 
					"<input onclick=\"SetBias('B1');\" value=\"Status Quo Bias\"  title=\"Status Quo Bias\" class=\"Button1\" /><br />" +  
					"<input onclick=\"SetBias('B2');\" value=\"Social Comparison Effect\" title=\"Social Comparison Effect\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B3');\" value=\"Decoy Effect\" title=\"Decoy Effect\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B4');\" value=\"Reactance\" title=\"Reactance\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B5');\" value=\"Reverse Psychology\" title=\"Reverse Psychology\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B6');\" value=\"System Justification\" title=\"System Justification\" class=\"Button1\" />";      
			
		}
		
		function PresentCatagory1Bias3()
		{
			Part2 = "S3";
			GenerateMap();	
			SubCat1Reference.innerHTML = "<span>&nbsp;Select a subcatagory bias?</span><br />" + 
					"<input onclick=\"SetBias('B1');\" value=\"Backfire Effect\"  title=\"Backfire Effect\" class=\"Button1\" /><br />" +  
					"<input onclick=\"SetBias('B2');\" value=\"Endowment Effect\" title=\"Endowment Effect\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B3');\" value=\"Processing Difficulty Effect\" title=\"Processing Difficulty Effect\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B4');\" value=\"Pseudocertainty Effect\" title=\"Pseudocertainty Effect\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B5');\" value=\"Disposition Effect\" title=\"Disposition Effect\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B6');\" value=\"Zero-risk Bias\" title=\"Zero-risk Bias\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B7');\" value=\"Unit Bias\" title=\"Unit Bias\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B8');\" value=\"IKEA Effect\" title=\"IKEA Effect\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B9');\" value=\"Loss Aversion\" title=\"Loss Aversion\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B10');\" value=\"Generation Effect\" title=\"Generation Effect\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B11');\" value=\"Escalation of Commitment\" title=\"Escalation of Commitment\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B12');\" value=\"Irrational Escalation\" title=\"Irrational Escalation\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B13');\" value=\"Sunk Cost Fallacy\" title=\"Sunk Cost Fallacy\" class=\"Button1\" /> ";    
					
		}
		
		function PresentCatagory1Bias4()
		{
			Part2 = "S4";
			GenerateMap();	
			SubCat1Reference.innerHTML = "<span>&nbsp;Select a subcatagory bias?</span><br />" + 
					"<input onclick=\"SetBias('B1');\" value=\"Identifiable Victim Effect\"  title=\"Identifiable Victim Effect\" class=\"Button1\" /><br />" +  
					"<input onclick=\"SetBias('B2');\" value=\"Appeal to Novelty\" title=\"Appeal to Novelty\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B3');\" value=\"Hyperbolic Discounting\" title=\"Hyperbolic Discounting\" class=\"Button1\" /> ";      
				
		}
 
  		function PresentCatagory1Bias5()
  		{
  			Part2 = "S5";
  			GenerateMap();	
  			SubCat1Reference.innerHTML = "<span>&nbsp;Select a subcatagory bias?</span><br />" + 
  					"<input onclick=\"SetBias('B1');\" value=\"Peltzman Effect\"  title=\"Peltzman Effect\" class=\"Button1\" /><br />" +  
  					"<input onclick=\"SetBias('B2');\" value=\"Risk Compensation\" title=\"Risk Compensation\" class=\"Button1\" /> <br />" +  
  					"<input onclick=\"SetBias('B3');\" value=\"Effort Justification\" title=\"Effort Justification\" class=\"Button1\" /> <br />" +  
  					"<input onclick=\"SetBias('B4');\" value=\"Trait Ascription Bias\" title=\"Trait Ascription Bias\" class=\"Button1\" />  <br />" +  
  					"<input onclick=\"SetBias('B5');\" value=\"Defensive Attribution Hypothesis\" title=\"Defensive Attribution Hypothesis\" class=\"Button1\" />  <br />" +  
  					"<input onclick=\"SetBias('B6');\" value=\"Fundamental Attribution Error\" title=\"Fundamental Attribution Error\" class=\"Button1\" />  <br />" +  
  					"<input onclick=\"SetBias('B7');\" value=\"Illusory Superiority\" title=\"Illusory Superiority\" class=\"Button1\" />  <br />" +  
  					"<input onclick=\"SetBias('B8');\" value=\"Actor-observer Bias\" title=\"Actor-observer Bias\" class=\"Button1\" />  <br />" +  
  					"<input onclick=\"SetBias('B9');\" value=\"Self-serving Bias\" title=\"Self-serving Bias\" class=\"Button1\" />  <br />" +  
  					"<input onclick=\"SetBias('B10');\" value=\"Barnum Effect\" title=\"Barnum Effect\" class=\"Button1\" />  <br />" +  
  					"<input onclick=\"SetBias('B11');\" value=\"Forer Effect\" title=\"Forer Effect\" class=\"Button1\" />  <br />" +  
  					"<input onclick=\"SetBias('B12');\" value=\"Optimism Bias\" title=\"Optimism Bias\" class=\"Button1\" />  <br />" +  
  					"<input onclick=\"SetBias('B13');\" value=\"Egocentric Bias \" title=\"Egocentric Bias \" class=\"Button1\" />  <br />" +  
  					"<input onclick=\"SetBias('B14');\" value=\"Dunning-Kruger Effect\" title=\"Dunning-Kruger Effect\" class=\"Button1\" />  <br />" +  
  					"<input onclick=\"SetBias('B15');\" value=\"Lake Wobegon Effect\" title=\"Lake Wobegon Effect\" class=\"Button1\" />  <br />" +  
  					"<input onclick=\"SetBias('B16');\" value=\"Hard-easy Effect\" title=\"Hard-easy Effect\" class=\"Button1\" />  <br />" +  
  					"<input onclick=\"SetBias('B17');\" value=\"False Consensus Effect \" title=\"False Consensus Effect \" class=\"Button1\" />  <br />" +  
  					"<input onclick=\"SetBias('B18');\" value=\"Third-person Effect\" title=\"Third-person Effect\" class=\"Button1\" />  <br />" +  
  					"<input onclick=\"SetBias('B19');\" value=\"Social Desirability Bias\" title=\"Social Desirability Bias\" class=\"Button1\" />  <br />" +  
  					"<input onclick=\"SetBias('B20');\" value=\"Overconfidence Effect\" title=\"Overconfidence Effect\" class=\"Button1\" />  ";               
		}	  
		
		function PresentCatagory2Bias1()
		{
			Part2 = "S1";
			GenerateMap();	
			SubCat1Reference.innerHTML = "<span>&nbsp;Select a subcatagory bias?</span><br />" + 
					"<input onclick=\"SetBias('B1');\" value=\"Self-consistency Bias\"  title=\"Self-consistency Bias\" class=\"Button1\" /><br />" +  
					"<input onclick=\"SetBias('B2');\" value=\"Restraint Bias\" title=\"Restraint Bias\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B3');\" value=\"Projection Bias\" title=\"Projection Bias\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B4');\" value=\"Pro-innovation Bias\" title=\"Pro-innovation Bias\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B5');\" value=\"Time-saving Bias\" title=\"Time-saving Bias\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B6');\" value=\"Planning Fallacy\" title=\"Planning Fallacy\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B7');\" value=\"Pessimism Bias\" title=\"Pessimism Bias\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B8');\" value=\"Impact Bias\" title=\"Impact Bias\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B9');\" value=\"Declinism\" title=\"Declinism\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B10');\" value=\"Moral Luck\" title=\"Moral Luck\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B11');\" value=\"Moral Luck\" title=\"Moral Luck\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B12');\" value=\"Outcome Bias\" title=\"Outcome Bias\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B13');\" value=\"Hindsight Bias\" title=\"Hindsight Bias\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B14');\" value=\"Rosy Retrospection\" title=\"Rosy Retrospection\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B15');\" value=\"Telescoping Effect\" title=\"Telescoping Effect\" class=\"Button1\" />  ";
		}  
		
		function PresentCatagory2Bias2()
		{
			Part2 = "S2";
			GenerateMap();	
			SubCat1Reference.innerHTML = "<span>&nbsp;Select a subcatagory bias?</span><br />" + 
					"<input onclick=\"SetBias('B1');\" value=\"Illusion of Transparency\"  title=\"Illusion of Transparency\" class=\"Button1\" /><br />" +  
					"<input onclick=\"SetBias('B2');\" value=\"Curse of Knowledge\" title=\"Curse of Knowledge\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B3');\" value=\"Spotlight Effect\" title=\"Spotlight Effect\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B4');\" value=\"Extrinsic Incentive Error\" title=\"Extrinsic Incentive Error\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B5');\" value=\"Illusion of External Agency\" title=\"Illusion of External Agency\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B6');\" value=\"Illusion of Asymmetric Insight\" title=\"Illusion of Asymmetric Insight\" class=\"Button1\" />  ";      
		}
		
		function PresentCatagory2Bias3()
		{
			Part2 = "S3";
			GenerateMap();	
			SubCat1Reference.innerHTML = "<span>&nbsp;Select a subcatagory bias?</span><br />" + 
					"<input onclick=\"SetBias('B1');\" value=\"Mental Accounting\"  title=\"Mental Accounting\" class=\"Button1\" /><br />" +  
					"<input onclick=\"SetBias('B2');\" value=\"Appeal to Probability Fallacy\" title=\"Appeal to Probability Fallacy\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B3');\" value=\"Normalcy Bias\" title=\"Normalcy Bias\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B4');\" value=\"Murphy's Law\" title=\"Murphy's Law\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B5');\" value=\"Zero-sum Bias\" title=\"Zero-sum Bias\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B6');\" value=\"Survivorship Bias\" title=\"Survivorship Bias\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B7');\" value=\"Subadditivity Effect\" title=\"Subadditivity Effect\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B8');\" value=\"Denomination Effect\" title=\"Denomination Effect\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B9');\" value=\"Magic Number\" title=\"Magic Number\" class=\"Button1\" />  ";           
		}
		
		function PresentCatagory2Bias4()
		{
			Part2 = "S4";
			GenerateMap();	
			SubCat1Reference.innerHTML = "<span>&nbsp;Select a subcatagory bias?</span><br />" + 
					"<input onclick=\"SetBias('B1');\" value=\"Out-group Homogeneity Bias\"  title=\"Out-group Homogeneity Bias\" class=\"Button1\" /><br />" +  
					"<input onclick=\"SetBias('B2');\" value=\"Cross-race Effect\" title=\"Cross-race Effect\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B3');\" value=\"In-group Bias\" title=\"In-group Bias\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B4');\" value=\"Halo Effect\" title=\"Halo Effect\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B5');\" value=\"Cheerleader Effect\" title=\"Cheerleader Effect\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B6');\" value=\"Positivity Effect \" title=\"Positivity Effect \" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B7');\" value=\"Not Invented Here\" title=\"Not Invented Here\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B8');\" value=\"Reactive Devaluation\" title=\"Reactive Devaluation\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B9');\" value=\"Well-traveled Road Effect\" title=\"Well-traveled Road Effect\" class=\"Button1\" />  ";      
		}
		   
		function PresentCatagory2Bias5()
		{
			Part2 = "S5";
			GenerateMap();	
			SubCat1Reference.innerHTML = "<span>&nbsp;Select a subcatagory bias?</span><br />" + 
					"<input onclick=\"SetBias('B1');\" value=\"Group Attribution Error\"  title=\"Group Attribution Error\" class=\"Button1\" /><br />" +  
					"<input onclick=\"SetBias('B2');\" value=\"Ultimate Attribution Error\" title=\"Ultimate Attribution Error\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B3');\" value=\"Stereotypical Bias\" title=\"Stereotypical Bias\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B4');\" value=\"Essentialism\" title=\"Essentialism\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B5');\" value=\"Functional Fixedness\" title=\"Functional Fixedness\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B6');\" value=\"Moral Credential Effect\" title=\"Moral Credential Effect\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B7');\" value=\"Just-world Hypothesis\" title=\"Just-world Hypothesis\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B8');\" value=\"Argument From Fallacy\" title=\"Argument From Fallacy\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B9');\" value=\"Authority Bias\" title=\"Authority Bias\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B10');\" value=\"Bandwagon Effect\" title=\"Bandwagon Effect\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B11');\" value=\"Placebo Effect\" title=\"Placebo Effect\" class=\"Button1\" />  "; 	
		}
		 
		function PresentCatagory2Bias6()
		{
			Part2 = "S6";
			GenerateMap();	
			SubCat1Reference.innerHTML = "<span>&nbsp;Select a subcatagory bias?</span><br />" + 
					"<input onclick=\"SetBias('B1');\" value=\"\"  title=\"\" class=\"Button1\" /><br />" +  
					"<input onclick=\"SetBias('B2');\" value=\"Confabulation\" title=\"Confabulation\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B3');\" value=\"Clustering Illusion\" title=\"Clustering Illusion\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B4');\" value=\"Insensitivity to Sample Size\" title=\"Insensitivity to Sample Size\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B5');\" value=\"Neglect of Probability\" title=\"Neglect of Probability\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B6');\" value=\"Anecdotal Fallacy\" title=\"Anecdotal Fallacy\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B7');\" value=\"Illusion of Validity\" title=\"Illusion of Validity\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B8');\" value=\"Masked Man Fallacy\" title=\"Masked Man Fallacy\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B9');\" value=\"Recency Illusion\" title=\"Recency Illusion\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B10');\" value=\"Gambler's Fallacy\" title=\"Gambler's Fallacy\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B11');\" value=\"Hot-hand Fallacy\" title=\"Hot-hand Fallacy\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B12');\" value=\"Illusory Correlation\" title=\"Illusory Correlation\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B13');\" value=\"Pareidolia\" title=\"Pareidolia\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B14');\" value=\"Anthropomorphism\" title=\"Anthropomorphism\" class=\"Button1\" />";                            
		}  
		   
		function PresentCatagory3Bias1()
		{
			Part2 = "S1";
			GenerateMap();	
			SubCat1Reference.innerHTML = "<span>&nbsp;Select a subcatagory bias?</span><br />" + 
					"<input onclick=\"SetBias('B1');\" value=\"Bias Blind Spot\"  title=\"Bias Blind Spot\" class=\"Button1\" /><br />" +  
					"<input onclick=\"SetBias('B2');\" value=\"Naive Cynicism\" title=\"Naive Cynicism\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B3');\" value=\"Naive Realism\" title=\"Naive Realism\" class=\"Button1\" /> ";      
		}
		  
		function PresentCatagory3Bias2()
		{
			Part2 = "S2";
			GenerateMap();	
			SubCat1Reference.innerHTML = "<span>&nbsp;Select a subcatagory bias?</span><br />" + 
					"<input onclick=\"SetBias('B1');\" value=\"Confirmation Bias\"  title=\"Confirmation Bias\" class=\"Button1\" /><br />" +  
					"<input onclick=\"SetBias('B2');\" value=\"Congruence Bias\" title=\"Congruence Bias\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B3');\" value=\"Post-purchase Rationalization\" title=\"Post-purchase Rationalization\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B4');\" value=\"Choice-supportive Bias\" title=\"Choice-supportive Bias\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B5');\" value=\"Selective Perception\" title=\"Selective Perception\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B6');\" value=\"Observer-expectancy Effect\" title=\"Observer-expectancy Effect\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B7');\" value=\"Experimenter's Bias\" title=\"Experimenter's Bias\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B8');\" value=\"Observer Effect\" title=\"Observer Effect\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B9');\" value=\"Expectation Bias\" title=\"Expectation Bias\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B10');\" value=\"Ostrich Effect\" title=\"Ostrich Effect\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B11');\" value=\"Subjective Validation\" title=\"Subjective Validation\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B12');\" value=\"Continued Influence Effect\" title=\"Continued Influence Effect\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B13');\" value=\"Semmelweis Reflex\" title=\"Semmelweis Reflex\" class=\"Button1\" />  ";   
		}
 
	  
		function PresentCatagory3Bias3()
		{
			Part2 = "S3";
			GenerateMap();	
			SubCat1Reference.innerHTML = "<span>&nbsp;Select a subcatagory bias?</span><br />" + 
					"<input onclick=\"SetBias('B1');\" value=\"Anchoring\"  title=\"Anchoring\" class=\"Button1\" /><br />" +  
					"<input onclick=\"SetBias('B2');\" value=\"Conservationism\" title=\"Conservationism\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B3');\" value=\"Contrast Effect\" title=\"Contrast Effect\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B4');\" value=\"Distinction Bias\" title=\"Distinction Bias\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B5');\" value=\"Focusing Effect\" title=\"Focusing Effect\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B6');\" value=\"Framing Effect\" title=\"Framing Effect\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B7');\" value=\"Money Illusion\" title=\"Money Illusion\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B8');\" value=\"Weber-Fechner Law \" title=\"Weber-Fechner Law \" class=\"Button1\" />  ";      
		}
 
		function PresentCatagory3Bias4()
		{
			Part2 = "S4";
			GenerateMap();	
			SubCat1Reference.innerHTML = "<span>&nbsp;Select a subcatagory bias?</span><br />" + 
					"<input onclick=\"SetBias('B1');\" value=\"Bizarreness Effect\"  title=\"Bizarreness Effect\" class=\"Button1\" /><br />" +  
					"<input onclick=\"SetBias('B2');\" value=\"Humor Effect\" title=\"Humor Effect\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B3');\" value=\"Von Restorff Effect\" title=\"Von Restorff Effect\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B4');\" value=\"Picture Supremacy Effect\" title=\"Picture Supremacy Effect\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B5');\" value=\"Self-relevance Effect\" title=\"Self-relevance Effect\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B6');\" value=\"Negativity Bias\" title=\"Negativity Bias\" class=\"Button1\" />  ";      	
		}
  
 		function PresentCatagory3Bias5()
 		{
 			Part2 = "S5";
 			GenerateMap();	
 			SubCat1Reference.innerHTML = "<span>&nbsp;Select a subcatagory bias?</span><br />" + 
 					"<input onclick=\"SetBias('B1');\" value=\"Availability Heuristic\"  title=\"Availability Heuristic\" class=\"Button1\" /><br />" +  
 					"<input onclick=\"SetBias('B2');\" value=\"Availability Cascade\" title=\"Availability Cascade\" class=\"Button1\" /> <br />" +  
 					"<input onclick=\"SetBias('B3');\" value=\"Attention Bias\" title=\"Attention Bias\" class=\"Button1\" /> <br />" +  
 					"<input onclick=\"SetBias('B4');\" value=\"Illusory Truth Effect\" title=\"Illusory Truth Effect\" class=\"Button1\" />  <br />" +  
 					"<input onclick=\"SetBias('B5');\" value=\"Mere Exposure Effect\" title=\"Mere Exposure Effect\" class=\"Button1\" />  <br />" +  
 					"<input onclick=\"SetBias('B6');\" value=\"Context Effect\" title=\"Context Effect\" class=\"Button1\" />  <br />" +  
 					"<input onclick=\"SetBias('B7');\" value=\"Cue-dependent Forgetting\" title=\"Cue-dependent Forgetting\" class=\"Button1\" />  <br />" +  
 					"<input onclick=\"SetBias('B8');\" value=\"Mood-congruent Memory Bias\" title=\"Mood-congruent Memory Bias\" class=\"Button1\" /> <br />" +  
 					"<input onclick=\"SetBias('B9');\" value=\"Frequency Illusion\" title=\"Frequency Illusion\" class=\"Button1\" />  <br />" +  
 					"<input onclick=\"SetBias('B10');\" value=\"Baader–Meinhof phenomenon \" title=\"Baader–Meinhof phenomenon \" class=\"Button1\" />  <br />" +  
 					"<input onclick=\"SetBias('B11');\" value=\"Empathy Gap\" title=\"Empathy Gap\" class=\"Button1\" />  <br />" +  
 					"<input onclick=\"SetBias('B12');\" value=\"Omission Bias\" title=\"Omission Bias\" class=\"Button1\" />  <br />" +  
 					"<input onclick=\"SetBias('B13');\" value=\"Base-rate Fallacy\" title=\"Base-rate Fallacy\" class=\"Button1\" />  ";                                           
		}
  
		function PresentCatagory4Bias1()
		{
			Part2 = "S1";
			GenerateMap();	
			SubCat1Reference.innerHTML = "<span>&nbsp;Select a subcatagory bias?</span><br />" + 
					"<input onclick=\"SetBias('B1');\" value=\"Tip-of-the-tongue Phenomenon\"  title=\"Tip-of-the-tongue Phenomenon\" class=\"Button1\" /><br />" +  
					"<input onclick=\"SetBias('B2');\" value=\"Google Effect\" title=\"Google Effect\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B3');\" value=\"Next-in-line Effect\" title=\"Next-in-line Effect\" class=\"Button1\" /> <br />" +  
					"<input onclick=\"SetBias('B4');\" value=\"Testing Effect\" title=\"Testing Effect\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B5');\" value=\"Absent-mindedness\" title=\"Absent-mindedness\" class=\"Button1\" />  <br />" +  
					"<input onclick=\"SetBias('B6');\" value=\"Levels of Processing Effect\" title=\"Levels of Processing Effect\" class=\"Button1\" />  ";      
		} 
		
   		function PresentCatagory4Bias2()
   		{
   			Part2 = "S2";
   			GenerateMap();	
   			SubCat1Reference.innerHTML = "<span>&nbsp;Select a subcatagory bias?</span><br />" + 
   					"<input onclick=\"SetBias('B1');\" value=\"Suffix Effect\"  title=\"Suffix Effect\" class=\"Button1\" /><br />" +  
   					"<input onclick=\"SetBias('B2');\" value=\"Serial Position Effect\" title=\"Serial Position Effect\" class=\"Button1\" /> <br />" +  
   					"<input onclick=\"SetBias('B3');\" value=\"Part-list Cuing Effect\" title=\"Part-list Cuing Effect\" class=\"Button1\" /> <br />" +  
   					"<input onclick=\"SetBias('B4');\" value=\"Recency Effect\" title=\"Recency Effect\" class=\"Button1\" />  <br />" +  
   					"<input onclick=\"SetBias('B5');\" value=\"Primacy Effect\" title=\"Primacy Effect\" class=\"Button1\" />  <br />" +  
   					"<input onclick=\"SetBias('B6');\" value=\"Memory Inhibition\" title=\"Memory Inhibition\" class=\"Button1\" />  <br />" +  
   					"<input onclick=\"SetBias('B7');\" value=\"Modality Effect\" title=\"Modality Effect\" class=\"Button1\" />  <br />" +  
   					"<input onclick=\"SetBias('B8');\" value=\"Duration Neglect\" title=\"Duration Neglect\" class=\"Button1\" />  <br />" +  
   					"<input onclick=\"SetBias('B9');\" value=\"List-length Effect\" title=\"List-length Effect\" class=\"Button1\" />  <br />" +  
   					"<input onclick=\"SetBias('B10');\" value=\"Serial Recall Effect\" title=\"Serial Recall Effect\" class=\"Button1\" />  <br />" +  
   					"<input onclick=\"SetBias('B11');\" value=\"Misinformation Effect\" title=\"Misinformation Effect\" class=\"Button1\" />  <br />" +  
   					"<input onclick=\"SetBias('B12');\" value=\"Leveling and Sharpening\" title=\"Leveling and Sharpening\" class=\"Button1\" />  <br />" +  
   					"<input onclick=\"SetBias('B13');\" value=\"Peak-end Rule\" title=\"Peak-end Rule\" class=\"Button1\" />  ";
		}
   
  	  
  		function PresentCatagory4Bias3()
  		{
  			Part2 = "S3";
  			GenerateMap();	
  			SubCat1Reference.innerHTML = "<span>&nbsp;Select a subcatagory bias?</span><br />" + 
  					"<input onclick=\"SetBias('B1');\" value=\"Fading Affect Bias\"  title=\"Fading Affect Bias\" class=\"Button1\" /><br />" +  
  					"<input onclick=\"SetBias('B2');\" value=\"Negativity Bias\" title=\"Negativity Bias\" class=\"Button1\" /> <br />" +  
  					"<input onclick=\"SetBias('B3');\" value=\"Prejudice\" title=\"Prejudice\" class=\"Button1\" /> <br />" +  
  					"<input onclick=\"SetBias('B4');\" value=\"Stereotypical Bias\" title=\"Stereotypical Bias\" class=\"Button1\" />  <br />" +  
  					"<input onclick=\"SetBias('B5');\" value=\"Implicit Stereotypes\" title=\"Implicit Stereotypes\" class=\"Button1\" />  <br />" +  
  					"<input onclick=\"SetBias('B6');\" value=\"Implicit Associations\" title=\"Implicit Associations\" class=\"Button1\" />  ";      
		}
   
   	  
   		function PresentCatagory4Bias4()
   		{
   			Part2 = "S2";
   			GenerateMap();	
   			SubCat1Reference.innerHTML = "<span>&nbsp;Select a subcatagory bias?</span><br />" + 
   					"<input onclick=\"SetBias('B1');\" value=\"Spacing Effect\"  title=\"Spacing Effect\" class=\"Button1\" /><br />" +  
   					"<input onclick=\"SetBias('B2');\" value=\"Suggestibility\" title=\"Suggestibility\" class=\"Button1\" /> <br />" +  
   					"<input onclick=\"SetBias('B3');\" value=\"False Memory\" title=\"False Memory\" class=\"Button1\" /> <br />" +  
   					"<input onclick=\"SetBias('B4');\" value=\"Cryptomnesia\" title=\"Cryptomnesia\" class=\"Button1\" />  <br />" +  
   					"<input onclick=\"SetBias('B5');\" value=\"Source Confusion\" title=\"Source Confusion\" class=\"Button1\" />  <br />" +  
   					"<input onclick=\"SetBias('B6');\" value=\"Misattribution of Memory\" title=\"Misattribution of Memory\" class=\"Button1\" />  ";      
   			
		} 
	
 		function SetBias(InValue)
 		{
 			Part3 = InValue;
			GenerateMap();
			SubmitBtnLocReference.innerHTML = "<input value=\"Submit via Email\" class=\"Button1\" onclick=\"OpenNewWindow();\" style=\"height:20px; width:200px; \" />";
 		} 
 		
 		function ResetForm()
 		{
 			Part1 = ""; 
			Part2 = "";
			Part3 = "";
			BiasFlag = "";
			TheTextReference.value = "";
			ResetButton();
			SubCat1Reference.innerHTML = "";
			SubmitBtnLocReference.innerHTML = "";
 		}
 		
 		
		function OpenNewWindow() {
			var ThisCode = Part1 +"|" + Part2 + "|" + Part3 + "|" + BiasFlag; 
		    	window.open("mailto:bias@artificialgeneralintelligenceinc.com?Subject=" + ThisCode + "&Body=" + TheTextReference.value, "_blank");
		}
 		
        </script>
    </head>
    <body onload="Init();">
        <form id="ThisFormID" name="ThisForm" action="Default.aspx" method="post"  >
	        <span class='AdminMenu'>
                	<br /><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<small>You must be able to see the end of this sentence.</small></div> 
	        </span>
		<span style="top: 20px; left: 20px; height:20px; width:410px; position: absolute;"> 
			&nbsp;Learn more at <a href="https://Bias.Transhumanity.net/"><span>Bias.Transhumanity.net</span></a>
		</span>
            	<img src="/Img/CLASSIFIERLOGO.png" style="top: -60px; left: 355px; height:100px; width:466px; position: absolute;" />
            	
            	<img src="/Img/endcap.png" style="top: 43.5px; left: 794px; height:38px; width:42px; position: absolute;" />
            	
		<span style="top: 123px; left: 20px; height:20px; width:210px; position: absolute;"> 
			<div id="CatagoryLabelID" >&nbsp;Select a catagory?</div><br />
			<input name="BC1Input" id="BC1InputID" value="Need to Act Fast"  class="Button1" onclick="SelectCatagory('1');" /> 
			<input name="BC2Input" id="BC2InputID" value="Lacking Meaning"  class="Button1" onclick="SelectCatagory('2');" /> 
			<input name="BC3Input" id="BC3InputID" value="Too Much Info"  class="Button1" onclick="SelectCatagory('3');" /> 
			<input name="BC4Input" id="BC4InputID" value="What To Remember"  class="Button1" onclick="SelectCatagory('4');" /> 
		</span> 
            	
            	<textarea id="TheTextID" name="TheText" class="CatagorySelected" onfocus="CheckFirstTime();" style="position: absolute; top: 123px; left: 220px;" rows="6" cols="35" >[ start by putting your sentence here. ]</textarea>
            	
            	<input name="ResetButton" value="Reset" onclick="ResetForm();" class="Button1" style="top: 233px; left: 220px; height:20px; width:40px; position: absolute;"/>
            	<span id="SubmitBtnLocID" style="top: 233px; left: 285px; position: absolute;" ></span>
		 
         
		<span id="SubCat1ID" class="SubCatOn"></span> 
		 
            	<img src="/Img/IndicatorBar.png" style="top: 90.5px; left: 18px; height:18px; width:609px; position: absolute;" />
		
		<span id="ThisClassificationID" style="top: 90px; left: 220px; height:20px; width:410px; position: absolute;"> 
			Encoded Bias: | [ Catagory ] | [ Sub ] | [ Bias ] | <span style="color:red">[ Bias Flag ]</span></a>
		</span>
		
		
		<span style="top: 420px; left: 20px; height:20px; width:410px; position: absolute;"> 
			&nbsp;Sponsored by The AGI Lab, and Uplift | v0.0.001 | Open Source</a>
		</span>
        </form>
    </body>
</html>