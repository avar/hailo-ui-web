var name = "Anonymous";

// kick off chat
var chat =  new Chat();
$(function() {
    // watch textarea for key presses
    $("#reply").keydown(function(event) {  
        var key = event.which;  
           
        // all keys including return.  
        if (key >= 33) {
            var maxLength = $(this).attr("maxlength");  
            var length = this.value.length;  
                     
            // don't allow new content if length is maxed out
            if (length >= maxLength) {  
                event.preventDefault();  
            }  
        }  
        });
        
    // watch textarea for release of key press
    $('#reply').keyup(function(e) {    
            if (e.keyCode == 13) { 
                  
                var text = $(this).val();
                var maxLength = $(this).attr("maxlength");  
                var length = text.length; 
                     
                // send 
                if (length <= maxLength + 1) { 
                    chat.send(text, name);    
                    $(this).val("");
                } else {
                    $(this).val(text.substring(0, maxLength));
                }   
            }
    });
});
