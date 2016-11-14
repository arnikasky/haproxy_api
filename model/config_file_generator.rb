class ConfigFileGenerator
  def generate(params)
    @params = params
    template = ERB.new(File.read("./template/haproxy.cfg.erb"), nil, "-")
    new_file = File.open("./template/haproxy.cfg", "w")
    new_file_content = template.result(binding)
    new_file.write(new_file_content)
    new_file.close
  end
end
