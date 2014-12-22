require 'yaml'

yaml_path = File.expand_path('../variables.yml', __FILE__)
abort "#{yaml_path} does not exist" unless File.exists?(yaml_path)

yaml   = File.read(yaml_path)
config = YAML.load(yaml)

config['roles'].each do |role|
  desc "Alias for #{role}:apply"
  task role.to_sym do
    Rake::Task["#{role}:apply"].invoke
  end

  namespace role.to_sym do
    desc "Apply configurations for #{role}"
    task :apply do
      puts "Building #{role}..."
    end

    desc "Test execution for #{role}"
    task :'dry-run' do
      puts "Testing #{role}..."
    end
  end
end
