Capistrano::Configuration.instance.load do
  set(:rake_group) { :db }

  namespace :rake do
    desc "Migrates the database"
    task :migrate, :roles => :db, :primary => true do
      cmd = (command || "db:migrate") + " RAILS_ENV=#{rails_env}"
      logger.info "Running #{cmd}"
      run "cd #{current_path}; bundle exec rake #{cmd}"
    end

    # This compiles the requested command
    task :command do
      cut = ARGV.index("-s")
      cmd = nil
      cmd = ARGV[(cut+1)..-1].join(" ") unless cut.nil?
      cmd
    end
  end
end
