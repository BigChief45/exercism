class HelloWorld

  def self.hello(name="")
    if name == "" then return "Hello, World!" else return "Hello, #{name}!" end
  end
end