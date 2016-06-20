source "https://supermarket.chef.io"

metadata

def dep_cookbook(name, options = {})
  cookbook(name, {
    git: "git@github.com:rx007/#{name}.git"
  }.merge(options))
end

dep_cookbook("compat_resource", branch: "master")
dep_cookbook("ohai", branch: "master")
dep_cookbook("windows", branch: "master")
dep_cookbook("seven_zip", branch: "master")
dep_cookbook("mingw", branch: "master")
dep_cookbook("yum", branch: "master")
dep_cookbook("yum-epel", branch: "master")
dep_cookbook("chef_handler", branch: "master")
dep_cookbook("dmg", branch: "master")
dep_cookbook("build-essential", branch: "master")
dep_cookbook("git", branch: "master")
dep_cookbook("rbenv", branch: "master")
