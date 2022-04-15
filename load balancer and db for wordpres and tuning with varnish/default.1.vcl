vcl 4.1;

backend default {
                 .host = "wp-1"; 
                }

sub vcl_init {
	}

sub vcl_recv {
	if (req.method != "GET" && req.method != "HEAD") {
	  	return (pass);
		}

	if (req.http.X-Requested-With == "XMLHttpRequest") {
    		return(pass);
		}

	if (req.http.Authorization || req.method == "POST") {
	  	return (pass);
		}
	
	if (req.url ~ "(wp-admin|post\.php|edit\.php|wp-login)") {
	    	return(pass);
		}

	if (req.url ~ "/wp-cron.php" || req.url ~ "preview=true") {
	    	return (pass);
		}
	}

sub vcl_backend_response {

	}
