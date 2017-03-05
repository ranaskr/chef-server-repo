name "webserver"
description "All the nodes assigned to this role will run the runlists mentioned here"
run_list "recipe[workstation]","recipe[apache]"
default_attributes 'apache-test' => {
'attribute1' => 'hello from web server role',
'attribute2' => 'You are awesome'
}

