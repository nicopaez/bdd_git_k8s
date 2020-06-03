guard :rspec, cmd: "bundle exec rspec --color" do

  watch(%r{^model/(.+)\.rb$}) { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^spec/.+_spec\.rb$})
  watch('spec/spec_helper.rb')  { "spec" }

end
