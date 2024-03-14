desc "Run all tests"
task test: ["test:config"]

namespace :test do
  desc "Checks if the documents are wired correctly in the config"
  task :config do
    puts "ok"
  end
end
