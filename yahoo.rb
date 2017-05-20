package "httpd"
service "httpd" do
 action :(stop,start)
end
