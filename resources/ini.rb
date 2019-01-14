resource_name :ini

default_action :add

property :mode, String, default: '0644'
property :options, Hash, default: {}, required: true

action :add do
  directory new_resource.name.dirname do
    recursive true
  end

  template new_resource.name do
    source 'ini.erb'
    cookbook 'ini'
    variables data: new_resource.options
    mode new_resource.mode
  end
end

action :remove do
  file new_resource.name do
    action :delete
  end
end
