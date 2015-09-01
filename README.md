# Vagrant for Enterprise provisioning
  
This project is an example of how Vagrant and a virtualization provider (e.g. VirtualBox) can be used in the enterprise. 

The 3 folders would normally be split in separate projects:

* one instance of the [enterprise-level][1] project, maintained by the organization's infrastructure team
* N instances of the [team-level][2] project, each one maintained by a different delivery team, with possibly different provisioning needs.
* M instances of the [project-level][3] Vagrantfile, located alongside the source code of the deployable module. 

You can read the detailed description of this project in this [blog post][4].


   [1]: ./enterprise-level
   [2]: ./team-level
   [3]: ./project-level
   [4]: 