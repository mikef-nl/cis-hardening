package 'aide' do
  action :install
  only_if { cisecurity['benchmarks_rule_Ensure_cryptographic_mechanisms_are_used_to_protect_the_integrity_of_audit_tools'] }
end

append_if_no_line 'Paths in aide.conf' do
  path '/etc/aide.conf'
  line '# Audit Tools'
  only_if { cisecurity['benchmarks_rule_Ensure_cryptographic_mechanisms_are_used_to_protect_the_integrity_of_audit_tools'] }
end

append_if_no_line 'Paths in auditctl' do
  path '/etc/aide.conf'
  line '/usr/sbin/auditctl p+i+n+u+g+s+b+acl+xattrs+sha512'
  only_if { cisecurity['benchmarks_rule_Ensure_cryptographic_mechanisms_are_used_to_protect_the_integrity_of_audit_tools'] }
end

append_if_no_line 'Paths in auditd' do
  path '/etc/aide.conf'
  line '/usr/sbin/auditd p+i+n+u+g+s+b+acl+xattrs+sha512'
  only_if { cisecurity['benchmarks_rule_Ensure_cryptographic_mechanisms_are_used_to_protect_the_integrity_of_audit_tools'] }
end

append_if_no_line 'Paths in ausearch' do
  path '/etc/aide.conf'
  line '/usr/sbin/ausearch p+i+n+u+g+s+b+acl+xattrs+sha512'
  only_if { cisecurity['benchmarks_rule_Ensure_cryptographic_mechanisms_are_used_to_protect_the_integrity_of_audit_tools'] }
end

append_if_no_line 'Paths in aureport' do
  path '/etc/aide.conf'
  line '/usr/sbin/aureport p+i+n+u+g+s+b+acl+xattrs+sha512'
  only_if { cisecurity['benchmarks_rule_Ensure_cryptographic_mechanisms_are_used_to_protect_the_integrity_of_audit_tools'] }
end

append_if_no_line 'Paths in autrace' do
  path '/etc/aide.conf'
  line '/usr/sbin/autrace p+i+n+u+g+s+b+acl+xattrs+sha512'
  only_if { cisecurity['benchmarks_rule_Ensure_cryptographic_mechanisms_are_used_to_protect_the_integrity_of_audit_tools'] }
end

append_if_no_line 'Paths in augenrules' do
  path '/etc/aide.conf'
  line '/usr/sbin/augenrules p+i+n+u+g+s+b+acl+xattrs+sha512'
  only_if { cisecurity['benchmarks_rule_Ensure_cryptographic_mechanisms_are_used_to_protect_the_integrity_of_audit_tools'] }
end