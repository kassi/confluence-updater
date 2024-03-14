require "kramdown"
require "yaml"

Rake.add_rakelib "lib/tasks"

task default: :test

def config
  @config ||= begin
    YAML.safe_load(File.read(ENV["CONFIG_FILE"]), symbolize_names: true)
  end
end

def automation_hint_url
  @automation_hint_url ||= begin
    `git remote get-url origin`.sub(/^git@([\w\.]+):/, "https://\\1/").sub(/^\.git$/, "")
  end
end
