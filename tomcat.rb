package "tomcat"
bash 'install_jenkins' do
  user 'root'
  code <<-EOH
  wget http://mirrors.jenkins.io/war/latest/jenkins.war
  mv jenkins.war /usr/share/tomcat/webapps 
  EOH
end
service "tomcat" do
 action:start
end

