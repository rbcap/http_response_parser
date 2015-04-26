# http_response_parser.

HTTP log parser in Bash

# Dependencies

response_parse.sh uses awk to parse the log file.

# Log File example
example.com:80 ::1 - - [10/Oct/2012:05:03:11 -0400] "OPTIONS * HTTP/1.0" 200 152 "-" "Apache/2.2.14 (Ubuntu) (internal dummy connection)"
example.com:80 ::1 - - [10/Oct/2012:05:03:12 -0400] "OPTIONS * HTTP/1.0" 404 152 "-" "Apache/2.2.14 (Ubuntu) (internal dummy connection)"
example.com:80 ::1 - - [10/Oct/2012:05:03:13 -0400] "OPTIONS * HTTP/1.0" 200 152 "-" "Apache/2.2.14 (Ubuntu) (internal dummy connection)"
example.com:80 14.139.241.89 - - [10/Oct/2012:05:04:39 -0400] "GET /wp-content/uploads/2010/11/linkedin.png HTTP/1.1" 200 3163 "http://shashank7s.blogspot.in/2011/06/given-row-of-notes-with-specified.html" "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.92 Safari/537.4"
example.com:80 14.139.241.89 - - [10/Oct/2012:05:04:39 -0400] "GET /wp-content/uploads/2010/11/twitter.png HTTP/1.1" 200 2978 "http://shashank7s.blogspot.in/2011/06/given-row-of-notes-with-specified.html" "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.92 Safari/537.4"
example.com:80 14.139.241.89 - - [10/Oct/2012:05:04:39 -0400] "GET /wp-content/uploads/2010/11/facebook.png 

# If we run the following code against this example:
bash parser.sh

# output

Enter the log file -->log_parser.log
log file name/path log_parser.log
number of HTTP 404 errors in sample log file
5 404
all HTTP response with its respective count 
1 302
2 304
3 502
39 200
5 404
