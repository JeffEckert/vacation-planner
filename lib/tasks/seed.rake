require_relative '../../config/environment'
require 'pry'

namespace :seed do
    
    desc 'seed db from local json file'
    task :local do
        require_relative '../../db/local_seed'
        puts 'Seeding done'
    end
end