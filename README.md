Regsiter/Login API

<Additional information about your API call. Try to use verbs that match both request type (fetching vs modifying) and plurality (one vs multiple).>
This API allows you to create,login and authorise users.

<The URL Structure (path only, no root url)>

Method:
http://localhost:3000/users/new

<The request type>

GET | POST 

URL Params

<If URL params exist, specify them in accordance with name mentioned in URL section. Separate into optional and required. Document data constraints.>

Required:

id=[integer]

Optional:

Data Params

<If making a post request, what should the body payload look like? URL Params rules apply here too.>
{"id":null,"name":null,"email":null,"password_digest":null}

Success Response:

<What should the status code be on success and is there any returned data? This is useful when people need to to know what their callbacks should expect!>

{"id":null,"name":null,"email":null,"password_digest":null,"created_at":null,"updated_at":null}

If error its will call "Error!"
