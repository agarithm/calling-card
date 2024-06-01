var ePrimeBanned = [];
ePrimeBanned.push(" be ", " is ", " am ", " was ", " are ", " were ", " been ", " being ", " isn't ", " aren't ", " wasn't", " weren't ", " aint ", " ain't " );
ePrimeBanned.push("I'm ", " it's ", "It's ", " he's ", "He's ", " she's ", "She's ", " they're ", "They're ", " we're ", "We're ", "You're ", " you're ");
ePrimeBanned.push(" there's ", "There's ", "Here's ", " here's ", "Where's ", " where's ", "How's ", " how's ", "What's ", " what's ", "Who's ", " who's ", "That's ", " that's ");

function eHighlight() {

	function hasDetails(){
		return jQuery('.block-editor__typewriter').length > 0;
	}

	function highlight(val,index,banned){
		//Highlight the Term
		var src_str;
		var pattern;
		pattern = new RegExp("("+val+")", "g");
		src_str = jQuery(".block-editor__typewriter").html();
		src_str = src_str.replace(pattern, "<mark style=\"color: red;\">"+val+"</mark>");
		jQuery(".block-editor__typewriter").html(src_str);
	}

	if(hasDetails()){
		ePrimeBanned.forEach(highlight);
		jQuery('#eprime-focus').focus();

	}

	return;

}

function eUnHighlight() {

	function hasDetails(){
		return jQuery('.block-editor__typewriter').length > 0;
	}

	function unhighlight(val,index,banned){
		//Highlight the Term
		var src_str;
		var pattern;
		src_str = jQuery(".block-editor__typewriter").html();
		pattern = new RegExp("(<mark style=\"color: red;\">"+val+"</mark>)", "g");

		src_str = src_str.replace(pattern, val);
		jQuery(".block-editor__typewriter").html(src_str);
	}

	if(hasDetails()){
		ePrimeBanned.forEach(unhighlight);
	}

	return;

}

jQuery( function($){
	$( document ).ready( function() {


		function KeyPressed(e) {
			var found;
			foundOne = false;

			function hasDetails(){
				return getDetails().length > 0;
			}

			function getDetails(){
				var detail = "";
				detail = "";
				detail += $('.block-editor__typewriter') ? $('.block-editor__typewriter').text() : "";
				$('input').each(function(i,item){ detail += item.value+","; })
				$('textarea').each(function(i,item){ detail += item.value+","; })
				return detail;
			}

			function UpdateDiv(div,val){
				$("#"+div).html(val);
				$("#"+div).show(400);
			}

			function LogDiv(div,val){
				var cur = $("#"+div).html();
				UpdateDiv(div,cur+val);
			}

			function HoverDiv(div){
				var cur = $("#"+div).html();
				UpdateDiv(div,"<a onmouseover=eHighlight() onmouseout=eUnHighlight() onfocusout=eUnHighlight() id=eprime-focus style='color: red; decoration: none;'>"+cur+"</a>");
			}

			function warn(val,index,banned){
				if(getDetails().search(new RegExp(val))>=0){ //indexOf() returns -1 if not found
					if(!foundOne){
						//Do this on the first found Item
						UpdateDiv("eprime","&nbsp;&nbsp;<b>E-Prime Violation:</b>&nbsp; "+val+"&nbsp;");
						foundOne = true;
					}else{
						LogDiv("eprime","|&nbsp;"+val+"&nbsp;");
					}
				}
			}

			if(hasDetails()){
				ePrimeBanned.forEach(warn);
				if(!foundOne){
					$("#eprime").hide(400);
				}else{
					//BUG: Breaks the Block Editor...
					//HoverDiv("eprime");
				}
			}

			return;

		}

		function eprimer(){
			//Initialize
			if($('.block-editor').length > 0){
				if($('.edit-post-header__settings')){
					$('.edit-post-header__settings').prepend('<div id="eprime" class="edit-post-pinned-plugin" style="color: white; background-color: red; decoration: none;"></div>');
					$("#eprime").hide();
				}
			}else if($('#wp-admin-bar-top-secondary')){
				$('#wp-admin-bar-top-secondary').append('<li id="eprime" class="menupop" style="color: white; background-color: red; decoration: none;"></li>');
				$("#eprime").hide();
			}
		}

		setTimeout(eprimer, 2000);

		//Hook the keyboard event
		if( document.captureEvents && Event.KEYUP ) {
			document.captureEvents( Event.KEYUP );
		}
		document.onkeyup = KeyPressed;

	});
});
