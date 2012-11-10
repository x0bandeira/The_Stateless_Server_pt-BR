url = require 'url'

restful_handler = (request, response, env) ->
  requested_resource = url.parse(request.url).pathname;
  if (i_can_haz_resource(request.cookies)) 
    response.json(restful_db(env).get_resource(requested_resource));
  else
    response.notAllowed();

server.respond_to_request = (handler, env) ->
  http.createServer (req, res) -> 
    handler(req, smart_response(res), env)

server.respond_to_request(restful_handler, env)

