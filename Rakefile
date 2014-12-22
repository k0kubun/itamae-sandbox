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
    def expand_path(path)
      File.expand_path("../#{path}", __FILE__)
    end

    def itamae_ssh(role, dry_run: false)
      args = ['envchain', role] # to pass SUDO_PASSWORD
      args += %w[bundle exec itamae ssh]
      args += %W[--host #{role}]
      args += %W[-y #{expand_path('variables.yml')}]
      args << expand_path('lib/recipe_helper.rb')
      args << expand_path("roles/#{role}/default.rb")
      system(*args)
    end

    desc "Apply configurations for #{role}"
    task :apply do
      puts "Building #{role}..."
      itamae_ssh(role, dry_run: false)
    end

    desc "Test execution for #{role}"
    task :'dry-run' do
      puts "Testing #{role}..."
      itamae_ssh(role, dry_run: true)
    end
  end
end
