/* 
Created by: Kenrick Beckett

Name: Chat Engine
*/

var instanse = false;
var state;
var mes;
var file;

function Chat () {
    this.update = function() {};
    this.send = sendChat;
	this.getState = function() {};
}


//send the message
function sendChat(message, nickname)
{       

    add_to_chat(nickname, message);

     $.ajax({
		   type: "GET",
           url: "/chat/rest/reply",
		   data: {  
                'nickname': nickname,
                 'message': message,
       	 },
		   dataType: "json",
		   success: function(data){
				   if(data.text){
                       $('#chat-area').append($("<p>" + "<span>" + data.nick + "</span>" + data.text +"</p>"));
                       document.getElementById('chat-area').scrollTop = document.getElementById('chat-area').scrollHeight;
                   }
		   },
		});
}


function add_to_chat(nick, text) {
    $('#chat-area').append($("<p>" + "<span>" + nick + "</span>" + text +"</p>"));
    document.getElementById('chat-area').scrollTop = document.getElementById('chat-area').scrollHeight;
}
