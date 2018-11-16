require 'cocoapods'
require 'fileutils'

module CocoapodsGitHooks
  Pod::HooksManager.register('cocoapods-show-podpsecs-in-project', :post_install) do |context|
    specs_dir_path = File.expand_path('Pods/Podspecs')
    FileUtils.rm_rf specs_dir_path
    FileUtils.mkdir specs_dir_path

    context.umbrella_targets[0].specs.each do |spec|
      spec = spec.parent if spec.subspec?
      path = "#{specs_dir_path}/#{spec.name}.podpsec.json"
      File.open(path, 'w') { |file| file.write(spec.to_pretty_json) }
    end

    context.pods_project.main_group.new_reference(specs_dir_path)
    context.pods_project.save
  end
end
