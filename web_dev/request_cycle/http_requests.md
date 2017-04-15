1.     What are some common HTTP status codes?
1XX: This class of status code indicates a provisional response, consisting only of the Status-Line and optional headers, and is terminated by an empty line. There are no required headers for this class of status code. 
2XX: This class of status code indicates that the client's request was successfully received, understood, and accepted.
3XX: This class of status code indicates that further action needs to be taken by the user agent in order to fulfill the request.
4XX: The request could not be understood by the server due to malformed syntax. The client SHOULD NOT repeat the request without modifications.
5XX: Response status codes beginning with the digit "5" indicate cases in which the server is aware that it has erred or is incapable of performing the request.
100 – request should continue
101 – switch protocol
200 – request succeeded
201 – resource created
301 – request moved
305 – use proxy
402 – payment required
403 – forbidden
500 – internal error
502 – bad gateway
2.     What is the difference between a GET request and a POST request? When might each be used?
The GET request is usually meant to request and retrieve some data and can be repeated multiple times. The POST request will submit some type of data to an identified source and may result in the creation of a new resource.
3.     Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
An HTTP cookie is a piece of data that is sent from a website and store on a computer by the web browser. They are a a stable/ reliable mechanism to remember useful information. There are many different types of cookies like authentication cookies, third party cookies, etc. Third party cookies are quite often used in online advertising for retargeting and customer behavior tracking.