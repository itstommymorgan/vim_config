namespace :pathogen do
   desc "Re-build the helptags for all pathogen-installed plugins."
   task :helptags do
      system(%Q{vim -c "call pathogen#helptags()" -c "qa"})
   end
end
