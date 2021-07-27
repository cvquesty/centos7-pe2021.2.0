# Windows Installation Instructions

### Required Software

**Download and Install Vagrant**

https://releases.hashicorp.com/vagrant/2.2.18/vagrant_2.2.18_x86_64.msi

**Download and Install Virtualbox**

	https://download.virtualbox.org/virtualbox/6.1.24/VirtualBox-6.1.24-145767-Win.exe

**Download and Install Git for Windows**

	https://github.com/git-for-windows/git/releases/download/v2.20.1.windows.1/Git-2.20.1-64-bit.exe

**Download and Install Visual Studio Code**

	https://code.visualstudio.com/Download

**Install Vagrant Plugins**

Install each product according to its instructions.  When complete, install the required plugins into Vagrant via Vagrant's plugin manager:

	vagrant plugin install vagrant-hosts
	vagrant plugin install vagrant-pe_build
	vagrant plugin install vagrant-vbguest

**Windows PE Download Notes**

In previous releases, vagrant-pe_build had issues with downloading Puppet Enterprise for installation onto the VMs.  In recent documentation, the project has stated that this bug is fixed, but I have as of yet not had the opportunity to test it.  If your instance comes up without further assistance, then your instalation will be complete at this point.

In the past, you would need to download the PE Package manually here:

	https://pm.puppetlabs.com/puppet-enterprise/2021.2.0/puppet-enterprise-2021.2.0-el-7-x86_64.tar.gz

- or -

	https://pm.puppetlabs.com/puppet-enterprise/2021.2.0/puppet-enterprise-2021.2.0-el-6-x86_64.tar.gz

Move it to the C:\Users\username\\.vagrant.d\\.pe_build directory.

**Create a Workspace and Clone this Repository**

In Windows Explorer, navigate to a location within which to create your project.  From there, clone the git repository.

	git clone https://github.com/cvquesty/centos7-pe2021.2.0.git

**Change to the Directory and Launch Vagrant**

	cd centos7-pe2021.2.0
	vagrant up

**Notes:**

* This environment requires your machine to have at least 8GB of RAM.
* This has been tested to work in Windows 8.1.
