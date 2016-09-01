

class HelloWorldApp
  def self.call(env)
    request = Rack::Request.new(env)
    message = request.params['message'] || 'nothing!'
    header = request.env['HTTP_USER_AGENT']
    get_post = request.request_method
    [200, {}, ["hello world, you said #{get_post}"]]
  end
end
