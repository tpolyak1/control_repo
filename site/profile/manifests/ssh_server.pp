class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC6ltScg9rKADdYKM0MWnW9zD72tKZuzK2qSisg6rTf5/W5RrZmr7NUmmkAeIWzfl9rxyfGuZ5r377ZWFYd7b0Be5kVbhzJoLbIU8HcKai+vI4GfSRptrZSpyXNpHYluZT0dkkCCsnOP6inJWyD8E5HCOun5VdRtfTWHHaOEPOieRyfJgUaMoMxVjHTyJ3vOQrtIZ5S6s9vk0ndQ/uT6P+xEf2yuRVwoPIZgSL7K/ZJ4uRR8m1P1nJSBBqakVHsPSLIZ2gAveKcDuG+RxiDKNrNurDQuS2+y2V/tCxttQ93r6rz4NwVmHHJu78ctgZ99+zzvpP+Tlczd/1Dt9p61EL7',
	}  
}
