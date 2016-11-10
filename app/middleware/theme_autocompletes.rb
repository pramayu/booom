class ThemeAutocompletes
  def initialize(app)
    @app = app
  end

  def call(env)
    if env["PATH_INFO"] == "/auto_completes"
      request = Rack::Request.new(env)
      terms = ThemeAutocomplete.terms_for(request.params["term"])
      [200, {"Content-Type" => "application/json"}, [terms.to_json]]
    else
      @app.call(env)
    end
  end
end
class CodeAutocompletes
  def initialize(app)
    @app = app
  end

  def call(env)
    if env["PATH_INFO"] == "/auto_completes"
      request = Rack::Request.new(env)
      terms = CodeAutocomplete.terms_for(request.params["term"])
      [200, {"Content-Type" => "application/json"}, [terms.to_json]]
    else
      @app.call(env)
    end
  end
end
class GraphicAutocompletes
  def initialize(app)
    @app = app
  end

  def call(env)
    if env["PATH_INFO"] == "/auto_completes"
      request = Rack::Request.new(env)
      terms = GraphicAutocomplete.terms_for(request.params["term"])
      [200, {"Content-Type" => "application/json"}, [terms.to_json]]
    else
      @app.call(env)
    end
  end
end
class T3dAutocompletes
  def initialize(app)
    @app = app
  end

  def call(env)
    if env["PATH_INFO"] == "/auto_completes"
      request = Rack::Request.new(env)
      terms = T3dAutocomplete.terms_for(request.params["term"])
      [200, {"Content-Type" => "application/json"}, [terms.to_json]]
    else
      @app.call(env)
    end
  end
end
class VideofxAutocompletes
  def initialize(app)
    @app = app
  end

  def call(env)
    if env["PATH_INFO"] == "/auto_completes"
      request = Rack::Request.new(env)
      terms = VideofxAutocomplete.terms_for(request.params["term"])
      [200, {"Content-Type" => "application/json"}, [terms.to_json]]
    else
      @app.call(env)
    end
  end
end
class FontAutocompletes
  def initialize(app)
    @app = app
  end

  def call(env)
    if env["PATH_INFO"] == "/auto_completes"
      request = Rack::Request.new(env)
      terms = FontAutocomplete.terms_for(request.params["term"])
      [200, {"Content-Type" => "application/json"}, [terms.to_json]]
    else
      @app.call(env)
    end
  end
end
class CourseAutocompletes
  def initialize(app)
    @app = app
  end

  def call(env)
    if env["PATH_INFO"] == "/auto_completes"
      request = Rack::Request.new(env)
      terms = CourseAutocomplete.terms_for(request.params["term"])
      [200, {"Content-Type" => "application/json"}, [terms.to_json]]
    else
      @app.call(env)
    end
  end
end
